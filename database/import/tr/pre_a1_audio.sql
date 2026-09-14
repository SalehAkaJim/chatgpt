-- Generated audio link import for tr-TR Pre-A1
-- Source manifest: audio/manifests/tr/Pre-A1.json
-- Generated rows: 379
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
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/007bbfe6af03f6bcbb414d87f2f9eb22930a17ad7d14efdc745dbf7e80234660.mp3', 1097, '2026-09-14 13:35:03.210169', '79b24d0368e4c2e1b66f482f8c5f29228394b586d815eaeebd0b4bb8f066c416', 'validated', '{"audio_key":"007bbfe6af03f6bcbb414d87f2f9eb22930a17ad7d14efdc745dbf7e80234660","entity_key":"d_polite_words_01:4","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"79b24d0368e4c2e1b66f482f8c5f29228394b586d815eaeebd0b4bb8f066c416","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/007bbfe6af03f6bcbb414d87f2f9eb22930a17ad7d14efdc745dbf7e80234660.mp3"}'
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
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/00eebef2dd0f97a01f6480644d61adc138336dabb8fc395828c0d7c919b645b2.mp3', 1280, '2026-09-14 13:35:04.467897', '934435fd48457550c38db99d2436d725d2ddf45741397c2edd182230e6dcb752', 'validated', '{"audio_key":"00eebef2dd0f97a01f6480644d61adc138336dabb8fc395828c0d7c919b645b2","entity_key":"d_numbers_0_10_02:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"934435fd48457550c38db99d2436d725d2ddf45741397c2edd182230e6dcb752","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/00eebef2dd0f97a01f6480644d61adc138336dabb8fc395828c0d7c919b645b2.mp3"}'
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
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/024311d4d3677556928fae5da33c008d5de92c49341c0433819f1c1183471bcc.mp3', 1097, '2026-09-14 13:35:05.510935', 'cb464dc67e44d5fbebcdd31d7bf267684bcc6ba6712375ecf5f79e35c8ce9916', 'validated', '{"audio_key":"024311d4d3677556928fae5da33c008d5de92c49341c0433819f1c1183471bcc","entity_key":"d_polite_words_01:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cb464dc67e44d5fbebcdd31d7bf267684bcc6ba6712375ecf5f79e35c8ce9916","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/024311d4d3677556928fae5da33c008d5de92c49341c0433819f1c1183471bcc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_meaning_help:6 -> audio/generated/tr-TR/dialogues/05117b4cb29fcd84d27b8b70fcad34700d4291f8025aefad78ce52b958bafd7f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3b8c7196-f31d-5e59-8dcd-9d652bcc0d13', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_meaning_help:6')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a357eb9f5c3b45c892a4fb201f02f62650da34b4cb91b3d8e5808b3cf7c46bac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a098505d-c340-5721-af3a-a261f13ba7da', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3b8c7196-f31d-5e59-8dcd-9d652bcc0d13', 1), 'a357eb9f5c3b45c892a4fb201f02f62650da34b4cb91b3d8e5808b3cf7c46bac',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/05117b4cb29fcd84d27b8b70fcad34700d4291f8025aefad78ce52b958bafd7f.mp3', 1515, '2026-09-14 13:35:06.858275', 'd8a648334f792433a25ef3a3da5c41d5691e2dfcf2b92a47640d996121b4a0a8', 'validated', '{"audio_key":"05117b4cb29fcd84d27b8b70fcad34700d4291f8025aefad78ce52b958bafd7f","entity_key":"d_tr_meaning_help:6","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d8a648334f792433a25ef3a3da5c41d5691e2dfcf2b92a47640d996121b4a0a8","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/05117b4cb29fcd84d27b8b70fcad34700d4291f8025aefad78ce52b958bafd7f.mp3"}'
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
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/066ad0c74b29a59b1ee9c89b8bf184967a51c663a9bab55a2eff79f66753bc32.mp3', 862, '2026-09-14 13:35:08.061370', '50735682b7096808e7a1a0184eacb9734a5628ffdc7321b795036e67246d0672', 'validated', '{"audio_key":"066ad0c74b29a59b1ee9c89b8bf184967a51c663a9bab55a2eff79f66753bc32","entity_key":"d_survival_words_02:3","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"50735682b7096808e7a1a0184eacb9734a5628ffdc7321b795036e67246d0672","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/066ad0c74b29a59b1ee9c89b8bf184967a51c663a9bab55a2eff79f66753bc32.mp3"}'
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
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/0693b7ad65d906d0b9a0bdf13d5cd2baedadf12643ee4ceacde03dc8044227c1.mp3', 1149, '2026-09-14 13:35:09.036539', '49735f4bae3fa84ab7c766b0eaf035b329ce939936bd83997eb2c9a1a0ea90ad', 'validated', '{"audio_key":"0693b7ad65d906d0b9a0bdf13d5cd2baedadf12643ee4ceacde03dc8044227c1","entity_key":"d_survival_words_01:2","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"49735f4bae3fa84ab7c766b0eaf035b329ce939936bd83997eb2c9a1a0ea90ad","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/0693b7ad65d906d0b9a0bdf13d5cd2baedadf12643ee4ceacde03dc8044227c1.mp3"}'
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
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/0c69b6647ef4b4c4732b8e016eca12b89d39f4ec08c2b3ea439970b1c5d9fc4e.mp3', 1436, '2026-09-14 13:35:10.056784', '74571ce0e0be9320b157248fabd7786b7e883fd7fa1cb0cb671dd1797be731f5', 'validated', '{"audio_key":"0c69b6647ef4b4c4732b8e016eca12b89d39f4ec08c2b3ea439970b1c5d9fc4e","entity_key":"d_survival_words_01:4","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"74571ce0e0be9320b157248fabd7786b7e883fd7fa1cb0cb671dd1797be731f5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/0c69b6647ef4b4c4732b8e016eca12b89d39f4ec08c2b3ea439970b1c5d9fc4e.mp3"}'
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
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/0c8f1864ca589403140ef9fde38c70eabe6adfe4f1521624642689837af09068.mp3', 1750, '2026-09-14 13:35:11.126036', '762b5d1aab89e3d0d4dbe17c0a39d18edcda0e4e27ece49abd502ab8dae590b9', 'validated', '{"audio_key":"0c8f1864ca589403140ef9fde38c70eabe6adfe4f1521624642689837af09068","entity_key":"d_my_name_02:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"762b5d1aab89e3d0d4dbe17c0a39d18edcda0e4e27ece49abd502ab8dae590b9","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/0c8f1864ca589403140ef9fde38c70eabe6adfe4f1521624642689837af09068.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-about-me_origin_age:1 -> audio/generated/tr-TR/dialogues/0faf8e7cfa040befe8b649323ad61f536e1917d4cae9bd68993b318ce2bd7ee9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('81820d4a-6d3f-5abf-8da1-011d7899f63d', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-about-me_origin_age:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1726b923349fd632fa7ce8b62a06c5a3f785be1db4f6a831eef58d70c7a45cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('790a4f7a-a03b-592c-b9e2-1a8c7f68c40f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('81820d4a-6d3f-5abf-8da1-011d7899f63d', 1), 'b1726b923349fd632fa7ce8b62a06c5a3f785be1db4f6a831eef58d70c7a45cc',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/0faf8e7cfa040befe8b649323ad61f536e1917d4cae9bd68993b318ce2bd7ee9.mp3', 1097, '2026-09-14 13:35:12.389382', 'a8809152ab5a40ea71fb3a3a50894dd14ca9867b5b00e5267b046a91bd9f3351', 'validated', '{"audio_key":"0faf8e7cfa040befe8b649323ad61f536e1917d4cae9bd68993b318ce2bd7ee9","entity_key":"d_tr_tr-about-me_origin_age:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a8809152ab5a40ea71fb3a3a50894dd14ca9867b5b00e5267b046a91bd9f3351","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/0faf8e7cfa040befe8b649323ad61f536e1917d4cae9bd68993b318ce2bd7ee9.mp3"}'
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
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/0faf8e7cfa040befe8b649323ad61f536e1917d4cae9bd68993b318ce2bd7ee9.mp3', 1097, '2026-09-14 13:35:12.389382', 'a8809152ab5a40ea71fb3a3a50894dd14ca9867b5b00e5267b046a91bd9f3351', 'validated', '{"audio_key":"0faf8e7cfa040befe8b649323ad61f536e1917d4cae9bd68993b318ce2bd7ee9","entity_key":"d_first_greetings_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a8809152ab5a40ea71fb3a3a50894dd14ca9867b5b00e5267b046a91bd9f3351","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/0faf8e7cfa040befe8b649323ad61f536e1917d4cae9bd68993b318ce2bd7ee9.mp3"}'
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
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/103ca00c354a1f6ac86e4c2b8b87df773bea8429c22358c8ca489bacf4e3d62b.mp3', 966, '2026-09-14 13:35:14.190928', 'd7716ebb0de6c3d4e9583598695c6a877718d5b97ab698ab6310edf3455ea718', 'validated', '{"audio_key":"103ca00c354a1f6ac86e4c2b8b87df773bea8429c22358c8ca489bacf4e3d62b","entity_key":"d_survival_words_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d7716ebb0de6c3d4e9583598695c6a877718d5b97ab698ab6310edf3455ea718","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/103ca00c354a1f6ac86e4c2b8b87df773bea8429c22358c8ca489bacf4e3d62b.mp3"}'
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
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/11050db0fc302b04ac81934bca242ba7ea2ca7918d07e7194d094b1052486d19.mp3', 1253, '2026-09-14 13:35:15.181708', 'd2f1091f99db642d96f9c3f2c0d91bfaa0fb45d1708ae4c0c5edbd76178568b5', 'validated', '{"audio_key":"11050db0fc302b04ac81934bca242ba7ea2ca7918d07e7194d094b1052486d19","entity_key":"d_first_greetings_01:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d2f1091f99db642d96f9c3f2c0d91bfaa0fb45d1708ae4c0c5edbd76178568b5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/11050db0fc302b04ac81934bca242ba7ea2ca7918d07e7194d094b1052486d19.mp3"}'
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
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1183c0e94c24c8049295de706fd8894bc4cdbe7f01801172da03c301c55d8265.mp3', 914, '2026-09-14 13:35:16.142487', 'e1079fecb550d983076cfa67d8954c165cf57a98153c59b891b8659f2add2c61', 'validated', '{"audio_key":"1183c0e94c24c8049295de706fd8894bc4cdbe7f01801172da03c301c55d8265","entity_key":"d_my_name_01:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e1079fecb550d983076cfa67d8954c165cf57a98153c59b891b8659f2add2c61","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/1183c0e94c24c8049295de706fd8894bc4cdbe7f01801172da03c301c55d8265.mp3"}'
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
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1218f2458c4a4699031dd6ad59384b76666aa10da07e71001e0cac61bfd3a5d9.mp3', 1097, '2026-09-14 13:35:17.087058', '521434a2ce6af4187035bf2117c80b10c24f556e3c324369ee621bb67fe34441', 'validated', '{"audio_key":"1218f2458c4a4699031dd6ad59384b76666aa10da07e71001e0cac61bfd3a5d9","entity_key":"d_first_sounds_01:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"521434a2ce6af4187035bf2117c80b10c24f556e3c324369ee621bb67fe34441","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/1218f2458c4a4699031dd6ad59384b76666aa10da07e71001e0cac61bfd3a5d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-real-life-numbers_price_day:1 -> audio/generated/tr-TR/dialogues/12eac48a2d18cd2c00b93fbba335653fc948d5096a911654a6c72ab23849fc98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c5f7e767-c395-5d81-a885-4705163f334e', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-real-life-numbers_price_day:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b8687dc79a33c1ea4e9e59b86a0cfef1a4c827ac358307b0cc2ef5c492206b3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2220359b-6b56-5708-bb3c-63ccde9c8385', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c5f7e767-c395-5d81-a885-4705163f334e', 1), 'b8687dc79a33c1ea4e9e59b86a0cfef1a4c827ac358307b0cc2ef5c492206b3d',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/12eac48a2d18cd2c00b93fbba335653fc948d5096a911654a6c72ab23849fc98.mp3', 1097, '2026-09-14 13:35:18.130266', '166e411437784fbea75241f74807887d8f7f288ecdd906d432aee09212abfdde', 'validated', '{"audio_key":"12eac48a2d18cd2c00b93fbba335653fc948d5096a911654a6c72ab23849fc98","entity_key":"d_tr_tr-real-life-numbers_price_day:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"166e411437784fbea75241f74807887d8f7f288ecdd906d432aee09212abfdde","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/12eac48a2d18cd2c00b93fbba335653fc948d5096a911654a6c72ab23849fc98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-real-world-gate_public_task:3 -> audio/generated/tr-TR/dialogues/12eac48a2d18cd2c00b93fbba335653fc948d5096a911654a6c72ab23849fc98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2c7b0969-1d62-539b-90f3-a95c43d4e869', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-real-world-gate_public_task:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b8687dc79a33c1ea4e9e59b86a0cfef1a4c827ac358307b0cc2ef5c492206b3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b19c7edf-1665-5da5-ba2c-580d0d76f721', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2c7b0969-1d62-539b-90f3-a95c43d4e869', 1), 'b8687dc79a33c1ea4e9e59b86a0cfef1a4c827ac358307b0cc2ef5c492206b3d',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/12eac48a2d18cd2c00b93fbba335653fc948d5096a911654a6c72ab23849fc98.mp3', 1097, '2026-09-14 13:35:18.130266', '166e411437784fbea75241f74807887d8f7f288ecdd906d432aee09212abfdde', 'validated', '{"audio_key":"12eac48a2d18cd2c00b93fbba335653fc948d5096a911654a6c72ab23849fc98","entity_key":"d_tr_tr-real-world-gate_public_task:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"166e411437784fbea75241f74807887d8f7f288ecdd906d432aee09212abfdde","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/12eac48a2d18cd2c00b93fbba335653fc948d5096a911654a6c72ab23849fc98.mp3"}'
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
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/147d42d6aaef5bec3a888aa670412b98d585ed55cbe68e98cc733fc87ee648a3.mp3', 1071, '2026-09-14 13:35:19.079159', 'a6765f33d477ef298c465268f754a2f737be24356c96bf1f80ed2ef66bcf06b4', 'validated', '{"audio_key":"147d42d6aaef5bec3a888aa670412b98d585ed55cbe68e98cc733fc87ee648a3","entity_key":"d_numbers_0_10_02:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a6765f33d477ef298c465268f754a2f737be24356c96bf1f80ed2ef66bcf06b4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/147d42d6aaef5bec3a888aa670412b98d585ed55cbe68e98cc733fc87ee648a3.mp3"}'
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
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/17365f72c9235b5536fa835229d0463c350fac3d301a066abde3b86718f41193.mp3', 1436, '2026-09-14 13:35:20.103589', '09bc6862d456eb98e2004cdf173903b50acec6c594e2644151ab05e2f77c8e6e', 'validated', '{"audio_key":"17365f72c9235b5536fa835229d0463c350fac3d301a066abde3b86718f41193","entity_key":"d_my_name_01:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"09bc6862d456eb98e2004cdf173903b50acec6c594e2644151ab05e2f77c8e6e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/17365f72c9235b5536fa835229d0463c350fac3d301a066abde3b86718f41193.mp3"}'
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
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/17a1ad644c3603d58de27878b333e9f776a9073ac05a832f827dac8b2eb1b77a.mp3', 1671, '2026-09-14 13:35:21.116367', '07126ad0548816bb7462441db2a1418e252471c3fab319abdf1bf09a93005ca9', 'validated', '{"audio_key":"17a1ad644c3603d58de27878b333e9f776a9073ac05a832f827dac8b2eb1b77a","entity_key":"d_tr_ready_intro:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"07126ad0548816bb7462441db2a1418e252471c3fab319abdf1bf09a93005ca9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/17a1ad644c3603d58de27878b333e9f776a9073ac05a832f827dac8b2eb1b77a.mp3"}'
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
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1b6635bc5c1e958589d1f3d8e9f62899040cd3eb93ec7d7575fb873e65494b36.mp3', 1567, '2026-09-14 13:35:22.151690', 'e89109e63554119d13218996dfc1df5f0fe116aaaa82de700941edb67580b470', 'validated', '{"audio_key":"1b6635bc5c1e958589d1f3d8e9f62899040cd3eb93ec7d7575fb873e65494b36","entity_key":"d_tr_meaning_help:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e89109e63554119d13218996dfc1df5f0fe116aaaa82de700941edb67580b470","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/1b6635bc5c1e958589d1f3d8e9f62899040cd3eb93ec7d7575fb873e65494b36.mp3"}'
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
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1b79875e7b962aaacd20c354bbb61f383432eadca9d6cd0a27303e364b7484bd.mp3', 862, '2026-09-14 13:35:23.095273', 'b65e7207ee93b1ceaa36ee163ce7f634f7d60f6198264ffdee05e08a31a9f15e', 'validated', '{"audio_key":"1b79875e7b962aaacd20c354bbb61f383432eadca9d6cd0a27303e364b7484bd","entity_key":"d_how_are_you_02:3","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b65e7207ee93b1ceaa36ee163ce7f634f7d60f6198264ffdee05e08a31a9f15e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/1b79875e7b962aaacd20c354bbb61f383432eadca9d6cd0a27303e364b7484bd.mp3"}'
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
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1defa1efcf023fc3bb55dccf98e58ea9e19cfaf65993412894c90eac06f634fb.mp3', 1436, '2026-09-14 13:35:24.112931', 'cf3321f362632aae856eec0acf9ccba5e5e147576a2b459b0ef49f221ee625cc', 'validated', '{"audio_key":"1defa1efcf023fc3bb55dccf98e58ea9e19cfaf65993412894c90eac06f634fb","entity_key":"d_how_are_you_02:1","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cf3321f362632aae856eec0acf9ccba5e5e147576a2b459b0ef49f221ee625cc","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/1defa1efcf023fc3bb55dccf98e58ea9e19cfaf65993412894c90eac06f634fb.mp3"}'
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
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1fddeaed65f7cb25043ab6c69eca51f3c365d181cef69fb4a979f1f732cd4a19.mp3', 1619, '2026-09-14 13:35:25.159338', '26d26ba6177b6ae7e9df853aa1ce55d057cfc5a532ef85b8ac5cb1e4845793b6', 'validated', '{"audio_key":"1fddeaed65f7cb25043ab6c69eca51f3c365d181cef69fb4a979f1f732cd4a19","entity_key":"d_first_conversation_02:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26d26ba6177b6ae7e9df853aa1ce55d057cfc5a532ef85b8ac5cb1e4845793b6","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/1fddeaed65f7cb25043ab6c69eca51f3c365d181cef69fb4a979f1f732cd4a19.mp3"}'
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
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/22d4093b3cb346b1a9c92f7c860d100e8afc84d4601cb66764f23cb4b320274d.mp3', 1253, '2026-09-14 13:35:26.120139', 'a369b74937d4e8e22cda116002041b327fdb97b5f74dd6c66134a19eeb1a9c7c', 'validated', '{"audio_key":"22d4093b3cb346b1a9c92f7c860d100e8afc84d4601cb66764f23cb4b320274d","entity_key":"d_first_objects_02:1","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a369b74937d4e8e22cda116002041b327fdb97b5f74dd6c66134a19eeb1a9c7c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/22d4093b3cb346b1a9c92f7c860d100e8afc84d4601cb66764f23cb4b320274d.mp3"}'
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
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/27134c5dbe33d2246700e696dfc2e1e66f80f255785cc059e25601f6d49c5019.mp3', 1018, '2026-09-14 13:35:27.221199', '2bc860d30959dbbfb5ad1269a3a68b21d949068f42a36cd993bc9fe5bff91211', 'validated', '{"audio_key":"27134c5dbe33d2246700e696dfc2e1e66f80f255785cc059e25601f6d49c5019","entity_key":"d_my_name_02:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2bc860d30959dbbfb5ad1269a3a68b21d949068f42a36cd993bc9fe5bff91211","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/27134c5dbe33d2246700e696dfc2e1e66f80f255785cc059e25601f6d49c5019.mp3"}'
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
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/29475ce5699aa1886fcf01bc764951952e630e58934d5ef95bccea18994814a2.mp3', 1097, '2026-09-14 13:35:28.185420', '85d0328913464011686100c9a96276e3385ff262ad371bf7465eadc6d5489416', 'validated', '{"audio_key":"29475ce5699aa1886fcf01bc764951952e630e58934d5ef95bccea18994814a2","entity_key":"d_polite_words_02:3","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"85d0328913464011686100c9a96276e3385ff262ad371bf7465eadc6d5489416","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/29475ce5699aa1886fcf01bc764951952e630e58934d5ef95bccea18994814a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-real-world-gate_meet:6 -> audio/generated/tr-TR/dialogues/2cbfcf42e50744a13a00b4fd3db906902db8a60ea4b4de0d5075eca3d1ea0099.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8c010f18-0ce4-5b61-ac32-d576a131a0ed', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-real-world-gate_meet:6')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a59410baf74d9d777a5292e9cb38a277e51d256a5ae9caec774b4684ebc289e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c45d456-770f-5ab3-a79c-59ec5fd41604', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8c010f18-0ce4-5b61-ac32-d576a131a0ed', 1), '3a59410baf74d9d777a5292e9cb38a277e51d256a5ae9caec774b4684ebc289e',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2cbfcf42e50744a13a00b4fd3db906902db8a60ea4b4de0d5075eca3d1ea0099.mp3', 1619, '2026-09-14 13:35:29.182058', '37280781b10bd304c307497b154b3d18de60829d1769e8dfc087a03201535bcf', 'validated', '{"audio_key":"2cbfcf42e50744a13a00b4fd3db906902db8a60ea4b4de0d5075eca3d1ea0099","entity_key":"d_tr_tr-real-world-gate_meet:6","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"37280781b10bd304c307497b154b3d18de60829d1769e8dfc087a03201535bcf","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/2cbfcf42e50744a13a00b4fd3db906902db8a60ea4b4de0d5075eca3d1ea0099.mp3"}'
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
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2ce4bc72cb0a9bb91e0ae8fffdc1cc7712e06179983994ec0a08ead428851c3d.mp3', 835, '2026-09-14 13:35:30.186970', '78245d37ff9eb3b5a4654952d7119d158c5013df79a9902878cef92562b9fa99', 'validated', '{"audio_key":"2ce4bc72cb0a9bb91e0ae8fffdc1cc7712e06179983994ec0a08ead428851c3d","entity_key":"d_numbers_0_10_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"78245d37ff9eb3b5a4654952d7119d158c5013df79a9902878cef92562b9fa99","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/2ce4bc72cb0a9bb91e0ae8fffdc1cc7712e06179983994ec0a08ead428851c3d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-real-life-numbers_price_day:4 -> audio/generated/tr-TR/dialogues/2dabeb32e54e3d369f7fa9d2deae69803840c07b19d0a72255d3d7eb5e3911b1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d5590eee-3af6-516a-9f21-44daa6e247d5', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-real-life-numbers_price_day:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b274be0990276625cc16325d98f3b9d67be4edb9f428fe734be924136a38172e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('234de859-c0ba-5658-ab2b-11af08bcf4f9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d5590eee-3af6-516a-9f21-44daa6e247d5', 1), 'b274be0990276625cc16325d98f3b9d67be4edb9f428fe734be924136a38172e',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2dabeb32e54e3d369f7fa9d2deae69803840c07b19d0a72255d3d7eb5e3911b1.mp3', 1097, '2026-09-14 13:35:31.166382', '6c172aa613b9a1238c0691426acb4a26371dd01110e3af99a2a655b521af044b', 'validated', '{"audio_key":"2dabeb32e54e3d369f7fa9d2deae69803840c07b19d0a72255d3d7eb5e3911b1","entity_key":"d_tr_tr-real-life-numbers_price_day:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"6c172aa613b9a1238c0691426acb4a26371dd01110e3af99a2a655b521af044b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/2dabeb32e54e3d369f7fa9d2deae69803840c07b19d0a72255d3d7eb5e3911b1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-about-me_feeling_family:1 -> audio/generated/tr-TR/dialogues/2ed8020d6e8f12b8fb8b69daa4752865699fc52524a1700e63014023426d66e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7c4ac1ad-119f-5dfa-897b-68377f84954c', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-about-me_feeling_family:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c61da876fe80998fd8842a507639fac020ec02fa999d05536b4584f1037297aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b14dfe5-1b69-5eae-afb1-3a45be54a6d2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7c4ac1ad-119f-5dfa-897b-68377f84954c', 1), 'c61da876fe80998fd8842a507639fac020ec02fa999d05536b4584f1037297aa',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2ed8020d6e8f12b8fb8b69daa4752865699fc52524a1700e63014023426d66e9.mp3', 966, '2026-09-14 13:35:32.141526', 'ccffdbf5f0648b97937aa09bf0238d4a2c2237b90ac61644e3d5e5155a191480', 'validated', '{"audio_key":"2ed8020d6e8f12b8fb8b69daa4752865699fc52524a1700e63014023426d66e9","entity_key":"d_tr_tr-about-me_feeling_family:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ccffdbf5f0648b97937aa09bf0238d4a2c2237b90ac61644e3d5e5155a191480","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/2ed8020d6e8f12b8fb8b69daa4752865699fc52524a1700e63014023426d66e9.mp3"}'
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
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2ed8020d6e8f12b8fb8b69daa4752865699fc52524a1700e63014023426d66e9.mp3', 966, '2026-09-14 13:35:32.141526', 'ccffdbf5f0648b97937aa09bf0238d4a2c2237b90ac61644e3d5e5155a191480', 'validated', '{"audio_key":"2ed8020d6e8f12b8fb8b69daa4752865699fc52524a1700e63014023426d66e9","entity_key":"d_first_conversation_01:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ccffdbf5f0648b97937aa09bf0238d4a2c2237b90ac61644e3d5e5155a191480","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/2ed8020d6e8f12b8fb8b69daa4752865699fc52524a1700e63014023426d66e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-real-world-gate_public_task:4 -> audio/generated/tr-TR/dialogues/33e55f46b4d7003deb76f3f66947390e6447115599125171ea14d9a705b533f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9fdeb0bf-f0a9-5411-9c35-4da5b56e62b5', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-real-world-gate_public_task:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea807185845920b51a73a24548725fb1262597fc2bd426d02be27c2ced691aa6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7163b554-ff30-54a1-937b-cd9e242667df', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9fdeb0bf-f0a9-5411-9c35-4da5b56e62b5', 1), 'ea807185845920b51a73a24548725fb1262597fc2bd426d02be27c2ced691aa6',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/33e55f46b4d7003deb76f3f66947390e6447115599125171ea14d9a705b533f8.mp3', 1018, '2026-09-14 13:35:33.128502', '912216e6d599533c67c1597c4ecffb37de2f743a55c32855c9ff046a8ec3ac38', 'validated', '{"audio_key":"33e55f46b4d7003deb76f3f66947390e6447115599125171ea14d9a705b533f8","entity_key":"d_tr_tr-real-world-gate_public_task:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"912216e6d599533c67c1597c4ecffb37de2f743a55c32855c9ff046a8ec3ac38","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/33e55f46b4d7003deb76f3f66947390e6447115599125171ea14d9a705b533f8.mp3"}'
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
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/37cbeabb9ef29ca11444cdc62d562f7af4688c9c30fae6dc34ed4f67cad43923.mp3', 1332, '2026-09-14 13:35:34.289912', '51d8271d668b23e06da89ce3200e21a03562b699f5c93e031664213a4298eb90', 'validated', '{"audio_key":"37cbeabb9ef29ca11444cdc62d562f7af4688c9c30fae6dc34ed4f67cad43923","entity_key":"d_first_sounds_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"51d8271d668b23e06da89ce3200e21a03562b699f5c93e031664213a4298eb90","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/37cbeabb9ef29ca11444cdc62d562f7af4688c9c30fae6dc34ed4f67cad43923.mp3"}'
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
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/37e01acae9b28fcc9bd01acc9ca35e196333925ad0ae876feec6d0fc073a0e69.mp3', 1071, '2026-09-14 13:35:35.458056', '83f75fbc07ffc1608e4ab4317e22ff29ca54e5cbf905047ed70e8b32a6ac08ce', 'validated', '{"audio_key":"37e01acae9b28fcc9bd01acc9ca35e196333925ad0ae876feec6d0fc073a0e69","entity_key":"d_first_objects_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"83f75fbc07ffc1608e4ab4317e22ff29ca54e5cbf905047ed70e8b32a6ac08ce","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/37e01acae9b28fcc9bd01acc9ca35e196333925ad0ae876feec6d0fc073a0e69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-about-me_origin_age:2 -> audio/generated/tr-TR/dialogues/3970ddb3dbe12f35d475de28d440c632b90fb1cd23b71abd41877334c4b49c86.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('03f2898d-d6bd-56b5-b593-bd4da0359066', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-about-me_origin_age:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1726b923349fd632fa7ce8b62a06c5a3f785be1db4f6a831eef58d70c7a45cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08440cab-d177-5d5b-8b40-68db2062423e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('03f2898d-d6bd-56b5-b593-bd4da0359066', 1), 'b1726b923349fd632fa7ce8b62a06c5a3f785be1db4f6a831eef58d70c7a45cc',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/3970ddb3dbe12f35d475de28d440c632b90fb1cd23b71abd41877334c4b49c86.mp3', 679, '2026-09-14 13:35:36.384846', 'a4e095ce979cea86916c17f8ef3ef981f22adf284f31d82f8cdc5747aeb73ff4', 'validated', '{"audio_key":"3970ddb3dbe12f35d475de28d440c632b90fb1cd23b71abd41877334c4b49c86","entity_key":"d_tr_tr-about-me_origin_age:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a4e095ce979cea86916c17f8ef3ef981f22adf284f31d82f8cdc5747aeb73ff4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/3970ddb3dbe12f35d475de28d440c632b90fb1cd23b71abd41877334c4b49c86.mp3"}'
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
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/3970ddb3dbe12f35d475de28d440c632b90fb1cd23b71abd41877334c4b49c86.mp3', 679, '2026-09-14 13:35:36.384846', 'a4e095ce979cea86916c17f8ef3ef981f22adf284f31d82f8cdc5747aeb73ff4', 'validated', '{"audio_key":"3970ddb3dbe12f35d475de28d440c632b90fb1cd23b71abd41877334c4b49c86","entity_key":"d_first_greetings_01:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a4e095ce979cea86916c17f8ef3ef981f22adf284f31d82f8cdc5747aeb73ff4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/3970ddb3dbe12f35d475de28d440c632b90fb1cd23b71abd41877334c4b49c86.mp3"}'
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
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/3cd10b847e4cf25d3084dc5f0689e25f4e136d366e62857e5d401727426352de.mp3', 1488, '2026-09-14 13:35:37.412973', 'b1ad3a48f10d78decf4ab84a0c4bd2d2a7e7e8d624e5f53c4fbcab920b826b4f', 'validated', '{"audio_key":"3cd10b847e4cf25d3084dc5f0689e25f4e136d366e62857e5d401727426352de","entity_key":"d_first_greetings_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b1ad3a48f10d78decf4ab84a0c4bd2d2a7e7e8d624e5f53c4fbcab920b826b4f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/3cd10b847e4cf25d3084dc5f0689e25f4e136d366e62857e5d401727426352de.mp3"}'
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
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/3e22bd2dae306bb20b84941cc9e2347801bbfa6b37e7e7170fcef75a01c799fe.mp3', 1097, '2026-09-14 13:35:38.397901', 'db891d3273384a4dfb8cc6aaac54b1c2bf6657dcfab58c961bc8d38413f8e182', 'validated', '{"audio_key":"3e22bd2dae306bb20b84941cc9e2347801bbfa6b37e7e7170fcef75a01c799fe","entity_key":"d_tr_meaning_help:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"db891d3273384a4dfb8cc6aaac54b1c2bf6657dcfab58c961bc8d38413f8e182","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/3e22bd2dae306bb20b84941cc9e2347801bbfa6b37e7e7170fcef75a01c799fe.mp3"}'
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
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/3ed130512f01f59f4ee5509a7a90c6ea9b48551f8eef40c640fa9b401d3f8f53.mp3', 783, '2026-09-14 13:35:39.359370', '7da21aee58241a20c31191cc3bac2a9b500e3fb4aadb45b85af7a91e4b326f4b', 'validated', '{"audio_key":"3ed130512f01f59f4ee5509a7a90c6ea9b48551f8eef40c640fa9b401d3f8f53","entity_key":"d_numbers_0_10_02:1","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7da21aee58241a20c31191cc3bac2a9b500e3fb4aadb45b85af7a91e4b326f4b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/3ed130512f01f59f4ee5509a7a90c6ea9b48551f8eef40c640fa9b401d3f8f53.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-about-me_origin_age:4 -> audio/generated/tr-TR/dialogues/40f3130a081743a17f715eb66ad0fcc46a4622ec2ad615eeb6aceaa4c754aa22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a35748df-afca-5a7b-866d-0954789602bf', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-about-me_origin_age:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b53dbd9118375de57c9121b6d261af36f09eee29183f33599a071a3573476f89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7292b21a-1556-5c99-88c3-027117406458', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a35748df-afca-5a7b-866d-0954789602bf', 1), 'b53dbd9118375de57c9121b6d261af36f09eee29183f33599a071a3573476f89',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/40f3130a081743a17f715eb66ad0fcc46a4622ec2ad615eeb6aceaa4c754aa22.mp3', 862, '2026-09-14 13:35:40.320203', 'e66d2cd239da2eb00e3836ee167c60ac9aee730f8836f13911feea86e888433e', 'validated', '{"audio_key":"40f3130a081743a17f715eb66ad0fcc46a4622ec2ad615eeb6aceaa4c754aa22","entity_key":"d_tr_tr-about-me_origin_age:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e66d2cd239da2eb00e3836ee167c60ac9aee730f8836f13911feea86e888433e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/40f3130a081743a17f715eb66ad0fcc46a4622ec2ad615eeb6aceaa4c754aa22.mp3"}'
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
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/4607845f616b9f0b9d383b127a67e6ed6a5e47adc130a21cc7b370290b5078a0.mp3', 2455, '2026-09-14 13:35:41.401344', '514e9982ed253d246bb1a36bd73497698f5a67c764bf76bdfedc7459cfa111e4', 'validated', '{"audio_key":"4607845f616b9f0b9d383b127a67e6ed6a5e47adc130a21cc7b370290b5078a0","entity_key":"d_first_conversation_01:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"514e9982ed253d246bb1a36bd73497698f5a67c764bf76bdfedc7459cfa111e4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/4607845f616b9f0b9d383b127a67e6ed6a5e47adc130a21cc7b370290b5078a0.mp3"}'
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
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/46ef1249e770f5073af019a92a8efe793d0e03431e2ca89591edaf23d25880a6.mp3', 1384, '2026-09-14 13:35:42.514762', '43cb682f6e8107db1808111b2d322ddcfa13084d69b57c8cf68c392b83db56e6', 'validated', '{"audio_key":"46ef1249e770f5073af019a92a8efe793d0e03431e2ca89591edaf23d25880a6","entity_key":"d_first_sounds_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"43cb682f6e8107db1808111b2d322ddcfa13084d69b57c8cf68c392b83db56e6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/46ef1249e770f5073af019a92a8efe793d0e03431e2ca89591edaf23d25880a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-real-life-numbers_phone:2 -> audio/generated/tr-TR/dialogues/4b392853b23d22ff6cf85d90b861edcd893d683bcfab66f4f4e3a129028ed07a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fc03d62e-6625-53a1-a5ae-b15ba768c13f', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-real-life-numbers_phone:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8043a372ad2578dddfc3c9c62e2f7d5fca497b1baf47b0849d1602fcc83262f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7acfabf1-e18a-5ac5-a71b-a94b1dac0726', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fc03d62e-6625-53a1-a5ae-b15ba768c13f', 1), '8043a372ad2578dddfc3c9c62e2f7d5fca497b1baf47b0849d1602fcc83262f8',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/4b392853b23d22ff6cf85d90b861edcd893d683bcfab66f4f4e3a129028ed07a.mp3', 3892, '2026-09-14 13:35:43.918082', 'cdfb6b03edd14ca0dc1bfcaee668717e2bb19c81a79ae270056bb100ac52773d', 'validated', '{"audio_key":"4b392853b23d22ff6cf85d90b861edcd893d683bcfab66f4f4e3a129028ed07a","entity_key":"d_tr_tr-real-life-numbers_phone:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cdfb6b03edd14ca0dc1bfcaee668717e2bb19c81a79ae270056bb100ac52773d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/4b392853b23d22ff6cf85d90b861edcd893d683bcfab66f4f4e3a129028ed07a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-real-life-numbers_phone:4 -> audio/generated/tr-TR/dialogues/4b392853b23d22ff6cf85d90b861edcd893d683bcfab66f4f4e3a129028ed07a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0a559532-c98d-5516-8d58-fc31332d1bb3', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-real-life-numbers_phone:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8043a372ad2578dddfc3c9c62e2f7d5fca497b1baf47b0849d1602fcc83262f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70dc7b99-1c21-5992-8b5a-bdba24c6c79a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0a559532-c98d-5516-8d58-fc31332d1bb3', 1), '8043a372ad2578dddfc3c9c62e2f7d5fca497b1baf47b0849d1602fcc83262f8',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/4b392853b23d22ff6cf85d90b861edcd893d683bcfab66f4f4e3a129028ed07a.mp3', 3892, '2026-09-14 13:35:43.918082', 'cdfb6b03edd14ca0dc1bfcaee668717e2bb19c81a79ae270056bb100ac52773d', 'validated', '{"audio_key":"4b392853b23d22ff6cf85d90b861edcd893d683bcfab66f4f4e3a129028ed07a","entity_key":"d_tr_tr-real-life-numbers_phone:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cdfb6b03edd14ca0dc1bfcaee668717e2bb19c81a79ae270056bb100ac52773d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/4b392853b23d22ff6cf85d90b861edcd893d683bcfab66f4f4e3a129028ed07a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-real-world-gate_public_task:2 -> audio/generated/tr-TR/dialogues/4b392853b23d22ff6cf85d90b861edcd893d683bcfab66f4f4e3a129028ed07a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0e15a689-d97b-5902-af3a-783ff29e4eeb', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-real-world-gate_public_task:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8043a372ad2578dddfc3c9c62e2f7d5fca497b1baf47b0849d1602fcc83262f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e64c5c56-95dc-5b11-8587-3433a244ccc5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0e15a689-d97b-5902-af3a-783ff29e4eeb', 1), '8043a372ad2578dddfc3c9c62e2f7d5fca497b1baf47b0849d1602fcc83262f8',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/4b392853b23d22ff6cf85d90b861edcd893d683bcfab66f4f4e3a129028ed07a.mp3', 3892, '2026-09-14 13:35:43.918082', 'cdfb6b03edd14ca0dc1bfcaee668717e2bb19c81a79ae270056bb100ac52773d', 'validated', '{"audio_key":"4b392853b23d22ff6cf85d90b861edcd893d683bcfab66f4f4e3a129028ed07a","entity_key":"d_tr_tr-real-world-gate_public_task:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cdfb6b03edd14ca0dc1bfcaee668717e2bb19c81a79ae270056bb100ac52773d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/4b392853b23d22ff6cf85d90b861edcd893d683bcfab66f4f4e3a129028ed07a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-real-world-gate_meet:3 -> audio/generated/tr-TR/dialogues/4b83226fda9586a69283da09002c94323f17f5c0d83bc55be4362c2491ada980.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('da1f1f65-8bb8-5964-a8c3-5443ba40c565', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-real-world-gate_meet:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c7133643ad9afb4d8fb0fbca8ca37f1549c4f37f8a294fdcbb9457879ad6fd1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('945be73c-c6d3-5c95-8c99-36a0abcc5a08', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('da1f1f65-8bb8-5964-a8c3-5443ba40c565', 1), '5c7133643ad9afb4d8fb0fbca8ca37f1549c4f37f8a294fdcbb9457879ad6fd1',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/4b83226fda9586a69283da09002c94323f17f5c0d83bc55be4362c2491ada980.mp3', 966, '2026-09-14 13:35:45.076042', '65e1eaa79d24fe3c1485cc10ec0fe5e4068316c2241f6c740f7a5b6c1aaea262', 'validated', '{"audio_key":"4b83226fda9586a69283da09002c94323f17f5c0d83bc55be4362c2491ada980","entity_key":"d_tr_tr-real-world-gate_meet:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65e1eaa79d24fe3c1485cc10ec0fe5e4068316c2241f6c740f7a5b6c1aaea262","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/4b83226fda9586a69283da09002c94323f17f5c0d83bc55be4362c2491ada980.mp3"}'
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
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/4fb310ef0a27b8cb076c3a1e5edb0bd832caef0618442b159b7c66c3248310c1.mp3', 1280, '2026-09-14 13:35:46.130999', 'ca3a3557baf3c5c45c21af56499d0666f029592a81405f462bf035eca7348b38', 'validated', '{"audio_key":"4fb310ef0a27b8cb076c3a1e5edb0bd832caef0618442b159b7c66c3248310c1","entity_key":"d_how_are_you_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ca3a3557baf3c5c45c21af56499d0666f029592a81405f462bf035eca7348b38","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/4fb310ef0a27b8cb076c3a1e5edb0bd832caef0618442b159b7c66c3248310c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-forms-signs_form:1 -> audio/generated/tr-TR/dialogues/521cfc6035ac94ff0e18a1a68fdda4de87cb30e1431d36493c7088a63a18c83d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('724c358c-52d9-5da6-b2b7-aee6f98211f9', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-forms-signs_form:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b351173956ca187be419bf10dfb8ffd3895b8fded823c5b030b4defb56c1be8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f32c37c-ce0e-545c-9525-61a298239f96', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('724c358c-52d9-5da6-b2b7-aee6f98211f9', 1), '1b351173956ca187be419bf10dfb8ffd3895b8fded823c5b030b4defb56c1be8',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/521cfc6035ac94ff0e18a1a68fdda4de87cb30e1431d36493c7088a63a18c83d.mp3', 783, '2026-09-14 13:35:47.043627', '1ddfd5616dfb4d2653c81af7fc36afc48cc69380330aca130822733f087f9583', 'validated', '{"audio_key":"521cfc6035ac94ff0e18a1a68fdda4de87cb30e1431d36493c7088a63a18c83d","entity_key":"d_tr_tr-forms-signs_form:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1ddfd5616dfb4d2653c81af7fc36afc48cc69380330aca130822733f087f9583","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/521cfc6035ac94ff0e18a1a68fdda4de87cb30e1431d36493c7088a63a18c83d.mp3"}'
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
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/548cdfe441a6f035cd32a5a91460431a6270ea3809fdec85a04acdcc4a848ea7.mp3', 1488, '2026-09-14 13:35:48.066821', 'd43975c765f79ddb605bd4b8b213b4600531fd519169cb749ce517e100587fe7', 'validated', '{"audio_key":"548cdfe441a6f035cd32a5a91460431a6270ea3809fdec85a04acdcc4a848ea7","entity_key":"d_my_name_02:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d43975c765f79ddb605bd4b8b213b4600531fd519169cb749ce517e100587fe7","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/548cdfe441a6f035cd32a5a91460431a6270ea3809fdec85a04acdcc4a848ea7.mp3"}'
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
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/59d1529948af2d65f7f76b3ffa4ae1cd97ff99b335b4968af129290ea9fffa11.mp3', 966, '2026-09-14 13:35:49.015470', '33f2daff9fca80b39395ba72d507188e6f8bc2dc0aca809f99d2f1d748cab7fc', 'validated', '{"audio_key":"59d1529948af2d65f7f76b3ffa4ae1cd97ff99b335b4968af129290ea9fffa11","entity_key":"d_how_are_you_01:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"33f2daff9fca80b39395ba72d507188e6f8bc2dc0aca809f99d2f1d748cab7fc","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/59d1529948af2d65f7f76b3ffa4ae1cd97ff99b335b4968af129290ea9fffa11.mp3"}'
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
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5a29f0bd7479d7f30afd9ccf59150bfd67c95d2c528da59a63a23172413acbc4.mp3', 1567, '2026-09-14 13:35:50.055326', 'f781df1f40eda7d9ac266cad114599bfe54ccec1acc7c301a6e6c34235262b7f', 'validated', '{"audio_key":"5a29f0bd7479d7f30afd9ccf59150bfd67c95d2c528da59a63a23172413acbc4","entity_key":"d_first_conversation_01:2","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f781df1f40eda7d9ac266cad114599bfe54ccec1acc7c301a6e6c34235262b7f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/5a29f0bd7479d7f30afd9ccf59150bfd67c95d2c528da59a63a23172413acbc4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_ready_intro:3 -> audio/generated/tr-TR/dialogues/5b9c8adc5e0bf22c27d93d66171ffeaa74d2ae2988f98c9309517d5970c6347e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('80bd68bc-a9b6-572b-a918-9fc668a2fdde', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_ready_intro:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af50025f1d90830c22f17f3506d50e1ec602dbea09779991cf02c9767c8da43b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('299360ca-bb4b-5c71-bfd7-d9c8bc7e6332', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('80bd68bc-a9b6-572b-a918-9fc668a2fdde', 1), 'af50025f1d90830c22f17f3506d50e1ec602dbea09779991cf02c9767c8da43b',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5b9c8adc5e0bf22c27d93d66171ffeaa74d2ae2988f98c9309517d5970c6347e.mp3', 1018, '2026-09-14 13:35:50.996553', '2ce3e138730ee86df139510b188da32eb5c3613907b1bd9b7f1d81e4e9bd7087', 'validated', '{"audio_key":"5b9c8adc5e0bf22c27d93d66171ffeaa74d2ae2988f98c9309517d5970c6347e","entity_key":"d_tr_ready_intro:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2ce3e138730ee86df139510b188da32eb5c3613907b1bd9b7f1d81e4e9bd7087","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/5b9c8adc5e0bf22c27d93d66171ffeaa74d2ae2988f98c9309517d5970c6347e.mp3"}'
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
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5f348cb66da4ee5a2f4ad1a9dc1da2b9c7a6a09588ece5c57a74d49390b5c46b.mp3', 1280, '2026-09-14 13:35:51.978763', '91739c0192ca0576015fdd89843afb9a0e9cf2ca5c4606871cdca3d610927436', 'validated', '{"audio_key":"5f348cb66da4ee5a2f4ad1a9dc1da2b9c7a6a09588ece5c57a74d49390b5c46b","entity_key":"d_first_objects_02:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"91739c0192ca0576015fdd89843afb9a0e9cf2ca5c4606871cdca3d610927436","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/5f348cb66da4ee5a2f4ad1a9dc1da2b9c7a6a09588ece5c57a74d49390b5c46b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-about-me_origin_age:3 -> audio/generated/tr-TR/dialogues/5f917f34e1649857f406bd9222fd9c9d26af5e8d6bf088eb676e424484aaecda.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d79c643b-beda-551c-9d1e-21986a1d9997', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-about-me_origin_age:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c7133643ad9afb4d8fb0fbca8ca37f1549c4f37f8a294fdcbb9457879ad6fd1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79a929b6-c516-54c0-a986-dd0342941e15', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d79c643b-beda-551c-9d1e-21986a1d9997', 1), '5c7133643ad9afb4d8fb0fbca8ca37f1549c4f37f8a294fdcbb9457879ad6fd1',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5f917f34e1649857f406bd9222fd9c9d26af5e8d6bf088eb676e424484aaecda.mp3', 1253, '2026-09-14 13:35:52.944719', '07607a4729f41de7996f6c1b984f3559d5e24e2388b4a0cbfd7071cbd09c0d86', 'validated', '{"audio_key":"5f917f34e1649857f406bd9222fd9c9d26af5e8d6bf088eb676e424484aaecda","entity_key":"d_tr_tr-about-me_origin_age:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"07607a4729f41de7996f6c1b984f3559d5e24e2388b4a0cbfd7071cbd09c0d86","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/5f917f34e1649857f406bd9222fd9c9d26af5e8d6bf088eb676e424484aaecda.mp3"}'
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
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/63b61f9169989ea5528b33f8b1bfc3e4e70dbce4289e701f98d164a9f017876f.mp3', 835, '2026-09-14 13:35:53.907579', '1dda0220b47d10ca4e3b9febd7628add2f7226a80e3b8288c1bbcafcd675d9ad', 'validated', '{"audio_key":"63b61f9169989ea5528b33f8b1bfc3e4e70dbce4289e701f98d164a9f017876f","entity_key":"d_numbers_0_10_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1dda0220b47d10ca4e3b9febd7628add2f7226a80e3b8288c1bbcafcd675d9ad","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/63b61f9169989ea5528b33f8b1bfc3e4e70dbce4289e701f98d164a9f017876f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-real-world-gate_public_task:1 -> audio/generated/tr-TR/dialogues/68b1a6de957c82995a16b04f95fcd48cd896bc08b9e7e77b9177238bc9968ad6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e3247375-89d1-5b01-a2df-9f89c9269f39', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-real-world-gate_public_task:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b64643707b5d2a836986e8e69f67990c6d1bae1a9ff5cb9b46cfc804ca21553'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d0f9c27-aefb-57b8-9908-899d4e8bda88', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e3247375-89d1-5b01-a2df-9f89c9269f39', 1), '3b64643707b5d2a836986e8e69f67990c6d1bae1a9ff5cb9b46cfc804ca21553',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/68b1a6de957c82995a16b04f95fcd48cd896bc08b9e7e77b9177238bc9968ad6.mp3', 1436, '2026-09-14 13:35:54.921997', '4031fc90eda0fe14c5bb646cb1743a80986ac3575f9afce4fe66c518d2a38ee8', 'validated', '{"audio_key":"68b1a6de957c82995a16b04f95fcd48cd896bc08b9e7e77b9177238bc9968ad6","entity_key":"d_tr_tr-real-world-gate_public_task:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4031fc90eda0fe14c5bb646cb1743a80986ac3575f9afce4fe66c518d2a38ee8","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/68b1a6de957c82995a16b04f95fcd48cd896bc08b9e7e77b9177238bc9968ad6.mp3"}'
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
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6a0b3007d24d7e2f93e1740c8d3c9d400112395744d3ca62757c812759e90a20.mp3', 1384, '2026-09-14 13:35:55.996299', '516774e705ac669999f841c4816e5a7c7e8a1badfad71c824dcb7dee3a24de9a', 'validated', '{"audio_key":"6a0b3007d24d7e2f93e1740c8d3c9d400112395744d3ca62757c812759e90a20","entity_key":"d_first_conversation_02:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"516774e705ac669999f841c4816e5a7c7e8a1badfad71c824dcb7dee3a24de9a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/6a0b3007d24d7e2f93e1740c8d3c9d400112395744d3ca62757c812759e90a20.mp3"}'
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
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6babd16275c6f6f55707bf745f92923a52f32757938aa70e728d310582020b65.mp3', 966, '2026-09-14 13:35:56.963123', 'a2948c993b644ff4bc514848bd995a03a8a370cc1b78414e0d115f726327a8cd', 'validated', '{"audio_key":"6babd16275c6f6f55707bf745f92923a52f32757938aa70e728d310582020b65","entity_key":"d_first_sounds_01:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a2948c993b644ff4bc514848bd995a03a8a370cc1b78414e0d115f726327a8cd","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/6babd16275c6f6f55707bf745f92923a52f32757938aa70e728d310582020b65.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-about-me_feeling_family:2 -> audio/generated/tr-TR/dialogues/6e380d66a65c247d473f573ac58369f601f35c7aea45f194572582b49b3fc809.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ffd388b2-1c4f-5613-a554-9bd499f8bc9d', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-about-me_feeling_family:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a59410baf74d9d777a5292e9cb38a277e51d256a5ae9caec774b4684ebc289e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e0d6177-416f-5016-9730-e9afe8d25e23', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ffd388b2-1c4f-5613-a554-9bd499f8bc9d', 1), '3a59410baf74d9d777a5292e9cb38a277e51d256a5ae9caec774b4684ebc289e',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6e380d66a65c247d473f573ac58369f601f35c7aea45f194572582b49b3fc809.mp3', 1515, '2026-09-14 13:35:57.981183', '9e208aa48736f0c9ec8f6b2d38c19aadaa2c14650ea1458d1927145dec6e83cb', 'validated', '{"audio_key":"6e380d66a65c247d473f573ac58369f601f35c7aea45f194572582b49b3fc809","entity_key":"d_tr_tr-about-me_feeling_family:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9e208aa48736f0c9ec8f6b2d38c19aadaa2c14650ea1458d1927145dec6e83cb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/6e380d66a65c247d473f573ac58369f601f35c7aea45f194572582b49b3fc809.mp3"}'
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
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/748da96f7670c5fcb5313d558f4912a41b4602989648c2387e1b719e54743a28.mp3', 1436, '2026-09-14 13:35:59.003215', '02729badfbd40ffd90c4b72f55c6fcb14897aab9968a4d03269647921213eb8e', 'validated', '{"audio_key":"748da96f7670c5fcb5313d558f4912a41b4602989648c2387e1b719e54743a28","entity_key":"d_first_greetings_02:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"02729badfbd40ffd90c4b72f55c6fcb14897aab9968a4d03269647921213eb8e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/748da96f7670c5fcb5313d558f4912a41b4602989648c2387e1b719e54743a28.mp3"}'
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
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/79b5e5d0779912be8ed525234efdfdc8390a1e046cfe0c5222dd890d39ef86ab.mp3', 1280, '2026-09-14 13:35:59.982380', '4d23ab90908ea273142458d34992e419a13bf277bd4268a78ce05a961b259577', 'validated', '{"audio_key":"79b5e5d0779912be8ed525234efdfdc8390a1e046cfe0c5222dd890d39ef86ab","entity_key":"d_first_greetings_02:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4d23ab90908ea273142458d34992e419a13bf277bd4268a78ce05a961b259577","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/79b5e5d0779912be8ed525234efdfdc8390a1e046cfe0c5222dd890d39ef86ab.mp3"}'
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
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/7b200a457de61a845cb3eb56de1dae4e03f9b7baaae6347059162df14b952336.mp3', 1384, '2026-09-14 13:36:00.950389', 'f1cf35ede3b1453831772c279bdda5ec97f80d9108f7a89523494429a22964ef', 'validated', '{"audio_key":"7b200a457de61a845cb3eb56de1dae4e03f9b7baaae6347059162df14b952336","entity_key":"d_first_conversation_02:1","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f1cf35ede3b1453831772c279bdda5ec97f80d9108f7a89523494429a22964ef","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/7b200a457de61a845cb3eb56de1dae4e03f9b7baaae6347059162df14b952336.mp3"}'
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
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/7deae49236ed8f00f612b221f6df50147ef8d1b3576c71c546cc2a3db26b814b.mp3', 1097, '2026-09-14 13:36:01.894943', 'c8e57a38cd7f63f08447f810b6c679f850f466c369369cee15599a9c9d9b8641', 'validated', '{"audio_key":"7deae49236ed8f00f612b221f6df50147ef8d1b3576c71c546cc2a3db26b814b","entity_key":"d_first_conversation_02:3","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c8e57a38cd7f63f08447f810b6c679f850f466c369369cee15599a9c9d9b8641","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/7deae49236ed8f00f612b221f6df50147ef8d1b3576c71c546cc2a3db26b814b.mp3"}'
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
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/7deae49236ed8f00f612b221f6df50147ef8d1b3576c71c546cc2a3db26b814b.mp3', 1097, '2026-09-14 13:36:01.894943', 'c8e57a38cd7f63f08447f810b6c679f850f466c369369cee15599a9c9d9b8641', 'validated', '{"audio_key":"7deae49236ed8f00f612b221f6df50147ef8d1b3576c71c546cc2a3db26b814b","entity_key":"d_first_greetings_02:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c8e57a38cd7f63f08447f810b6c679f850f466c369369cee15599a9c9d9b8641","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/7deae49236ed8f00f612b221f6df50147ef8d1b3576c71c546cc2a3db26b814b.mp3"}'
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
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/82b050d5c72821106c7395f235ebd510cb70861904d1891fb08ca900ba566395.mp3', 1097, '2026-09-14 13:36:02.968404', '3bf80c583e79995ecab8a50b514e4287b09b28b0b30bc4f9f18c5364f9e49a42', 'validated', '{"audio_key":"82b050d5c72821106c7395f235ebd510cb70861904d1891fb08ca900ba566395","entity_key":"d_numbers_0_10_01:4","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3bf80c583e79995ecab8a50b514e4287b09b28b0b30bc4f9f18c5364f9e49a42","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/82b050d5c72821106c7395f235ebd510cb70861904d1891fb08ca900ba566395.mp3"}'
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
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/84d6d110b79ce6dae76c1ffba786fa56e6baeb8bcf8d81de7a0598ff32066c16.mp3', 1149, '2026-09-14 13:36:03.921359', 'f6307967bcbcba023ee5fa7e9fb038abb2b5493d90dfaffb00190816ade8c7de', 'validated', '{"audio_key":"84d6d110b79ce6dae76c1ffba786fa56e6baeb8bcf8d81de7a0598ff32066c16","entity_key":"d_alphabet_01:2","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f6307967bcbcba023ee5fa7e9fb038abb2b5493d90dfaffb00190816ade8c7de","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/84d6d110b79ce6dae76c1ffba786fa56e6baeb8bcf8d81de7a0598ff32066c16.mp3"}'
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
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/8652dc35efac218e8fca06395b19cf13d7fc659af313a765cdd5f6c30421985a.mp3', 1619, '2026-09-14 13:36:04.983626', '849819d679b4843dd88c1bbad705e3194fdd05847630b533e84b5377aba350e1', 'validated', '{"audio_key":"8652dc35efac218e8fca06395b19cf13d7fc659af313a765cdd5f6c30421985a","entity_key":"d_how_are_you_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"849819d679b4843dd88c1bbad705e3194fdd05847630b533e84b5377aba350e1","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/8652dc35efac218e8fca06395b19cf13d7fc659af313a765cdd5f6c30421985a.mp3"}'
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
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/8713a3c2f16a0b8204e37f8f7362d7129f5f2f20582bab1b2a4ca008c0c6fe07.mp3', 862, '2026-09-14 13:36:06.053811', '516986b8db0cdb2938710e9dbcddf0d7271e223164a80fdd4c279a421a4fe753', 'validated', '{"audio_key":"8713a3c2f16a0b8204e37f8f7362d7129f5f2f20582bab1b2a4ca008c0c6fe07","entity_key":"d_alphabet_02:1","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"516986b8db0cdb2938710e9dbcddf0d7271e223164a80fdd4c279a421a4fe753","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/8713a3c2f16a0b8204e37f8f7362d7129f5f2f20582bab1b2a4ca008c0c6fe07.mp3"}'
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
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/885799726200e5e4fe4653a531d236b5c8a3529ff4f86f01ea058f91e957a48a.mp3', 1149, '2026-09-14 13:36:07.037114', 'b75e95019b262528110b6b6f86ec729114cd07af3c9626b83f6fe6ea10a889d5', 'validated', '{"audio_key":"885799726200e5e4fe4653a531d236b5c8a3529ff4f86f01ea058f91e957a48a","entity_key":"d_first_sounds_02:2","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b75e95019b262528110b6b6f86ec729114cd07af3c9626b83f6fe6ea10a889d5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/885799726200e5e4fe4653a531d236b5c8a3529ff4f86f01ea058f91e957a48a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_ready_repair:3 -> audio/generated/tr-TR/dialogues/8860e947c1a3e1da6f79c81834f6983cbabb88f3e9c27be615f7a4b7852a45a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f0830d04-5bea-5cad-8e4d-9dc69a721343', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_ready_repair:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6fa983e80496f75a72a13aa380c0ac2fedc35756d987f7b305d6b4d14bacb7de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6939615f-fa96-598e-bfd8-f9137c0322fd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f0830d04-5bea-5cad-8e4d-9dc69a721343', 1), '6fa983e80496f75a72a13aa380c0ac2fedc35756d987f7b305d6b4d14bacb7de',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/8860e947c1a3e1da6f79c81834f6983cbabb88f3e9c27be615f7a4b7852a45a0.mp3', 1436, '2026-09-14 13:36:08.019493', '30e3264a3112db81b33fd74554808aad13e1fe37b4d5f40d63d9d5375aa665fc', 'validated', '{"audio_key":"8860e947c1a3e1da6f79c81834f6983cbabb88f3e9c27be615f7a4b7852a45a0","entity_key":"d_tr_ready_repair:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"30e3264a3112db81b33fd74554808aad13e1fe37b4d5f40d63d9d5375aa665fc","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/8860e947c1a3e1da6f79c81834f6983cbabb88f3e9c27be615f7a4b7852a45a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-forms-signs_sign:1 -> audio/generated/tr-TR/dialogues/8a644d501132cc412ea95c246922289f66a23e78a3f49caa103f5864dbd812dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('959b9ce1-74eb-5f65-9291-df54b0013357', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-forms-signs_sign:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c9131d4b46f9b69abc339a4a26fe68637a24a433c3e7fa4f9a5f5e94c547897'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('744b715e-fe8d-51f6-9b02-880a6ad6f15d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('959b9ce1-74eb-5f65-9291-df54b0013357', 1), '3c9131d4b46f9b69abc339a4a26fe68637a24a433c3e7fa4f9a5f5e94c547897',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/8a644d501132cc412ea95c246922289f66a23e78a3f49caa103f5864dbd812dd.mp3', 1097, '2026-09-14 13:36:09.679431', '9bf7ed6e5770eb7f343b5c01bb10d13f3e98ef8b6e0e1cac56b25bbd6f3f1f5b', 'validated', '{"audio_key":"8a644d501132cc412ea95c246922289f66a23e78a3f49caa103f5864dbd812dd","entity_key":"d_tr_tr-forms-signs_sign:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9bf7ed6e5770eb7f343b5c01bb10d13f3e98ef8b6e0e1cac56b25bbd6f3f1f5b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/8a644d501132cc412ea95c246922289f66a23e78a3f49caa103f5864dbd812dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-real-world-gate_meet:2 -> audio/generated/tr-TR/dialogues/8bfb5718e1b11228a45a7d0973b5e9406a1abbf358bdcc660c5a4cece62c35b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0cecf9f1-998d-54c5-86ca-1740024bc6d0', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-real-world-gate_meet:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ef96e5af46d2b1cca55f4d95dcfd003a1f9cb2509f5a426ad18546ffd6efd33'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3dedd4b3-9dc2-5199-9519-b2f56696f82d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0cecf9f1-998d-54c5-86ca-1740024bc6d0', 1), '0ef96e5af46d2b1cca55f4d95dcfd003a1f9cb2509f5a426ad18546ffd6efd33',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/8bfb5718e1b11228a45a7d0973b5e9406a1abbf358bdcc660c5a4cece62c35b5.mp3', 1201, '2026-09-14 13:36:10.689817', 'e0499d7b38cff3717c2e544df6f9d1277254fba305fdd5d49e37ec34253b6294', 'validated', '{"audio_key":"8bfb5718e1b11228a45a7d0973b5e9406a1abbf358bdcc660c5a4cece62c35b5","entity_key":"d_tr_tr-real-world-gate_meet:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"e0499d7b38cff3717c2e544df6f9d1277254fba305fdd5d49e37ec34253b6294","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/8bfb5718e1b11228a45a7d0973b5e9406a1abbf358bdcc660c5a4cece62c35b5.mp3"}'
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
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/8d11b875227b3be446539b796fbbce44d9bf17c730a4fe94d90f1b21c267f9ac.mp3', 1018, '2026-09-14 13:36:11.643150', '3e994867d53e86dede7791f6d20d1ed00903b42b7cbcae430333dde458df256e', 'validated', '{"audio_key":"8d11b875227b3be446539b796fbbce44d9bf17c730a4fe94d90f1b21c267f9ac","entity_key":"d_first_sounds_02:4","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3e994867d53e86dede7791f6d20d1ed00903b42b7cbcae430333dde458df256e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/8d11b875227b3be446539b796fbbce44d9bf17c730a4fe94d90f1b21c267f9ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-about-me_origin_age:6 -> audio/generated/tr-TR/dialogues/8eb42e710108e61e7a35016e47b1ead9405092c78569ce283639d82fac36c61c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('20efadd6-31f7-5cf9-9f06-441b800ed617', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-about-me_origin_age:6')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '751122512516aca4e445587a022e5c1222c043fc36bc395ac87cdc063e85f765'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d2a80cf-9acc-5671-b9e6-0bb9a14aff60', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('20efadd6-31f7-5cf9-9f06-441b800ed617', 1), '751122512516aca4e445587a022e5c1222c043fc36bc395ac87cdc063e85f765',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/8eb42e710108e61e7a35016e47b1ead9405092c78569ce283639d82fac36c61c.mp3', 1201, '2026-09-14 13:36:12.627546', '60373639486ff39fc30ba13e2557db8d83876c2934f594d39adcb4a86425fd13', 'validated', '{"audio_key":"8eb42e710108e61e7a35016e47b1ead9405092c78569ce283639d82fac36c61c","entity_key":"d_tr_tr-about-me_origin_age:6","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"60373639486ff39fc30ba13e2557db8d83876c2934f594d39adcb4a86425fd13","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/8eb42e710108e61e7a35016e47b1ead9405092c78569ce283639d82fac36c61c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-real-life-numbers_phone:3 -> audio/generated/tr-TR/dialogues/95179a2c7256f0d14ce0c3ac9fbfa7be7749335c3b22b3aab192ffa7bcc1e807.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0ca24021-ec11-582a-996e-3a5960f96c5f', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-real-life-numbers_phone:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af6f1e50c1bc0bd272101e51e2dc710f9e42ff2cf1f26ace0e7083709a38e73c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('443a8b2f-ee37-5804-bf06-79550dc25cbe', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0ca24021-ec11-582a-996e-3a5960f96c5f', 1), 'af6f1e50c1bc0bd272101e51e2dc710f9e42ff2cf1f26ace0e7083709a38e73c',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/95179a2c7256f0d14ce0c3ac9fbfa7be7749335c3b22b3aab192ffa7bcc1e807.mp3', 1436, '2026-09-14 13:36:13.700034', '4271dd2053bbcfa9a78f6b5900b18630d07b7a5c180dbf7fcb770b68ffcbf6c4', 'validated', '{"audio_key":"95179a2c7256f0d14ce0c3ac9fbfa7be7749335c3b22b3aab192ffa7bcc1e807","entity_key":"d_tr_tr-real-life-numbers_phone:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4271dd2053bbcfa9a78f6b5900b18630d07b7a5c180dbf7fcb770b68ffcbf6c4","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/95179a2c7256f0d14ce0c3ac9fbfa7be7749335c3b22b3aab192ffa7bcc1e807.mp3"}'
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
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/986ba4517ff2e9be96a650739462d6034751667b198f4a5c2cc20154e6cb2360.mp3', 1515, '2026-09-14 13:36:14.750403', 'a6e2e1f4e6c451e8611741ff8e3d8611178e3ccdcea38e3d113ccf30fa2f1f6a', 'validated', '{"audio_key":"986ba4517ff2e9be96a650739462d6034751667b198f4a5c2cc20154e6cb2360","entity_key":"d_first_sounds_02:3","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a6e2e1f4e6c451e8611741ff8e3d8611178e3ccdcea38e3d113ccf30fa2f1f6a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/986ba4517ff2e9be96a650739462d6034751667b198f4a5c2cc20154e6cb2360.mp3"}'
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
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/98e76de79be119da555a4006c54299dfbe5fdf104d6dba73e212b02285556e63.mp3', 1280, '2026-09-14 13:36:16.241073', '98e9cdfdff016e7fe6cd97bbb5c8130ba9a743ca5377f9be0ed8602cf4958835', 'validated', '{"audio_key":"98e76de79be119da555a4006c54299dfbe5fdf104d6dba73e212b02285556e63","entity_key":"d_polite_words_02:1","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"98e9cdfdff016e7fe6cd97bbb5c8130ba9a743ca5377f9be0ed8602cf4958835","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/98e76de79be119da555a4006c54299dfbe5fdf104d6dba73e212b02285556e63.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-real-world-gate_public_task:5 -> audio/generated/tr-TR/dialogues/98ed26aa9e4f986e2ea438b80d57541193f6080b4d9118cb4ba017e89386a887.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ccc94e9c-c24f-5a69-a7df-3fd26002c897', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-real-world-gate_public_task:5')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c9131d4b46f9b69abc339a4a26fe68637a24a433c3e7fa4f9a5f5e94c547897'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86fc878b-87b2-544d-9b62-703c8ce3992e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ccc94e9c-c24f-5a69-a7df-3fd26002c897', 1), '3c9131d4b46f9b69abc339a4a26fe68637a24a433c3e7fa4f9a5f5e94c547897',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/98ed26aa9e4f986e2ea438b80d57541193f6080b4d9118cb4ba017e89386a887.mp3', 1280, '2026-09-14 13:36:17.277225', '3f0f3d5ea4e63e954b095592d59b43701df693222f1918f1e91d94d15154fd5c', 'validated', '{"audio_key":"98ed26aa9e4f986e2ea438b80d57541193f6080b4d9118cb4ba017e89386a887","entity_key":"d_tr_tr-real-world-gate_public_task:5","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3f0f3d5ea4e63e954b095592d59b43701df693222f1918f1e91d94d15154fd5c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/98ed26aa9e4f986e2ea438b80d57541193f6080b4d9118cb4ba017e89386a887.mp3"}'
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
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/9b2b59bc0a07048e23b1a1251c433cc28c0e593c910423d66d18b9e1bf27d655.mp3', 966, '2026-09-14 13:36:18.226629', '14fd6410e9667da8d534d1480972bc3b02cea69c5a28766ac138841ff1d089af', 'validated', '{"audio_key":"9b2b59bc0a07048e23b1a1251c433cc28c0e593c910423d66d18b9e1bf27d655","entity_key":"d_alphabet_02:3","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"14fd6410e9667da8d534d1480972bc3b02cea69c5a28766ac138841ff1d089af","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/9b2b59bc0a07048e23b1a1251c433cc28c0e593c910423d66d18b9e1bf27d655.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-real-life-numbers_price_day:2 -> audio/generated/tr-TR/dialogues/9e35da8dcec93710bbb7576ed8f0cfc0139cc343e7fbd8a63ca9afdf8ac58443.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8bed317a-f8e7-536d-9d66-42fc4cf4bf86', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-real-life-numbers_price_day:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea807185845920b51a73a24548725fb1262597fc2bd426d02be27c2ced691aa6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9cb23698-783c-5daf-b643-b1d641dd4349', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8bed317a-f8e7-536d-9d66-42fc4cf4bf86', 1), 'ea807185845920b51a73a24548725fb1262597fc2bd426d02be27c2ced691aa6',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/9e35da8dcec93710bbb7576ed8f0cfc0139cc343e7fbd8a63ca9afdf8ac58443.mp3', 1071, '2026-09-14 13:36:19.195261', 'd1e98da82b4a83095c456a955dbd29f902e26d7557c7bf3b12b5fd9ed533de65', 'validated', '{"audio_key":"9e35da8dcec93710bbb7576ed8f0cfc0139cc343e7fbd8a63ca9afdf8ac58443","entity_key":"d_tr_tr-real-life-numbers_price_day:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"d1e98da82b4a83095c456a955dbd29f902e26d7557c7bf3b12b5fd9ed533de65","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/9e35da8dcec93710bbb7576ed8f0cfc0139cc343e7fbd8a63ca9afdf8ac58443.mp3"}'
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
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a123e35a1324b7a7645df5e440b399cccd70c9dd417cf6a320fa75450e500a76.mp3', 1097, '2026-09-14 13:36:20.157087', '09cbe2ec16b2a38a9b79726779e7e619904ff82d67f05d3345c6034b140bca6f', 'validated', '{"audio_key":"a123e35a1324b7a7645df5e440b399cccd70c9dd417cf6a320fa75450e500a76","entity_key":"d_tr_meaning_help:5","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"09cbe2ec16b2a38a9b79726779e7e619904ff82d67f05d3345c6034b140bca6f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/a123e35a1324b7a7645df5e440b399cccd70c9dd417cf6a320fa75450e500a76.mp3"}'
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
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a4659d1cbc80ab74a025624fa830728a8cb963ca8d8769d3efe3e830b55e7035.mp3', 1097, '2026-09-14 13:36:21.174498', '3b1c87d384ac24e3de27a9025086fb0fa27b26b84d808e9120d50bc39c694904', 'validated', '{"audio_key":"a4659d1cbc80ab74a025624fa830728a8cb963ca8d8769d3efe3e830b55e7035","entity_key":"d_my_name_02:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"3b1c87d384ac24e3de27a9025086fb0fa27b26b84d808e9120d50bc39c694904","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/a4659d1cbc80ab74a025624fa830728a8cb963ca8d8769d3efe3e830b55e7035.mp3"}'
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
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a60b7ced67105d1f156374967a989873bd5d33a1359e1a102717a225c2092275.mp3', 1071, '2026-09-14 13:36:22.142014', '1fd07d6c6ba58c196861b86d46193000c2944894d2ae3cb00c2f0efd1e0216b5', 'validated', '{"audio_key":"a60b7ced67105d1f156374967a989873bd5d33a1359e1a102717a225c2092275","entity_key":"d_alphabet_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1fd07d6c6ba58c196861b86d46193000c2944894d2ae3cb00c2f0efd1e0216b5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/a60b7ced67105d1f156374967a989873bd5d33a1359e1a102717a225c2092275.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-real-life-numbers_phone:1 -> audio/generated/tr-TR/dialogues/a62171d0d0440370d1e749871d0da8b0d064a29df38b93cdcc5590060c6a61a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3d8ba70e-f11b-5012-b50e-e61deb268aef', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-real-life-numbers_phone:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b64643707b5d2a836986e8e69f67990c6d1bae1a9ff5cb9b46cfc804ca21553'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96e0c239-478e-5348-a3f9-5f1c75e594b5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3d8ba70e-f11b-5012-b50e-e61deb268aef', 1), '3b64643707b5d2a836986e8e69f67990c6d1bae1a9ff5cb9b46cfc804ca21553',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a62171d0d0440370d1e749871d0da8b0d064a29df38b93cdcc5590060c6a61a7.mp3', 1384, '2026-09-14 13:36:23.129560', '7b732aad12bdcd3b66cdc3880c5fb2d08fc4a29513aad17b14bc95db5816b569', 'validated', '{"audio_key":"a62171d0d0440370d1e749871d0da8b0d064a29df38b93cdcc5590060c6a61a7","entity_key":"d_tr_tr-real-life-numbers_phone:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7b732aad12bdcd3b66cdc3880c5fb2d08fc4a29513aad17b14bc95db5816b569","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/a62171d0d0440370d1e749871d0da8b0d064a29df38b93cdcc5590060c6a61a7.mp3"}'
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
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a7ffc7bf5e4c72b7732469171c258c391c7de40665dc8c0b64b91dba880fd62a.mp3', 1253, '2026-09-14 13:36:24.132197', '9262e25e6a56ccef58b0bcda52237d806581e440d4d99aff41238c61d0af0ee9', 'validated', '{"audio_key":"a7ffc7bf5e4c72b7732469171c258c391c7de40665dc8c0b64b91dba880fd62a","entity_key":"d_tr_ready_repair:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9262e25e6a56ccef58b0bcda52237d806581e440d4d99aff41238c61d0af0ee9","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/a7ffc7bf5e4c72b7732469171c258c391c7de40665dc8c0b64b91dba880fd62a.mp3"}'
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
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/aa0fe3b872d3939a676fd75fca67d6aab6b1a3e072764d64240f8853a0d36194.mp3', 1149, '2026-09-14 13:36:25.152965', '659067aa1f7c9838a771cef3d4780e9043bffee0810ccd50729ad318d29fa201', 'validated', '{"audio_key":"aa0fe3b872d3939a676fd75fca67d6aab6b1a3e072764d64240f8853a0d36194","entity_key":"d_tr_ready_intro:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"659067aa1f7c9838a771cef3d4780e9043bffee0810ccd50729ad318d29fa201","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/aa0fe3b872d3939a676fd75fca67d6aab6b1a3e072764d64240f8853a0d36194.mp3"}'
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
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/aa2ec502af2e42ab13dbe60ab340c10704e8bc88ce66a5886ef9ceab798bdbfe.mp3', 1332, '2026-09-14 13:36:26.125543', '9093fe5102e1b76844cde5aad2f60f63820a21f8c3498bf0f36461535451cc4f', 'validated', '{"audio_key":"aa2ec502af2e42ab13dbe60ab340c10704e8bc88ce66a5886ef9ceab798bdbfe","entity_key":"d_first_objects_02:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9093fe5102e1b76844cde5aad2f60f63820a21f8c3498bf0f36461535451cc4f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/aa2ec502af2e42ab13dbe60ab340c10704e8bc88ce66a5886ef9ceab798bdbfe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-real-world-gate_meet:5 -> audio/generated/tr-TR/dialogues/aa7a3a938b213d92568988f803b0d271bd6fa84b3408da1821462536355b77ca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6aa4b84f-37f4-56f0-b60b-0d407386e19d', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-real-world-gate_meet:5')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c61da876fe80998fd8842a507639fac020ec02fa999d05536b4584f1037297aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d80fed97-2882-564a-8e62-5c580ebef8cc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6aa4b84f-37f4-56f0-b60b-0d407386e19d', 1), 'c61da876fe80998fd8842a507639fac020ec02fa999d05536b4584f1037297aa',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/aa7a3a938b213d92568988f803b0d271bd6fa84b3408da1821462536355b77ca.mp3', 1018, '2026-09-14 13:36:27.091343', '161bdbcd074175c7331fc82726cf17f9fb9995ab1562573816cae5f32d3b5aff', 'validated', '{"audio_key":"aa7a3a938b213d92568988f803b0d271bd6fa84b3408da1821462536355b77ca","entity_key":"d_tr_tr-real-world-gate_meet:5","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"161bdbcd074175c7331fc82726cf17f9fb9995ab1562573816cae5f32d3b5aff","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/aa7a3a938b213d92568988f803b0d271bd6fa84b3408da1821462536355b77ca.mp3"}'
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
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/aa913342c210bd2dd222bd40560f6601ea34965350ae0d6fb4324bd0789d8d6f.mp3', 914, '2026-09-14 13:36:28.028540', '493eec25ae248c5cac0cf8dc96630fa1ff75c2edb71dc02131bb73004c6cbe7a', 'validated', '{"audio_key":"aa913342c210bd2dd222bd40560f6601ea34965350ae0d6fb4324bd0789d8d6f","entity_key":"d_alphabet_02:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"493eec25ae248c5cac0cf8dc96630fa1ff75c2edb71dc02131bb73004c6cbe7a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/aa913342c210bd2dd222bd40560f6601ea34965350ae0d6fb4324bd0789d8d6f.mp3"}'
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
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ab64971df491f251908d94ad99516c7e4b71e005f5f0c2fff313ba50b95304a2.mp3', 1332, '2026-09-14 13:36:29.060719', 'c6effbe5b316a05fdfc4bdc81ae391415ea8eea3db9e9b6859e617ec6c4e3a9a', 'validated', '{"audio_key":"ab64971df491f251908d94ad99516c7e4b71e005f5f0c2fff313ba50b95304a2","entity_key":"d_first_objects_02:3","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c6effbe5b316a05fdfc4bdc81ae391415ea8eea3db9e9b6859e617ec6c4e3a9a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/ab64971df491f251908d94ad99516c7e4b71e005f5f0c2fff313ba50b95304a2.mp3"}'
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
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ad4323989785fc44d40ad432b302e3e79fcd8f155fcca9696fa339ac8cd2cbca.mp3', 653, '2026-09-14 13:36:30.015313', '75318674c7945fecbf388b964c0220b31361be2b3356e9721eda1df6932e80cd', 'validated', '{"audio_key":"ad4323989785fc44d40ad432b302e3e79fcd8f155fcca9696fa339ac8cd2cbca","entity_key":"d_numbers_0_10_02:3","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"75318674c7945fecbf388b964c0220b31361be2b3356e9721eda1df6932e80cd","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/ad4323989785fc44d40ad432b302e3e79fcd8f155fcca9696fa339ac8cd2cbca.mp3"}'
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
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ae397dcaae598d7f6385faed4d9b50cde8e8392edc7e67de93b489f8d231efe7.mp3', 1018, '2026-09-14 13:36:30.989134', '3f3904bf4b17119bfa8b00a29857cd6d7ef4536ebc06faa7202505a9ccc241f7', 'validated', '{"audio_key":"ae397dcaae598d7f6385faed4d9b50cde8e8392edc7e67de93b489f8d231efe7","entity_key":"d_polite_words_01:2","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3f3904bf4b17119bfa8b00a29857cd6d7ef4536ebc06faa7202505a9ccc241f7","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/ae397dcaae598d7f6385faed4d9b50cde8e8392edc7e67de93b489f8d231efe7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-forms-signs_sign:3 -> audio/generated/tr-TR/dialogues/b0d759b72f095ba0764ead909bf7f346e7d0b33ca8ef0cfa3789372bb0cf41c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('61ec5bb0-9040-5d16-b298-200a0d46cd76', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-forms-signs_sign:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af6f1e50c1bc0bd272101e51e2dc710f9e42ff2cf1f26ace0e7083709a38e73c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2f53d46-e8b7-5993-835a-9c4403bca1dc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('61ec5bb0-9040-5d16-b298-200a0d46cd76', 1), 'af6f1e50c1bc0bd272101e51e2dc710f9e42ff2cf1f26ace0e7083709a38e73c',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b0d759b72f095ba0764ead909bf7f346e7d0b33ca8ef0cfa3789372bb0cf41c6.mp3', 1253, '2026-09-14 13:36:31.957034', '1642e483bfad6adf2eb075392a128389d2e245ba71b41dbcbfec5940a3ee37f1', 'validated', '{"audio_key":"b0d759b72f095ba0764ead909bf7f346e7d0b33ca8ef0cfa3789372bb0cf41c6","entity_key":"d_tr_tr-forms-signs_sign:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1642e483bfad6adf2eb075392a128389d2e245ba71b41dbcbfec5940a3ee37f1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/b0d759b72f095ba0764ead909bf7f346e7d0b33ca8ef0cfa3789372bb0cf41c6.mp3"}'
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
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b182ce60bac0d93a201833748f0b4eea3aa5964bf7f903867b0985ccde4893bc.mp3', 914, '2026-09-14 13:36:32.962892', '6d93d4498f6ecf9b8358d239a9dcfa563f5c00d3b0375dc04707ad1f7c1f1b78', 'validated', '{"audio_key":"b182ce60bac0d93a201833748f0b4eea3aa5964bf7f903867b0985ccde4893bc","entity_key":"d_first_sounds_02:1","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6d93d4498f6ecf9b8358d239a9dcfa563f5c00d3b0375dc04707ad1f7c1f1b78","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/b182ce60bac0d93a201833748f0b4eea3aa5964bf7f903867b0985ccde4893bc.mp3"}'
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
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b3c4a066855e558d21444e80cbf6ed76c67837d546d9f38017e1c041349beb02.mp3', 1097, '2026-09-14 13:36:34.337167', 'dc0604ddeb2c27b2496fb7d421f6d44dae5113640ac79bf5d810d1285d88386b', 'validated', '{"audio_key":"b3c4a066855e558d21444e80cbf6ed76c67837d546d9f38017e1c041349beb02","entity_key":"d_polite_words_02:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"dc0604ddeb2c27b2496fb7d421f6d44dae5113640ac79bf5d810d1285d88386b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/b3c4a066855e558d21444e80cbf6ed76c67837d546d9f38017e1c041349beb02.mp3"}'
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
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b6ddfc39f5108824f46bf3d9da6bdeec6d6402ae7a81c6203b4edbc1ded51a2d.mp3', 1018, '2026-09-14 13:36:35.455821', '9d85ac9054390f439bcdce2265bcf520ba19537e6d42f23698a2dceac712186c', 'validated', '{"audio_key":"b6ddfc39f5108824f46bf3d9da6bdeec6d6402ae7a81c6203b4edbc1ded51a2d","entity_key":"d_how_are_you_02:4","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9d85ac9054390f439bcdce2265bcf520ba19537e6d42f23698a2dceac712186c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/b6ddfc39f5108824f46bf3d9da6bdeec6d6402ae7a81c6203b4edbc1ded51a2d.mp3"}'
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
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/bae45eddd78b0a7380df582f1d67c0b950ed6e2b73eeb926cfda03334f827ef9.mp3', 1201, '2026-09-14 13:36:36.505511', '3fbf1a6a81cbd34e4cba887931f03e02907123450c9ffa0c11cdc948e43b783a', 'validated', '{"audio_key":"bae45eddd78b0a7380df582f1d67c0b950ed6e2b73eeb926cfda03334f827ef9","entity_key":"d_tr_meaning_help:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3fbf1a6a81cbd34e4cba887931f03e02907123450c9ffa0c11cdc948e43b783a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/bae45eddd78b0a7380df582f1d67c0b950ed6e2b73eeb926cfda03334f827ef9.mp3"}'
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
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/bcf5ce189de8355a4bc9ff8f3e4e3f3ce7fe68eb62cdb5f6889e8815ea8a8bfa.mp3', 1488, '2026-09-14 13:36:37.541228', 'aa249d204126ee9e6815edd38a8d881fc4aafa36ce9cca0148c387defcf9f5d4', 'validated', '{"audio_key":"bcf5ce189de8355a4bc9ff8f3e4e3f3ce7fe68eb62cdb5f6889e8815ea8a8bfa","entity_key":"d_survival_words_02:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"aa249d204126ee9e6815edd38a8d881fc4aafa36ce9cca0148c387defcf9f5d4","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/bcf5ce189de8355a4bc9ff8f3e4e3f3ce7fe68eb62cdb5f6889e8815ea8a8bfa.mp3"}'
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
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/bde85941450a1c626d4a0aeb6f1bfe49c5e7651df9191eebd72d411b18dc0f4f.mp3', 783, '2026-09-14 13:36:38.478497', '5b74d04beffd079bbba4cddcfd344c7a3d64d762676b78099fa5fdc21e82b6a9', 'validated', '{"audio_key":"bde85941450a1c626d4a0aeb6f1bfe49c5e7651df9191eebd72d411b18dc0f4f","entity_key":"d_first_greetings_02:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5b74d04beffd079bbba4cddcfd344c7a3d64d762676b78099fa5fdc21e82b6a9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/bde85941450a1c626d4a0aeb6f1bfe49c5e7651df9191eebd72d411b18dc0f4f.mp3"}'
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
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/bff8e88d938fbe049ee2fa3ce1426dff85999b5dd8be289dde2a4ae8de4b440c.mp3', 862, '2026-09-14 13:36:39.454898', '63ab7ef944f924fb20d592de2c61d518dd7a5259d828e57f459285de6553570d', 'validated', '{"audio_key":"bff8e88d938fbe049ee2fa3ce1426dff85999b5dd8be289dde2a4ae8de4b440c","entity_key":"d_polite_words_02:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"63ab7ef944f924fb20d592de2c61d518dd7a5259d828e57f459285de6553570d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/bff8e88d938fbe049ee2fa3ce1426dff85999b5dd8be289dde2a4ae8de4b440c.mp3"}'
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
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c0d1ce4371c9cf06681a90675830f355e2bac0cd232be01c258f8d37f06d3c50.mp3', 1697, '2026-09-14 13:36:40.597302', '666c9a61cb0d5d81d75f1e7acdc48f7e6e0594270c1c87626f4c6ab6de4cd788', 'validated', '{"audio_key":"c0d1ce4371c9cf06681a90675830f355e2bac0cd232be01c258f8d37f06d3c50","entity_key":"d_first_conversation_01:4","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"666c9a61cb0d5d81d75f1e7acdc48f7e6e0594270c1c87626f4c6ab6de4cd788","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/c0d1ce4371c9cf06681a90675830f355e2bac0cd232be01c258f8d37f06d3c50.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_ready_intro:1 -> audio/generated/tr-TR/dialogues/c2000420048a54e9add11618a7f7aaa2db88ad0cf19355e6e514e9502b20a6e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('323db210-b774-5dab-8ff9-e56f0e5ac1b6', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_ready_intro:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba274eeb61fa629783afc0dee5d78dfcdba88964cad2c73eb02e6f6a43e959e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d1e97d9-688b-5f72-a0ae-e8f125b71371', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('323db210-b774-5dab-8ff9-e56f0e5ac1b6', 1), 'ba274eeb61fa629783afc0dee5d78dfcdba88964cad2c73eb02e6f6a43e959e9',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c2000420048a54e9add11618a7f7aaa2db88ad0cf19355e6e514e9502b20a6e2.mp3', 1671, '2026-09-14 13:36:41.686524', '62cb0960e3995f2fd0bfe067ba23dc602dde8420d37b7c1a57daed8eff84edbb', 'validated', '{"audio_key":"c2000420048a54e9add11618a7f7aaa2db88ad0cf19355e6e514e9502b20a6e2","entity_key":"d_tr_ready_intro:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"62cb0960e3995f2fd0bfe067ba23dc602dde8420d37b7c1a57daed8eff84edbb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/c2000420048a54e9add11618a7f7aaa2db88ad0cf19355e6e514e9502b20a6e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-about-me_origin_age:5 -> audio/generated/tr-TR/dialogues/c2c0c84bb8ae121e8565f8441c5da0aca9d9430acecb708cb12ef5b27198aeb9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a94756eb-5b78-5437-b76a-38c4db1dec01', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-about-me_origin_age:5')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a23b9908942e5f13ce4941b2504a44285f1f52e140a21b03e50f40bc1e0f877d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9eaaf98-4052-54ab-ae30-7bcb82c0508e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a94756eb-5b78-5437-b76a-38c4db1dec01', 1), 'a23b9908942e5f13ce4941b2504a44285f1f52e140a21b03e50f40bc1e0f877d',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c2c0c84bb8ae121e8565f8441c5da0aca9d9430acecb708cb12ef5b27198aeb9.mp3', 1201, '2026-09-14 13:36:42.647409', '5f3da65cbe23d05bcc2bfd6c8a5b6507649fc99d60b6b2a06506e8a6c1daddad', 'validated', '{"audio_key":"c2c0c84bb8ae121e8565f8441c5da0aca9d9430acecb708cb12ef5b27198aeb9","entity_key":"d_tr_tr-about-me_origin_age:5","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5f3da65cbe23d05bcc2bfd6c8a5b6507649fc99d60b6b2a06506e8a6c1daddad","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/c2c0c84bb8ae121e8565f8441c5da0aca9d9430acecb708cb12ef5b27198aeb9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-forms-signs_sign:2 -> audio/generated/tr-TR/dialogues/c396eb276c49f956924b0acacbb24806da496f229656487748865d8d8bae4610.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8936c13f-6928-50e2-9d16-4bd0030bbc02', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-forms-signs_sign:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '276733d7582a40f11252cf7faf5ae48dab91a94165d8e01763d7831399f01bcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('27987b74-f5dc-59a9-a127-af8e78f940f2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8936c13f-6928-50e2-9d16-4bd0030bbc02', 1), '276733d7582a40f11252cf7faf5ae48dab91a94165d8e01763d7831399f01bcb',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c396eb276c49f956924b0acacbb24806da496f229656487748865d8d8bae4610.mp3', 679, '2026-09-14 13:36:43.577472', '1734e4e83da1440b2d5572b45dafacad757e41a4c7b109bf2ad838bac0a8a92e', 'validated', '{"audio_key":"c396eb276c49f956924b0acacbb24806da496f229656487748865d8d8bae4610","entity_key":"d_tr_tr-forms-signs_sign:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1734e4e83da1440b2d5572b45dafacad757e41a4c7b109bf2ad838bac0a8a92e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/c396eb276c49f956924b0acacbb24806da496f229656487748865d8d8bae4610.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-forms-signs_sign:4 -> audio/generated/tr-TR/dialogues/c396eb276c49f956924b0acacbb24806da496f229656487748865d8d8bae4610.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2c9975b6-503b-5f20-97a8-a65b8ef37611', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-forms-signs_sign:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '276733d7582a40f11252cf7faf5ae48dab91a94165d8e01763d7831399f01bcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee4ba4a3-ad26-5af7-b604-b9d31422c0ca', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2c9975b6-503b-5f20-97a8-a65b8ef37611', 1), '276733d7582a40f11252cf7faf5ae48dab91a94165d8e01763d7831399f01bcb',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c396eb276c49f956924b0acacbb24806da496f229656487748865d8d8bae4610.mp3', 679, '2026-09-14 13:36:43.577472', '1734e4e83da1440b2d5572b45dafacad757e41a4c7b109bf2ad838bac0a8a92e', 'validated', '{"audio_key":"c396eb276c49f956924b0acacbb24806da496f229656487748865d8d8bae4610","entity_key":"d_tr_tr-forms-signs_sign:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1734e4e83da1440b2d5572b45dafacad757e41a4c7b109bf2ad838bac0a8a92e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/c396eb276c49f956924b0acacbb24806da496f229656487748865d8d8bae4610.mp3"}'
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
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c4b477f21076b76ad6cf9e908a0c66390d0170207fa60d54b33f978e1363aac7.mp3', 1097, '2026-09-14 13:36:44.547802', '4dfe8c56a34901443a2ca4f8ce1ba01e8c60616cb70d65b1e610185c7e37c63a', 'validated', '{"audio_key":"c4b477f21076b76ad6cf9e908a0c66390d0170207fa60d54b33f978e1363aac7","entity_key":"d_alphabet_01:4","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4dfe8c56a34901443a2ca4f8ce1ba01e8c60616cb70d65b1e610185c7e37c63a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/c4b477f21076b76ad6cf9e908a0c66390d0170207fa60d54b33f978e1363aac7.mp3"}'
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
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c4f2cead936339fe5709c3881cca6d2a489d281b83fe02d6d4462614953340e7.mp3', 1071, '2026-09-14 13:36:45.546418', 'fc0cfd107adcdac5fbe03e7c43fde704789770a5ed98bc5c9565578af23ff3cc', 'validated', '{"audio_key":"c4f2cead936339fe5709c3881cca6d2a489d281b83fe02d6d4462614953340e7","entity_key":"d_tr_ready_repair:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"fc0cfd107adcdac5fbe03e7c43fde704789770a5ed98bc5c9565578af23ff3cc","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/c4f2cead936339fe5709c3881cca6d2a489d281b83fe02d6d4462614953340e7.mp3"}'
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
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/c5405cd9878b133429f448494318aed1383426e3cff73c1bfb36fd376bb318a6.mp3', 1488, '2026-09-14 13:36:46.562799', '55b821f44b0304b4e691d239fc86a218a040bea1a16a65b3e7699719a0e8bbd9', 'validated', '{"audio_key":"c5405cd9878b133429f448494318aed1383426e3cff73c1bfb36fd376bb318a6","entity_key":"d_alphabet_02:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"55b821f44b0304b4e691d239fc86a218a040bea1a16a65b3e7699719a0e8bbd9","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/c5405cd9878b133429f448494318aed1383426e3cff73c1bfb36fd376bb318a6.mp3"}'
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
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/cb199eb38ba8a7db8ebeafc1941b963734b88c53844f1b69c75d3913c2306873.mp3', 1149, '2026-09-14 13:36:47.549693', 'f7fd2253fb92902d16006996a3be45dcbe62b5c3cea53ce236178f67bb04f7ec', 'validated', '{"audio_key":"cb199eb38ba8a7db8ebeafc1941b963734b88c53844f1b69c75d3913c2306873","entity_key":"d_first_objects_01:4","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f7fd2253fb92902d16006996a3be45dcbe62b5c3cea53ce236178f67bb04f7ec","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/cb199eb38ba8a7db8ebeafc1941b963734b88c53844f1b69c75d3913c2306873.mp3"}'
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
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/cdcf90f381c5095710b17c25be7ca3df2a414803225f7a20fa249155d165fa52.mp3', 1488, '2026-09-14 13:36:48.563283', 'e42ed50c3e18219c10f612dc9007b3aa2a250b64021430179d84adac8263c7f8', 'validated', '{"audio_key":"cdcf90f381c5095710b17c25be7ca3df2a414803225f7a20fa249155d165fa52","entity_key":"d_survival_words_02:1","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e42ed50c3e18219c10f612dc9007b3aa2a250b64021430179d84adac8263c7f8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/cdcf90f381c5095710b17c25be7ca3df2a414803225f7a20fa249155d165fa52.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-forms-signs_form:2 -> audio/generated/tr-TR/dialogues/ce1424c0587be9224dabbe51776c3ec9fd4f91dfc55a9fc7a0793d9ccf2fbb48.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9c71601d-fd3e-594e-819f-704a8f12ea27', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-forms-signs_form:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ef96e5af46d2b1cca55f4d95dcfd003a1f9cb2509f5a426ad18546ffd6efd33'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96a76cc8-72b9-5625-a97c-01cbda01f3e2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9c71601d-fd3e-594e-819f-704a8f12ea27', 1), '0ef96e5af46d2b1cca55f4d95dcfd003a1f9cb2509f5a426ad18546ffd6efd33',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ce1424c0587be9224dabbe51776c3ec9fd4f91dfc55a9fc7a0793d9ccf2fbb48.mp3', 1253, '2026-09-14 13:36:49.587720', '8abf368dd8a03edf31f168846be217536996b7c16906b5e9f8b0242e5a792a92', 'validated', '{"audio_key":"ce1424c0587be9224dabbe51776c3ec9fd4f91dfc55a9fc7a0793d9ccf2fbb48","entity_key":"d_tr_tr-forms-signs_form:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8abf368dd8a03edf31f168846be217536996b7c16906b5e9f8b0242e5a792a92","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/ce1424c0587be9224dabbe51776c3ec9fd4f91dfc55a9fc7a0793d9ccf2fbb48.mp3"}'
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
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/d4353dedc7ffd04ba7b79051e6bfbfe5084460ee4b23e465aae4a30b067d887e.mp3', 1436, '2026-09-14 13:36:50.629487', '17cb865013b6cb1af1e7238d7b2da8540e73022da2ce15f04036c2a19ee0a990', 'validated', '{"audio_key":"d4353dedc7ffd04ba7b79051e6bfbfe5084460ee4b23e465aae4a30b067d887e","entity_key":"d_polite_words_01:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"17cb865013b6cb1af1e7238d7b2da8540e73022da2ce15f04036c2a19ee0a990","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/d4353dedc7ffd04ba7b79051e6bfbfe5084460ee4b23e465aae4a30b067d887e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-real-world-gate_public_task:6 -> audio/generated/tr-TR/dialogues/daa1a69b6c47d4537cdbcdceec8f59f7a296f66fbec0bcedc93e676d6e451082.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('10038457-8241-5611-bc3f-8f51b8b047f2', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-real-world-gate_public_task:6')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '276733d7582a40f11252cf7faf5ae48dab91a94165d8e01763d7831399f01bcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea74c5a6-cbf9-5518-a025-fc37391a7943', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('10038457-8241-5611-bc3f-8f51b8b047f2', 1), '276733d7582a40f11252cf7faf5ae48dab91a94165d8e01763d7831399f01bcb',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/daa1a69b6c47d4537cdbcdceec8f59f7a296f66fbec0bcedc93e676d6e451082.mp3', 1097, '2026-09-14 13:36:51.621179', 'f169a07dae67c4946dd5182e19e981bb1655216b06585294d2642621428934e4', 'validated', '{"audio_key":"daa1a69b6c47d4537cdbcdceec8f59f7a296f66fbec0bcedc93e676d6e451082","entity_key":"d_tr_tr-real-world-gate_public_task:6","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f169a07dae67c4946dd5182e19e981bb1655216b06585294d2642621428934e4","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/daa1a69b6c47d4537cdbcdceec8f59f7a296f66fbec0bcedc93e676d6e451082.mp3"}'
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
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ddec6d37ce47ca8e315463ae94cc8c8e5a212c1937be762d925c7a4ce4834890.mp3', 1567, '2026-09-14 13:36:52.664777', '7375488041060ec4c593dbd2d72f2b21c6f7c2b18f34afda543d06ad0e2e0461', 'validated', '{"audio_key":"ddec6d37ce47ca8e315463ae94cc8c8e5a212c1937be762d925c7a4ce4834890","entity_key":"d_how_are_you_02:2","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7375488041060ec4c593dbd2d72f2b21c6f7c2b18f34afda543d06ad0e2e0461","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/ddec6d37ce47ca8e315463ae94cc8c8e5a212c1937be762d925c7a4ce4834890.mp3"}'
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
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/de03f2bfbba76f98f727de1fc6173c6863a80a499f065b026c32593a89a8bcc3.mp3', 1280, '2026-09-14 13:36:53.651678', '529522e6c8c9006c42cb6d297b8c6a9a739d4fe6cb03388b5a017b1651a44df5', 'validated', '{"audio_key":"de03f2bfbba76f98f727de1fc6173c6863a80a499f065b026c32593a89a8bcc3","entity_key":"d_first_objects_01:2","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"529522e6c8c9006c42cb6d297b8c6a9a739d4fe6cb03388b5a017b1651a44df5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/de03f2bfbba76f98f727de1fc6173c6863a80a499f065b026c32593a89a8bcc3.mp3"}'
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
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/df5b3fe7fb55c6510197ab2d380e76f199186411cf403df85e1a5274fb0584e2.mp3', 1253, '2026-09-14 13:36:54.667369', 'd024f70f600a809757deb6f44c1b73f4592019ef9c16d5f53d0d9069d5a963d1', 'validated', '{"audio_key":"df5b3fe7fb55c6510197ab2d380e76f199186411cf403df85e1a5274fb0584e2","entity_key":"d_alphabet_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d024f70f600a809757deb6f44c1b73f4592019ef9c16d5f53d0d9069d5a963d1","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/df5b3fe7fb55c6510197ab2d380e76f199186411cf403df85e1a5274fb0584e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-real-life-numbers_price_day:3 -> audio/generated/tr-TR/dialogues/df750a23d3f7780bb823ffd624915aad74eed65fd0d0ad4154e5c0a647aeec28.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ea385899-b755-5448-bb06-053b815f71f4', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-real-life-numbers_price_day:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4e4f470ade3ade16f0efe64ca4d01cf54018c0a13a0a9ef8ad3b25b1f29e6366'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91ab1629-9f1a-554f-992e-0a4c3739dae9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ea385899-b755-5448-bb06-053b815f71f4', 1), '4e4f470ade3ade16f0efe64ca4d01cf54018c0a13a0a9ef8ad3b25b1f29e6366',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/df750a23d3f7780bb823ffd624915aad74eed65fd0d0ad4154e5c0a647aeec28.mp3', 1201, '2026-09-14 13:36:55.625402', 'f0ed8afdddf28968bb9e4ef12e5fa4b1e96509741cf58d0e2f9996a9168d7923', 'validated', '{"audio_key":"df750a23d3f7780bb823ffd624915aad74eed65fd0d0ad4154e5c0a647aeec28","entity_key":"d_tr_tr-real-life-numbers_price_day:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f0ed8afdddf28968bb9e4ef12e5fa4b1e96509741cf58d0e2f9996a9168d7923","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/df750a23d3f7780bb823ffd624915aad74eed65fd0d0ad4154e5c0a647aeec28.mp3"}'
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
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/e2cd24790ac2d029eaacc2c02217b5b7aa33cf3aa7dd15ccb262d9320eea10ee.mp3', 1567, '2026-09-14 13:36:56.645825', 'ae953fdd374d337d146a6ec0329eefed8770f679bec2a10c857ea8ebab1f4f0c', 'validated', '{"audio_key":"e2cd24790ac2d029eaacc2c02217b5b7aa33cf3aa7dd15ccb262d9320eea10ee","entity_key":"d_my_name_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae953fdd374d337d146a6ec0329eefed8770f679bec2a10c857ea8ebab1f4f0c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/e2cd24790ac2d029eaacc2c02217b5b7aa33cf3aa7dd15ccb262d9320eea10ee.mp3"}'
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
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/e3f040e706af63e9d83629ccd41aca47ca4797a22d69223305eb9862a7657ed8.mp3', 1750, '2026-09-14 13:36:57.709846', '2484a033d4a6a8029438f5b36445021f2df47a2ae09c754e651ee4c88e2fe265', 'validated', '{"audio_key":"e3f040e706af63e9d83629ccd41aca47ca4797a22d69223305eb9862a7657ed8","entity_key":"d_how_are_you_01:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"2484a033d4a6a8029438f5b36445021f2df47a2ae09c754e651ee4c88e2fe265","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/e3f040e706af63e9d83629ccd41aca47ca4797a22d69223305eb9862a7657ed8.mp3"}'
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
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/e6916241de23349c5a1bd93c45210303dd2eafea6e3142f7c2658af0a93f1f64.mp3', 914, '2026-09-14 13:36:58.688596', 'f554185b6720191f263db77ee656882ffdd4ff3b8fa0e4f62eb94bc4b91c27ac', 'validated', '{"audio_key":"e6916241de23349c5a1bd93c45210303dd2eafea6e3142f7c2658af0a93f1f64","entity_key":"d_first_objects_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f554185b6720191f263db77ee656882ffdd4ff3b8fa0e4f62eb94bc4b91c27ac","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/e6916241de23349c5a1bd93c45210303dd2eafea6e3142f7c2658af0a93f1f64.mp3"}'
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
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/e97cdbee512483b7dc0c9ef2520d5c70aec279074156acf151cc1525e2410aa1.mp3', 1018, '2026-09-14 13:36:59.675026', '0a3aa99139b28757eddd9326124108e4388ddd3839877177223ab605199812f7', 'validated', '{"audio_key":"e97cdbee512483b7dc0c9ef2520d5c70aec279074156acf151cc1525e2410aa1","entity_key":"d_survival_words_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0a3aa99139b28757eddd9326124108e4388ddd3839877177223ab605199812f7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/e97cdbee512483b7dc0c9ef2520d5c70aec279074156acf151cc1525e2410aa1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-real-world-gate_meet:1 -> audio/generated/tr-TR/dialogues/eaa50812b230884f1d3cff93b4db4c774730553bf8dc11a22b7d414131d06105.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f54e61dc-bd23-523f-98b6-0ebc70f0a8d9', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-real-world-gate_meet:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1bf7f849feba928a73621f0fd7bacd33cb62df438a9343e2888be274e0841a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46163beb-37bc-5b20-97cc-85491e36b34d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f54e61dc-bd23-523f-98b6-0ebc70f0a8d9', 1), 'b1bf7f849feba928a73621f0fd7bacd33cb62df438a9343e2888be274e0841a0',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/eaa50812b230884f1d3cff93b4db4c774730553bf8dc11a22b7d414131d06105.mp3', 1071, '2026-09-14 13:37:00.627714', '628ab9adf5f86f8cf8f7b7a12c295060cca4db4be42336ae63343c10496ac199', 'validated', '{"audio_key":"eaa50812b230884f1d3cff93b4db4c774730553bf8dc11a22b7d414131d06105","entity_key":"d_tr_tr-real-world-gate_meet:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"628ab9adf5f86f8cf8f7b7a12c295060cca4db4be42336ae63343c10496ac199","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/eaa50812b230884f1d3cff93b4db4c774730553bf8dc11a22b7d414131d06105.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-forms-signs_form:4 -> audio/generated/tr-TR/dialogues/ec24098f22c08c3a09d85c55e825fcf07836e8585bdf7da4421aba0d8bb6054b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('96389fae-1f6d-504d-a63f-c7b1a910348d', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-forms-signs_form:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b53dbd9118375de57c9121b6d261af36f09eee29183f33599a071a3573476f89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e024425b-858b-5362-90d3-e6e93412b919', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('96389fae-1f6d-504d-a63f-c7b1a910348d', 1), 'b53dbd9118375de57c9121b6d261af36f09eee29183f33599a071a3573476f89',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ec24098f22c08c3a09d85c55e825fcf07836e8585bdf7da4421aba0d8bb6054b.mp3', 1071, '2026-09-14 13:37:01.567189', 'fd1cdc34542db9849552e2b0c784c1e4bf9db745fe95bbb7e9036ef602156312', 'validated', '{"audio_key":"ec24098f22c08c3a09d85c55e825fcf07836e8585bdf7da4421aba0d8bb6054b","entity_key":"d_tr_tr-forms-signs_form:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fd1cdc34542db9849552e2b0c784c1e4bf9db745fe95bbb7e9036ef602156312","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/ec24098f22c08c3a09d85c55e825fcf07836e8585bdf7da4421aba0d8bb6054b.mp3"}'
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
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ecdb8b7cae56ad5e06b442de04f2f39846ebdb56bb66ebf3319cefabdef9e501.mp3', 966, '2026-09-14 13:37:02.516303', '1eb04e8c04a54f758d23ab598396c6e5e5f3dfe1f104a8e6f88326d035a70658', 'validated', '{"audio_key":"ecdb8b7cae56ad5e06b442de04f2f39846ebdb56bb66ebf3319cefabdef9e501","entity_key":"d_numbers_0_10_01:2","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1eb04e8c04a54f758d23ab598396c6e5e5f3dfe1f104a8e6f88326d035a70658","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/ecdb8b7cae56ad5e06b442de04f2f39846ebdb56bb66ebf3319cefabdef9e501.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-about-me_feeling_family:3 -> audio/generated/tr-TR/dialogues/efebc5c953187c7676d79ea130fd3e572238e597d00eaa2d612132818e452778.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ae312668-13d3-561e-87b0-02dc6c4d4e22', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-about-me_feeling_family:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '342da7edd6e166e82cb11f4f34b321ddf35b94941721a36cb539cad57ea7196e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28bb56c5-3fe0-5dcb-9c5f-2bd3d3b05c30', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ae312668-13d3-561e-87b0-02dc6c4d4e22', 1), '342da7edd6e166e82cb11f4f34b321ddf35b94941721a36cb539cad57ea7196e',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/efebc5c953187c7676d79ea130fd3e572238e597d00eaa2d612132818e452778.mp3', 1488, '2026-09-14 13:37:03.536265', '6c163a8c6e404e89a464a1f443293bd065a3ab1d401f2e810a5291af37edb7ac', 'validated', '{"audio_key":"efebc5c953187c7676d79ea130fd3e572238e597d00eaa2d612132818e452778","entity_key":"d_tr_tr-about-me_feeling_family:3","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6c163a8c6e404e89a464a1f443293bd065a3ab1d401f2e810a5291af37edb7ac","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/efebc5c953187c7676d79ea130fd3e572238e597d00eaa2d612132818e452778.mp3"}'
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
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f01beda584780fd631cbc43c70c0ec4c0921e6a22118164cbc08e155be001924.mp3', 1488, '2026-09-14 13:37:04.563817', '291de02b01d99e864c18e77d51a5f9410c7ea535974b95d3ab9b5e0758889ce8', 'validated', '{"audio_key":"f01beda584780fd631cbc43c70c0ec4c0921e6a22118164cbc08e155be001924","entity_key":"d_tr_ready_repair:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"291de02b01d99e864c18e77d51a5f9410c7ea535974b95d3ab9b5e0758889ce8","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/f01beda584780fd631cbc43c70c0ec4c0921e6a22118164cbc08e155be001924.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-forms-signs_form:3 -> audio/generated/tr-TR/dialogues/f0ac9317a2d8dc748ec6855ca0ed5911bbff4e6581336e228dad1c3bf180369e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6d93c410-b9e2-5024-a4d5-2bff8638ccaa', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-forms-signs_form:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c2cdc48ddf1eecd9b3db19492f02f63d133e489d8f00b0b1d77785c8e1f51bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('029c2568-2933-590e-b413-fad893246f13', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6d93c410-b9e2-5024-a4d5-2bff8638ccaa', 1), '3c2cdc48ddf1eecd9b3db19492f02f63d133e489d8f00b0b1d77785c8e1f51bc',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f0ac9317a2d8dc748ec6855ca0ed5911bbff4e6581336e228dad1c3bf180369e.mp3', 914, '2026-09-14 13:37:05.496580', '1e310c1b11430a986594b6c02ac331140914bbbce8e705a11b9989d67a06397f', 'validated', '{"audio_key":"f0ac9317a2d8dc748ec6855ca0ed5911bbff4e6581336e228dad1c3bf180369e","entity_key":"d_tr_tr-forms-signs_form:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1e310c1b11430a986594b6c02ac331140914bbbce8e705a11b9989d67a06397f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/f0ac9317a2d8dc748ec6855ca0ed5911bbff4e6581336e228dad1c3bf180369e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-real-world-gate_meet:4 -> audio/generated/tr-TR/dialogues/f0d25b2975e03092837255cf8992995d9636e103ee8d66ba880d33576f5841c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1e3834a2-fc5d-59c7-a80f-4b14ad0a5855', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-real-world-gate_meet:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b53dbd9118375de57c9121b6d261af36f09eee29183f33599a071a3573476f89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bcdf9d18-c0da-561d-a67c-0e5d73d303e0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1e3834a2-fc5d-59c7-a80f-4b14ad0a5855', 1), 'b53dbd9118375de57c9121b6d261af36f09eee29183f33599a071a3573476f89',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f0d25b2975e03092837255cf8992995d9636e103ee8d66ba880d33576f5841c3.mp3', 1149, '2026-09-14 13:37:06.480780', '42c2e9080da54244c9680ee2cea019976915426051b7cfbefe68d1e4a8b2d56f', 'validated', '{"audio_key":"f0d25b2975e03092837255cf8992995d9636e103ee8d66ba880d33576f5841c3","entity_key":"d_tr_tr-real-world-gate_meet:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"42c2e9080da54244c9680ee2cea019976915426051b7cfbefe68d1e4a8b2d56f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/f0d25b2975e03092837255cf8992995d9636e103ee8d66ba880d33576f5841c3.mp3"}'
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
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f37af8b4dcfbcf464f26703aff763c50019b519d73d19f405a2090004318cdde.mp3', 914, '2026-09-14 13:37:07.513697', '3159aa7ad3a6b7fde5429502f464a984d84c3042fc2777a5c1cb4cc92885570a', 'validated', '{"audio_key":"f37af8b4dcfbcf464f26703aff763c50019b519d73d19f405a2090004318cdde","entity_key":"d_survival_words_02:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"3159aa7ad3a6b7fde5429502f464a984d84c3042fc2777a5c1cb4cc92885570a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/f37af8b4dcfbcf464f26703aff763c50019b519d73d19f405a2090004318cdde.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_tr-about-me_feeling_family:4 -> audio/generated/tr-TR/dialogues/fc9e21edd9f779f1b26f1b4bf3dda25685d988d4d2d3305f0dfb7b9c975dae9e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('55419b7c-4a95-5977-9753-431b0b1bdd96', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_tr-about-me_feeling_family:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a59410baf74d9d777a5292e9cb38a277e51d256a5ae9caec774b4684ebc289e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20d0869e-8efa-5bdc-878c-b9ad700969c4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('55419b7c-4a95-5977-9753-431b0b1bdd96', 1), '3a59410baf74d9d777a5292e9cb38a277e51d256a5ae9caec774b4684ebc289e',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/fc9e21edd9f779f1b26f1b4bf3dda25685d988d4d2d3305f0dfb7b9c975dae9e.mp3', 1332, '2026-09-14 13:37:08.486401', 'ac8f0ae576054a355935999118d3a5e6a2b3b725c80b78ca2fee0cdf833c8940', 'validated', '{"audio_key":"fc9e21edd9f779f1b26f1b4bf3dda25685d988d4d2d3305f0dfb7b9c975dae9e","entity_key":"d_tr_tr-about-me_feeling_family:4","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ac8f0ae576054a355935999118d3a5e6a2b3b725c80b78ca2fee0cdf833c8940","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/fc9e21edd9f779f1b26f1b4bf3dda25685d988d4d2d3305f0dfb7b9c975dae9e.mp3"}'
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
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/fd6f8676434118d523530d19172ceb877f89b407716b5bb007a05bd438f898a9.mp3', 1619, '2026-09-14 13:37:09.590375', '85a7b8a3989ffcd60aa26193a0e1dd60d5561de785c1c85ca6eea184f0817a82', 'validated', '{"audio_key":"fd6f8676434118d523530d19172ceb877f89b407716b5bb007a05bd438f898a9","entity_key":"d_my_name_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"85a7b8a3989ffcd60aa26193a0e1dd60d5561de785c1c85ca6eea184f0817a82","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/fd6f8676434118d523530d19172ceb877f89b407716b5bb007a05bd438f898a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_tr_meaning_help:3 -> audio/generated/tr-TR/dialogues/ff1fb665319ee54669ac3bfacc0cf5f7ab7417b60743f4a08d35216e021af41a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fbbc4cd4-b285-5a31-84d1-95f18ccc9907', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_tr_meaning_help:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '83599425f5a51529a8d0053dcec1a133673c013a4864a45ea436228a09c8c4fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('97e43cb1-b7c0-5281-b735-16747c201580', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fbbc4cd4-b285-5a31-84d1-95f18ccc9907', 1), '83599425f5a51529a8d0053dcec1a133673c013a4864a45ea436228a09c8c4fb',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ff1fb665319ee54669ac3bfacc0cf5f7ab7417b60743f4a08d35216e021af41a.mp3', 1201, '2026-09-14 13:37:10.603217', 'c0d146030b02bf2b7105c37cfac64b0f9f9cbd1fa6e802eb190b42493ec70218', 'validated', '{"audio_key":"ff1fb665319ee54669ac3bfacc0cf5f7ab7417b60743f4a08d35216e021af41a","entity_key":"d_tr_meaning_help:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c0d146030b02bf2b7105c37cfac64b0f9f9cbd1fa6e802eb190b42493ec70218","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/ff1fb665319ee54669ac3bfacc0cf5f7ab7417b60743f4a08d35216e021af41a.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/00245389453d750a007dce50214060f6a6d606abb6e1e9530535185457d7a1c8.mp3', 1071, '2026-09-14 13:37:11.606106', '9a8188061a3edb565ae2c9fcc9c1458389fe8a12a43e969f93c1a1fb57fdb1bd', 'validated', '{"audio_key":"00245389453d750a007dce50214060f6a6d606abb6e1e9530535185457d7a1c8","entity_key":"lx_first_sounds_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9a8188061a3edb565ae2c9fcc9c1458389fe8a12a43e969f93c1a1fb57fdb1bd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/00245389453d750a007dce50214060f6a6d606abb6e1e9530535185457d7a1c8.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/00245389453d750a007dce50214060f6a6d606abb6e1e9530535185457d7a1c8.mp3', 1071, '2026-09-14 13:37:11.606106', '9a8188061a3edb565ae2c9fcc9c1458389fe8a12a43e969f93c1a1fb57fdb1bd', 'validated', '{"audio_key":"00245389453d750a007dce50214060f6a6d606abb6e1e9530535185457d7a1c8","entity_key":"wf_first_sounds_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9a8188061a3edb565ae2c9fcc9c1458389fe8a12a43e969f93c1a1fb57fdb1bd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/00245389453d750a007dce50214060f6a6d606abb6e1e9530535185457d7a1c8.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/0dedd1b87b5f28148d8f7db11c457a8c6195fb97baeef525a913de010efa90f9.mp3', 862, '2026-09-14 13:37:12.543270', '60e157006b3a7ac8f48e1b635a4acc3a04e79d1a17722830b094919b5ca6b5a3', 'validated', '{"audio_key":"0dedd1b87b5f28148d8f7db11c457a8c6195fb97baeef525a913de010efa90f9","entity_key":"lx_alphabet_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"60e157006b3a7ac8f48e1b635a4acc3a04e79d1a17722830b094919b5ca6b5a3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/0dedd1b87b5f28148d8f7db11c457a8c6195fb97baeef525a913de010efa90f9.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/0dedd1b87b5f28148d8f7db11c457a8c6195fb97baeef525a913de010efa90f9.mp3', 862, '2026-09-14 13:37:12.543270', '60e157006b3a7ac8f48e1b635a4acc3a04e79d1a17722830b094919b5ca6b5a3', 'validated', '{"audio_key":"0dedd1b87b5f28148d8f7db11c457a8c6195fb97baeef525a913de010efa90f9","entity_key":"wf_alphabet_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"60e157006b3a7ac8f48e1b635a4acc3a04e79d1a17722830b094919b5ca6b5a3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/0dedd1b87b5f28148d8f7db11c457a8c6195fb97baeef525a913de010efa90f9.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/0ecaa4d26fc396f8480ff4dcb5bce35694f52b1707df16a9f7a489da0da9a648.mp3', 731, '2026-09-14 13:37:13.471561', '443745bcf9d279aef55b9769149eeec44ed43e7cb2d575decb4c0033ef792810', 'validated', '{"audio_key":"0ecaa4d26fc396f8480ff4dcb5bce35694f52b1707df16a9f7a489da0da9a648","entity_key":"lx_alphabet_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"443745bcf9d279aef55b9769149eeec44ed43e7cb2d575decb4c0033ef792810","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/0ecaa4d26fc396f8480ff4dcb5bce35694f52b1707df16a9f7a489da0da9a648.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/0ecaa4d26fc396f8480ff4dcb5bce35694f52b1707df16a9f7a489da0da9a648.mp3', 731, '2026-09-14 13:37:13.471561', '443745bcf9d279aef55b9769149eeec44ed43e7cb2d575decb4c0033ef792810', 'validated', '{"audio_key":"0ecaa4d26fc396f8480ff4dcb5bce35694f52b1707df16a9f7a489da0da9a648","entity_key":"wf_alphabet_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"443745bcf9d279aef55b9769149eeec44ed43e7cb2d575decb4c0033ef792810","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/0ecaa4d26fc396f8480ff4dcb5bce35694f52b1707df16a9f7a489da0da9a648.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a.mp3', 1149, '2026-09-14 13:37:14.455301', '0a5e50687ac40e39401d9fac82fadbd64962d3311f8e6d32dc93fb07bcfa12da', 'validated', '{"audio_key":"1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a","entity_key":"lx_first_conversation_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0a5e50687ac40e39401d9fac82fadbd64962d3311f8e6d32dc93fb07bcfa12da","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a.mp3', 1149, '2026-09-14 13:37:14.455301', '0a5e50687ac40e39401d9fac82fadbd64962d3311f8e6d32dc93fb07bcfa12da', 'validated', '{"audio_key":"1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a","entity_key":"wf_first_conversation_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0a5e50687ac40e39401d9fac82fadbd64962d3311f8e6d32dc93fb07bcfa12da","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a.mp3', 1149, '2026-09-14 13:37:14.455301', '0a5e50687ac40e39401d9fac82fadbd64962d3311f8e6d32dc93fb07bcfa12da', 'validated', '{"audio_key":"1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a","entity_key":"lx_first_greetings_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0a5e50687ac40e39401d9fac82fadbd64962d3311f8e6d32dc93fb07bcfa12da","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a.mp3', 1149, '2026-09-14 13:37:14.455301', '0a5e50687ac40e39401d9fac82fadbd64962d3311f8e6d32dc93fb07bcfa12da', 'validated', '{"audio_key":"1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a","entity_key":"wf_first_greetings_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0a5e50687ac40e39401d9fac82fadbd64962d3311f8e6d32dc93fb07bcfa12da","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1127e42e2c6ee04f12aea018006a3252d15422b1883e9d61d313e503666d7a1a.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1a8844baf29b8d6a4a7cd009a8710c286090362ae9fe27fc0fc4ff2217c0158e.mp3', 1201, '2026-09-14 13:37:15.467633', 'dcd723e3b212a613679867f4ddf266c334271551f607963d29030deea85ca961', 'validated', '{"audio_key":"1a8844baf29b8d6a4a7cd009a8710c286090362ae9fe27fc0fc4ff2217c0158e","entity_key":"lx_survival_words_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dcd723e3b212a613679867f4ddf266c334271551f607963d29030deea85ca961","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1a8844baf29b8d6a4a7cd009a8710c286090362ae9fe27fc0fc4ff2217c0158e.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1a8844baf29b8d6a4a7cd009a8710c286090362ae9fe27fc0fc4ff2217c0158e.mp3', 1201, '2026-09-14 13:37:15.467633', 'dcd723e3b212a613679867f4ddf266c334271551f607963d29030deea85ca961', 'validated', '{"audio_key":"1a8844baf29b8d6a4a7cd009a8710c286090362ae9fe27fc0fc4ff2217c0158e","entity_key":"wf_survival_words_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dcd723e3b212a613679867f4ddf266c334271551f607963d29030deea85ca961","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1a8844baf29b8d6a4a7cd009a8710c286090362ae9fe27fc0fc4ff2217c0158e.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1dbe15489e0bc7c6b4123f4fe049dd7afa3d618b0af4e6bcb16d3e700ea0646b.mp3', 1280, '2026-09-14 13:37:16.426477', 'bdc8f064d25fecbc5793c24771f0cf1163b7e19b0ee461dd2fd8e01c36f06f13', 'validated', '{"audio_key":"1dbe15489e0bc7c6b4123f4fe049dd7afa3d618b0af4e6bcb16d3e700ea0646b","entity_key":"lx_first_greetings_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bdc8f064d25fecbc5793c24771f0cf1163b7e19b0ee461dd2fd8e01c36f06f13","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1dbe15489e0bc7c6b4123f4fe049dd7afa3d618b0af4e6bcb16d3e700ea0646b.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1dbe15489e0bc7c6b4123f4fe049dd7afa3d618b0af4e6bcb16d3e700ea0646b.mp3', 1280, '2026-09-14 13:37:16.426477', 'bdc8f064d25fecbc5793c24771f0cf1163b7e19b0ee461dd2fd8e01c36f06f13', 'validated', '{"audio_key":"1dbe15489e0bc7c6b4123f4fe049dd7afa3d618b0af4e6bcb16d3e700ea0646b","entity_key":"wf_first_greetings_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bdc8f064d25fecbc5793c24771f0cf1163b7e19b0ee461dd2fd8e01c36f06f13","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1dbe15489e0bc7c6b4123f4fe049dd7afa3d618b0af4e6bcb16d3e700ea0646b.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1df3dd3ac0877492ac4e049196af978a0a26324144149d59d79678a5e97097f9.mp3', 1097, '2026-09-14 13:37:17.467932', '08f219ffd3c57f7b692f47de2fa913772b8b07809d8b8e0ebfa31c1c227d0779', 'validated', '{"audio_key":"1df3dd3ac0877492ac4e049196af978a0a26324144149d59d79678a5e97097f9","entity_key":"lx_my_name_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08f219ffd3c57f7b692f47de2fa913772b8b07809d8b8e0ebfa31c1c227d0779","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1df3dd3ac0877492ac4e049196af978a0a26324144149d59d79678a5e97097f9.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1df3dd3ac0877492ac4e049196af978a0a26324144149d59d79678a5e97097f9.mp3', 1097, '2026-09-14 13:37:17.467932', '08f219ffd3c57f7b692f47de2fa913772b8b07809d8b8e0ebfa31c1c227d0779', 'validated', '{"audio_key":"1df3dd3ac0877492ac4e049196af978a0a26324144149d59d79678a5e97097f9","entity_key":"wf_my_name_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08f219ffd3c57f7b692f47de2fa913772b8b07809d8b8e0ebfa31c1c227d0779","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1df3dd3ac0877492ac4e049196af978a0a26324144149d59d79678a5e97097f9.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/202717747def47bdd68d98dc4588308d4201e0e39d9ec9ae44c7ee283a9144dd.mp3', 966, '2026-09-14 13:37:18.465093', 'eae6369368d0a088c053685a2db5bc7e1aed87efbd929656b3f1e68729027d57', 'validated', '{"audio_key":"202717747def47bdd68d98dc4588308d4201e0e39d9ec9ae44c7ee283a9144dd","entity_key":"lx_numbers_0_10_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eae6369368d0a088c053685a2db5bc7e1aed87efbd929656b3f1e68729027d57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/202717747def47bdd68d98dc4588308d4201e0e39d9ec9ae44c7ee283a9144dd.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/202717747def47bdd68d98dc4588308d4201e0e39d9ec9ae44c7ee283a9144dd.mp3', 966, '2026-09-14 13:37:18.465093', 'eae6369368d0a088c053685a2db5bc7e1aed87efbd929656b3f1e68729027d57', 'validated', '{"audio_key":"202717747def47bdd68d98dc4588308d4201e0e39d9ec9ae44c7ee283a9144dd","entity_key":"wf_numbers_0_10_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eae6369368d0a088c053685a2db5bc7e1aed87efbd929656b3f1e68729027d57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/202717747def47bdd68d98dc4588308d4201e0e39d9ec9ae44c7ee283a9144dd.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/29ebbb71954355b5fccf1cbdd6db7bb8b5f7f3efa7be92dbbd753d01068b7a92.mp3', 966, '2026-09-14 13:37:19.412581', '18c1f012224617d6558c41deb758b3814391b851fda602939c46d5e5a11f8e20', 'validated', '{"audio_key":"29ebbb71954355b5fccf1cbdd6db7bb8b5f7f3efa7be92dbbd753d01068b7a92","entity_key":"lx_numbers_0_10_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"18c1f012224617d6558c41deb758b3814391b851fda602939c46d5e5a11f8e20","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/29ebbb71954355b5fccf1cbdd6db7bb8b5f7f3efa7be92dbbd753d01068b7a92.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/29ebbb71954355b5fccf1cbdd6db7bb8b5f7f3efa7be92dbbd753d01068b7a92.mp3', 966, '2026-09-14 13:37:19.412581', '18c1f012224617d6558c41deb758b3814391b851fda602939c46d5e5a11f8e20', 'validated', '{"audio_key":"29ebbb71954355b5fccf1cbdd6db7bb8b5f7f3efa7be92dbbd753d01068b7a92","entity_key":"wf_numbers_0_10_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"18c1f012224617d6558c41deb758b3814391b851fda602939c46d5e5a11f8e20","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/29ebbb71954355b5fccf1cbdd6db7bb8b5f7f3efa7be92dbbd753d01068b7a92.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/2c4703c90b5b92a2eeef003e23b7c9ea8f71095e4487671cfaf5e2ca38bff83a.mp3', 1018, '2026-09-14 13:37:20.383224', 'edf691feb33921502318de89b28e1599698656f7b3073df327c0f75508243294', 'validated', '{"audio_key":"2c4703c90b5b92a2eeef003e23b7c9ea8f71095e4487671cfaf5e2ca38bff83a","entity_key":"lx_survival_words_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"edf691feb33921502318de89b28e1599698656f7b3073df327c0f75508243294","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/2c4703c90b5b92a2eeef003e23b7c9ea8f71095e4487671cfaf5e2ca38bff83a.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/2c4703c90b5b92a2eeef003e23b7c9ea8f71095e4487671cfaf5e2ca38bff83a.mp3', 1018, '2026-09-14 13:37:20.383224', 'edf691feb33921502318de89b28e1599698656f7b3073df327c0f75508243294', 'validated', '{"audio_key":"2c4703c90b5b92a2eeef003e23b7c9ea8f71095e4487671cfaf5e2ca38bff83a","entity_key":"wf_survival_words_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"edf691feb33921502318de89b28e1599698656f7b3073df327c0f75508243294","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/2c4703c90b5b92a2eeef003e23b7c9ea8f71095e4487671cfaf5e2ca38bff83a.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/30f81f37b4714d67816f751b75e682562158508c8cef02a8cce741fecaa6d16e.mp3', 862, '2026-09-14 13:37:21.378123', '46b263e104bd573109d67b6479111b12a891b6bba9224dcc253af6e2f8d42121', 'validated', '{"audio_key":"30f81f37b4714d67816f751b75e682562158508c8cef02a8cce741fecaa6d16e","entity_key":"lx_numbers_0_10_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"46b263e104bd573109d67b6479111b12a891b6bba9224dcc253af6e2f8d42121","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/30f81f37b4714d67816f751b75e682562158508c8cef02a8cce741fecaa6d16e.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/30f81f37b4714d67816f751b75e682562158508c8cef02a8cce741fecaa6d16e.mp3', 862, '2026-09-14 13:37:21.378123', '46b263e104bd573109d67b6479111b12a891b6bba9224dcc253af6e2f8d42121', 'validated', '{"audio_key":"30f81f37b4714d67816f751b75e682562158508c8cef02a8cce741fecaa6d16e","entity_key":"wf_numbers_0_10_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"46b263e104bd573109d67b6479111b12a891b6bba9224dcc253af6e2f8d42121","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/30f81f37b4714d67816f751b75e682562158508c8cef02a8cce741fecaa6d16e.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/3ef8d6f91fdbc56d7f714c883f4d3d6eb93b505ab1a4ebf4b762e7119f82869d.mp3', 966, '2026-09-14 13:37:22.316577', 'ec22390b9f58f696d8057f6d8d55f9c5c42349c08782dfd6014b7722acdb4a2f', 'validated', '{"audio_key":"3ef8d6f91fdbc56d7f714c883f4d3d6eb93b505ab1a4ebf4b762e7119f82869d","entity_key":"lx_how_are_you_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ec22390b9f58f696d8057f6d8d55f9c5c42349c08782dfd6014b7722acdb4a2f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/3ef8d6f91fdbc56d7f714c883f4d3d6eb93b505ab1a4ebf4b762e7119f82869d.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/3ef8d6f91fdbc56d7f714c883f4d3d6eb93b505ab1a4ebf4b762e7119f82869d.mp3', 966, '2026-09-14 13:37:22.316577', 'ec22390b9f58f696d8057f6d8d55f9c5c42349c08782dfd6014b7722acdb4a2f', 'validated', '{"audio_key":"3ef8d6f91fdbc56d7f714c883f4d3d6eb93b505ab1a4ebf4b762e7119f82869d","entity_key":"wf_how_are_you_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ec22390b9f58f696d8057f6d8d55f9c5c42349c08782dfd6014b7722acdb4a2f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/3ef8d6f91fdbc56d7f714c883f4d3d6eb93b505ab1a4ebf4b762e7119f82869d.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/437ed041ed21f653069e71f99dac302036de8b40f17af391f7a4c88f243e0246.mp3', 1201, '2026-09-14 13:37:23.338290', '327873ac2dba5e46942369701d1591c5def028368766b0daa1e207fb5ff3d790', 'validated', '{"audio_key":"437ed041ed21f653069e71f99dac302036de8b40f17af391f7a4c88f243e0246","entity_key":"lx_survival_words_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"327873ac2dba5e46942369701d1591c5def028368766b0daa1e207fb5ff3d790","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/437ed041ed21f653069e71f99dac302036de8b40f17af391f7a4c88f243e0246.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/437ed041ed21f653069e71f99dac302036de8b40f17af391f7a4c88f243e0246.mp3', 1201, '2026-09-14 13:37:23.338290', '327873ac2dba5e46942369701d1591c5def028368766b0daa1e207fb5ff3d790', 'validated', '{"audio_key":"437ed041ed21f653069e71f99dac302036de8b40f17af391f7a4c88f243e0246","entity_key":"wf_survival_words_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"327873ac2dba5e46942369701d1591c5def028368766b0daa1e207fb5ff3d790","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/437ed041ed21f653069e71f99dac302036de8b40f17af391f7a4c88f243e0246.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4a79261e93f8923b018351d60b5ba947b56d1e0c92b3b7ffdc3800bfaf7fe014.mp3', 1097, '2026-09-14 13:37:24.265812', '122aab423aebecc137cab81c9d07fd29034eefc3e67b2352ccfb59aa2c1b1bb3', 'validated', '{"audio_key":"4a79261e93f8923b018351d60b5ba947b56d1e0c92b3b7ffdc3800bfaf7fe014","entity_key":"lx_polite_words_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"122aab423aebecc137cab81c9d07fd29034eefc3e67b2352ccfb59aa2c1b1bb3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4a79261e93f8923b018351d60b5ba947b56d1e0c92b3b7ffdc3800bfaf7fe014.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4a79261e93f8923b018351d60b5ba947b56d1e0c92b3b7ffdc3800bfaf7fe014.mp3', 1097, '2026-09-14 13:37:24.265812', '122aab423aebecc137cab81c9d07fd29034eefc3e67b2352ccfb59aa2c1b1bb3', 'validated', '{"audio_key":"4a79261e93f8923b018351d60b5ba947b56d1e0c92b3b7ffdc3800bfaf7fe014","entity_key":"wf_polite_words_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"122aab423aebecc137cab81c9d07fd29034eefc3e67b2352ccfb59aa2c1b1bb3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4a79261e93f8923b018351d60b5ba947b56d1e0c92b3b7ffdc3800bfaf7fe014.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4b636d80c7d7ac74a80356363904ace60844162d9e3f9d43d241d2c56cecd6db.mp3', 1253, '2026-09-14 13:37:25.264578', '937573003551d55e97e7428575b59079e8d1cc77f455b516f61b1437cf706927', 'validated', '{"audio_key":"4b636d80c7d7ac74a80356363904ace60844162d9e3f9d43d241d2c56cecd6db","entity_key":"lx_polite_words_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"937573003551d55e97e7428575b59079e8d1cc77f455b516f61b1437cf706927","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4b636d80c7d7ac74a80356363904ace60844162d9e3f9d43d241d2c56cecd6db.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4b636d80c7d7ac74a80356363904ace60844162d9e3f9d43d241d2c56cecd6db.mp3', 1253, '2026-09-14 13:37:25.264578', '937573003551d55e97e7428575b59079e8d1cc77f455b516f61b1437cf706927', 'validated', '{"audio_key":"4b636d80c7d7ac74a80356363904ace60844162d9e3f9d43d241d2c56cecd6db","entity_key":"wf_polite_words_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"937573003551d55e97e7428575b59079e8d1cc77f455b516f61b1437cf706927","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4b636d80c7d7ac74a80356363904ace60844162d9e3f9d43d241d2c56cecd6db.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4bf6535abbebdc26cca864f18c7b96d6421a9fddfd059d4b715e360c0c1e85a4.mp3', 1671, '2026-09-14 13:37:26.268460', '57ed002577f27b5e6be53a66de1de586dc11a08117bd7dd59fbda7dcf2119a2a', 'validated', '{"audio_key":"4bf6535abbebdc26cca864f18c7b96d6421a9fddfd059d4b715e360c0c1e85a4","entity_key":"lx_polite_words_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"57ed002577f27b5e6be53a66de1de586dc11a08117bd7dd59fbda7dcf2119a2a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4bf6535abbebdc26cca864f18c7b96d6421a9fddfd059d4b715e360c0c1e85a4.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4bf6535abbebdc26cca864f18c7b96d6421a9fddfd059d4b715e360c0c1e85a4.mp3', 1671, '2026-09-14 13:37:26.268460', '57ed002577f27b5e6be53a66de1de586dc11a08117bd7dd59fbda7dcf2119a2a', 'validated', '{"audio_key":"4bf6535abbebdc26cca864f18c7b96d6421a9fddfd059d4b715e360c0c1e85a4","entity_key":"wf_polite_words_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"57ed002577f27b5e6be53a66de1de586dc11a08117bd7dd59fbda7dcf2119a2a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4bf6535abbebdc26cca864f18c7b96d6421a9fddfd059d4b715e360c0c1e85a4.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5f6e64167f90160095ca615beff2bbab96131a1ee3664fe048eab6ec5262515c.mp3', 966, '2026-09-14 13:37:27.212506', 'e2f226507775647dcdb9474060c5a10d7e4fd64b8e74eaa6d9158690ab0e56d3', 'validated', '{"audio_key":"5f6e64167f90160095ca615beff2bbab96131a1ee3664fe048eab6ec5262515c","entity_key":"lx_alphabet_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e2f226507775647dcdb9474060c5a10d7e4fd64b8e74eaa6d9158690ab0e56d3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5f6e64167f90160095ca615beff2bbab96131a1ee3664fe048eab6ec5262515c.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5f6e64167f90160095ca615beff2bbab96131a1ee3664fe048eab6ec5262515c.mp3', 966, '2026-09-14 13:37:27.212506', 'e2f226507775647dcdb9474060c5a10d7e4fd64b8e74eaa6d9158690ab0e56d3', 'validated', '{"audio_key":"5f6e64167f90160095ca615beff2bbab96131a1ee3664fe048eab6ec5262515c","entity_key":"wf_alphabet_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e2f226507775647dcdb9474060c5a10d7e4fd64b8e74eaa6d9158690ab0e56d3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5f6e64167f90160095ca615beff2bbab96131a1ee3664fe048eab6ec5262515c.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/62c0e2996f09d531c82ceb0553e4993b196c1cf116eb2bf8202852116bdd0bfa.mp3', 1515, '2026-09-14 13:37:28.189071', 'de8a2fe8e79f725eb73e2df00c1da0aa8939ffbc0ac7e262708784652208723a', 'validated', '{"audio_key":"62c0e2996f09d531c82ceb0553e4993b196c1cf116eb2bf8202852116bdd0bfa","entity_key":"lx_polite_words_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"de8a2fe8e79f725eb73e2df00c1da0aa8939ffbc0ac7e262708784652208723a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/62c0e2996f09d531c82ceb0553e4993b196c1cf116eb2bf8202852116bdd0bfa.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/62c0e2996f09d531c82ceb0553e4993b196c1cf116eb2bf8202852116bdd0bfa.mp3', 1515, '2026-09-14 13:37:28.189071', 'de8a2fe8e79f725eb73e2df00c1da0aa8939ffbc0ac7e262708784652208723a', 'validated', '{"audio_key":"62c0e2996f09d531c82ceb0553e4993b196c1cf116eb2bf8202852116bdd0bfa","entity_key":"wf_polite_words_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"de8a2fe8e79f725eb73e2df00c1da0aa8939ffbc0ac7e262708784652208723a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/62c0e2996f09d531c82ceb0553e4993b196c1cf116eb2bf8202852116bdd0bfa.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/63f3159da0ed385f57ceb259405a1e2208d9522f0a78900204d3b8f040c47036.mp3', 1384, '2026-09-14 13:37:29.292181', '21eb7fa3b4fa3b1f1f3826ef3f09245c24f31623af8a8b09bdd2b296eb556453', 'validated', '{"audio_key":"63f3159da0ed385f57ceb259405a1e2208d9522f0a78900204d3b8f040c47036","entity_key":"lx_first_greetings_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"21eb7fa3b4fa3b1f1f3826ef3f09245c24f31623af8a8b09bdd2b296eb556453","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/63f3159da0ed385f57ceb259405a1e2208d9522f0a78900204d3b8f040c47036.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/63f3159da0ed385f57ceb259405a1e2208d9522f0a78900204d3b8f040c47036.mp3', 1384, '2026-09-14 13:37:29.292181', '21eb7fa3b4fa3b1f1f3826ef3f09245c24f31623af8a8b09bdd2b296eb556453', 'validated', '{"audio_key":"63f3159da0ed385f57ceb259405a1e2208d9522f0a78900204d3b8f040c47036","entity_key":"wf_first_greetings_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"21eb7fa3b4fa3b1f1f3826ef3f09245c24f31623af8a8b09bdd2b296eb556453","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/63f3159da0ed385f57ceb259405a1e2208d9522f0a78900204d3b8f040c47036.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/65c85777699e9a3561c535b2c2ee44b1225ef62abe14ceaab5dab37aa69e6b79.mp3', 1097, '2026-09-14 13:37:30.318451', 'f43de11acde18afb90365c04bbffad965589fd1d1100405fac7bddbcc37c1fe6', 'validated', '{"audio_key":"65c85777699e9a3561c535b2c2ee44b1225ef62abe14ceaab5dab37aa69e6b79","entity_key":"lx_survival_words_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f43de11acde18afb90365c04bbffad965589fd1d1100405fac7bddbcc37c1fe6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/65c85777699e9a3561c535b2c2ee44b1225ef62abe14ceaab5dab37aa69e6b79.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/65c85777699e9a3561c535b2c2ee44b1225ef62abe14ceaab5dab37aa69e6b79.mp3', 1097, '2026-09-14 13:37:30.318451', 'f43de11acde18afb90365c04bbffad965589fd1d1100405fac7bddbcc37c1fe6', 'validated', '{"audio_key":"65c85777699e9a3561c535b2c2ee44b1225ef62abe14ceaab5dab37aa69e6b79","entity_key":"wf_survival_words_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f43de11acde18afb90365c04bbffad965589fd1d1100405fac7bddbcc37c1fe6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/65c85777699e9a3561c535b2c2ee44b1225ef62abe14ceaab5dab37aa69e6b79.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6b9d903f4bb411a63959040dcacbef4c40fe1326ee83c2e550edf22c59c2c2b3.mp3', 835, '2026-09-14 13:37:31.254708', 'a60a1cd47a4c99e5f43abf1eb8a3e5d6d00772435923d48be48ff97efe0cbfae', 'validated', '{"audio_key":"6b9d903f4bb411a63959040dcacbef4c40fe1326ee83c2e550edf22c59c2c2b3","entity_key":"lx_alphabet_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a60a1cd47a4c99e5f43abf1eb8a3e5d6d00772435923d48be48ff97efe0cbfae","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6b9d903f4bb411a63959040dcacbef4c40fe1326ee83c2e550edf22c59c2c2b3.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6b9d903f4bb411a63959040dcacbef4c40fe1326ee83c2e550edf22c59c2c2b3.mp3', 835, '2026-09-14 13:37:31.254708', 'a60a1cd47a4c99e5f43abf1eb8a3e5d6d00772435923d48be48ff97efe0cbfae', 'validated', '{"audio_key":"6b9d903f4bb411a63959040dcacbef4c40fe1326ee83c2e550edf22c59c2c2b3","entity_key":"wf_alphabet_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a60a1cd47a4c99e5f43abf1eb8a3e5d6d00772435923d48be48ff97efe0cbfae","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6b9d903f4bb411a63959040dcacbef4c40fe1326ee83c2e550edf22c59c2c2b3.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/720616da5d2b53b3432ad3c8fd7db98bb35be6b8a9bae2d193110d477d2acaa7.mp3', 1071, '2026-09-14 13:37:32.225818', '47dda56603f21344848378b0b751a0ffa70c705afb2c2085c002fd920c7f3d71', 'validated', '{"audio_key":"720616da5d2b53b3432ad3c8fd7db98bb35be6b8a9bae2d193110d477d2acaa7","entity_key":"lx_numbers_0_10_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"47dda56603f21344848378b0b751a0ffa70c705afb2c2085c002fd920c7f3d71","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/720616da5d2b53b3432ad3c8fd7db98bb35be6b8a9bae2d193110d477d2acaa7.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/720616da5d2b53b3432ad3c8fd7db98bb35be6b8a9bae2d193110d477d2acaa7.mp3', 1071, '2026-09-14 13:37:32.225818', '47dda56603f21344848378b0b751a0ffa70c705afb2c2085c002fd920c7f3d71', 'validated', '{"audio_key":"720616da5d2b53b3432ad3c8fd7db98bb35be6b8a9bae2d193110d477d2acaa7","entity_key":"wf_numbers_0_10_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"47dda56603f21344848378b0b751a0ffa70c705afb2c2085c002fd920c7f3d71","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/720616da5d2b53b3432ad3c8fd7db98bb35be6b8a9bae2d193110d477d2acaa7.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7a59fbfd45962e707a6e70cf02a55abe82f80fe209cf32c0b72071305b1c52aa.mp3', 1071, '2026-09-14 13:37:33.203768', '4dc6b7354409b73b08dbf0380f83bbed0f9078da9fa655300bfcd149cdb9bf6e', 'validated', '{"audio_key":"7a59fbfd45962e707a6e70cf02a55abe82f80fe209cf32c0b72071305b1c52aa","entity_key":"lx_survival_words_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4dc6b7354409b73b08dbf0380f83bbed0f9078da9fa655300bfcd149cdb9bf6e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7a59fbfd45962e707a6e70cf02a55abe82f80fe209cf32c0b72071305b1c52aa.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7a59fbfd45962e707a6e70cf02a55abe82f80fe209cf32c0b72071305b1c52aa.mp3', 1071, '2026-09-14 13:37:33.203768', '4dc6b7354409b73b08dbf0380f83bbed0f9078da9fa655300bfcd149cdb9bf6e', 'validated', '{"audio_key":"7a59fbfd45962e707a6e70cf02a55abe82f80fe209cf32c0b72071305b1c52aa","entity_key":"wf_survival_words_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4dc6b7354409b73b08dbf0380f83bbed0f9078da9fa655300bfcd149cdb9bf6e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7a59fbfd45962e707a6e70cf02a55abe82f80fe209cf32c0b72071305b1c52aa.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7e978e541a5e3915a4f32206844f5f800a2887fadf94cd4ab2d66cf08aa879dc.mp3', 1149, '2026-09-14 13:37:34.191975', 'ce86cf7ca8bd67e33e8ed8f5bc5897b242926a5862cb572832f68372d082d95c', 'validated', '{"audio_key":"7e978e541a5e3915a4f32206844f5f800a2887fadf94cd4ab2d66cf08aa879dc","entity_key":"lx_first_conversation_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ce86cf7ca8bd67e33e8ed8f5bc5897b242926a5862cb572832f68372d082d95c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7e978e541a5e3915a4f32206844f5f800a2887fadf94cd4ab2d66cf08aa879dc.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7e978e541a5e3915a4f32206844f5f800a2887fadf94cd4ab2d66cf08aa879dc.mp3', 1149, '2026-09-14 13:37:34.191975', 'ce86cf7ca8bd67e33e8ed8f5bc5897b242926a5862cb572832f68372d082d95c', 'validated', '{"audio_key":"7e978e541a5e3915a4f32206844f5f800a2887fadf94cd4ab2d66cf08aa879dc","entity_key":"wf_first_conversation_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ce86cf7ca8bd67e33e8ed8f5bc5897b242926a5862cb572832f68372d082d95c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7e978e541a5e3915a4f32206844f5f800a2887fadf94cd4ab2d66cf08aa879dc.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/80259f794687325ace9bb9bcaf12f54e565ebfa176f1d3bbe38829d0a93a4204.mp3', 1097, '2026-09-14 13:37:35.179847', 'b562a4c8912108e1e0364da7f3f633ac96455d765fe22e1b5a5890e57d507b9a', 'validated', '{"audio_key":"80259f794687325ace9bb9bcaf12f54e565ebfa176f1d3bbe38829d0a93a4204","entity_key":"lx_first_sounds_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b562a4c8912108e1e0364da7f3f633ac96455d765fe22e1b5a5890e57d507b9a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/80259f794687325ace9bb9bcaf12f54e565ebfa176f1d3bbe38829d0a93a4204.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/80259f794687325ace9bb9bcaf12f54e565ebfa176f1d3bbe38829d0a93a4204.mp3', 1097, '2026-09-14 13:37:35.179847', 'b562a4c8912108e1e0364da7f3f633ac96455d765fe22e1b5a5890e57d507b9a', 'validated', '{"audio_key":"80259f794687325ace9bb9bcaf12f54e565ebfa176f1d3bbe38829d0a93a4204","entity_key":"wf_first_sounds_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b562a4c8912108e1e0364da7f3f633ac96455d765fe22e1b5a5890e57d507b9a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/80259f794687325ace9bb9bcaf12f54e565ebfa176f1d3bbe38829d0a93a4204.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/82e43d8f48bce873c4f51e40e1159af1dbe02d8f20709b6d645e808d9dd0f77f.mp3', 1671, '2026-09-14 13:37:36.244124', '644fb6c2e870de7e6a3b4ff8af774ee09b302a637c0755c517356c5ce171d29d', 'validated', '{"audio_key":"82e43d8f48bce873c4f51e40e1159af1dbe02d8f20709b6d645e808d9dd0f77f","entity_key":"lx_survival_words_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"644fb6c2e870de7e6a3b4ff8af774ee09b302a637c0755c517356c5ce171d29d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/82e43d8f48bce873c4f51e40e1159af1dbe02d8f20709b6d645e808d9dd0f77f.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/82e43d8f48bce873c4f51e40e1159af1dbe02d8f20709b6d645e808d9dd0f77f.mp3', 1671, '2026-09-14 13:37:36.244124', '644fb6c2e870de7e6a3b4ff8af774ee09b302a637c0755c517356c5ce171d29d', 'validated', '{"audio_key":"82e43d8f48bce873c4f51e40e1159af1dbe02d8f20709b6d645e808d9dd0f77f","entity_key":"wf_survival_words_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"644fb6c2e870de7e6a3b4ff8af774ee09b302a637c0755c517356c5ce171d29d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/82e43d8f48bce873c4f51e40e1159af1dbe02d8f20709b6d645e808d9dd0f77f.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8623bf72c1bda2bda247eec34fec309bafc85415fb0c9c0c2ea957116b49a7f1.mp3', 1567, '2026-09-14 13:37:37.251290', '9907d2d7fb943c6b59413fa71a6e4971c61eae6bcc78a8e339c2f043764b9e79', 'validated', '{"audio_key":"8623bf72c1bda2bda247eec34fec309bafc85415fb0c9c0c2ea957116b49a7f1","entity_key":"lx_my_name_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9907d2d7fb943c6b59413fa71a6e4971c61eae6bcc78a8e339c2f043764b9e79","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8623bf72c1bda2bda247eec34fec309bafc85415fb0c9c0c2ea957116b49a7f1.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8623bf72c1bda2bda247eec34fec309bafc85415fb0c9c0c2ea957116b49a7f1.mp3', 1567, '2026-09-14 13:37:37.251290', '9907d2d7fb943c6b59413fa71a6e4971c61eae6bcc78a8e339c2f043764b9e79', 'validated', '{"audio_key":"8623bf72c1bda2bda247eec34fec309bafc85415fb0c9c0c2ea957116b49a7f1","entity_key":"wf_my_name_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9907d2d7fb943c6b59413fa71a6e4971c61eae6bcc78a8e339c2f043764b9e79","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8623bf72c1bda2bda247eec34fec309bafc85415fb0c9c0c2ea957116b49a7f1.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/881b37de5fc8651070bea2c6388daf6d452e5ea8c85e027157ea2df1b42b041d.mp3', 1253, '2026-09-14 13:37:38.273773', '12ff0cf6e026425cbcea5ae5140eecbc04d2ae5ea78af7e150658c2aedece963', 'validated', '{"audio_key":"881b37de5fc8651070bea2c6388daf6d452e5ea8c85e027157ea2df1b42b041d","entity_key":"lx_first_greetings_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"12ff0cf6e026425cbcea5ae5140eecbc04d2ae5ea78af7e150658c2aedece963","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/881b37de5fc8651070bea2c6388daf6d452e5ea8c85e027157ea2df1b42b041d.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/881b37de5fc8651070bea2c6388daf6d452e5ea8c85e027157ea2df1b42b041d.mp3', 1253, '2026-09-14 13:37:38.273773', '12ff0cf6e026425cbcea5ae5140eecbc04d2ae5ea78af7e150658c2aedece963', 'validated', '{"audio_key":"881b37de5fc8651070bea2c6388daf6d452e5ea8c85e027157ea2df1b42b041d","entity_key":"wf_first_greetings_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"12ff0cf6e026425cbcea5ae5140eecbc04d2ae5ea78af7e150658c2aedece963","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/881b37de5fc8651070bea2c6388daf6d452e5ea8c85e027157ea2df1b42b041d.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8b8f7cbbb93f280944aaa4e62ab9c81ea6dc2b1bf55af9c166d8019bc25485d1.mp3', 1149, '2026-09-14 13:37:39.274416', '34253fe905410ce21b6f40d551716fd2cff47b52a9e3c4106423d6e6e5111cf1', 'validated', '{"audio_key":"8b8f7cbbb93f280944aaa4e62ab9c81ea6dc2b1bf55af9c166d8019bc25485d1","entity_key":"lx_how_are_you_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"34253fe905410ce21b6f40d551716fd2cff47b52a9e3c4106423d6e6e5111cf1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8b8f7cbbb93f280944aaa4e62ab9c81ea6dc2b1bf55af9c166d8019bc25485d1.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8b8f7cbbb93f280944aaa4e62ab9c81ea6dc2b1bf55af9c166d8019bc25485d1.mp3', 1149, '2026-09-14 13:37:39.274416', '34253fe905410ce21b6f40d551716fd2cff47b52a9e3c4106423d6e6e5111cf1', 'validated', '{"audio_key":"8b8f7cbbb93f280944aaa4e62ab9c81ea6dc2b1bf55af9c166d8019bc25485d1","entity_key":"wf_how_are_you_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"34253fe905410ce21b6f40d551716fd2cff47b52a9e3c4106423d6e6e5111cf1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8b8f7cbbb93f280944aaa4e62ab9c81ea6dc2b1bf55af9c166d8019bc25485d1.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89.mp3', 1097, '2026-09-14 13:37:40.700776', '4b84ad26d55bc2b1dcd1b383f095c04f8b249d5c9682ca1c184ab2905198681e', 'validated', '{"audio_key":"8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89","entity_key":"lx_polite_words_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b84ad26d55bc2b1dcd1b383f095c04f8b249d5c9682ca1c184ab2905198681e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89.mp3', 1097, '2026-09-14 13:37:40.700776', '4b84ad26d55bc2b1dcd1b383f095c04f8b249d5c9682ca1c184ab2905198681e', 'validated', '{"audio_key":"8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89","entity_key":"wf_polite_words_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b84ad26d55bc2b1dcd1b383f095c04f8b249d5c9682ca1c184ab2905198681e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8d897382e7b6158d2fc9ce4a263fce21168b70caec69e4b41534d2c7a0ecdc89.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8f260a2e459443a85f2fd5d43feb0a8b793f7a8386044566d14d1330d9ba1ae9.mp3', 783, '2026-09-14 13:37:41.692512', '833417eeb73da0e68b01d1b1580569ea59dee6babc0cbf4260ab911c6a9c57d9', 'validated', '{"audio_key":"8f260a2e459443a85f2fd5d43feb0a8b793f7a8386044566d14d1330d9ba1ae9","entity_key":"lx_alphabet_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"833417eeb73da0e68b01d1b1580569ea59dee6babc0cbf4260ab911c6a9c57d9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8f260a2e459443a85f2fd5d43feb0a8b793f7a8386044566d14d1330d9ba1ae9.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8f260a2e459443a85f2fd5d43feb0a8b793f7a8386044566d14d1330d9ba1ae9.mp3', 783, '2026-09-14 13:37:41.692512', '833417eeb73da0e68b01d1b1580569ea59dee6babc0cbf4260ab911c6a9c57d9', 'validated', '{"audio_key":"8f260a2e459443a85f2fd5d43feb0a8b793f7a8386044566d14d1330d9ba1ae9","entity_key":"wf_alphabet_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"833417eeb73da0e68b01d1b1580569ea59dee6babc0cbf4260ab911c6a9c57d9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8f260a2e459443a85f2fd5d43feb0a8b793f7a8386044566d14d1330d9ba1ae9.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c.mp3', 1488, '2026-09-14 13:37:42.665505', '219aae94275af3ad56d711e076babf801dbb5cac2fbe2129b1837ef052d72e9a', 'validated', '{"audio_key":"94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c","entity_key":"lx_first_conversation_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"219aae94275af3ad56d711e076babf801dbb5cac2fbe2129b1837ef052d72e9a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c.mp3', 1488, '2026-09-14 13:37:42.665505', '219aae94275af3ad56d711e076babf801dbb5cac2fbe2129b1837ef052d72e9a', 'validated', '{"audio_key":"94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c","entity_key":"wf_first_conversation_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"219aae94275af3ad56d711e076babf801dbb5cac2fbe2129b1837ef052d72e9a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c.mp3', 1488, '2026-09-14 13:37:42.665505', '219aae94275af3ad56d711e076babf801dbb5cac2fbe2129b1837ef052d72e9a', 'validated', '{"audio_key":"94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c","entity_key":"lx_my_name_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"219aae94275af3ad56d711e076babf801dbb5cac2fbe2129b1837ef052d72e9a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c.mp3', 1488, '2026-09-14 13:37:42.665505', '219aae94275af3ad56d711e076babf801dbb5cac2fbe2129b1837ef052d72e9a', 'validated', '{"audio_key":"94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c","entity_key":"wf_my_name_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"219aae94275af3ad56d711e076babf801dbb5cac2fbe2129b1837ef052d72e9a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/94bf20df34a06d34c285af0cbc325e2c35a4641b2b3bd421a57245e33c39930c.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a30b59af3cf9c5bc6c5443e00c390f8f6d7d43d051340a4e5090218ba8118fd1.mp3', 1436, '2026-09-14 13:37:43.708518', '88d341a0aab414f5a1b86d91ae85c9450c0bdf3e7cc90405538aaa7ccc477614', 'validated', '{"audio_key":"a30b59af3cf9c5bc6c5443e00c390f8f6d7d43d051340a4e5090218ba8118fd1","entity_key":"lx_how_are_you_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"88d341a0aab414f5a1b86d91ae85c9450c0bdf3e7cc90405538aaa7ccc477614","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a30b59af3cf9c5bc6c5443e00c390f8f6d7d43d051340a4e5090218ba8118fd1.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a30b59af3cf9c5bc6c5443e00c390f8f6d7d43d051340a4e5090218ba8118fd1.mp3', 1436, '2026-09-14 13:37:43.708518', '88d341a0aab414f5a1b86d91ae85c9450c0bdf3e7cc90405538aaa7ccc477614', 'validated', '{"audio_key":"a30b59af3cf9c5bc6c5443e00c390f8f6d7d43d051340a4e5090218ba8118fd1","entity_key":"wf_how_are_you_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"88d341a0aab414f5a1b86d91ae85c9450c0bdf3e7cc90405538aaa7ccc477614","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a30b59af3cf9c5bc6c5443e00c390f8f6d7d43d051340a4e5090218ba8118fd1.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00.mp3', 1201, '2026-09-14 13:37:44.728479', 'e8b37dcd47f9bce53b25d61108ff4be47f22ddd0e73edd32489c1dc4b000bff3', 'validated', '{"audio_key":"a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00","entity_key":"lx_first_conversation_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e8b37dcd47f9bce53b25d61108ff4be47f22ddd0e73edd32489c1dc4b000bff3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00.mp3', 1201, '2026-09-14 13:37:44.728479', 'e8b37dcd47f9bce53b25d61108ff4be47f22ddd0e73edd32489c1dc4b000bff3', 'validated', '{"audio_key":"a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00","entity_key":"wf_first_conversation_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e8b37dcd47f9bce53b25d61108ff4be47f22ddd0e73edd32489c1dc4b000bff3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00.mp3', 1201, '2026-09-14 13:37:44.728479', 'e8b37dcd47f9bce53b25d61108ff4be47f22ddd0e73edd32489c1dc4b000bff3', 'validated', '{"audio_key":"a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00","entity_key":"lx_first_greetings_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e8b37dcd47f9bce53b25d61108ff4be47f22ddd0e73edd32489c1dc4b000bff3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00.mp3', 1201, '2026-09-14 13:37:44.728479', 'e8b37dcd47f9bce53b25d61108ff4be47f22ddd0e73edd32489c1dc4b000bff3', 'validated', '{"audio_key":"a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00","entity_key":"wf_first_greetings_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e8b37dcd47f9bce53b25d61108ff4be47f22ddd0e73edd32489c1dc4b000bff3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a4881db8bfd1a70f265f68c27cb9809278e579e7e86dd4e31561e2f1444cba00.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a9933de9202a5a5895676a5f90d45cd80662ddfeef38980806a75abc4342b9b2.mp3', 914, '2026-09-14 13:37:45.678577', 'd113539ba2f116ea6a1e21d53dd0fac59949caddb0ac9a74e84ff71191ea719a', 'validated', '{"audio_key":"a9933de9202a5a5895676a5f90d45cd80662ddfeef38980806a75abc4342b9b2","entity_key":"lx_first_sounds_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d113539ba2f116ea6a1e21d53dd0fac59949caddb0ac9a74e84ff71191ea719a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a9933de9202a5a5895676a5f90d45cd80662ddfeef38980806a75abc4342b9b2.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a9933de9202a5a5895676a5f90d45cd80662ddfeef38980806a75abc4342b9b2.mp3', 914, '2026-09-14 13:37:45.678577', 'd113539ba2f116ea6a1e21d53dd0fac59949caddb0ac9a74e84ff71191ea719a', 'validated', '{"audio_key":"a9933de9202a5a5895676a5f90d45cd80662ddfeef38980806a75abc4342b9b2","entity_key":"wf_first_sounds_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d113539ba2f116ea6a1e21d53dd0fac59949caddb0ac9a74e84ff71191ea719a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a9933de9202a5a5895676a5f90d45cd80662ddfeef38980806a75abc4342b9b2.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b0cfab064626562f798f33cc3c1f2fe3ccfcff5734ea7f5505dca2eb0144d074.mp3', 1253, '2026-09-14 13:37:46.683815', '2437524ee9455339cf01d362ba605095c42e26ed8798f02f87e23e0f5ae6018f', 'validated', '{"audio_key":"b0cfab064626562f798f33cc3c1f2fe3ccfcff5734ea7f5505dca2eb0144d074","entity_key":"lx_my_name_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2437524ee9455339cf01d362ba605095c42e26ed8798f02f87e23e0f5ae6018f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b0cfab064626562f798f33cc3c1f2fe3ccfcff5734ea7f5505dca2eb0144d074.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b0cfab064626562f798f33cc3c1f2fe3ccfcff5734ea7f5505dca2eb0144d074.mp3', 1253, '2026-09-14 13:37:46.683815', '2437524ee9455339cf01d362ba605095c42e26ed8798f02f87e23e0f5ae6018f', 'validated', '{"audio_key":"b0cfab064626562f798f33cc3c1f2fe3ccfcff5734ea7f5505dca2eb0144d074","entity_key":"wf_my_name_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2437524ee9455339cf01d362ba605095c42e26ed8798f02f87e23e0f5ae6018f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b0cfab064626562f798f33cc3c1f2fe3ccfcff5734ea7f5505dca2eb0144d074.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b1143bbf8fff6727de7b9316f8bd5ac119d4986c19f227ea49b632f8777358e9.mp3', 1071, '2026-09-14 13:37:47.645267', 'c5ba0d9648990bf07eced060eee9c076d2d53fe7f992c6b9f50ed35ef16fec56', 'validated', '{"audio_key":"b1143bbf8fff6727de7b9316f8bd5ac119d4986c19f227ea49b632f8777358e9","entity_key":"lx_first_objects_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c5ba0d9648990bf07eced060eee9c076d2d53fe7f992c6b9f50ed35ef16fec56","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b1143bbf8fff6727de7b9316f8bd5ac119d4986c19f227ea49b632f8777358e9.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b1143bbf8fff6727de7b9316f8bd5ac119d4986c19f227ea49b632f8777358e9.mp3', 1071, '2026-09-14 13:37:47.645267', 'c5ba0d9648990bf07eced060eee9c076d2d53fe7f992c6b9f50ed35ef16fec56', 'validated', '{"audio_key":"b1143bbf8fff6727de7b9316f8bd5ac119d4986c19f227ea49b632f8777358e9","entity_key":"wf_first_objects_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c5ba0d9648990bf07eced060eee9c076d2d53fe7f992c6b9f50ed35ef16fec56","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b1143bbf8fff6727de7b9316f8bd5ac119d4986c19f227ea49b632f8777358e9.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b50319b71e09d311498bbd6c5830b0bf019b711bd1767b1d07ac43996d0b9ad7.mp3', 1018, '2026-09-14 13:37:48.609663', 'e9490e2398bbbd30a39cfc4bc5951b42d0659141c9f026006936af550ebba144', 'validated', '{"audio_key":"b50319b71e09d311498bbd6c5830b0bf019b711bd1767b1d07ac43996d0b9ad7","entity_key":"lx_first_sounds_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e9490e2398bbbd30a39cfc4bc5951b42d0659141c9f026006936af550ebba144","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b50319b71e09d311498bbd6c5830b0bf019b711bd1767b1d07ac43996d0b9ad7.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b50319b71e09d311498bbd6c5830b0bf019b711bd1767b1d07ac43996d0b9ad7.mp3', 1018, '2026-09-14 13:37:48.609663', 'e9490e2398bbbd30a39cfc4bc5951b42d0659141c9f026006936af550ebba144', 'validated', '{"audio_key":"b50319b71e09d311498bbd6c5830b0bf019b711bd1767b1d07ac43996d0b9ad7","entity_key":"wf_first_sounds_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e9490e2398bbbd30a39cfc4bc5951b42d0659141c9f026006936af550ebba144","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b50319b71e09d311498bbd6c5830b0bf019b711bd1767b1d07ac43996d0b9ad7.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b72fc166dd1dcec230c38d9d8fbfc61694570353f140c82662692c2332908321.mp3', 1097, '2026-09-14 13:37:49.650754', '75bac611b5f35f34c34ad65a25aa50e2153d41b20be54eeae72adf8466d6be8c', 'validated', '{"audio_key":"b72fc166dd1dcec230c38d9d8fbfc61694570353f140c82662692c2332908321","entity_key":"lx_first_objects_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75bac611b5f35f34c34ad65a25aa50e2153d41b20be54eeae72adf8466d6be8c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b72fc166dd1dcec230c38d9d8fbfc61694570353f140c82662692c2332908321.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b72fc166dd1dcec230c38d9d8fbfc61694570353f140c82662692c2332908321.mp3', 1097, '2026-09-14 13:37:49.650754', '75bac611b5f35f34c34ad65a25aa50e2153d41b20be54eeae72adf8466d6be8c', 'validated', '{"audio_key":"b72fc166dd1dcec230c38d9d8fbfc61694570353f140c82662692c2332908321","entity_key":"wf_first_objects_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75bac611b5f35f34c34ad65a25aa50e2153d41b20be54eeae72adf8466d6be8c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b72fc166dd1dcec230c38d9d8fbfc61694570353f140c82662692c2332908321.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/bcbdf33ded2d7a8b4fffba340b64b5effc348a6ac11518a1c7b15d3aa05ab036.mp3', 1332, '2026-09-14 13:37:50.621192', 'eb9c751928acb459d765a301eee72b8416d7d92ab1e8157c203f08a9b85c4822', 'validated', '{"audio_key":"bcbdf33ded2d7a8b4fffba340b64b5effc348a6ac11518a1c7b15d3aa05ab036","entity_key":"lx_polite_words_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eb9c751928acb459d765a301eee72b8416d7d92ab1e8157c203f08a9b85c4822","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/bcbdf33ded2d7a8b4fffba340b64b5effc348a6ac11518a1c7b15d3aa05ab036.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/bcbdf33ded2d7a8b4fffba340b64b5effc348a6ac11518a1c7b15d3aa05ab036.mp3', 1332, '2026-09-14 13:37:50.621192', 'eb9c751928acb459d765a301eee72b8416d7d92ab1e8157c203f08a9b85c4822', 'validated', '{"audio_key":"bcbdf33ded2d7a8b4fffba340b64b5effc348a6ac11518a1c7b15d3aa05ab036","entity_key":"wf_polite_words_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eb9c751928acb459d765a301eee72b8416d7d92ab1e8157c203f08a9b85c4822","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/bcbdf33ded2d7a8b4fffba340b64b5effc348a6ac11518a1c7b15d3aa05ab036.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c0d01fa51e6386480ace894fbb5cc4df42d8983b1a51dbc77838326b552a63bc.mp3', 862, '2026-09-14 13:37:51.601606', '2cbc6183af79124dbf2be1ada21836236bc53615c1d8758ed5a84be513cdb1c5', 'validated', '{"audio_key":"c0d01fa51e6386480ace894fbb5cc4df42d8983b1a51dbc77838326b552a63bc","entity_key":"lx_numbers_0_10_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2cbc6183af79124dbf2be1ada21836236bc53615c1d8758ed5a84be513cdb1c5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c0d01fa51e6386480ace894fbb5cc4df42d8983b1a51dbc77838326b552a63bc.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c0d01fa51e6386480ace894fbb5cc4df42d8983b1a51dbc77838326b552a63bc.mp3', 862, '2026-09-14 13:37:51.601606', '2cbc6183af79124dbf2be1ada21836236bc53615c1d8758ed5a84be513cdb1c5', 'validated', '{"audio_key":"c0d01fa51e6386480ace894fbb5cc4df42d8983b1a51dbc77838326b552a63bc","entity_key":"wf_numbers_0_10_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2cbc6183af79124dbf2be1ada21836236bc53615c1d8758ed5a84be513cdb1c5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c0d01fa51e6386480ace894fbb5cc4df42d8983b1a51dbc77838326b552a63bc.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c708427b7c3b1716cdfdc308249f7e38b5af37ea57207b8f026ddc2a423bbe19.mp3', 1384, '2026-09-14 13:37:52.594292', 'd5c3e2adfd89404494beb9c46de466fa52f495fe5d022bb8d453c65e0c44070b', 'validated', '{"audio_key":"c708427b7c3b1716cdfdc308249f7e38b5af37ea57207b8f026ddc2a423bbe19","entity_key":"lx_how_are_you_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d5c3e2adfd89404494beb9c46de466fa52f495fe5d022bb8d453c65e0c44070b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c708427b7c3b1716cdfdc308249f7e38b5af37ea57207b8f026ddc2a423bbe19.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c708427b7c3b1716cdfdc308249f7e38b5af37ea57207b8f026ddc2a423bbe19.mp3', 1384, '2026-09-14 13:37:52.594292', 'd5c3e2adfd89404494beb9c46de466fa52f495fe5d022bb8d453c65e0c44070b', 'validated', '{"audio_key":"c708427b7c3b1716cdfdc308249f7e38b5af37ea57207b8f026ddc2a423bbe19","entity_key":"wf_how_are_you_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d5c3e2adfd89404494beb9c46de466fa52f495fe5d022bb8d453c65e0c44070b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c708427b7c3b1716cdfdc308249f7e38b5af37ea57207b8f026ddc2a423bbe19.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c7e4d0f4e3a4e9863df4a01ae033b72cf1b62d3c60640da28c55526cba68bdc5.mp3', 862, '2026-09-14 13:37:53.539028', '56edced7b89b4ef1346129596a812114ca8fa2777f75b6ee76918333d3338132', 'validated', '{"audio_key":"c7e4d0f4e3a4e9863df4a01ae033b72cf1b62d3c60640da28c55526cba68bdc5","entity_key":"lx_my_name_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"56edced7b89b4ef1346129596a812114ca8fa2777f75b6ee76918333d3338132","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c7e4d0f4e3a4e9863df4a01ae033b72cf1b62d3c60640da28c55526cba68bdc5.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c7e4d0f4e3a4e9863df4a01ae033b72cf1b62d3c60640da28c55526cba68bdc5.mp3', 862, '2026-09-14 13:37:53.539028', '56edced7b89b4ef1346129596a812114ca8fa2777f75b6ee76918333d3338132', 'validated', '{"audio_key":"c7e4d0f4e3a4e9863df4a01ae033b72cf1b62d3c60640da28c55526cba68bdc5","entity_key":"wf_my_name_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"56edced7b89b4ef1346129596a812114ca8fa2777f75b6ee76918333d3338132","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c7e4d0f4e3a4e9863df4a01ae033b72cf1b62d3c60640da28c55526cba68bdc5.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ce03e07d301d1ad515abf5463e26672bced87467d97098e360e2c3273d9c9387.mp3', 1071, '2026-09-14 13:37:54.531767', '1bcb06a6f51927be2fa0df9f74deea59421be491511fa3b495426cfc892641af', 'validated', '{"audio_key":"ce03e07d301d1ad515abf5463e26672bced87467d97098e360e2c3273d9c9387","entity_key":"lx_first_greetings_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1bcb06a6f51927be2fa0df9f74deea59421be491511fa3b495426cfc892641af","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ce03e07d301d1ad515abf5463e26672bced87467d97098e360e2c3273d9c9387.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ce03e07d301d1ad515abf5463e26672bced87467d97098e360e2c3273d9c9387.mp3', 1071, '2026-09-14 13:37:54.531767', '1bcb06a6f51927be2fa0df9f74deea59421be491511fa3b495426cfc892641af', 'validated', '{"audio_key":"ce03e07d301d1ad515abf5463e26672bced87467d97098e360e2c3273d9c9387","entity_key":"wf_first_greetings_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1bcb06a6f51927be2fa0df9f74deea59421be491511fa3b495426cfc892641af","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ce03e07d301d1ad515abf5463e26672bced87467d97098e360e2c3273d9c9387.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f.mp3', 1149, '2026-09-14 13:37:55.537253', '8435b78fe1b2b00009ba207ec7bd8b511e9ca4a41fb8f1a99f873da7edc8d40f', 'validated', '{"audio_key":"ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f","entity_key":"lx_first_objects_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8435b78fe1b2b00009ba207ec7bd8b511e9ca4a41fb8f1a99f873da7edc8d40f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f.mp3', 1149, '2026-09-14 13:37:55.537253', '8435b78fe1b2b00009ba207ec7bd8b511e9ca4a41fb8f1a99f873da7edc8d40f', 'validated', '{"audio_key":"ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f","entity_key":"wf_first_objects_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8435b78fe1b2b00009ba207ec7bd8b511e9ca4a41fb8f1a99f873da7edc8d40f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ce1d03c9dbdbe9f70858d3342312660985f592873e6034fa8fced1200069b59f.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d3778c82706dd993e54758072ee9dd9662701433126a863f43e8efbd83710d26.mp3', 731, '2026-09-14 13:37:56.480608', 'c5f384c5dbb4908672286799a73107b5759fcfc1e67af59d5c06a6132c8b3fdc', 'validated', '{"audio_key":"d3778c82706dd993e54758072ee9dd9662701433126a863f43e8efbd83710d26","entity_key":"lx_alphabet_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c5f384c5dbb4908672286799a73107b5759fcfc1e67af59d5c06a6132c8b3fdc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d3778c82706dd993e54758072ee9dd9662701433126a863f43e8efbd83710d26.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d3778c82706dd993e54758072ee9dd9662701433126a863f43e8efbd83710d26.mp3', 731, '2026-09-14 13:37:56.480608', 'c5f384c5dbb4908672286799a73107b5759fcfc1e67af59d5c06a6132c8b3fdc', 'validated', '{"audio_key":"d3778c82706dd993e54758072ee9dd9662701433126a863f43e8efbd83710d26","entity_key":"wf_alphabet_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c5f384c5dbb4908672286799a73107b5759fcfc1e67af59d5c06a6132c8b3fdc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d3778c82706dd993e54758072ee9dd9662701433126a863f43e8efbd83710d26.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d37c18936199f6b112962040ea618153fa4d96590d16f6e2f1c51ca5ea721896.mp3', 1149, '2026-09-14 13:37:57.451033', 'b671389bbc712adb41d0a665f2c760f6ff5bc692b5928117ed6660e34b007283', 'validated', '{"audio_key":"d37c18936199f6b112962040ea618153fa4d96590d16f6e2f1c51ca5ea721896","entity_key":"lx_first_objects_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b671389bbc712adb41d0a665f2c760f6ff5bc692b5928117ed6660e34b007283","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d37c18936199f6b112962040ea618153fa4d96590d16f6e2f1c51ca5ea721896.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/d37c18936199f6b112962040ea618153fa4d96590d16f6e2f1c51ca5ea721896.mp3', 1149, '2026-09-14 13:37:57.451033', 'b671389bbc712adb41d0a665f2c760f6ff5bc692b5928117ed6660e34b007283', 'validated', '{"audio_key":"d37c18936199f6b112962040ea618153fa4d96590d16f6e2f1c51ca5ea721896","entity_key":"wf_first_objects_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b671389bbc712adb41d0a665f2c760f6ff5bc692b5928117ed6660e34b007283","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/d37c18936199f6b112962040ea618153fa4d96590d16f6e2f1c51ca5ea721896.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e6b3ebde5b4a431c19e8ebe760c1198e0f86a6b5a94119f6790479efe15b00a2.mp3', 914, '2026-09-14 13:37:58.402230', '3e31c6fdefb6a4ea8a68a9d36b7b48e386cbf3335cdfaddfbfc58439d63f407f', 'validated', '{"audio_key":"e6b3ebde5b4a431c19e8ebe760c1198e0f86a6b5a94119f6790479efe15b00a2","entity_key":"lx_my_name_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3e31c6fdefb6a4ea8a68a9d36b7b48e386cbf3335cdfaddfbfc58439d63f407f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e6b3ebde5b4a431c19e8ebe760c1198e0f86a6b5a94119f6790479efe15b00a2.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e6b3ebde5b4a431c19e8ebe760c1198e0f86a6b5a94119f6790479efe15b00a2.mp3', 914, '2026-09-14 13:37:58.402230', '3e31c6fdefb6a4ea8a68a9d36b7b48e386cbf3335cdfaddfbfc58439d63f407f', 'validated', '{"audio_key":"e6b3ebde5b4a431c19e8ebe760c1198e0f86a6b5a94119f6790479efe15b00a2","entity_key":"wf_my_name_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3e31c6fdefb6a4ea8a68a9d36b7b48e386cbf3335cdfaddfbfc58439d63f407f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e6b3ebde5b4a431c19e8ebe760c1198e0f86a6b5a94119f6790479efe15b00a2.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e73312e157d8178bf0bb6756ffaf583c6b57e1f2a3a23f9a264520a0acfba196.mp3', 1201, '2026-09-14 13:37:59.369995', 'c396482f87b30d3ca358e79008160c752259f6ea82f58d20d5d83aedbb9ac08a', 'validated', '{"audio_key":"e73312e157d8178bf0bb6756ffaf583c6b57e1f2a3a23f9a264520a0acfba196","entity_key":"lx_first_objects_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c396482f87b30d3ca358e79008160c752259f6ea82f58d20d5d83aedbb9ac08a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e73312e157d8178bf0bb6756ffaf583c6b57e1f2a3a23f9a264520a0acfba196.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e73312e157d8178bf0bb6756ffaf583c6b57e1f2a3a23f9a264520a0acfba196.mp3', 1201, '2026-09-14 13:37:59.369995', 'c396482f87b30d3ca358e79008160c752259f6ea82f58d20d5d83aedbb9ac08a', 'validated', '{"audio_key":"e73312e157d8178bf0bb6756ffaf583c6b57e1f2a3a23f9a264520a0acfba196","entity_key":"wf_first_objects_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c396482f87b30d3ca358e79008160c752259f6ea82f58d20d5d83aedbb9ac08a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e73312e157d8178bf0bb6756ffaf583c6b57e1f2a3a23f9a264520a0acfba196.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b.mp3', 1253, '2026-09-14 13:38:00.354178', '4b8e5cabcb5b01e3c40d6db762aa7426962ae9e2ccee491af86028ed7c5c956e', 'validated', '{"audio_key":"eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b","entity_key":"lx_first_conversation_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b8e5cabcb5b01e3c40d6db762aa7426962ae9e2ccee491af86028ed7c5c956e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b.mp3', 1253, '2026-09-14 13:38:00.354178', '4b8e5cabcb5b01e3c40d6db762aa7426962ae9e2ccee491af86028ed7c5c956e', 'validated', '{"audio_key":"eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b","entity_key":"wf_first_conversation_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b8e5cabcb5b01e3c40d6db762aa7426962ae9e2ccee491af86028ed7c5c956e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b.mp3', 1253, '2026-09-14 13:38:00.354178', '4b8e5cabcb5b01e3c40d6db762aa7426962ae9e2ccee491af86028ed7c5c956e', 'validated', '{"audio_key":"eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b","entity_key":"lx_how_are_you_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b8e5cabcb5b01e3c40d6db762aa7426962ae9e2ccee491af86028ed7c5c956e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b.mp3', 1253, '2026-09-14 13:38:00.354178', '4b8e5cabcb5b01e3c40d6db762aa7426962ae9e2ccee491af86028ed7c5c956e', 'validated', '{"audio_key":"eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b","entity_key":"wf_how_are_you_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b8e5cabcb5b01e3c40d6db762aa7426962ae9e2ccee491af86028ed7c5c956e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/eee0098a758f8ecf63b0838bb53fe11f653c17da58260aa32439ec6dd5e5e94b.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ef1751d93a7507991653a7c567c2b9ea3d6e000ea076295f70d36fd9796d7e19.mp3', 966, '2026-09-14 13:38:01.443690', 'd1b643624b48b8a134b7e57a4bfe7910d8811c3da3ad0134ff013b0fe149a14a', 'validated', '{"audio_key":"ef1751d93a7507991653a7c567c2b9ea3d6e000ea076295f70d36fd9796d7e19","entity_key":"lx_numbers_0_10_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d1b643624b48b8a134b7e57a4bfe7910d8811c3da3ad0134ff013b0fe149a14a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ef1751d93a7507991653a7c567c2b9ea3d6e000ea076295f70d36fd9796d7e19.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ef1751d93a7507991653a7c567c2b9ea3d6e000ea076295f70d36fd9796d7e19.mp3', 966, '2026-09-14 13:38:01.443690', 'd1b643624b48b8a134b7e57a4bfe7910d8811c3da3ad0134ff013b0fe149a14a', 'validated', '{"audio_key":"ef1751d93a7507991653a7c567c2b9ea3d6e000ea076295f70d36fd9796d7e19","entity_key":"wf_numbers_0_10_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d1b643624b48b8a134b7e57a4bfe7910d8811c3da3ad0134ff013b0fe149a14a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ef1751d93a7507991653a7c567c2b9ea3d6e000ea076295f70d36fd9796d7e19.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f41784c6d72bb31520d3b2e50eb4a2959fafe777cc6ee9afc782fad9b4111764.mp3', 914, '2026-09-14 13:38:02.396381', 'd35e9183b592cb2d769a85a6b7e44717aa092595e711898fed278ac625171f0f', 'validated', '{"audio_key":"f41784c6d72bb31520d3b2e50eb4a2959fafe777cc6ee9afc782fad9b4111764","entity_key":"lx_first_sounds_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d35e9183b592cb2d769a85a6b7e44717aa092595e711898fed278ac625171f0f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f41784c6d72bb31520d3b2e50eb4a2959fafe777cc6ee9afc782fad9b4111764.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f41784c6d72bb31520d3b2e50eb4a2959fafe777cc6ee9afc782fad9b4111764.mp3', 914, '2026-09-14 13:38:02.396381', 'd35e9183b592cb2d769a85a6b7e44717aa092595e711898fed278ac625171f0f', 'validated', '{"audio_key":"f41784c6d72bb31520d3b2e50eb4a2959fafe777cc6ee9afc782fad9b4111764","entity_key":"wf_first_sounds_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d35e9183b592cb2d769a85a6b7e44717aa092595e711898fed278ac625171f0f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f41784c6d72bb31520d3b2e50eb4a2959fafe777cc6ee9afc782fad9b4111764.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f8a086ad49775afe97c1d4df795c62edf85bf920d0684208071ab499392d8a02.mp3', 1018, '2026-09-14 13:38:03.398887', '12249ce39e6b1d32f3f811b48a20e1d3e96d51d1ca5fb26ff472c80d80d06094', 'validated', '{"audio_key":"f8a086ad49775afe97c1d4df795c62edf85bf920d0684208071ab499392d8a02","entity_key":"lx_first_sounds_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"12249ce39e6b1d32f3f811b48a20e1d3e96d51d1ca5fb26ff472c80d80d06094","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f8a086ad49775afe97c1d4df795c62edf85bf920d0684208071ab499392d8a02.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f8a086ad49775afe97c1d4df795c62edf85bf920d0684208071ab499392d8a02.mp3', 1018, '2026-09-14 13:38:03.398887', '12249ce39e6b1d32f3f811b48a20e1d3e96d51d1ca5fb26ff472c80d80d06094', 'validated', '{"audio_key":"f8a086ad49775afe97c1d4df795c62edf85bf920d0684208071ab499392d8a02","entity_key":"wf_first_sounds_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"12249ce39e6b1d32f3f811b48a20e1d3e96d51d1ca5fb26ff472c80d80d06094","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f8a086ad49775afe97c1d4df795c62edf85bf920d0684208071ab499392d8a02.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4.mp3', 966, '2026-09-14 13:38:04.373573', '118a317caadbb5650361307dccd1cfd08e951f75fc9eb751d8cba2981dbc51dd', 'validated', '{"audio_key":"fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4","entity_key":"lx_first_conversation_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"118a317caadbb5650361307dccd1cfd08e951f75fc9eb751d8cba2981dbc51dd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4.mp3', 966, '2026-09-14 13:38:04.373573', '118a317caadbb5650361307dccd1cfd08e951f75fc9eb751d8cba2981dbc51dd', 'validated', '{"audio_key":"fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4","entity_key":"wf_first_conversation_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"118a317caadbb5650361307dccd1cfd08e951f75fc9eb751d8cba2981dbc51dd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4.mp3', 966, '2026-09-14 13:38:04.373573', '118a317caadbb5650361307dccd1cfd08e951f75fc9eb751d8cba2981dbc51dd', 'validated', '{"audio_key":"fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4","entity_key":"lx_how_are_you_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"118a317caadbb5650361307dccd1cfd08e951f75fc9eb751d8cba2981dbc51dd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4.mp3', 966, '2026-09-14 13:38:04.373573', '118a317caadbb5650361307dccd1cfd08e951f75fc9eb751d8cba2981dbc51dd', 'validated', '{"audio_key":"fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4","entity_key":"wf_how_are_you_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"118a317caadbb5650361307dccd1cfd08e951f75fc9eb751d8cba2981dbc51dd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fa68b17a0398cfa7baa453263a8f0f8a60d1d0e33ec55b26afa9e40f6eb8e9d4.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fdc378fe49263d4ce7ad6b5e67e846b0ec21b4e007b93b364267bfa40eca4480.mp3', 1097, '2026-09-14 13:38:05.354227', '54e8d67bcdd2c816b11842f3a5e23d48d23d8702a682eea0eed8419b0bbb34f8', 'validated', '{"audio_key":"fdc378fe49263d4ce7ad6b5e67e846b0ec21b4e007b93b364267bfa40eca4480","entity_key":"lx_first_objects_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"54e8d67bcdd2c816b11842f3a5e23d48d23d8702a682eea0eed8419b0bbb34f8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fdc378fe49263d4ce7ad6b5e67e846b0ec21b4e007b93b364267bfa40eca4480.mp3"}'
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
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fdc378fe49263d4ce7ad6b5e67e846b0ec21b4e007b93b364267bfa40eca4480.mp3', 1097, '2026-09-14 13:38:05.354227', '54e8d67bcdd2c816b11842f3a5e23d48d23d8702a682eea0eed8419b0bbb34f8', 'validated', '{"audio_key":"fdc378fe49263d4ce7ad6b5e67e846b0ec21b4e007b93b364267bfa40eca4480","entity_key":"wf_first_objects_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"54e8d67bcdd2c816b11842f3a5e23d48d23d8702a682eea0eed8419b0bbb34f8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fdc378fe49263d4ce7ad6b5e67e846b0ec21b4e007b93b364267bfa40eca4480.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0041ae20ea41a4c8fd03302f4dd3d1a4d0b36bd09b9787f65372b231f44b1ca3.mp3', 1332, '2026-09-14 13:38:06.367379', '3788de0ea404290faec69fa53007a7da4cfe7ca49c97ef4434d740bdba78dfd0', 'validated', '{"audio_key":"0041ae20ea41a4c8fd03302f4dd3d1a4d0b36bd09b9787f65372b231f44b1ca3","entity_key":"u_numbers_0_10_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3788de0ea404290faec69fa53007a7da4cfe7ca49c97ef4434d740bdba78dfd0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0041ae20ea41a4c8fd03302f4dd3d1a4d0b36bd09b9787f65372b231f44b1ca3.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0041ae20ea41a4c8fd03302f4dd3d1a4d0b36bd09b9787f65372b231f44b1ca3.mp3', 1332, '2026-09-14 13:38:06.367379', '3788de0ea404290faec69fa53007a7da4cfe7ca49c97ef4434d740bdba78dfd0', 'validated', '{"audio_key":"0041ae20ea41a4c8fd03302f4dd3d1a4d0b36bd09b9787f65372b231f44b1ca3","entity_key":"e_numbers_0_10_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3788de0ea404290faec69fa53007a7da4cfe7ca49c97ef4434d740bdba78dfd0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0041ae20ea41a4c8fd03302f4dd3d1a4d0b36bd09b9787f65372b231f44b1ca3.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/006a1f04a380427a576e8d85d27a59368ac5f99340a1e273876f92b3ce6cf525.mp3', 1619, '2026-09-14 13:38:07.424146', '753657d9b52836fa76471ee299362d390b84d6345e932d407a9cdf49dc980e4a', 'validated', '{"audio_key":"006a1f04a380427a576e8d85d27a59368ac5f99340a1e273876f92b3ce6cf525","entity_key":"u_first_conversation_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"753657d9b52836fa76471ee299362d390b84d6345e932d407a9cdf49dc980e4a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/006a1f04a380427a576e8d85d27a59368ac5f99340a1e273876f92b3ce6cf525.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/006a1f04a380427a576e8d85d27a59368ac5f99340a1e273876f92b3ce6cf525.mp3', 1619, '2026-09-14 13:38:07.424146', '753657d9b52836fa76471ee299362d390b84d6345e932d407a9cdf49dc980e4a', 'validated', '{"audio_key":"006a1f04a380427a576e8d85d27a59368ac5f99340a1e273876f92b3ce6cf525","entity_key":"e_first_conversation_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"753657d9b52836fa76471ee299362d390b84d6345e932d407a9cdf49dc980e4a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/006a1f04a380427a576e8d85d27a59368ac5f99340a1e273876f92b3ce6cf525.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0074783bd37e35d48e3c90ef10d93f6615820e211ce8c386756a67b36e750a0c.mp3', 1253, '2026-09-14 13:38:08.417003', 'c3db71f7c685a95fd48d1566900caa592f9ab4fdea8c5553f5b952308df12699', 'validated', '{"audio_key":"0074783bd37e35d48e3c90ef10d93f6615820e211ce8c386756a67b36e750a0c","entity_key":"u_alphabet_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c3db71f7c685a95fd48d1566900caa592f9ab4fdea8c5553f5b952308df12699","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0074783bd37e35d48e3c90ef10d93f6615820e211ce8c386756a67b36e750a0c.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0074783bd37e35d48e3c90ef10d93f6615820e211ce8c386756a67b36e750a0c.mp3', 1253, '2026-09-14 13:38:08.417003', 'c3db71f7c685a95fd48d1566900caa592f9ab4fdea8c5553f5b952308df12699', 'validated', '{"audio_key":"0074783bd37e35d48e3c90ef10d93f6615820e211ce8c386756a67b36e750a0c","entity_key":"e_alphabet_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c3db71f7c685a95fd48d1566900caa592f9ab4fdea8c5553f5b952308df12699","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0074783bd37e35d48e3c90ef10d93f6615820e211ce8c386756a67b36e750a0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_tr-real-life-numbers_n15 -> audio/generated/tr-TR/utterances/077653ba5878f3822ccc8de46132ea2c03794ec6f43673cf38d6859871466a6a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('060611a8-1224-58fb-9a7c-c29bdb157b70', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_tr-real-life-numbers_n15')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '11aee469d016f69138d88e6b06c4467945e4dc4a47779cd25ad9d3292a0d9cc4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('062053a4-7714-5ade-bae0-c84a173d9969', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('060611a8-1224-58fb-9a7c-c29bdb157b70', 1), '11aee469d016f69138d88e6b06c4467945e4dc4a47779cd25ad9d3292a0d9cc4',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/077653ba5878f3822ccc8de46132ea2c03794ec6f43673cf38d6859871466a6a.mp3', 1071, '2026-09-14 13:38:09.371001', 'e121e53a4bb5bf97290a5d0b398f75db602ce75da8633bb1c516dccec3ad7f00', 'validated', '{"audio_key":"077653ba5878f3822ccc8de46132ea2c03794ec6f43673cf38d6859871466a6a","entity_key":"u_tr_tr-real-life-numbers_n15","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e121e53a4bb5bf97290a5d0b398f75db602ce75da8633bb1c516dccec3ad7f00","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/077653ba5878f3822ccc8de46132ea2c03794ec6f43673cf38d6859871466a6a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_tr_tr-real-life-numbers_number_listen -> audio/generated/tr-TR/utterances/077653ba5878f3822ccc8de46132ea2c03794ec6f43673cf38d6859871466a6a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c296735d-9383-5bdf-86eb-9ea80bbf7708', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_tr_tr-real-life-numbers_number_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '11aee469d016f69138d88e6b06c4467945e4dc4a47779cd25ad9d3292a0d9cc4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5074b30-87c6-5df7-8a87-6fc1cbd12eee', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c296735d-9383-5bdf-86eb-9ea80bbf7708', 1), '11aee469d016f69138d88e6b06c4467945e4dc4a47779cd25ad9d3292a0d9cc4',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/077653ba5878f3822ccc8de46132ea2c03794ec6f43673cf38d6859871466a6a.mp3', 1071, '2026-09-14 13:38:09.371001', 'e121e53a4bb5bf97290a5d0b398f75db602ce75da8633bb1c516dccec3ad7f00', 'validated', '{"audio_key":"077653ba5878f3822ccc8de46132ea2c03794ec6f43673cf38d6859871466a6a","entity_key":"ex_tr_tr-real-life-numbers_number_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e121e53a4bb5bf97290a5d0b398f75db602ce75da8633bb1c516dccec3ad7f00","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/077653ba5878f3822ccc8de46132ea2c03794ec6f43673cf38d6859871466a6a.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/079556e5fb5242fe4558454d3187cf98e4aee753f401f26ff3640ab99e54a4a0.mp3', 1201, '2026-09-14 13:38:10.444383', '7ec7256bc63de41645157c4dae40ea2119736e3e76420d44da10444d08106b22', 'validated', '{"audio_key":"079556e5fb5242fe4558454d3187cf98e4aee753f401f26ff3640ab99e54a4a0","entity_key":"u_alphabet_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7ec7256bc63de41645157c4dae40ea2119736e3e76420d44da10444d08106b22","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/079556e5fb5242fe4558454d3187cf98e4aee753f401f26ff3640ab99e54a4a0.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0ac21f06a0433f6b73eea1570d3a9def111d58092b7873cac7f65aebcbc85c8c.mp3', 862, '2026-09-14 13:38:11.413736', '2e934e178f561a0e776373dc2e7cc6801ac2ef5e646446aeabdf96edb207c487', 'validated', '{"audio_key":"0ac21f06a0433f6b73eea1570d3a9def111d58092b7873cac7f65aebcbc85c8c","entity_key":"u_tr_bridge_gun","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2e934e178f561a0e776373dc2e7cc6801ac2ef5e646446aeabdf96edb207c487","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0ac21f06a0433f6b73eea1570d3a9def111d58092b7873cac7f65aebcbc85c8c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_tr-forms-signs_exit_q -> audio/generated/tr-TR/utterances/0ca88b4b71f2aa27030f3043a06795e9e28f43ea7be36cc673e1f9f24f546795.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ec14062c-41da-5fe2-9310-9d02543e61a3', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_tr-forms-signs_exit_q')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c9131d4b46f9b69abc339a4a26fe68637a24a433c3e7fa4f9a5f5e94c547897'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('806163c5-21bf-579c-a519-2742df4decef', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ec14062c-41da-5fe2-9310-9d02543e61a3', 1), '3c9131d4b46f9b69abc339a4a26fe68637a24a433c3e7fa4f9a5f5e94c547897',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0ca88b4b71f2aa27030f3043a06795e9e28f43ea7be36cc673e1f9f24f546795.mp3', 1384, '2026-09-14 13:38:12.501925', '1129c3e387397e90397a2fa9197be1fac6566da8c9f4fd023b759273c77a1e7d', 'validated', '{"audio_key":"0ca88b4b71f2aa27030f3043a06795e9e28f43ea7be36cc673e1f9f24f546795","entity_key":"u_tr_tr-forms-signs_exit_q","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1129c3e387397e90397a2fa9197be1fac6566da8c9f4fd023b759273c77a1e7d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0ca88b4b71f2aa27030f3043a06795e9e28f43ea7be36cc673e1f9f24f546795.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0efdbf2c08a240ad635cde723a6ded32d9abef408ed6e47f2101c8d5adb97db0.mp3', 1280, '2026-09-14 13:38:13.473433', '4b6ed262ac09aa5b3b14f6a7cf0bcff76c311cbe783074438629f31ea7f9b367', 'validated', '{"audio_key":"0efdbf2c08a240ad635cde723a6ded32d9abef408ed6e47f2101c8d5adb97db0","entity_key":"g_tr_bridge_vowels_softg:example:1","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b6ed262ac09aa5b3b14f6a7cf0bcff76c311cbe783074438629f31ea7f9b367","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0efdbf2c08a240ad635cde723a6ded32d9abef408ed6e47f2101c8d5adb97db0.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/119442db6ce710f3f0b7cece602f6718e567d6416836965ee4a1378e15fd288f.mp3', 1201, '2026-09-14 13:38:14.462492', 'd9d0e2564243640a56c638d807bbd97d51191a42036532114ebc5cd2c9703989', 'validated', '{"audio_key":"119442db6ce710f3f0b7cece602f6718e567d6416836965ee4a1378e15fd288f","entity_key":"ex_tr_pre_hear_soft_g","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d9d0e2564243640a56c638d807bbd97d51191a42036532114ebc5cd2c9703989","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/119442db6ce710f3f0b7cece602f6718e567d6416836965ee4a1378e15fd288f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_tr-real-life-numbers_phone -> audio/generated/tr-TR/utterances/1316f013e29802e0554d10b9519e2821aa7c16e970cd5b5e0015ab9a523a0656.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b34e1cbd-d2fb-5a8f-8c3b-f4533156523b', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_tr-real-life-numbers_phone')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8043a372ad2578dddfc3c9c62e2f7d5fca497b1baf47b0849d1602fcc83262f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86ce9c4c-015c-5f6d-8d0f-80b905b28982', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b34e1cbd-d2fb-5a8f-8c3b-f4533156523b', 1), '8043a372ad2578dddfc3c9c62e2f7d5fca497b1baf47b0849d1602fcc83262f8',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/1316f013e29802e0554d10b9519e2821aa7c16e970cd5b5e0015ab9a523a0656.mp3', 3709, '2026-09-14 13:38:15.669653', '89bced486801ed823b5a9a2e0c67f3317b327f908e0f4d1267aa90ef51005c49', 'validated', '{"audio_key":"1316f013e29802e0554d10b9519e2821aa7c16e970cd5b5e0015ab9a523a0656","entity_key":"u_tr_tr-real-life-numbers_phone","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"89bced486801ed823b5a9a2e0c67f3317b327f908e0f4d1267aa90ef51005c49","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/1316f013e29802e0554d10b9519e2821aa7c16e970cd5b5e0015ab9a523a0656.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_tr_tr-real-life-numbers:example:1 -> audio/generated/tr-TR/utterances/1316f013e29802e0554d10b9519e2821aa7c16e970cd5b5e0015ab9a523a0656.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('05af3895-6be9-5ad2-91e7-2f0824907506', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_tr_tr-real-life-numbers:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8043a372ad2578dddfc3c9c62e2f7d5fca497b1baf47b0849d1602fcc83262f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07fba546-e341-5858-9d76-593368cde845', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('05af3895-6be9-5ad2-91e7-2f0824907506', 1), '8043a372ad2578dddfc3c9c62e2f7d5fca497b1baf47b0849d1602fcc83262f8',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/1316f013e29802e0554d10b9519e2821aa7c16e970cd5b5e0015ab9a523a0656.mp3', 3709, '2026-09-14 13:38:15.669653', '89bced486801ed823b5a9a2e0c67f3317b327f908e0f4d1267aa90ef51005c49', 'validated', '{"audio_key":"1316f013e29802e0554d10b9519e2821aa7c16e970cd5b5e0015ab9a523a0656","entity_key":"g_tr_tr-real-life-numbers:example:1","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"89bced486801ed823b5a9a2e0c67f3317b327f908e0f4d1267aa90ef51005c49","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/1316f013e29802e0554d10b9519e2821aa7c16e970cd5b5e0015ab9a523a0656.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_tr_tr-real-world-gate_phone_listen -> audio/generated/tr-TR/utterances/1316f013e29802e0554d10b9519e2821aa7c16e970cd5b5e0015ab9a523a0656.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('13b33b22-0a97-5248-9a95-54219acb4048', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_tr_tr-real-world-gate_phone_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8043a372ad2578dddfc3c9c62e2f7d5fca497b1baf47b0849d1602fcc83262f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d07e42f6-88fd-5da0-b2d6-18bfad35638d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('13b33b22-0a97-5248-9a95-54219acb4048', 1), '8043a372ad2578dddfc3c9c62e2f7d5fca497b1baf47b0849d1602fcc83262f8',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/1316f013e29802e0554d10b9519e2821aa7c16e970cd5b5e0015ab9a523a0656.mp3', 3709, '2026-09-14 13:38:15.669653', '89bced486801ed823b5a9a2e0c67f3317b327f908e0f4d1267aa90ef51005c49', 'validated', '{"audio_key":"1316f013e29802e0554d10b9519e2821aa7c16e970cd5b5e0015ab9a523a0656","entity_key":"ex_tr_tr-real-world-gate_phone_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"89bced486801ed823b5a9a2e0c67f3317b327f908e0f4d1267aa90ef51005c49","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/1316f013e29802e0554d10b9519e2821aa7c16e970cd5b5e0015ab9a523a0656.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/15ca2d5358e6bb64ae1645c45f1f8e2c724b2413d8b6f6e790d3cef046416e8c.mp3', 1854, '2026-09-14 13:38:16.753363', 'cbdc25acb2c6f4422df01553588e86dae4da689bd6cc4a1ffa3ebfb28fe62f83', 'validated', '{"audio_key":"15ca2d5358e6bb64ae1645c45f1f8e2c724b2413d8b6f6e790d3cef046416e8c","entity_key":"u_first_conversation_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cbdc25acb2c6f4422df01553588e86dae4da689bd6cc4a1ffa3ebfb28fe62f83","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/15ca2d5358e6bb64ae1645c45f1f8e2c724b2413d8b6f6e790d3cef046416e8c.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/1dfa56f6effc3d88394a5cdf02d8f36a69756a18e049fb4125f0b7f41f62b8e8.mp3', 1567, '2026-09-14 13:38:17.949935', '1b9c705eca7e9295262a9d38e86ffe05328e282f711604abe0c44b385ca41241', 'validated', '{"audio_key":"1dfa56f6effc3d88394a5cdf02d8f36a69756a18e049fb4125f0b7f41f62b8e8","entity_key":"u_first_conversation_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1b9c705eca7e9295262a9d38e86ffe05328e282f711604abe0c44b385ca41241","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/1dfa56f6effc3d88394a5cdf02d8f36a69756a18e049fb4125f0b7f41f62b8e8.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/1dfa56f6effc3d88394a5cdf02d8f36a69756a18e049fb4125f0b7f41f62b8e8.mp3', 1567, '2026-09-14 13:38:17.949935', '1b9c705eca7e9295262a9d38e86ffe05328e282f711604abe0c44b385ca41241', 'validated', '{"audio_key":"1dfa56f6effc3d88394a5cdf02d8f36a69756a18e049fb4125f0b7f41f62b8e8","entity_key":"e_first_conversation_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1b9c705eca7e9295262a9d38e86ffe05328e282f711604abe0c44b385ca41241","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/1dfa56f6effc3d88394a5cdf02d8f36a69756a18e049fb4125f0b7f41f62b8e8.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/1ef8a86d55fa0b9e4a0363a980c70c6430fdf408a17b83baeb64fcee3f3f261b.mp3', 1436, '2026-09-14 13:38:18.955659', '287cc763414b8769ef2fb05dbc29ce4aa2fe494c45337a58090704123af3072d', 'validated', '{"audio_key":"1ef8a86d55fa0b9e4a0363a980c70c6430fdf408a17b83baeb64fcee3f3f261b","entity_key":"u_alphabet_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"287cc763414b8769ef2fb05dbc29ce4aa2fe494c45337a58090704123af3072d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/1ef8a86d55fa0b9e4a0363a980c70c6430fdf408a17b83baeb64fcee3f3f261b.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/20135eff10e546a58a83654f34fad51569ac86fb4f7662ad4884965d6e5c4d43.mp3', 1071, '2026-09-14 13:38:19.947058', '24e8f498c70f7931b2701fef41ef33bfc5085b2571b35725589b4b9a3616c634', 'validated', '{"audio_key":"20135eff10e546a58a83654f34fad51569ac86fb4f7662ad4884965d6e5c4d43","entity_key":"g_tr_pre_i_pair:example:1","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"24e8f498c70f7931b2701fef41ef33bfc5085b2571b35725589b4b9a3616c634","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/20135eff10e546a58a83654f34fad51569ac86fb4f7662ad4884965d6e5c4d43.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/2282a037d3d6f80933c4e2d79e5913546de5209ac1e364f6503f208825898f17.mp3', 914, '2026-09-14 13:38:20.873303', '317778c8813555acead7d7f891c4c2250175eecdf0978f7af29104c12a552e8d', 'validated', '{"audio_key":"2282a037d3d6f80933c4e2d79e5913546de5209ac1e364f6503f208825898f17","entity_key":"ex_tr_ready_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"317778c8813555acead7d7f891c4c2250175eecdf0978f7af29104c12a552e8d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/2282a037d3d6f80933c4e2d79e5913546de5209ac1e364f6503f208825898f17.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/2282a037d3d6f80933c4e2d79e5913546de5209ac1e364f6503f208825898f17.mp3', 914, '2026-09-14 13:38:20.873303', '317778c8813555acead7d7f891c4c2250175eecdf0978f7af29104c12a552e8d', 'validated', '{"audio_key":"2282a037d3d6f80933c4e2d79e5913546de5209ac1e364f6503f208825898f17","entity_key":"u_tr_bridge_kiz","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"317778c8813555acead7d7f891c4c2250175eecdf0978f7af29104c12a552e8d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/2282a037d3d6f80933c4e2d79e5913546de5209ac1e364f6503f208825898f17.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/2282a037d3d6f80933c4e2d79e5913546de5209ac1e364f6503f208825898f17.mp3', 914, '2026-09-14 13:38:20.873303', '317778c8813555acead7d7f891c4c2250175eecdf0978f7af29104c12a552e8d', 'validated', '{"audio_key":"2282a037d3d6f80933c4e2d79e5913546de5209ac1e364f6503f208825898f17","entity_key":"ex_tr_bridge_hear_kiz","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"317778c8813555acead7d7f891c4c2250175eecdf0978f7af29104c12a552e8d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/2282a037d3d6f80933c4e2d79e5913546de5209ac1e364f6503f208825898f17.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/24df7ff641b2015e354f624301b310fbdb6c21089566176e4e59c581ac5741e6.mp3', 1280, '2026-09-14 13:38:21.828214', '3c84a14ccce0015eabb56191c5727c2072ac763ac3a095aea56409c14d621591', 'validated', '{"audio_key":"24df7ff641b2015e354f624301b310fbdb6c21089566176e4e59c581ac5741e6","entity_key":"u_first_objects_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3c84a14ccce0015eabb56191c5727c2072ac763ac3a095aea56409c14d621591","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/24df7ff641b2015e354f624301b310fbdb6c21089566176e4e59c581ac5741e6.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/24df7ff641b2015e354f624301b310fbdb6c21089566176e4e59c581ac5741e6.mp3', 1280, '2026-09-14 13:38:21.828214', '3c84a14ccce0015eabb56191c5727c2072ac763ac3a095aea56409c14d621591', 'validated', '{"audio_key":"24df7ff641b2015e354f624301b310fbdb6c21089566176e4e59c581ac5741e6","entity_key":"e_first_objects_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3c84a14ccce0015eabb56191c5727c2072ac763ac3a095aea56409c14d621591","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/24df7ff641b2015e354f624301b310fbdb6c21089566176e4e59c581ac5741e6.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/2d0b58d1dbaac368265de232c32ee05801c4fd20443f80676fe22a17a5ffb6ba.mp3', 1854, '2026-09-14 13:38:22.880628', 'a9969bf6c05d24d3cfbd9472113b7d1b70b3d7dda4fc32a0847a749b630d84e2', 'validated', '{"audio_key":"2d0b58d1dbaac368265de232c32ee05801c4fd20443f80676fe22a17a5ffb6ba","entity_key":"u_survival_words_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a9969bf6c05d24d3cfbd9472113b7d1b70b3d7dda4fc32a0847a749b630d84e2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/2d0b58d1dbaac368265de232c32ee05801c4fd20443f80676fe22a17a5ffb6ba.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/2d0b58d1dbaac368265de232c32ee05801c4fd20443f80676fe22a17a5ffb6ba.mp3', 1854, '2026-09-14 13:38:22.880628', 'a9969bf6c05d24d3cfbd9472113b7d1b70b3d7dda4fc32a0847a749b630d84e2', 'validated', '{"audio_key":"2d0b58d1dbaac368265de232c32ee05801c4fd20443f80676fe22a17a5ffb6ba","entity_key":"e_survival_words_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a9969bf6c05d24d3cfbd9472113b7d1b70b3d7dda4fc32a0847a749b630d84e2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/2d0b58d1dbaac368265de232c32ee05801c4fd20443f80676fe22a17a5ffb6ba.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/345ee485926eca922085a8f5d025c4bf0742a52512a3b8f77b8f13d075ca73d1.mp3', 1619, '2026-09-14 13:38:23.910195', '2bc710d736fb247822601cf230397a94da63b884976ff209acfb0b684cfd3fff', 'validated', '{"audio_key":"345ee485926eca922085a8f5d025c4bf0742a52512a3b8f77b8f13d075ca73d1","entity_key":"u_tr_meaning_slow","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2bc710d736fb247822601cf230397a94da63b884976ff209acfb0b684cfd3fff","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/345ee485926eca922085a8f5d025c4bf0742a52512a3b8f77b8f13d075ca73d1.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/345ee485926eca922085a8f5d025c4bf0742a52512a3b8f77b8f13d075ca73d1.mp3', 1619, '2026-09-14 13:38:23.910195', '2bc710d736fb247822601cf230397a94da63b884976ff209acfb0b684cfd3fff', 'validated', '{"audio_key":"345ee485926eca922085a8f5d025c4bf0742a52512a3b8f77b8f13d075ca73d1","entity_key":"g_tr_meaning_repair:example:3","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2bc710d736fb247822601cf230397a94da63b884976ff209acfb0b684cfd3fff","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/345ee485926eca922085a8f5d025c4bf0742a52512a3b8f77b8f13d075ca73d1.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/3774ff5304499d7ad9435bb0e4584e874b2bc4d94e72f880b9c9d31b0fea05ff.mp3', 1567, '2026-09-14 13:38:24.971567', '69c486a21a768d42d2816ab2cb9450b0ad82f6cfc1230688d74c894609023451', 'validated', '{"audio_key":"3774ff5304499d7ad9435bb0e4584e874b2bc4d94e72f880b9c9d31b0fea05ff","entity_key":"u_alphabet_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"69c486a21a768d42d2816ab2cb9450b0ad82f6cfc1230688d74c894609023451","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/3774ff5304499d7ad9435bb0e4584e874b2bc4d94e72f880b9c9d31b0fea05ff.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/3774ff5304499d7ad9435bb0e4584e874b2bc4d94e72f880b9c9d31b0fea05ff.mp3', 1567, '2026-09-14 13:38:24.971567', '69c486a21a768d42d2816ab2cb9450b0ad82f6cfc1230688d74c894609023451', 'validated', '{"audio_key":"3774ff5304499d7ad9435bb0e4584e874b2bc4d94e72f880b9c9d31b0fea05ff","entity_key":"e_alphabet_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"69c486a21a768d42d2816ab2cb9450b0ad82f6cfc1230688d74c894609023451","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/3774ff5304499d7ad9435bb0e4584e874b2bc4d94e72f880b9c9d31b0fea05ff.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/39b776b2af332f5fe9c426d29b8e25ea9acad454650a1cddab31822a257d46d8.mp3', 1097, '2026-09-14 13:38:25.926396', '3deb1bb7f682505e43a962e61ab3a9dc418b21f1d222beb80ed4d98b578241eb', 'validated', '{"audio_key":"39b776b2af332f5fe9c426d29b8e25ea9acad454650a1cddab31822a257d46d8","entity_key":"u_tr_bridge_seker","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3deb1bb7f682505e43a962e61ab3a9dc418b21f1d222beb80ed4d98b578241eb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/39b776b2af332f5fe9c426d29b8e25ea9acad454650a1cddab31822a257d46d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_tr-about-me_family -> audio/generated/tr-TR/utterances/3c8e6f1943c270f6f2d64dad19d24a0c141b0d166a1961c86b93b133a2d613e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('524ba73e-7134-50be-aed6-ace45f8b3ca3', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_tr-about-me_family')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '342da7edd6e166e82cb11f4f34b321ddf35b94941721a36cb539cad57ea7196e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8008f020-c768-570e-ac04-106359e52641', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('524ba73e-7134-50be-aed6-ace45f8b3ca3', 1), '342da7edd6e166e82cb11f4f34b321ddf35b94941721a36cb539cad57ea7196e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/3c8e6f1943c270f6f2d64dad19d24a0c141b0d166a1961c86b93b133a2d613e1.mp3', 1619, '2026-09-14 13:38:26.965542', '28d0b3e78bca5078eea45b1b729241407c3f5fbe33f16d2a428260e28fb43fb5', 'validated', '{"audio_key":"3c8e6f1943c270f6f2d64dad19d24a0c141b0d166a1961c86b93b133a2d613e1","entity_key":"u_tr_tr-about-me_family","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"28d0b3e78bca5078eea45b1b729241407c3f5fbe33f16d2a428260e28fb43fb5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/3c8e6f1943c270f6f2d64dad19d24a0c141b0d166a1961c86b93b133a2d613e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_tr_tr-about-me_about_write:model -> audio/generated/tr-TR/utterances/3e146021ec5dd1c5cf8e9c4b37c8964acb143355bcfb004b9cba78d8d4420fa8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('13c1502a-a7ae-51a5-b79d-eb89f11ac9b1', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_tr_tr-about-me_about_write:model')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a3982eb4f41e1c7905e5d375e1e29e4b9517ad0285b075e060d151ad46786df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c097c96a-058d-5819-87e7-ca4c9fcf8346', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('13c1502a-a7ae-51a5-b79d-eb89f11ac9b1', 1), '2a3982eb4f41e1c7905e5d375e1e29e4b9517ad0285b075e060d151ad46786df',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/3e146021ec5dd1c5cf8e9c4b37c8964acb143355bcfb004b9cba78d8d4420fa8.mp3', 2507, '2026-09-14 13:38:28.077057', '90f11eb5d9c11ecef5073e9f9f101884345eeb31a3b828767990f659328dff50', 'validated', '{"audio_key":"3e146021ec5dd1c5cf8e9c4b37c8964acb143355bcfb004b9cba78d8d4420fa8","entity_key":"ex_tr_tr-about-me_about_write:model","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"90f11eb5d9c11ecef5073e9f9f101884345eeb31a3b828767990f659328dff50","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/3e146021ec5dd1c5cf8e9c4b37c8964acb143355bcfb004b9cba78d8d4420fa8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_tr_tr-real-world-gate_personal_speaking:model -> audio/generated/tr-TR/utterances/3e146021ec5dd1c5cf8e9c4b37c8964acb143355bcfb004b9cba78d8d4420fa8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('dbeaaa9c-da8e-5a01-9de4-75fd2989fae2', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_tr_tr-real-world-gate_personal_speaking:model')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a3982eb4f41e1c7905e5d375e1e29e4b9517ad0285b075e060d151ad46786df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('65f3c84d-bce9-5e4e-89e9-0e82f4ab7bfd', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('dbeaaa9c-da8e-5a01-9de4-75fd2989fae2', 1), '2a3982eb4f41e1c7905e5d375e1e29e4b9517ad0285b075e060d151ad46786df',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/3e146021ec5dd1c5cf8e9c4b37c8964acb143355bcfb004b9cba78d8d4420fa8.mp3', 2507, '2026-09-14 13:38:28.077057', '90f11eb5d9c11ecef5073e9f9f101884345eeb31a3b828767990f659328dff50', 'validated', '{"audio_key":"3e146021ec5dd1c5cf8e9c4b37c8964acb143355bcfb004b9cba78d8d4420fa8","entity_key":"ex_tr_tr-real-world-gate_personal_speaking:model","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"90f11eb5d9c11ecef5073e9f9f101884345eeb31a3b828767990f659328dff50","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/3e146021ec5dd1c5cf8e9c4b37c8964acb143355bcfb004b9cba78d8d4420fa8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_tr_tr-real-world-gate:example:1 -> audio/generated/tr-TR/utterances/3e146021ec5dd1c5cf8e9c4b37c8964acb143355bcfb004b9cba78d8d4420fa8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('2587ded8-35d5-5e61-84c6-d6eb70bb0bf4', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_tr_tr-real-world-gate:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a3982eb4f41e1c7905e5d375e1e29e4b9517ad0285b075e060d151ad46786df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6be8eb6e-120b-5590-bd06-e2d1c25d3304', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('2587ded8-35d5-5e61-84c6-d6eb70bb0bf4', 1), '2a3982eb4f41e1c7905e5d375e1e29e4b9517ad0285b075e060d151ad46786df',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/3e146021ec5dd1c5cf8e9c4b37c8964acb143355bcfb004b9cba78d8d4420fa8.mp3', 2507, '2026-09-14 13:38:28.077057', '90f11eb5d9c11ecef5073e9f9f101884345eeb31a3b828767990f659328dff50', 'validated', '{"audio_key":"3e146021ec5dd1c5cf8e9c4b37c8964acb143355bcfb004b9cba78d8d4420fa8","entity_key":"g_tr_tr-real-world-gate:example:1","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"90f11eb5d9c11ecef5073e9f9f101884345eeb31a3b828767990f659328dff50","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/3e146021ec5dd1c5cf8e9c4b37c8964acb143355bcfb004b9cba78d8d4420fa8.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/41b86b7af8320ca8e337b5ad1f936362afcbdb0d47b584c5184cbf73ee0c2dc3.mp3', 1071, '2026-09-14 13:38:29.227920', '28f98b42fd54ed1ea31bd59861aa0bc0b4a0e49a024f4f7e5dcb0cc62b63677f', 'validated', '{"audio_key":"41b86b7af8320ca8e337b5ad1f936362afcbdb0d47b584c5184cbf73ee0c2dc3","entity_key":"u_how_are_you_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"28f98b42fd54ed1ea31bd59861aa0bc0b4a0e49a024f4f7e5dcb0cc62b63677f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/41b86b7af8320ca8e337b5ad1f936362afcbdb0d47b584c5184cbf73ee0c2dc3.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/437a261663d804043d5a5e0de853ad232aa27fa78b0763a905b16e0138893ced.mp3', 1253, '2026-09-14 13:38:30.237450', '7f940863cf09ff65f5b0d8d0010498d15d7f2af4c10e14fa6ccc0f5b848abcee', 'validated', '{"audio_key":"437a261663d804043d5a5e0de853ad232aa27fa78b0763a905b16e0138893ced","entity_key":"u_first_conversation_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7f940863cf09ff65f5b0d8d0010498d15d7f2af4c10e14fa6ccc0f5b848abcee","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/437a261663d804043d5a5e0de853ad232aa27fa78b0763a905b16e0138893ced.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/437a261663d804043d5a5e0de853ad232aa27fa78b0763a905b16e0138893ced.mp3', 1253, '2026-09-14 13:38:30.237450', '7f940863cf09ff65f5b0d8d0010498d15d7f2af4c10e14fa6ccc0f5b848abcee', 'validated', '{"audio_key":"437a261663d804043d5a5e0de853ad232aa27fa78b0763a905b16e0138893ced","entity_key":"u_my_name_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7f940863cf09ff65f5b0d8d0010498d15d7f2af4c10e14fa6ccc0f5b848abcee","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/437a261663d804043d5a5e0de853ad232aa27fa78b0763a905b16e0138893ced.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_tr-real-life-numbers_date -> audio/generated/tr-TR/utterances/46d4fe3ca9af12d638f7fa3d249665efe0bd992211e8b339ebd4d7fe5dfdf23b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('43d48ca3-8cd7-5ef7-bb89-7fbbec099996', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_tr-real-life-numbers_date')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b274be0990276625cc16325d98f3b9d67be4edb9f428fe734be924136a38172e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe7d4927-73d0-5a5f-a181-f61fa6272187', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('43d48ca3-8cd7-5ef7-bb89-7fbbec099996', 1), 'b274be0990276625cc16325d98f3b9d67be4edb9f428fe734be924136a38172e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/46d4fe3ca9af12d638f7fa3d249665efe0bd992211e8b339ebd4d7fe5dfdf23b.mp3', 1280, '2026-09-14 13:38:31.206628', '7e5fd260ecae3bdcc6acbbe7167d06eefd5ae1c5997e2107595c2a2278a97d15', 'validated', '{"audio_key":"46d4fe3ca9af12d638f7fa3d249665efe0bd992211e8b339ebd4d7fe5dfdf23b","entity_key":"u_tr_tr-real-life-numbers_date","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7e5fd260ecae3bdcc6acbbe7167d06eefd5ae1c5997e2107595c2a2278a97d15","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/46d4fe3ca9af12d638f7fa3d249665efe0bd992211e8b339ebd4d7fe5dfdf23b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_tr_tr-real-life-numbers:example:3 -> audio/generated/tr-TR/utterances/46d4fe3ca9af12d638f7fa3d249665efe0bd992211e8b339ebd4d7fe5dfdf23b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('05af3895-6be9-5ad2-91e7-2f0824907506', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_tr_tr-real-life-numbers:example:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b274be0990276625cc16325d98f3b9d67be4edb9f428fe734be924136a38172e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de145c9c-0a85-592b-bf1b-b748148d0a66', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('05af3895-6be9-5ad2-91e7-2f0824907506', 1), 'b274be0990276625cc16325d98f3b9d67be4edb9f428fe734be924136a38172e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/46d4fe3ca9af12d638f7fa3d249665efe0bd992211e8b339ebd4d7fe5dfdf23b.mp3', 1280, '2026-09-14 13:38:31.206628', '7e5fd260ecae3bdcc6acbbe7167d06eefd5ae1c5997e2107595c2a2278a97d15', 'validated', '{"audio_key":"46d4fe3ca9af12d638f7fa3d249665efe0bd992211e8b339ebd4d7fe5dfdf23b","entity_key":"g_tr_tr-real-life-numbers:example:3","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7e5fd260ecae3bdcc6acbbe7167d06eefd5ae1c5997e2107595c2a2278a97d15","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/46d4fe3ca9af12d638f7fa3d249665efe0bd992211e8b339ebd4d7fe5dfdf23b.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/4878942f1d1c0c991e747b734b5a1efcca8db9581bd75ad6f71eb69b14f89ba6.mp3', 1253, '2026-09-14 13:38:32.194023', '887c2fd3d2ab0246c98666d0af0cf0483326501bbacf7978ceb0e3a244855322', 'validated', '{"audio_key":"4878942f1d1c0c991e747b734b5a1efcca8db9581bd75ad6f71eb69b14f89ba6","entity_key":"u_first_greetings_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"887c2fd3d2ab0246c98666d0af0cf0483326501bbacf7978ceb0e3a244855322","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/4878942f1d1c0c991e747b734b5a1efcca8db9581bd75ad6f71eb69b14f89ba6.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/49b920475f0f8099b361d265f70b6df9129f2c8ac8b41c5a787350b99460edad.mp3', 835, '2026-09-14 13:38:33.146832', 'f307c53842c4f572c896277d9c439169ba9a06d2eeeafe6a2dd2929b06d7260b', 'validated', '{"audio_key":"49b920475f0f8099b361d265f70b6df9129f2c8ac8b41c5a787350b99460edad","entity_key":"u_tr_bridge_su","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f307c53842c4f572c896277d9c439169ba9a06d2eeeafe6a2dd2929b06d7260b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/49b920475f0f8099b361d265f70b6df9129f2c8ac8b41c5a787350b99460edad.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/4a3d4fa7c70db3c0f526a107c3adf06f606b7c13c8083f006bc09900a5a8556a.mp3', 1384, '2026-09-14 13:38:34.204921', '3184cc87cecd319158899f15ffed82ed33d3c8e5bfcddcfd09f80a8cdf7aa83c', 'validated', '{"audio_key":"4a3d4fa7c70db3c0f526a107c3adf06f606b7c13c8083f006bc09900a5a8556a","entity_key":"u_my_name_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3184cc87cecd319158899f15ffed82ed33d3c8e5bfcddcfd09f80a8cdf7aa83c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/4a3d4fa7c70db3c0f526a107c3adf06f606b7c13c8083f006bc09900a5a8556a.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/4a3d4fa7c70db3c0f526a107c3adf06f606b7c13c8083f006bc09900a5a8556a.mp3', 1384, '2026-09-14 13:38:34.204921', '3184cc87cecd319158899f15ffed82ed33d3c8e5bfcddcfd09f80a8cdf7aa83c', 'validated', '{"audio_key":"4a3d4fa7c70db3c0f526a107c3adf06f606b7c13c8083f006bc09900a5a8556a","entity_key":"e_my_name_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3184cc87cecd319158899f15ffed82ed33d3c8e5bfcddcfd09f80a8cdf7aa83c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/4a3d4fa7c70db3c0f526a107c3adf06f606b7c13c8083f006bc09900a5a8556a.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/4cc7b88a8ac8d0048f56c93087b5fe7a6884d1b65458e07c9adfaece9d154f55.mp3', 1149, '2026-09-14 13:38:35.174678', 'b874efa5b84fb22cf5a46894cce44f9d56790ad32f040c528aad2f5700801692', 'validated', '{"audio_key":"4cc7b88a8ac8d0048f56c93087b5fe7a6884d1b65458e07c9adfaece9d154f55","entity_key":"u_first_sounds_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b874efa5b84fb22cf5a46894cce44f9d56790ad32f040c528aad2f5700801692","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/4cc7b88a8ac8d0048f56c93087b5fe7a6884d1b65458e07c9adfaece9d154f55.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/4cc7b88a8ac8d0048f56c93087b5fe7a6884d1b65458e07c9adfaece9d154f55.mp3', 1149, '2026-09-14 13:38:35.174678', 'b874efa5b84fb22cf5a46894cce44f9d56790ad32f040c528aad2f5700801692', 'validated', '{"audio_key":"4cc7b88a8ac8d0048f56c93087b5fe7a6884d1b65458e07c9adfaece9d154f55","entity_key":"e_first_sounds_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b874efa5b84fb22cf5a46894cce44f9d56790ad32f040c528aad2f5700801692","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/4cc7b88a8ac8d0048f56c93087b5fe7a6884d1b65458e07c9adfaece9d154f55.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_tr_tr-forms-signs:example:1 -> audio/generated/tr-TR/utterances/55a2e1f35a0a329c5d84d245c9854bebe1219fe46daa649aa66a807a0bd99119.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('0420ef0e-8756-5015-ba82-16cebf018e5c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_tr_tr-forms-signs:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '828bec94f8127726bf96560528f156dabbdfbe9b921998317c6ca675e6b04430'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5f1ba09-23c0-5f60-a48f-13ef7e1ecf26', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('0420ef0e-8756-5015-ba82-16cebf018e5c', 1), '828bec94f8127726bf96560528f156dabbdfbe9b921998317c6ca675e6b04430',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/55a2e1f35a0a329c5d84d245c9854bebe1219fe46daa649aa66a807a0bd99119.mp3', 1097, '2026-09-14 13:38:36.117802', 'f8e075922108e0ce727a19d9301d745790f344a4a575e107d661f789300d8926', 'validated', '{"audio_key":"55a2e1f35a0a329c5d84d245c9854bebe1219fe46daa649aa66a807a0bd99119","entity_key":"g_tr_tr-forms-signs:example:1","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f8e075922108e0ce727a19d9301d745790f344a4a575e107d661f789300d8926","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/55a2e1f35a0a329c5d84d245c9854bebe1219fe46daa649aa66a807a0bd99119.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/5782330242fdb8f9b6be8ac078470e041d15471a16c93cd2b692aaba482e485c.mp3', 1149, '2026-09-14 13:38:37.154552', '7f6b0f3a5d9674af30e2b19b5bf5c57a0763531b0158b50ca1794d25c8044226', 'validated', '{"audio_key":"5782330242fdb8f9b6be8ac078470e041d15471a16c93cd2b692aaba482e485c","entity_key":"u_polite_words_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7f6b0f3a5d9674af30e2b19b5bf5c57a0763531b0158b50ca1794d25c8044226","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/5782330242fdb8f9b6be8ac078470e041d15471a16c93cd2b692aaba482e485c.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/583060fc392c1717df3b405e1374a639878e7b92027b66938fa166f37eaf86d7.mp3', 914, '2026-09-14 13:38:38.109404', '4837705ba041ba6c6decfe961769db8bb1c567d865ae6e0114b1e66104a45d29', 'validated', '{"audio_key":"583060fc392c1717df3b405e1374a639878e7b92027b66938fa166f37eaf86d7","entity_key":"u_tr_bridge_goz","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4837705ba041ba6c6decfe961769db8bb1c567d865ae6e0114b1e66104a45d29","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/583060fc392c1717df3b405e1374a639878e7b92027b66938fa166f37eaf86d7.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/58bc6b51352c566561951704a3eb6556f9daa7cac82317e2eebaf1f70f385d17.mp3', 1619, '2026-09-14 13:38:39.101756', '50df242228be67813d5a14351dcde9474560d912fb03516f2cc2d93de7798d29', 'validated', '{"audio_key":"58bc6b51352c566561951704a3eb6556f9daa7cac82317e2eebaf1f70f385d17","entity_key":"g_tr_pre_special_names:example:1","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"50df242228be67813d5a14351dcde9474560d912fb03516f2cc2d93de7798d29","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/58bc6b51352c566561951704a3eb6556f9daa7cac82317e2eebaf1f70f385d17.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/616b923c876bbb86c414b9de397677831ee474a4f6f497517195305e0e164f61.mp3', 1149, '2026-09-14 13:38:40.074290', 'ad40f9caf74907aa812b533085518da1224f6c5e9db5362d1a78110085ea9e61', 'validated', '{"audio_key":"616b923c876bbb86c414b9de397677831ee474a4f6f497517195305e0e164f61","entity_key":"u_first_greetings_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ad40f9caf74907aa812b533085518da1224f6c5e9db5362d1a78110085ea9e61","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/616b923c876bbb86c414b9de397677831ee474a4f6f497517195305e0e164f61.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/616b923c876bbb86c414b9de397677831ee474a4f6f497517195305e0e164f61.mp3', 1149, '2026-09-14 13:38:40.074290', 'ad40f9caf74907aa812b533085518da1224f6c5e9db5362d1a78110085ea9e61', 'validated', '{"audio_key":"616b923c876bbb86c414b9de397677831ee474a4f6f497517195305e0e164f61","entity_key":"e_first_greetings_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ad40f9caf74907aa812b533085518da1224f6c5e9db5362d1a78110085ea9e61","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/616b923c876bbb86c414b9de397677831ee474a4f6f497517195305e0e164f61.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/648bb9f31ceca34e0873cab00afd144374ac51c5255f97e17934e63a659dcc59.mp3', 1567, '2026-09-14 13:38:41.133949', '11d91b5a3975d2e2ebf7bad1ff07b15399640f3da582b42c09687356744e8be9', 'validated', '{"audio_key":"648bb9f31ceca34e0873cab00afd144374ac51c5255f97e17934e63a659dcc59","entity_key":"u_survival_words_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"11d91b5a3975d2e2ebf7bad1ff07b15399640f3da582b42c09687356744e8be9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/648bb9f31ceca34e0873cab00afd144374ac51c5255f97e17934e63a659dcc59.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/648bb9f31ceca34e0873cab00afd144374ac51c5255f97e17934e63a659dcc59.mp3', 1567, '2026-09-14 13:38:41.133949', '11d91b5a3975d2e2ebf7bad1ff07b15399640f3da582b42c09687356744e8be9', 'validated', '{"audio_key":"648bb9f31ceca34e0873cab00afd144374ac51c5255f97e17934e63a659dcc59","entity_key":"e_survival_words_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"11d91b5a3975d2e2ebf7bad1ff07b15399640f3da582b42c09687356744e8be9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/648bb9f31ceca34e0873cab00afd144374ac51c5255f97e17934e63a659dcc59.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/64a5d1e7bc7a3ed4488da7851c07ec57a96b33a7cbe46c730526d813fc58ee9d.mp3', 1071, '2026-09-14 13:38:42.120433', '48d059a82093a460910e07e49aca7da45b972f12cf0382ecea98640db9374816', 'validated', '{"audio_key":"64a5d1e7bc7a3ed4488da7851c07ec57a96b33a7cbe46c730526d813fc58ee9d","entity_key":"u_first_greetings_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"48d059a82093a460910e07e49aca7da45b972f12cf0382ecea98640db9374816","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/64a5d1e7bc7a3ed4488da7851c07ec57a96b33a7cbe46c730526d813fc58ee9d.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/677696638e9aa650cebb865908311c144d34aca9148d308049139d0a54cef7af.mp3', 1332, '2026-09-14 13:38:43.120672', '6a3bdb9d2758307a8c12bb0ee236a363e9429c9d3f3687a149de87dd5a45e94f', 'validated', '{"audio_key":"677696638e9aa650cebb865908311c144d34aca9148d308049139d0a54cef7af","entity_key":"u_survival_words_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6a3bdb9d2758307a8c12bb0ee236a363e9429c9d3f3687a149de87dd5a45e94f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/677696638e9aa650cebb865908311c144d34aca9148d308049139d0a54cef7af.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/67a307c28a1b69a9a52f3192295400f6d6e63100d3f3e72a547e5156bbef52bd.mp3', 1149, '2026-09-14 13:38:44.097937', '519c197acd719fd47bd325ce6bfb19f749b09d5aa96d0303548ca9ec94b795b7', 'validated', '{"audio_key":"67a307c28a1b69a9a52f3192295400f6d6e63100d3f3e72a547e5156bbef52bd","entity_key":"u_first_greetings_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"519c197acd719fd47bd325ce6bfb19f749b09d5aa96d0303548ca9ec94b795b7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/67a307c28a1b69a9a52f3192295400f6d6e63100d3f3e72a547e5156bbef52bd.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/67a307c28a1b69a9a52f3192295400f6d6e63100d3f3e72a547e5156bbef52bd.mp3', 1149, '2026-09-14 13:38:44.097937', '519c197acd719fd47bd325ce6bfb19f749b09d5aa96d0303548ca9ec94b795b7', 'validated', '{"audio_key":"67a307c28a1b69a9a52f3192295400f6d6e63100d3f3e72a547e5156bbef52bd","entity_key":"e_first_greetings_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"519c197acd719fd47bd325ce6bfb19f749b09d5aa96d0303548ca9ec94b795b7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/67a307c28a1b69a9a52f3192295400f6d6e63100d3f3e72a547e5156bbef52bd.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/686caf8530cd6bce1251382d8236da592ecd28ba0a2cd86f80d395a39ab9bfdb.mp3', 1097, '2026-09-14 13:38:45.050123', 'cb1c4b862c482cb767ae591ac054a8e653b1eb1cbd92fc1f84808b92a4908524', 'validated', '{"audio_key":"686caf8530cd6bce1251382d8236da592ecd28ba0a2cd86f80d395a39ab9bfdb","entity_key":"u_survival_words_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cb1c4b862c482cb767ae591ac054a8e653b1eb1cbd92fc1f84808b92a4908524","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/686caf8530cd6bce1251382d8236da592ecd28ba0a2cd86f80d395a39ab9bfdb.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6a0c72fa9a318a8ea7bd5c8bdd381460d3721a8ecb833ebca30a206085df807b.mp3', 914, '2026-09-14 13:38:45.985570', 'f805b5a4c310371d5382a653f851e03addb13dcf70ba8f84bdd6280864cb458f', 'validated', '{"audio_key":"6a0c72fa9a318a8ea7bd5c8bdd381460d3721a8ecb833ebca30a206085df807b","entity_key":"u_tr_bridge_cay","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f805b5a4c310371d5382a653f851e03addb13dcf70ba8f84bdd6280864cb458f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6a0c72fa9a318a8ea7bd5c8bdd381460d3721a8ecb833ebca30a206085df807b.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6a0c72fa9a318a8ea7bd5c8bdd381460d3721a8ecb833ebca30a206085df807b.mp3', 914, '2026-09-14 13:38:45.985570', 'f805b5a4c310371d5382a653f851e03addb13dcf70ba8f84bdd6280864cb458f', 'validated', '{"audio_key":"6a0c72fa9a318a8ea7bd5c8bdd381460d3721a8ecb833ebca30a206085df807b","entity_key":"ex_tr_bridge_hear_cay","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f805b5a4c310371d5382a653f851e03addb13dcf70ba8f84bdd6280864cb458f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6a0c72fa9a318a8ea7bd5c8bdd381460d3721a8ecb833ebca30a206085df807b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_tr-about-me_feeling -> audio/generated/tr-TR/utterances/6be990bf8e16e47dcf71aedfcc60d78ae11d596eadb115e4080d9422e5d62e38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('65ef8af1-16a7-5578-82d9-49edf26d3a8b', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_tr-about-me_feeling')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a59410baf74d9d777a5292e9cb38a277e51d256a5ae9caec774b4684ebc289e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dee58e79-95a1-5d89-b162-a1363cd86791', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('65ef8af1-16a7-5578-82d9-49edf26d3a8b', 1), '3a59410baf74d9d777a5292e9cb38a277e51d256a5ae9caec774b4684ebc289e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6be990bf8e16e47dcf71aedfcc60d78ae11d596eadb115e4080d9422e5d62e38.mp3', 1567, '2026-09-14 13:38:47.010406', '3aef465f6ba9ac7292c219b4fed6a05a45a5fbc17746cccf032dcf263760010d', 'validated', '{"audio_key":"6be990bf8e16e47dcf71aedfcc60d78ae11d596eadb115e4080d9422e5d62e38","entity_key":"u_tr_tr-about-me_feeling","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3aef465f6ba9ac7292c219b4fed6a05a45a5fbc17746cccf032dcf263760010d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6be990bf8e16e47dcf71aedfcc60d78ae11d596eadb115e4080d9422e5d62e38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_tr_tr-about-me:example:3 -> audio/generated/tr-TR/utterances/6be990bf8e16e47dcf71aedfcc60d78ae11d596eadb115e4080d9422e5d62e38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('9bfdf75d-1f1d-5f96-b266-ade41a9e0634', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_tr_tr-about-me:example:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a59410baf74d9d777a5292e9cb38a277e51d256a5ae9caec774b4684ebc289e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('631f0327-c724-5a5d-acf3-f9a105cfc41c', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('9bfdf75d-1f1d-5f96-b266-ade41a9e0634', 1), '3a59410baf74d9d777a5292e9cb38a277e51d256a5ae9caec774b4684ebc289e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6be990bf8e16e47dcf71aedfcc60d78ae11d596eadb115e4080d9422e5d62e38.mp3', 1567, '2026-09-14 13:38:47.010406', '3aef465f6ba9ac7292c219b4fed6a05a45a5fbc17746cccf032dcf263760010d', 'validated', '{"audio_key":"6be990bf8e16e47dcf71aedfcc60d78ae11d596eadb115e4080d9422e5d62e38","entity_key":"g_tr_tr-about-me:example:3","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3aef465f6ba9ac7292c219b4fed6a05a45a5fbc17746cccf032dcf263760010d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6be990bf8e16e47dcf71aedfcc60d78ae11d596eadb115e4080d9422e5d62e38.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6be990bf8e16e47dcf71aedfcc60d78ae11d596eadb115e4080d9422e5d62e38.mp3', 1567, '2026-09-14 13:38:47.010406', '3aef465f6ba9ac7292c219b4fed6a05a45a5fbc17746cccf032dcf263760010d', 'validated', '{"audio_key":"6be990bf8e16e47dcf71aedfcc60d78ae11d596eadb115e4080d9422e5d62e38","entity_key":"u_how_are_you_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3aef465f6ba9ac7292c219b4fed6a05a45a5fbc17746cccf032dcf263760010d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6be990bf8e16e47dcf71aedfcc60d78ae11d596eadb115e4080d9422e5d62e38.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6be990bf8e16e47dcf71aedfcc60d78ae11d596eadb115e4080d9422e5d62e38.mp3', 1567, '2026-09-14 13:38:47.010406', '3aef465f6ba9ac7292c219b4fed6a05a45a5fbc17746cccf032dcf263760010d', 'validated', '{"audio_key":"6be990bf8e16e47dcf71aedfcc60d78ae11d596eadb115e4080d9422e5d62e38","entity_key":"e_how_are_you_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3aef465f6ba9ac7292c219b4fed6a05a45a5fbc17746cccf032dcf263760010d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6be990bf8e16e47dcf71aedfcc60d78ae11d596eadb115e4080d9422e5d62e38.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6d21c274074ad00559aca5f563e77cb174a9b35f25a48a57f5a37bc45b3a7e33.mp3', 1488, '2026-09-14 13:38:48.037843', 'b7b6f4d927e3b09ea48bd38ace708c376c93f7f30acd706e728310b49bf990c3', 'validated', '{"audio_key":"6d21c274074ad00559aca5f563e77cb174a9b35f25a48a57f5a37bc45b3a7e33","entity_key":"g_tr_bridge_c_s:example:2","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b7b6f4d927e3b09ea48bd38ace708c376c93f7f30acd706e728310b49bf990c3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6d21c274074ad00559aca5f563e77cb174a9b35f25a48a57f5a37bc45b3a7e33.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6db6a2a6465e55665cd541a2b857b4b3e1c7a3997aefb57843d046751b0abc8b.mp3', 1436, '2026-09-14 13:38:49.086723', 'e6ae35115a25fae1ad0685b8d9a83e01318fc0903cd124ad47559e93913adf6f', 'validated', '{"audio_key":"6db6a2a6465e55665cd541a2b857b4b3e1c7a3997aefb57843d046751b0abc8b","entity_key":"u_polite_words_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e6ae35115a25fae1ad0685b8d9a83e01318fc0903cd124ad47559e93913adf6f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6db6a2a6465e55665cd541a2b857b4b3e1c7a3997aefb57843d046751b0abc8b.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/7bacbd623a90152aa5e9f60c21ea5c9985369875e0e3db8552df0b93ae5de86e.mp3', 1488, '2026-09-14 13:38:50.159406', 'bd061ed55d541ee474373419a8260d0a13ebaabfd9aef8cca213c71dadb83e27', 'validated', '{"audio_key":"7bacbd623a90152aa5e9f60c21ea5c9985369875e0e3db8552df0b93ae5de86e","entity_key":"u_my_name_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bd061ed55d541ee474373419a8260d0a13ebaabfd9aef8cca213c71dadb83e27","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/7bacbd623a90152aa5e9f60c21ea5c9985369875e0e3db8552df0b93ae5de86e.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/81170c73fcb5269b9575fa1e13919b09bbd49fd54a3c6937c2f9f03917d6f242.mp3', 1750, '2026-09-14 13:38:51.228242', '8cd32fb4343594ce61b9c534c943cee0cdcb0b1bb3ca747644e49ca087fb2adb', 'validated', '{"audio_key":"81170c73fcb5269b9575fa1e13919b09bbd49fd54a3c6937c2f9f03917d6f242","entity_key":"g_tr_pre_special_names:example:2","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8cd32fb4343594ce61b9c534c943cee0cdcb0b1bb3ca747644e49ca087fb2adb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/81170c73fcb5269b9575fa1e13919b09bbd49fd54a3c6937c2f9f03917d6f242.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/8a203125a72a2d338414d37f1f98a8504738b7c3d8460f5440005e0699b4c754.mp3', 1253, '2026-09-14 13:38:52.184340', '3a8bdb8ccba59caa00b83c0b03fd35843b709117dd22283a55986dc158b663c2', 'validated', '{"audio_key":"8a203125a72a2d338414d37f1f98a8504738b7c3d8460f5440005e0699b4c754","entity_key":"u_tr_pre_i_names","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3a8bdb8ccba59caa00b83c0b03fd35843b709117dd22283a55986dc158b663c2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/8a203125a72a2d338414d37f1f98a8504738b7c3d8460f5440005e0699b4c754.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/8d417986ce7342462e3ada9829e65fe62eb44139815010609ac6d2c6b34a988a.mp3', 1671, '2026-09-14 13:38:53.274400', '5df54249796cdb29a70ba353ebbc9693849e291ab62ad4210f038f1b07fd20a8', 'validated', '{"audio_key":"8d417986ce7342462e3ada9829e65fe62eb44139815010609ac6d2c6b34a988a","entity_key":"g_tr_bridge_vowels_softg:example:2","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5df54249796cdb29a70ba353ebbc9693849e291ab62ad4210f038f1b07fd20a8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/8d417986ce7342462e3ada9829e65fe62eb44139815010609ac6d2c6b34a988a.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/8f19c7c4f545d8026f8ec3692c01ba42841c912d91fdfbab80393f6494950123.mp3', 1436, '2026-09-14 13:38:54.344798', '3734cbc88f7ac2420f13effa3de4d48bbdaa471dbd9f95745f198afeb313a399', 'validated', '{"audio_key":"8f19c7c4f545d8026f8ec3692c01ba42841c912d91fdfbab80393f6494950123","entity_key":"u_first_sounds_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3734cbc88f7ac2420f13effa3de4d48bbdaa471dbd9f95745f198afeb313a399","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/8f19c7c4f545d8026f8ec3692c01ba42841c912d91fdfbab80393f6494950123.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/8f19c7c4f545d8026f8ec3692c01ba42841c912d91fdfbab80393f6494950123.mp3', 1436, '2026-09-14 13:38:54.344798', '3734cbc88f7ac2420f13effa3de4d48bbdaa471dbd9f95745f198afeb313a399', 'validated', '{"audio_key":"8f19c7c4f545d8026f8ec3692c01ba42841c912d91fdfbab80393f6494950123","entity_key":"e_first_sounds_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3734cbc88f7ac2420f13effa3de4d48bbdaa471dbd9f95745f198afeb313a399","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/8f19c7c4f545d8026f8ec3692c01ba42841c912d91fdfbab80393f6494950123.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_tr-real-life-numbers_n11 -> audio/generated/tr-TR/utterances/8f4c60dd5d571169c87ff46af17767d4dbcbf5611ea83073d407b0b886d42a3c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5b4583f9-c6f7-510f-b845-a9c9622ed0b3', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_tr-real-life-numbers_n11')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e93d855ca542b5d0bd8d006b9f5034a76f819ebbe532a546bcba7eacb12b9f50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c433cb12-057e-564e-8336-acd03f31b7a2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5b4583f9-c6f7-510f-b845-a9c9622ed0b3', 1), 'e93d855ca542b5d0bd8d006b9f5034a76f819ebbe532a546bcba7eacb12b9f50',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/8f4c60dd5d571169c87ff46af17767d4dbcbf5611ea83073d407b0b886d42a3c.mp3', 1071, '2026-09-14 13:38:55.505607', '457d7353561eafd00f5087453bfbc1a2a38e82d10f37d5a7d1ce71b841317c4e', 'validated', '{"audio_key":"8f4c60dd5d571169c87ff46af17767d4dbcbf5611ea83073d407b0b886d42a3c","entity_key":"u_tr_tr-real-life-numbers_n11","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"457d7353561eafd00f5087453bfbc1a2a38e82d10f37d5a7d1ce71b841317c4e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/8f4c60dd5d571169c87ff46af17767d4dbcbf5611ea83073d407b0b886d42a3c.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/9059885980e0f357433d5be58049ce5e5130873372cccfa9c01ca567e8425ac1.mp3', 966, '2026-09-14 13:38:56.433666', 'abade2ea780f8a24e9e07859ab1cd5cbe475d8cbc17e2956ec9110adc66fc58d', 'validated', '{"audio_key":"9059885980e0f357433d5be58049ce5e5130873372cccfa9c01ca567e8425ac1","entity_key":"u_first_objects_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"abade2ea780f8a24e9e07859ab1cd5cbe475d8cbc17e2956ec9110adc66fc58d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/9059885980e0f357433d5be58049ce5e5130873372cccfa9c01ca567e8425ac1.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/91354ae5facd9f7d330b6cbb5aac0ebbe97bd3c62a4b8d5c2dc1505ae98ae45c.mp3', 1619, '2026-09-14 13:38:57.513835', '65ea9bc6b2b099cb5357bd00858a10e52ed7089183e67497149edff1dc03aa08', 'validated', '{"audio_key":"91354ae5facd9f7d330b6cbb5aac0ebbe97bd3c62a4b8d5c2dc1505ae98ae45c","entity_key":"u_my_name_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65ea9bc6b2b099cb5357bd00858a10e52ed7089183e67497149edff1dc03aa08","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/91354ae5facd9f7d330b6cbb5aac0ebbe97bd3c62a4b8d5c2dc1505ae98ae45c.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/91354ae5facd9f7d330b6cbb5aac0ebbe97bd3c62a4b8d5c2dc1505ae98ae45c.mp3', 1619, '2026-09-14 13:38:57.513835', '65ea9bc6b2b099cb5357bd00858a10e52ed7089183e67497149edff1dc03aa08', 'validated', '{"audio_key":"91354ae5facd9f7d330b6cbb5aac0ebbe97bd3c62a4b8d5c2dc1505ae98ae45c","entity_key":"e_my_name_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65ea9bc6b2b099cb5357bd00858a10e52ed7089183e67497149edff1dc03aa08","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/91354ae5facd9f7d330b6cbb5aac0ebbe97bd3c62a4b8d5c2dc1505ae98ae45c.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/9139e0f93d05ecf4af57f628b10d7ad1b2357209c10cb1e02345526f04f45a9c.mp3', 1280, '2026-09-14 13:38:58.553282', '96b930329793fea733fc259121aa13bdec488d34a4b3cb543ea3c8bb4c6c35bd', 'validated', '{"audio_key":"9139e0f93d05ecf4af57f628b10d7ad1b2357209c10cb1e02345526f04f45a9c","entity_key":"g_tr_bridge_c_s:example:1","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"96b930329793fea733fc259121aa13bdec488d34a4b3cb543ea3c8bb4c6c35bd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/9139e0f93d05ecf4af57f628b10d7ad1b2357209c10cb1e02345526f04f45a9c.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/9d1b2469e488e0113b41603c5581471ac775dd2f3e8dcbc42249d75c9338d054.mp3', 1750, '2026-09-14 13:38:59.605036', '4499c8fb9dc4e10e42322b7e9b282eec3b03042edfd498fbbbe6148cec3e00fe', 'validated', '{"audio_key":"9d1b2469e488e0113b41603c5581471ac775dd2f3e8dcbc42249d75c9338d054","entity_key":"u_how_are_you_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4499c8fb9dc4e10e42322b7e9b282eec3b03042edfd498fbbbe6148cec3e00fe","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/9d1b2469e488e0113b41603c5581471ac775dd2f3e8dcbc42249d75c9338d054.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/9d1b2469e488e0113b41603c5581471ac775dd2f3e8dcbc42249d75c9338d054.mp3', 1750, '2026-09-14 13:38:59.605036', '4499c8fb9dc4e10e42322b7e9b282eec3b03042edfd498fbbbe6148cec3e00fe', 'validated', '{"audio_key":"9d1b2469e488e0113b41603c5581471ac775dd2f3e8dcbc42249d75c9338d054","entity_key":"e_how_are_you_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4499c8fb9dc4e10e42322b7e9b282eec3b03042edfd498fbbbe6148cec3e00fe","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/9d1b2469e488e0113b41603c5581471ac775dd2f3e8dcbc42249d75c9338d054.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_tr-real-life-numbers_day -> audio/generated/tr-TR/utterances/9d373a74f6031c4be1bef75c6d5a98f1931bb6b9124b048f1e986a08ac9262e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d86cf286-f8fc-5912-aec9-1163b8792fc8', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_tr-real-life-numbers_day')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4e4f470ade3ade16f0efe64ca4d01cf54018c0a13a0a9ef8ad3b25b1f29e6366'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b05b149d-11cc-5b5b-96c1-fc5d26213e10', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d86cf286-f8fc-5912-aec9-1163b8792fc8', 1), '4e4f470ade3ade16f0efe64ca4d01cf54018c0a13a0a9ef8ad3b25b1f29e6366',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/9d373a74f6031c4be1bef75c6d5a98f1931bb6b9124b048f1e986a08ac9262e6.mp3', 1332, '2026-09-14 13:39:00.587044', 'f94104939c306baabb0e46482df437d4bfa1e8b2459098db1202c9efa9c29b3c', 'validated', '{"audio_key":"9d373a74f6031c4be1bef75c6d5a98f1931bb6b9124b048f1e986a08ac9262e6","entity_key":"u_tr_tr-real-life-numbers_day","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f94104939c306baabb0e46482df437d4bfa1e8b2459098db1202c9efa9c29b3c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/9d373a74f6031c4be1bef75c6d5a98f1931bb6b9124b048f1e986a08ac9262e6.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/9f5615cb681ebbbede8ee6179d7ea64b4741660be94b42e99ed6541b76f6af17.mp3', 1253, '2026-09-14 13:39:01.674694', '2594c93df64a458575833bc5e5404256f1d813f70db2f406f1d76f39b531ba55', 'validated', '{"audio_key":"9f5615cb681ebbbede8ee6179d7ea64b4741660be94b42e99ed6541b76f6af17","entity_key":"u_how_are_you_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2594c93df64a458575833bc5e5404256f1d813f70db2f406f1d76f39b531ba55","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/9f5615cb681ebbbede8ee6179d7ea64b4741660be94b42e99ed6541b76f6af17.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/a6c12866ba95f13ba420a16285a777d784abc2565837735e3392322dee017088.mp3', 966, '2026-09-14 13:39:02.706177', '8bbf5bb0c1140787cf3d54feb4d12f8235ef4c01720ceb53bc8e16fe7ca18629', 'validated', '{"audio_key":"a6c12866ba95f13ba420a16285a777d784abc2565837735e3392322dee017088","entity_key":"u_tr_bridge_cam","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8bbf5bb0c1140787cf3d54feb4d12f8235ef4c01720ceb53bc8e16fe7ca18629","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/a6c12866ba95f13ba420a16285a777d784abc2565837735e3392322dee017088.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/a99817180235e2633c65692f37588c059cf445e535cc22f73e691e2a6c69496f.mp3', 1097, '2026-09-14 13:39:03.659157', '659f1027aca96b90e2a475cc8902ad13f7826bb8ba1bf6e8dccf3318447a3eb7', 'validated', '{"audio_key":"a99817180235e2633c65692f37588c059cf445e535cc22f73e691e2a6c69496f","entity_key":"g_tr_pre_i_pair:example:2","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"659f1027aca96b90e2a475cc8902ad13f7826bb8ba1bf6e8dccf3318447a3eb7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/a99817180235e2633c65692f37588c059cf445e535cc22f73e691e2a6c69496f.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ab57bc57f49ebf0ad7e54aef490e8f173b97d1d56e38aa3d86d6c6ac1a274c3f.mp3', 1436, '2026-09-14 13:39:04.688497', '49fb21f3d7dcf84cf3244558f458b4f06c8a2408581ad7c7bbc204df186f44d1', 'validated', '{"audio_key":"ab57bc57f49ebf0ad7e54aef490e8f173b97d1d56e38aa3d86d6c6ac1a274c3f","entity_key":"u_first_objects_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"49fb21f3d7dcf84cf3244558f458b4f06c8a2408581ad7c7bbc204df186f44d1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ab57bc57f49ebf0ad7e54aef490e8f173b97d1d56e38aa3d86d6c6ac1a274c3f.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ae0b9bc7502729ef7402308524330149357a57bea47661a390e092c1ce880a01.mp3', 1280, '2026-09-14 13:39:05.773311', '257c47a5fe233ca18bca05f7bf02ed5b7e38458f6dd3188c295e215ab0e9bd61', 'validated', '{"audio_key":"ae0b9bc7502729ef7402308524330149357a57bea47661a390e092c1ce880a01","entity_key":"u_tr_pre_special_names","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"257c47a5fe233ca18bca05f7bf02ed5b7e38458f6dd3188c295e215ab0e9bd61","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ae0b9bc7502729ef7402308524330149357a57bea47661a390e092c1ce880a01.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b080cdcc3ae0cc3efdd5feae4954d9c128dcdb45136fdc7590619dc39e231e5e.mp3', 1149, '2026-09-14 13:39:06.800502', 'e137e5791852dec53df70b17e9f74fefc62d6e51873b790404fe03c41a27f6a6', 'validated', '{"audio_key":"b080cdcc3ae0cc3efdd5feae4954d9c128dcdb45136fdc7590619dc39e231e5e","entity_key":"ex_tr_pre_hear_dotless_i","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e137e5791852dec53df70b17e9f74fefc62d6e51873b790404fe03c41a27f6a6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b080cdcc3ae0cc3efdd5feae4954d9c128dcdb45136fdc7590619dc39e231e5e.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b38ed65a6ee40809357b92e72171e022bf5857783589a5d52e2155b2a8710807.mp3', 1671, '2026-09-14 13:39:07.773971', '217f1c00cd2961958bbb2dfc7bead569d1ae0ff83c52615c27e352ba6c6aae9c', 'validated', '{"audio_key":"b38ed65a6ee40809357b92e72171e022bf5857783589a5d52e2155b2a8710807","entity_key":"u_numbers_0_10_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"217f1c00cd2961958bbb2dfc7bead569d1ae0ff83c52615c27e352ba6c6aae9c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b38ed65a6ee40809357b92e72171e022bf5857783589a5d52e2155b2a8710807.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b3a675c6d68d4834d9d60efb9c0a865ea332edf7bd9220c63d5ba26b0bab0884.mp3', 1384, '2026-09-14 13:39:08.745708', 'a7df2a8ef8a18cb53b4db8f17ca765271c35a9c0825dc9351a400cfaf9b31a33', 'validated', '{"audio_key":"b3a675c6d68d4834d9d60efb9c0a865ea332edf7bd9220c63d5ba26b0bab0884","entity_key":"u_tr_pre_spell_mert","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a7df2a8ef8a18cb53b4db8f17ca765271c35a9c0825dc9351a400cfaf9b31a33","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b3a675c6d68d4834d9d60efb9c0a865ea332edf7bd9220c63d5ba26b0bab0884.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b43900ac7b54d2f1d7afe24fb7d98d296b49f2d90800c58a5b520823a25edcbd.mp3', 1436, '2026-09-14 13:39:09.737957', 'd1bea349bfdb674e8f0677d7c52f22124337c15108d2808b1fdbc49e7d5a9db2', 'validated', '{"audio_key":"b43900ac7b54d2f1d7afe24fb7d98d296b49f2d90800c58a5b520823a25edcbd","entity_key":"u_first_sounds_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d1bea349bfdb674e8f0677d7c52f22124337c15108d2808b1fdbc49e7d5a9db2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b43900ac7b54d2f1d7afe24fb7d98d296b49f2d90800c58a5b520823a25edcbd.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b87597f088fd05a44b8a1b5d772d076c083dcc3d38f5d9ddf2a2a995d10e12e7.mp3', 1280, '2026-09-14 13:39:10.768557', 'b617b880295c0d728454365f5373beccec9c19054882431329f591e590199acc', 'validated', '{"audio_key":"b87597f088fd05a44b8a1b5d772d076c083dcc3d38f5d9ddf2a2a995d10e12e7","entity_key":"u_polite_words_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b617b880295c0d728454365f5373beccec9c19054882431329f591e590199acc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b87597f088fd05a44b8a1b5d772d076c083dcc3d38f5d9ddf2a2a995d10e12e7.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b87597f088fd05a44b8a1b5d772d076c083dcc3d38f5d9ddf2a2a995d10e12e7.mp3', 1280, '2026-09-14 13:39:10.768557', 'b617b880295c0d728454365f5373beccec9c19054882431329f591e590199acc', 'validated', '{"audio_key":"b87597f088fd05a44b8a1b5d772d076c083dcc3d38f5d9ddf2a2a995d10e12e7","entity_key":"e_polite_words_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b617b880295c0d728454365f5373beccec9c19054882431329f591e590199acc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b87597f088fd05a44b8a1b5d772d076c083dcc3d38f5d9ddf2a2a995d10e12e7.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b9faecdab2c2d0a94f72fa341dce975bdc1bbce498b7bbc296ad0d68ee53ddcf.mp3', 1149, '2026-09-14 13:39:11.845287', '2cc8f425477028d7b7ba97faad1907d01b00f77346ab3fc9848876034d574a48', 'validated', '{"audio_key":"b9faecdab2c2d0a94f72fa341dce975bdc1bbce498b7bbc296ad0d68ee53ddcf","entity_key":"u_numbers_0_10_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2cc8f425477028d7b7ba97faad1907d01b00f77346ab3fc9848876034d574a48","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b9faecdab2c2d0a94f72fa341dce975bdc1bbce498b7bbc296ad0d68ee53ddcf.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b9faecdab2c2d0a94f72fa341dce975bdc1bbce498b7bbc296ad0d68ee53ddcf.mp3', 1149, '2026-09-14 13:39:11.845287', '2cc8f425477028d7b7ba97faad1907d01b00f77346ab3fc9848876034d574a48', 'validated', '{"audio_key":"b9faecdab2c2d0a94f72fa341dce975bdc1bbce498b7bbc296ad0d68ee53ddcf","entity_key":"e_numbers_0_10_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2cc8f425477028d7b7ba97faad1907d01b00f77346ab3fc9848876034d574a48","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b9faecdab2c2d0a94f72fa341dce975bdc1bbce498b7bbc296ad0d68ee53ddcf.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/bdd5ae3a5ea9a7789209492a03e3248bde1beb2793edf3567e894a9d5f786f37.mp3', 1149, '2026-09-14 13:39:12.825517', '4f042d6c1e20cbdc9ffc30fa8e8d7ec1fd459e2b307fce031c41a7eaa4ebdbf0', 'validated', '{"audio_key":"bdd5ae3a5ea9a7789209492a03e3248bde1beb2793edf3567e894a9d5f786f37","entity_key":"u_first_sounds_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4f042d6c1e20cbdc9ffc30fa8e8d7ec1fd459e2b307fce031c41a7eaa4ebdbf0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/bdd5ae3a5ea9a7789209492a03e3248bde1beb2793edf3567e894a9d5f786f37.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/c30de8e72792ce0c156d526f2c7914b6e7e40c9cc549eeb2c05628965bed8782.mp3', 1488, '2026-09-14 13:39:13.889683', 'e2bd2869c3ce22000b62852062837021432c11ff457c558260ded37d7c2851ee', 'validated', '{"audio_key":"c30de8e72792ce0c156d526f2c7914b6e7e40c9cc549eeb2c05628965bed8782","entity_key":"u_first_objects_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e2bd2869c3ce22000b62852062837021432c11ff457c558260ded37d7c2851ee","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/c30de8e72792ce0c156d526f2c7914b6e7e40c9cc549eeb2c05628965bed8782.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/c30de8e72792ce0c156d526f2c7914b6e7e40c9cc549eeb2c05628965bed8782.mp3', 1488, '2026-09-14 13:39:13.889683', 'e2bd2869c3ce22000b62852062837021432c11ff457c558260ded37d7c2851ee', 'validated', '{"audio_key":"c30de8e72792ce0c156d526f2c7914b6e7e40c9cc549eeb2c05628965bed8782","entity_key":"e_first_objects_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e2bd2869c3ce22000b62852062837021432c11ff457c558260ded37d7c2851ee","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/c30de8e72792ce0c156d526f2c7914b6e7e40c9cc549eeb2c05628965bed8782.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_tr-real-life-numbers_n20 -> audio/generated/tr-TR/utterances/c30e34923ef7b755b28cff9efa3de79515fb716add2157aaf7ecad95a6ef6119.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c80e63f9-44a8-5248-9493-408841963761', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_tr-real-life-numbers_n20')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbc55c9959e303371e10f7a607e0e63e75f53eb507fb3161ed08a093ee196cdf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6fbfa65-dc95-501e-b4d7-1171f9fe3181', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c80e63f9-44a8-5248-9493-408841963761', 1), 'dbc55c9959e303371e10f7a607e0e63e75f53eb507fb3161ed08a093ee196cdf',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/c30e34923ef7b755b28cff9efa3de79515fb716add2157aaf7ecad95a6ef6119.mp3', 1018, '2026-09-14 13:39:14.838651', 'e5411caa15bb1490ed216512cff23b7516278e97278686fe3aa9e87921922e6d', 'validated', '{"audio_key":"c30e34923ef7b755b28cff9efa3de79515fb716add2157aaf7ecad95a6ef6119","entity_key":"u_tr_tr-real-life-numbers_n20","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e5411caa15bb1490ed216512cff23b7516278e97278686fe3aa9e87921922e6d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/c30e34923ef7b755b28cff9efa3de79515fb716add2157aaf7ecad95a6ef6119.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_tr-about-me_age -> audio/generated/tr-TR/utterances/caf1f70bbd7a891ae702f63a715ee438897831263b40c8bc71b4632e11149d96.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bb620ef8-829b-5ea1-ae50-564948214f16', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_tr-about-me_age')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '751122512516aca4e445587a022e5c1222c043fc36bc395ac87cdc063e85f765'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4687550-3d9d-536c-a72c-2f0e8aa2d36b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bb620ef8-829b-5ea1-ae50-564948214f16', 1), '751122512516aca4e445587a022e5c1222c043fc36bc395ac87cdc063e85f765',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/caf1f70bbd7a891ae702f63a715ee438897831263b40c8bc71b4632e11149d96.mp3', 1488, '2026-09-14 13:39:15.810245', 'e26b3cf3ee0acb3ca9456acafa123e10b515de467f774aed3da0517d12dd3fde', 'validated', '{"audio_key":"caf1f70bbd7a891ae702f63a715ee438897831263b40c8bc71b4632e11149d96","entity_key":"u_tr_tr-about-me_age","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e26b3cf3ee0acb3ca9456acafa123e10b515de467f774aed3da0517d12dd3fde","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/caf1f70bbd7a891ae702f63a715ee438897831263b40c8bc71b4632e11149d96.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_tr_tr-about-me:example:2 -> audio/generated/tr-TR/utterances/caf1f70bbd7a891ae702f63a715ee438897831263b40c8bc71b4632e11149d96.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('9bfdf75d-1f1d-5f96-b266-ade41a9e0634', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_tr_tr-about-me:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '751122512516aca4e445587a022e5c1222c043fc36bc395ac87cdc063e85f765'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f72b6c7c-1830-5cde-a408-f3fc4762fdcb', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('9bfdf75d-1f1d-5f96-b266-ade41a9e0634', 1), '751122512516aca4e445587a022e5c1222c043fc36bc395ac87cdc063e85f765',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/caf1f70bbd7a891ae702f63a715ee438897831263b40c8bc71b4632e11149d96.mp3', 1488, '2026-09-14 13:39:15.810245', 'e26b3cf3ee0acb3ca9456acafa123e10b515de467f774aed3da0517d12dd3fde', 'validated', '{"audio_key":"caf1f70bbd7a891ae702f63a715ee438897831263b40c8bc71b4632e11149d96","entity_key":"g_tr_tr-about-me:example:2","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e26b3cf3ee0acb3ca9456acafa123e10b515de467f774aed3da0517d12dd3fde","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/caf1f70bbd7a891ae702f63a715ee438897831263b40c8bc71b4632e11149d96.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/cc6948417b51d6ee305166843f6c05294d2e1b1012ef5bf755f67d692cbc3a07.mp3', 1384, '2026-09-14 13:39:16.895737', '4dd0d851c7936d621cfe8a51b9a3ea88ff2c2760b4c3f1c4b7dedd0022637fd2', 'validated', '{"audio_key":"cc6948417b51d6ee305166843f6c05294d2e1b1012ef5bf755f67d692cbc3a07","entity_key":"u_tr_pre_alpha_ac","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4dd0d851c7936d621cfe8a51b9a3ea88ff2c2760b4c3f1c4b7dedd0022637fd2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/cc6948417b51d6ee305166843f6c05294d2e1b1012ef5bf755f67d692cbc3a07.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_tr-forms-signs_name_field -> audio/generated/tr-TR/utterances/cea47d6279aa11e1b6317210a70aaea81bfb64608fb0522ba041fc34a8f60a8b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d84c4b51-01ba-5e45-89c7-002d993077df', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_tr-forms-signs_name_field')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d97c9fec35ad3ba402a8bb3548546924ce958f8f4b8a65b0f39c9c6171bdf34'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30176c25-71aa-5133-8967-961a54cc302d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d84c4b51-01ba-5e45-89c7-002d993077df', 1), '1d97c9fec35ad3ba402a8bb3548546924ce958f8f4b8a65b0f39c9c6171bdf34',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/cea47d6279aa11e1b6317210a70aaea81bfb64608fb0522ba041fc34a8f60a8b.mp3', 862, '2026-09-14 13:39:17.845856', 'ceb490fdd580e77a20d3182ed13bdd6de08e7f5fb4509d6fe66a6021d51be1fc', 'validated', '{"audio_key":"cea47d6279aa11e1b6317210a70aaea81bfb64608fb0522ba041fc34a8f60a8b","entity_key":"u_tr_tr-forms-signs_name_field","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ceb490fdd580e77a20d3182ed13bdd6de08e7f5fb4509d6fe66a6021d51be1fc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/cea47d6279aa11e1b6317210a70aaea81bfb64608fb0522ba041fc34a8f60a8b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_tr_tr-forms-signs:example:2 -> audio/generated/tr-TR/utterances/cea47d6279aa11e1b6317210a70aaea81bfb64608fb0522ba041fc34a8f60a8b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('0420ef0e-8756-5015-ba82-16cebf018e5c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_tr_tr-forms-signs:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d97c9fec35ad3ba402a8bb3548546924ce958f8f4b8a65b0f39c9c6171bdf34'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b5d2ec8e-9dd7-5c03-a886-aa40d3564195', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('0420ef0e-8756-5015-ba82-16cebf018e5c', 1), '1d97c9fec35ad3ba402a8bb3548546924ce958f8f4b8a65b0f39c9c6171bdf34',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/cea47d6279aa11e1b6317210a70aaea81bfb64608fb0522ba041fc34a8f60a8b.mp3', 862, '2026-09-14 13:39:17.845856', 'ceb490fdd580e77a20d3182ed13bdd6de08e7f5fb4509d6fe66a6021d51be1fc', 'validated', '{"audio_key":"cea47d6279aa11e1b6317210a70aaea81bfb64608fb0522ba041fc34a8f60a8b","entity_key":"g_tr_tr-forms-signs:example:2","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ceb490fdd580e77a20d3182ed13bdd6de08e7f5fb4509d6fe66a6021d51be1fc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/cea47d6279aa11e1b6317210a70aaea81bfb64608fb0522ba041fc34a8f60a8b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_tr_tr-forms-signs_form_write:model -> audio/generated/tr-TR/utterances/d875889d8da56bc693ce0d6df11b6553ab01eac25604893ef1ce3ea36101b0e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8b0fa059-26f2-5f4b-a3b8-3cfe2d7c1453', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_tr_tr-forms-signs_form_write:model')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0fb627b98077649591960b346b9b34e349811c68d825ee5bb3947760b677a5d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('739f7c66-4f6b-57b8-8324-4e16f6bdd806', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8b0fa059-26f2-5f4b-a3b8-3cfe2d7c1453', 1), '0fb627b98077649591960b346b9b34e349811c68d825ee5bb3947760b677a5d3',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/d875889d8da56bc693ce0d6df11b6553ab01eac25604893ef1ce3ea36101b0e6.mp3', 10710, '2026-09-14 13:39:20.133538', '3bf8b9529bcc3c81c450b4c673045d23f0ae245f805551d8c3b4c381cecad6cc', 'validated', '{"audio_key":"d875889d8da56bc693ce0d6df11b6553ab01eac25604893ef1ce3ea36101b0e6","entity_key":"ex_tr_tr-forms-signs_form_write:model","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3bf8b9529bcc3c81c450b4c673045d23f0ae245f805551d8c3b4c381cecad6cc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/d875889d8da56bc693ce0d6df11b6553ab01eac25604893ef1ce3ea36101b0e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_tr_tr-real-world-gate_personal_form:model -> audio/generated/tr-TR/utterances/d875889d8da56bc693ce0d6df11b6553ab01eac25604893ef1ce3ea36101b0e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('dd8f23a5-4fde-5277-a01c-bc0dd2dd3fe2', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_tr_tr-real-world-gate_personal_form:model')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0fb627b98077649591960b346b9b34e349811c68d825ee5bb3947760b677a5d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9fad76da-7f2e-5312-9911-b38991633d46', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('dd8f23a5-4fde-5277-a01c-bc0dd2dd3fe2', 1), '0fb627b98077649591960b346b9b34e349811c68d825ee5bb3947760b677a5d3',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/d875889d8da56bc693ce0d6df11b6553ab01eac25604893ef1ce3ea36101b0e6.mp3', 10710, '2026-09-14 13:39:20.133538', '3bf8b9529bcc3c81c450b4c673045d23f0ae245f805551d8c3b4c381cecad6cc', 'validated', '{"audio_key":"d875889d8da56bc693ce0d6df11b6553ab01eac25604893ef1ce3ea36101b0e6","entity_key":"ex_tr_tr-real-world-gate_personal_form:model","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3bf8b9529bcc3c81c450b4c673045d23f0ae245f805551d8c3b4c381cecad6cc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/d875889d8da56bc693ce0d6df11b6553ab01eac25604893ef1ce3ea36101b0e6.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/e3b7bb94deb7820ae0780a95a40d73da3abd035801dca037b32872d4459a0286.mp3', 914, '2026-09-14 13:39:21.212752', '58204cfa866a53a42e047c655304cc6474d6560b866b05e356dfe2d9f695c69b', 'validated', '{"audio_key":"e3b7bb94deb7820ae0780a95a40d73da3abd035801dca037b32872d4459a0286","entity_key":"u_tr_bridge_kir","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"58204cfa866a53a42e047c655304cc6474d6560b866b05e356dfe2d9f695c69b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/e3b7bb94deb7820ae0780a95a40d73da3abd035801dca037b32872d4459a0286.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/e454cced0e84aad41a3558f065a7132e88849e7b4d10bff94c3aff57bf12bb46.mp3', 1149, '2026-09-14 13:39:22.195305', '2a253d17a99807a7331d45866ba3d999d974f570ccafb68ee731f299eeb8550c', 'validated', '{"audio_key":"e454cced0e84aad41a3558f065a7132e88849e7b4d10bff94c3aff57bf12bb46","entity_key":"u_numbers_0_10_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2a253d17a99807a7331d45866ba3d999d974f570ccafb68ee731f299eeb8550c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/e454cced0e84aad41a3558f065a7132e88849e7b4d10bff94c3aff57bf12bb46.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_tr-real-life-numbers_price -> audio/generated/tr-TR/utterances/e454cced0e84aad41a3558f065a7132e88849e7b4d10bff94c3aff57bf12bb46.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('515569a1-c5d5-574f-9e5e-bcb5bc965758', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_tr-real-life-numbers_price')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea807185845920b51a73a24548725fb1262597fc2bd426d02be27c2ced691aa6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('071946fb-02d9-5857-b049-794245705c6c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('515569a1-c5d5-574f-9e5e-bcb5bc965758', 1), 'ea807185845920b51a73a24548725fb1262597fc2bd426d02be27c2ced691aa6',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/e454cced0e84aad41a3558f065a7132e88849e7b4d10bff94c3aff57bf12bb46.mp3', 1149, '2026-09-14 13:39:22.195305', '2a253d17a99807a7331d45866ba3d999d974f570ccafb68ee731f299eeb8550c', 'validated', '{"audio_key":"e454cced0e84aad41a3558f065a7132e88849e7b4d10bff94c3aff57bf12bb46","entity_key":"u_tr_tr-real-life-numbers_price","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2a253d17a99807a7331d45866ba3d999d974f570ccafb68ee731f299eeb8550c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/e454cced0e84aad41a3558f065a7132e88849e7b4d10bff94c3aff57bf12bb46.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_tr_tr-real-life-numbers:example:2 -> audio/generated/tr-TR/utterances/e454cced0e84aad41a3558f065a7132e88849e7b4d10bff94c3aff57bf12bb46.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('05af3895-6be9-5ad2-91e7-2f0824907506', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_tr_tr-real-life-numbers:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea807185845920b51a73a24548725fb1262597fc2bd426d02be27c2ced691aa6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4588ad38-f966-5cbe-8683-ee79e9406a96', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('05af3895-6be9-5ad2-91e7-2f0824907506', 1), 'ea807185845920b51a73a24548725fb1262597fc2bd426d02be27c2ced691aa6',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/e454cced0e84aad41a3558f065a7132e88849e7b4d10bff94c3aff57bf12bb46.mp3', 1149, '2026-09-14 13:39:22.195305', '2a253d17a99807a7331d45866ba3d999d974f570ccafb68ee731f299eeb8550c', 'validated', '{"audio_key":"e454cced0e84aad41a3558f065a7132e88849e7b4d10bff94c3aff57bf12bb46","entity_key":"g_tr_tr-real-life-numbers:example:2","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2a253d17a99807a7331d45866ba3d999d974f570ccafb68ee731f299eeb8550c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/e454cced0e84aad41a3558f065a7132e88849e7b4d10bff94c3aff57bf12bb46.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_tr-forms-signs_exit_a -> audio/generated/tr-TR/utterances/ea532c6d89a07a949b2dfed199bca0c869bde78c2824d1799d7ac83c8d111d52.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9cb56674-3880-5a79-bdfb-2eaeb3d24610', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_tr-forms-signs_exit_a')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '276733d7582a40f11252cf7faf5ae48dab91a94165d8e01763d7831399f01bcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df3fde56-733d-51a7-9b3d-dffb5c05934c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9cb56674-3880-5a79-bdfb-2eaeb3d24610', 1), '276733d7582a40f11252cf7faf5ae48dab91a94165d8e01763d7831399f01bcb',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ea532c6d89a07a949b2dfed199bca0c869bde78c2824d1799d7ac83c8d111d52.mp3', 1018, '2026-09-14 13:39:23.141167', '88d993a77ce249ac21f2c52408bea8bc25e8109c98af738998cc31e8cb83120e', 'validated', '{"audio_key":"ea532c6d89a07a949b2dfed199bca0c869bde78c2824d1799d7ac83c8d111d52","entity_key":"u_tr_tr-forms-signs_exit_a","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"88d993a77ce249ac21f2c52408bea8bc25e8109c98af738998cc31e8cb83120e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ea532c6d89a07a949b2dfed199bca0c869bde78c2824d1799d7ac83c8d111d52.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_tr_tr-about-me_origin -> audio/generated/tr-TR/utterances/eb771af0e84a1bb9e0e9fe89c40f92816bd61606d5157faac4d4f15f3e31afd7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('13235ed2-c6fb-5081-bd3d-acc1c3cfac24', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_tr_tr-about-me_origin')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b53dbd9118375de57c9121b6d261af36f09eee29183f33599a071a3573476f89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('daad6f13-9977-52df-861c-b8e6fbd427e7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('13235ed2-c6fb-5081-bd3d-acc1c3cfac24', 1), 'b53dbd9118375de57c9121b6d261af36f09eee29183f33599a071a3573476f89',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/eb771af0e84a1bb9e0e9fe89c40f92816bd61606d5157faac4d4f15f3e31afd7.mp3', 1149, '2026-09-14 13:39:24.122263', '8e9f5323cd8d9d1b70ddefa225a573a96b728943c3fb383f12184be6821669af', 'validated', '{"audio_key":"eb771af0e84a1bb9e0e9fe89c40f92816bd61606d5157faac4d4f15f3e31afd7","entity_key":"u_tr_tr-about-me_origin","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8e9f5323cd8d9d1b70ddefa225a573a96b728943c3fb383f12184be6821669af","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/eb771af0e84a1bb9e0e9fe89c40f92816bd61606d5157faac4d4f15f3e31afd7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_tr_tr-about-me_origin_listen -> audio/generated/tr-TR/utterances/eb771af0e84a1bb9e0e9fe89c40f92816bd61606d5157faac4d4f15f3e31afd7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1c742b1b-724e-53ac-ba59-f1551e007ca2', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_tr_tr-about-me_origin_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b53dbd9118375de57c9121b6d261af36f09eee29183f33599a071a3573476f89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c15f070-eb35-5877-8848-a1d03092a43d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1c742b1b-724e-53ac-ba59-f1551e007ca2', 1), 'b53dbd9118375de57c9121b6d261af36f09eee29183f33599a071a3573476f89',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/eb771af0e84a1bb9e0e9fe89c40f92816bd61606d5157faac4d4f15f3e31afd7.mp3', 1149, '2026-09-14 13:39:24.122263', '8e9f5323cd8d9d1b70ddefa225a573a96b728943c3fb383f12184be6821669af', 'validated', '{"audio_key":"eb771af0e84a1bb9e0e9fe89c40f92816bd61606d5157faac4d4f15f3e31afd7","entity_key":"ex_tr_tr-about-me_origin_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8e9f5323cd8d9d1b70ddefa225a573a96b728943c3fb383f12184be6821669af","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/eb771af0e84a1bb9e0e9fe89c40f92816bd61606d5157faac4d4f15f3e31afd7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_tr_tr-about-me:example:1 -> audio/generated/tr-TR/utterances/eb771af0e84a1bb9e0e9fe89c40f92816bd61606d5157faac4d4f15f3e31afd7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('9bfdf75d-1f1d-5f96-b266-ade41a9e0634', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_tr_tr-about-me:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b53dbd9118375de57c9121b6d261af36f09eee29183f33599a071a3573476f89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ddbea1b7-9060-507f-989b-9891f48ae4f8', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('9bfdf75d-1f1d-5f96-b266-ade41a9e0634', 1), 'b53dbd9118375de57c9121b6d261af36f09eee29183f33599a071a3573476f89',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/eb771af0e84a1bb9e0e9fe89c40f92816bd61606d5157faac4d4f15f3e31afd7.mp3', 1149, '2026-09-14 13:39:24.122263', '8e9f5323cd8d9d1b70ddefa225a573a96b728943c3fb383f12184be6821669af', 'validated', '{"audio_key":"eb771af0e84a1bb9e0e9fe89c40f92816bd61606d5157faac4d4f15f3e31afd7","entity_key":"g_tr_tr-about-me:example:1","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8e9f5323cd8d9d1b70ddefa225a573a96b728943c3fb383f12184be6821669af","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/eb771af0e84a1bb9e0e9fe89c40f92816bd61606d5157faac4d4f15f3e31afd7.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ec87aba587449b297deea066e51c5b2eb0938468f134e9bbdae77ea9b40a17cc.mp3', 2586, '2026-09-14 13:39:25.326000', '076d35748af503646c065c70190438688f997843285890eb41d4f08e2449b37b', 'validated', '{"audio_key":"ec87aba587449b297deea066e51c5b2eb0938468f134e9bbdae77ea9b40a17cc","entity_key":"u_polite_words_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"076d35748af503646c065c70190438688f997843285890eb41d4f08e2449b37b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ec87aba587449b297deea066e51c5b2eb0938468f134e9bbdae77ea9b40a17cc.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ec87aba587449b297deea066e51c5b2eb0938468f134e9bbdae77ea9b40a17cc.mp3', 2586, '2026-09-14 13:39:25.326000', '076d35748af503646c065c70190438688f997843285890eb41d4f08e2449b37b', 'validated', '{"audio_key":"ec87aba587449b297deea066e51c5b2eb0938468f134e9bbdae77ea9b40a17cc","entity_key":"e_polite_words_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"076d35748af503646c065c70190438688f997843285890eb41d4f08e2449b37b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ec87aba587449b297deea066e51c5b2eb0938468f134e9bbdae77ea9b40a17cc.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/f27d8485c8bfc6d3280d3da49e028f09b626edfcf4248cf9befa1a9efd6c41ce.mp3', 1201, '2026-09-14 13:39:26.324523', 'd5058b5be27c324fcca7277ce84fee697b9cd35c122cf6ac41ad345d18224124', 'validated', '{"audio_key":"f27d8485c8bfc6d3280d3da49e028f09b626edfcf4248cf9befa1a9efd6c41ce","entity_key":"u_tr_pre_soft_g_name","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d5058b5be27c324fcca7277ce84fee697b9cd35c122cf6ac41ad345d18224124","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/f27d8485c8bfc6d3280d3da49e028f09b626edfcf4248cf9befa1a9efd6c41ce.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/fd8a88c8c638863664c6c065a8281227924b4503f4b1a4f61771650905e1f483.mp3', 1149, '2026-09-14 13:39:27.335406', '3734a7b96e9d5a7ca5da06b42313f2c25ee024a5b21b219618750b6d58951af4', 'validated', '{"audio_key":"fd8a88c8c638863664c6c065a8281227924b4503f4b1a4f61771650905e1f483","entity_key":"u_tr_meaning_bu_ne_demek","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3734a7b96e9d5a7ca5da06b42313f2c25ee024a5b21b219618750b6d58951af4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/fd8a88c8c638863664c6c065a8281227924b4503f4b1a4f61771650905e1f483.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/fd8a88c8c638863664c6c065a8281227924b4503f4b1a4f61771650905e1f483.mp3', 1149, '2026-09-14 13:39:27.335406', '3734a7b96e9d5a7ca5da06b42313f2c25ee024a5b21b219618750b6d58951af4', 'validated', '{"audio_key":"fd8a88c8c638863664c6c065a8281227924b4503f4b1a4f61771650905e1f483","entity_key":"g_tr_meaning_repair:example:1","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3734a7b96e9d5a7ca5da06b42313f2c25ee024a5b21b219618750b6d58951af4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/fd8a88c8c638863664c6c065a8281227924b4503f4b1a4f61771650905e1f483.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/fd8a88c8c638863664c6c065a8281227924b4503f4b1a4f61771650905e1f483.mp3', 1149, '2026-09-14 13:39:27.335406', '3734a7b96e9d5a7ca5da06b42313f2c25ee024a5b21b219618750b6d58951af4', 'validated', '{"audio_key":"fd8a88c8c638863664c6c065a8281227924b4503f4b1a4f61771650905e1f483","entity_key":"g_tr_ready_gate:example:2","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3734a7b96e9d5a7ca5da06b42313f2c25ee024a5b21b219618750b6d58951af4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/fd8a88c8c638863664c6c065a8281227924b4503f4b1a4f61771650905e1f483.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_tr_tr-forms-signs_field_listen -> audio/generated/tr-TR/utterances/fd98c18ddad2e6c65a14af3eb112657aa7b45cbaacb5d475799fd7691c71337e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('69d70ae1-9ede-5184-bac2-3b7523d747a3', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_tr_tr-forms-signs_field_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa6906d76ee94d4e8d05a2424fb89005840522ab6dec0ee8055247424977169e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13ca19f5-24a7-5816-b134-96fbdd21c003', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('69d70ae1-9ede-5184-bac2-3b7523d747a3', 1), 'fa6906d76ee94d4e8d05a2424fb89005840522ab6dec0ee8055247424977169e',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/fd98c18ddad2e6c65a14af3eb112657aa7b45cbaacb5d475799fd7691c71337e.mp3', 1201, '2026-09-14 13:39:28.331273', '1e2ecee46919ade3d7ef4fdf02be323e30ce6d106c2f4faa180ca45f8d85fe14', 'validated', '{"audio_key":"fd98c18ddad2e6c65a14af3eb112657aa7b45cbaacb5d475799fd7691c71337e","entity_key":"ex_tr_tr-forms-signs_field_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1e2ecee46919ade3d7ef4fdf02be323e30ce6d106c2f4faa180ca45f8d85fe14","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/fd98c18ddad2e6c65a14af3eb112657aa7b45cbaacb5d475799fd7691c71337e.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1.mp3', 1697, '2026-09-14 13:39:29.357023', '14a23f40cbc4b2a7bf921a93ec2064f3703c317ba76a5215864290f958e3927f', 'validated', '{"audio_key":"ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1","entity_key":"u_tr_meaning_repeat","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"14a23f40cbc4b2a7bf921a93ec2064f3703c317ba76a5215864290f958e3927f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1.mp3', 1697, '2026-09-14 13:39:29.357023', '14a23f40cbc4b2a7bf921a93ec2064f3703c317ba76a5215864290f958e3927f', 'validated', '{"audio_key":"ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1","entity_key":"ex_tr_meaning_listen_repeat","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"14a23f40cbc4b2a7bf921a93ec2064f3703c317ba76a5215864290f958e3927f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1.mp3', 1697, '2026-09-14 13:39:29.357023', '14a23f40cbc4b2a7bf921a93ec2064f3703c317ba76a5215864290f958e3927f', 'validated', '{"audio_key":"ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1","entity_key":"g_tr_meaning_repair:example:2","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"14a23f40cbc4b2a7bf921a93ec2064f3703c317ba76a5215864290f958e3927f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1.mp3"}'
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
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1.mp3', 1697, '2026-09-14 13:39:29.357023', '14a23f40cbc4b2a7bf921a93ec2064f3703c317ba76a5215864290f958e3927f', 'validated', '{"audio_key":"ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1","entity_key":"g_tr_ready_gate:example:1","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"14a23f40cbc4b2a7bf921a93ec2064f3703c317ba76a5215864290f958e3927f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_tr_tr-real-world-gate:example:2 -> audio/generated/tr-TR/utterances/ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('2587ded8-35d5-5e61-84c6-d6eb70bb0bf4', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_tr_tr-real-world-gate:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af6f1e50c1bc0bd272101e51e2dc710f9e42ff2cf1f26ace0e7083709a38e73c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f456b312-960b-56f6-9d24-886824516cbe', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('2587ded8-35d5-5e61-84c6-d6eb70bb0bf4', 1), 'af6f1e50c1bc0bd272101e51e2dc710f9e42ff2cf1f26ace0e7083709a38e73c',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1.mp3', 1697, '2026-09-14 13:39:29.357023', '14a23f40cbc4b2a7bf921a93ec2064f3703c317ba76a5215864290f958e3927f', 'validated', '{"audio_key":"ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1","entity_key":"g_tr_tr-real-world-gate:example:2","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"14a23f40cbc4b2a7bf921a93ec2064f3703c317ba76a5215864290f958e3927f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ff9d9a12e043a2aefd2d29dd4a19f4e87402e90e69b01ab5d712f0b1ac1cf8b1.mp3"}'
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

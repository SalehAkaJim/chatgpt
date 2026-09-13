-- Generated audio link import for tr-TR C1
-- Source manifest: audio/manifests/tr/C1.json
-- Generated rows: 260
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'tr' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'tr-TR' LIMIT 1);
START TRANSACTION;

-- d_nominalization_density_02:3 -> audio/generated/tr-TR/dialogues/01df6fd66a523767044544cb72eb31f1a2c88364f86f1222cf6636b827d69de1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b55f8db7-1266-5f87-8182-ea1ac6495c61', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nominalization_density_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c183de3717db325c77bd6a03e5e60267dbaddec74f4ab3eb6dd58d2d1fe5da5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0ca2c50-6aa8-59c0-ae79-1df11881074a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b55f8db7-1266-5f87-8182-ea1ac6495c61', 1), '0c183de3717db325c77bd6a03e5e60267dbaddec74f4ab3eb6dd58d2d1fe5da5',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/01df6fd66a523767044544cb72eb31f1a2c88364f86f1222cf6636b827d69de1.mp3', 1436, '2026-09-13 19:25:31.759988', '488a27e6cbb5a2a79aca81aa5abe4152c81b39ce3ef9d8568bead9419b3a0cbc', 'validated', '{"audio_key":"01df6fd66a523767044544cb72eb31f1a2c88364f86f1222cf6636b827d69de1","entity_key":"d_nominalization_density_02:3","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"488a27e6cbb5a2a79aca81aa5abe4152c81b39ce3ef9d8568bead9419b3a0cbc","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/01df6fd66a523767044544cb72eb31f1a2c88364f86f1222cf6636b827d69de1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_policy_synthesis_01:3 -> audio/generated/tr-TR/dialogues/04beb5607c95ce20e0e021b87177d57ea1abe01a915e49998694cf6cd1416f3f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('475f57ab-83eb-5c9f-a6f1-ab76770e8b43', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_policy_synthesis_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b8aea605e64b582070da9bae5d7c6758a3ef4c5606f63f975cb55c9caeb8e88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c3456d7-ea91-514e-94ac-84a898b1f180', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('475f57ab-83eb-5c9f-a6f1-ab76770e8b43', 1), '4b8aea605e64b582070da9bae5d7c6758a3ef4c5606f63f975cb55c9caeb8e88',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/04beb5607c95ce20e0e021b87177d57ea1abe01a915e49998694cf6cd1416f3f.mp3', 4675, '2026-09-13 19:25:32.141008', '8b6a6198174556a2a2c4cb343198e12415325381b9136bd0aa2fbde7254a7759', 'validated', '{"audio_key":"04beb5607c95ce20e0e021b87177d57ea1abe01a915e49998694cf6cd1416f3f","entity_key":"d_policy_synthesis_01:3","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8b6a6198174556a2a2c4cb343198e12415325381b9136bd0aa2fbde7254a7759","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/04beb5607c95ce20e0e021b87177d57ea1abe01a915e49998694cf6cd1416f3f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nominalization_density_02:4 -> audio/generated/tr-TR/dialogues/04e479bb30d7b6b2cb31f49c8572ea531e7144684d7ca9b5991bf343a774afc6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1916b117-7f19-5d28-a96a-1103ebf7d59e', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nominalization_density_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60691eb3e384771ff5ba3d98a43fedfa9062a2a5c2996fc14be3d7afbb05bad1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3ba143b-f75e-5b71-b3be-52909ad59363', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1916b117-7f19-5d28-a96a-1103ebf7d59e', 1), '60691eb3e384771ff5ba3d98a43fedfa9062a2a5c2996fc14be3d7afbb05bad1',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/04e479bb30d7b6b2cb31f49c8572ea531e7144684d7ca9b5991bf343a774afc6.mp3', 5668, '2026-09-13 19:25:33.486201', '81e41acb71c332a22e772dc47c63fa90a5d6aabe789708b0968adb31606a8505', 'validated', '{"audio_key":"04e479bb30d7b6b2cb31f49c8572ea531e7144684d7ca9b5991bf343a774afc6","entity_key":"d_nominalization_density_02:4","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"81e41acb71c332a22e772dc47c63fa90a5d6aabe789708b0968adb31606a8505","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/04e479bb30d7b6b2cb31f49c8572ea531e7144684d7ca9b5991bf343a774afc6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_idiomatic_precision_01:1 -> audio/generated/tr-TR/dialogues/06a25ef0d18c2bbcc8f7346ae08c9bae43aedcb5f185b2dd3d70868b414502f1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4ce9d8fe-a5e0-512c-b1a4-dd2038309f7a', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_idiomatic_precision_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd6db4fbb8b80e152ce4aca37ca20d64f179f12629c9afffa413a18dc271adac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5261067-14cf-59d4-b88c-9afa01c94a29', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4ce9d8fe-a5e0-512c-b1a4-dd2038309f7a', 1), 'bd6db4fbb8b80e152ce4aca37ca20d64f179f12629c9afffa413a18dc271adac',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/06a25ef0d18c2bbcc8f7346ae08c9bae43aedcb5f185b2dd3d70868b414502f1.mp3', 2220, '2026-09-13 19:25:33.286476', 'd05c652dfb0b99c36a883917be156400701d810ae41dec158d2a3b7ecf914940', 'validated', '{"audio_key":"06a25ef0d18c2bbcc8f7346ae08c9bae43aedcb5f185b2dd3d70868b414502f1","entity_key":"d_idiomatic_precision_01:1","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d05c652dfb0b99c36a883917be156400701d810ae41dec158d2a3b7ecf914940","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/06a25ef0d18c2bbcc8f7346ae08c9bae43aedcb5f185b2dd3d70868b414502f1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_policy_synthesis_02:2 -> audio/generated/tr-TR/dialogues/07db1ed9fbd4d69ca61fd59173c39db5d2e049c3e6740fa9c8963baa38015f30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ecee07c0-f21c-5776-8065-decf1977d89b', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_policy_synthesis_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '998958e2fa1d58c3a7ab19d26ff5716d835d106f6cd6e045710dc21b5c97cbb0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff1afc14-c7a0-548a-ba82-a14a26293f99', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ecee07c0-f21c-5776-8065-decf1977d89b', 1), '998958e2fa1d58c3a7ab19d26ff5716d835d106f6cd6e045710dc21b5c97cbb0',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/07db1ed9fbd4d69ca61fd59173c39db5d2e049c3e6740fa9c8963baa38015f30.mp3', 5198, '2026-09-13 19:25:34.825935', 'c7b2378db6f972b9153634543b26f3f8e44c92ecf360347b762c037b44809825', 'validated', '{"audio_key":"07db1ed9fbd4d69ca61fd59173c39db5d2e049c3e6740fa9c8963baa38015f30","entity_key":"d_policy_synthesis_02:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"c7b2378db6f972b9153634543b26f3f8e44c92ecf360347b762c037b44809825","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/07db1ed9fbd4d69ca61fd59173c39db5d2e049c3e6740fa9c8963baa38015f30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c1_expert_roundtable_capstone_02:4 -> audio/generated/tr-TR/dialogues/0b981ba1d2e64caad0c8e82775befc77ec3c3b8137117fdb731d55177798604b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fdb76004-9304-5fc2-b33f-11fb738d55f4', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c1_expert_roundtable_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4d6c776d2f15aff62d835e6f7299145aea16ab0cacaf5be325e13f03efa4d30'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c52f09d-3b9b-59ff-8108-33df832a67b1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fdb76004-9304-5fc2-b33f-11fb738d55f4', 1), 'b4d6c776d2f15aff62d835e6f7299145aea16ab0cacaf5be325e13f03efa4d30',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/0b981ba1d2e64caad0c8e82775befc77ec3c3b8137117fdb731d55177798604b.mp3', 4257, '2026-09-13 19:25:34.904254', '3cedc0972cb1b8880d9220d1cafe3334f4455a3066fce4c7600f7a5b6282b3e1', 'validated', '{"audio_key":"0b981ba1d2e64caad0c8e82775befc77ec3c3b8137117fdb731d55177798604b","entity_key":"d_c1_expert_roundtable_capstone_02:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3cedc0972cb1b8880d9220d1cafe3334f4455a3066fce4c7600f7a5b6282b3e1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/0b981ba1d2e64caad0c8e82775befc77ec3c3b8137117fdb731d55177798604b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_idiomatic_precision_02:2 -> audio/generated/tr-TR/dialogues/0f061b76587e0b13b5a136467bc2d49ec995378a58692ac1508c29d08721e33b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('13227b31-9e70-5300-b557-e588783d323e', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_idiomatic_precision_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0fa2bd49b678b937f887f7b6dcb4ffb9dca6c1f011612f64f842a83f7dadb664'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d4e8ac0a-867d-5d75-9360-33206e23be0a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('13227b31-9e70-5300-b557-e588783d323e', 1), '0fa2bd49b678b937f887f7b6dcb4ffb9dca6c1f011612f64f842a83f7dadb664',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/0f061b76587e0b13b5a136467bc2d49ec995378a58692ac1508c29d08721e33b.mp3', 2351, '2026-09-13 19:25:36.027957', 'c38d3cd08ae0ea516ca91f609aa5ab0ac89feeb1e4a4cbcb1d7c56c05e26855d', 'validated', '{"audio_key":"0f061b76587e0b13b5a136467bc2d49ec995378a58692ac1508c29d08721e33b","entity_key":"d_idiomatic_precision_02:2","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c38d3cd08ae0ea516ca91f609aa5ab0ac89feeb1e4a4cbcb1d7c56c05e26855d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/0f061b76587e0b13b5a136467bc2d49ec995378a58692ac1508c29d08721e33b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_mediation_01:4 -> audio/generated/tr-TR/dialogues/126e69934281e6708cede5fe61f83ba4094bf135015a43248b0673f3e2206ff5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f0ab206b-2efb-5650-a21d-d77fe0438714', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_mediation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9191994b05281f0444de2cc2357844dd8aa12ec2d2df79f78a20a8ada0e3f280'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea67bf6d-94ea-5d13-a8de-cf44474c71ee', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f0ab206b-2efb-5650-a21d-d77fe0438714', 1), '9191994b05281f0444de2cc2357844dd8aa12ec2d2df79f78a20a8ada0e3f280',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/126e69934281e6708cede5fe61f83ba4094bf135015a43248b0673f3e2206ff5.mp3', 3369, '2026-09-13 19:25:36.201039', '14885f388442dac964f1e4e47ce379a93d0eb7a5039757dc16d679b7ec2f1297', 'validated', '{"audio_key":"126e69934281e6708cede5fe61f83ba4094bf135015a43248b0673f3e2206ff5","entity_key":"d_institutional_mediation_01:4","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"14885f388442dac964f1e4e47ce379a93d0eb7a5039757dc16d679b7ec2f1297","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/126e69934281e6708cede5fe61f83ba4094bf135015a43248b0673f3e2206ff5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_policy_synthesis_02:4 -> audio/generated/tr-TR/dialogues/131bf87ebc777e40f118d68f15089b9268db2ed03f7e997d8ce2fe23c669c57f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('07ce6c7e-cf0d-5671-affd-b79423da3f24', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_policy_synthesis_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f572ab54ef892c5e02ad5543a2056fd621c2921081f0dc08fc969b294603ab9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da825833-490a-5ca5-b594-de7b50f20f41', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('07ce6c7e-cf0d-5671-affd-b79423da3f24', 1), '2f572ab54ef892c5e02ad5543a2056fd621c2921081f0dc08fc969b294603ab9',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/131bf87ebc777e40f118d68f15089b9268db2ed03f7e997d8ce2fe23c669c57f.mp3', 4127, '2026-09-13 19:25:37.493454', '6b78382dc3093cff48bc40f41b62a7dc1cc6962bc86abe215c2b7b5ff4dbf1e6', 'validated', '{"audio_key":"131bf87ebc777e40f118d68f15089b9268db2ed03f7e997d8ce2fe23c669c57f","entity_key":"d_policy_synthesis_02:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"6b78382dc3093cff48bc40f41b62a7dc1cc6962bc86abe215c2b7b5ff4dbf1e6","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/131bf87ebc777e40f118d68f15089b9268db2ed03f7e997d8ce2fe23c669c57f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_mediation_02:3 -> audio/generated/tr-TR/dialogues/1548063011aff5ed0cf0c484991f8e3cb4c33d26eacb988ba424904e3d1d584f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d940f974-2445-5a0d-a821-aa707e343347', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_mediation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '66a148e2b042d3aed35488bdc037c0b68c8c7784ade6b8079ecff1ed65295b8c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3bd49c1c-3f08-5a75-bf90-b7441425eeab', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d940f974-2445-5a0d-a821-aa707e343347', 1), '66a148e2b042d3aed35488bdc037c0b68c8c7784ade6b8079ecff1ed65295b8c',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1548063011aff5ed0cf0c484991f8e3cb4c33d26eacb988ba424904e3d1d584f.mp3', 2037, '2026-09-13 19:25:37.373190', '1aac706be5b2afe4ee6dbb3e0b8013190e9c58b5f6555cd6c179333bdbd7a3e3', 'validated', '{"audio_key":"1548063011aff5ed0cf0c484991f8e3cb4c33d26eacb988ba424904e3d1d584f","entity_key":"d_institutional_mediation_02:3","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"1aac706be5b2afe4ee6dbb3e0b8013190e9c58b5f6555cd6c179333bdbd7a3e3","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/1548063011aff5ed0cf0c484991f8e3cb4c33d26eacb988ba424904e3d1d584f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c1_expert_roundtable_capstone_02:1 -> audio/generated/tr-TR/dialogues/163c7befebb8d68fa0cbb3737339f415dea30fb2607af4cf8993ddd0015a0b81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8d2791cc-b2b6-5183-a662-985ed6c1ffc6', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c1_expert_roundtable_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f07878ff4bf0110b42c1bada8c6dbce8a4ac6f0bf15f305d279c2d7a6c95705d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14ef85a5-516b-5865-8f2c-01fd6074a7fb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8d2791cc-b2b6-5183-a662-985ed6c1ffc6', 1), 'f07878ff4bf0110b42c1bada8c6dbce8a4ac6f0bf15f305d279c2d7a6c95705d',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/163c7befebb8d68fa0cbb3737339f415dea30fb2607af4cf8993ddd0015a0b81.mp3', 3709, '2026-09-13 19:25:38.883009', '1725447711ed194ecb66b9283734a17661faa245292edc089a1bded2e4e425a1', 'validated', '{"audio_key":"163c7befebb8d68fa0cbb3737339f415dea30fb2607af4cf8993ddd0015a0b81","entity_key":"d_c1_expert_roundtable_capstone_02:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1725447711ed194ecb66b9283734a17661faa245292edc089a1bded2e4e425a1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/163c7befebb8d68fa0cbb3737339f415dea30fb2607af4cf8993ddd0015a0b81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_mediation_02:1 -> audio/generated/tr-TR/dialogues/17e5fa46f9e0a1d8b0072afa071b0ef8e4b7934fbb69d256cbc33fde980f6122.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4f0e733d-22e0-5f0d-a5b0-c5ae4f57922c', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_mediation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd66d79390d928c800147e1e17b4acb8db0dfa81295658dad8f70d94eb16f49ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('74c223c2-c75e-5c88-b572-05974aad95c9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4f0e733d-22e0-5f0d-a5b0-c5ae4f57922c', 1), 'd66d79390d928c800147e1e17b4acb8db0dfa81295658dad8f70d94eb16f49ba',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/17e5fa46f9e0a1d8b0072afa071b0ef8e4b7934fbb69d256cbc33fde980f6122.mp3', 4127, '2026-09-13 19:25:38.872757', '0e153fffd6d01eaf50a65e20c631d9f909db8014c096968997be3685d336be93', 'validated', '{"audio_key":"17e5fa46f9e0a1d8b0072afa071b0ef8e4b7934fbb69d256cbc33fde980f6122","entity_key":"d_institutional_mediation_02:1","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"0e153fffd6d01eaf50a65e20c631d9f909db8014c096968997be3685d336be93","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/17e5fa46f9e0a1d8b0072afa071b0ef8e4b7934fbb69d256cbc33fde980f6122.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_idiomatic_precision_02:1 -> audio/generated/tr-TR/dialogues/18b8ff5c41817330f1da254e92d27fe4f80a86d7f061039c11677edf63b1e88a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('96b54c49-0ce6-528e-850b-263b5dbd218a', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_idiomatic_precision_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '23e61371f93d024defc6809b7b4b9772bd6cc7817bdef641b6ad0d9b827176ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('be200414-bf14-5918-88b3-4dded529cc18', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('96b54c49-0ce6-528e-850b-263b5dbd218a', 1), '23e61371f93d024defc6809b7b4b9772bd6cc7817bdef641b6ad0d9b827176ac',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/18b8ff5c41817330f1da254e92d27fe4f80a86d7f061039c11677edf63b1e88a.mp3', 2324, '2026-09-13 19:25:40.141775', 'c6c3bd2d5c26e9ec6c0ef2d26b14bd9c5b14597c1a0904674b26fd291384280c', 'validated', '{"audio_key":"18b8ff5c41817330f1da254e92d27fe4f80a86d7f061039c11677edf63b1e88a","entity_key":"d_idiomatic_precision_02:1","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c6c3bd2d5c26e9ec6c0ef2d26b14bd9c5b14597c1a0904674b26fd291384280c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/18b8ff5c41817330f1da254e92d27fe4f80a86d7f061039c11677edf63b1e88a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c1_expert_roundtable_capstone_01:1 -> audio/generated/tr-TR/dialogues/1ac2a15946ba29d601c4659339eae9ad1bd240bc762e6713074f96c83e8f40ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8a6325f9-b25a-581d-ad17-5cdfa1c168e9', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c1_expert_roundtable_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '819fb34cecfcef222c6550aae7413d0faaeffbd30fe3dd89d31a6751f26cc02d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f030448-80d0-5314-b5bd-63eff9320727', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8a6325f9-b25a-581d-ad17-5cdfa1c168e9', 1), '819fb34cecfcef222c6550aae7413d0faaeffbd30fe3dd89d31a6751f26cc02d',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1ac2a15946ba29d601c4659339eae9ad1bd240bc762e6713074f96c83e8f40ee.mp3', 4545, '2026-09-13 19:25:40.473958', 'e8a55e278bdeed9f6f3094b56147b651bd006328f2226e318a1325e2f87433a9', 'validated', '{"audio_key":"1ac2a15946ba29d601c4659339eae9ad1bd240bc762e6713074f96c83e8f40ee","entity_key":"d_c1_expert_roundtable_capstone_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e8a55e278bdeed9f6f3094b56147b651bd006328f2226e318a1325e2f87433a9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/1ac2a15946ba29d601c4659339eae9ad1bd240bc762e6713074f96c83e8f40ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidential_calibration_01:1 -> audio/generated/tr-TR/dialogues/1ae57e8af4adb7f160916c54a96a33b11635680474c19c3fc3428edaa37de37a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6fc92d8b-5777-5e0d-a48b-9cf11ef410f6', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidential_calibration_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c9e1e12a1b01b93042c23c1a9163c1bee202fc9fac97fc01c7c9f05a62bb9eeb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d7159801-e52b-5ce1-a57d-cd1441342678', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6fc92d8b-5777-5e0d-a48b-9cf11ef410f6', 1), 'c9e1e12a1b01b93042c23c1a9163c1bee202fc9fac97fc01c7c9f05a62bb9eeb',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1ae57e8af4adb7f160916c54a96a33b11635680474c19c3fc3428edaa37de37a.mp3', 2925, '2026-09-13 19:25:41.417741', '2111418cfce2c90bdf30faf7761071a9a9fd5639c09aa1a0d62747bafcc8efde', 'validated', '{"audio_key":"1ae57e8af4adb7f160916c54a96a33b11635680474c19c3fc3428edaa37de37a","entity_key":"d_evidential_calibration_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2111418cfce2c90bdf30faf7761071a9a9fd5639c09aa1a0d62747bafcc8efde","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/1ae57e8af4adb7f160916c54a96a33b11635680474c19c3fc3428edaa37de37a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_shifting_01:4 -> audio/generated/tr-TR/dialogues/1d9f5a7f6b30297163e758f2dcc0eb187648a211ef4d7a5816dd5ec0ae91982f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7202a7ed-9d6f-558c-a155-06697c821e3b', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_shifting_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9bddbc5bfd24044fe93fed00e8c7f1e28adace4f4a03e7c31deec7fc0b1fe88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ed02810-89eb-5e9d-a07b-dee3ae7c6bf9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7202a7ed-9d6f-558c-a155-06697c821e3b', 1), 'b9bddbc5bfd24044fe93fed00e8c7f1e28adace4f4a03e7c31deec7fc0b1fe88',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1d9f5a7f6b30297163e758f2dcc0eb187648a211ef4d7a5816dd5ec0ae91982f.mp3', 3004, '2026-09-13 19:25:41.785011', '803eafc5fa0731a615503f3826c16c8602ebadf717b7428c195d720e1713fb17', 'validated', '{"audio_key":"1d9f5a7f6b30297163e758f2dcc0eb187648a211ef4d7a5816dd5ec0ae91982f","entity_key":"d_register_shifting_01:4","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"803eafc5fa0731a615503f3826c16c8602ebadf717b7428c195d720e1713fb17","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/1d9f5a7f6b30297163e758f2dcc0eb187648a211ef4d7a5816dd5ec0ae91982f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_reframing_01:1 -> audio/generated/tr-TR/dialogues/1fb8c62ab88724ed914dd87ccdd9864c3001b75f130007448e390678f8076c78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6dde4c4c-9d66-560e-a232-cc6a6fc8e9a1', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_reframing_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a97b6ef7a953f076e6f7712448a88e2fd661fc93e6fc2d4c2bc095c4b129ad24'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dacee1a8-5a5c-58eb-a090-dd3cdf74b5d2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6dde4c4c-9d66-560e-a232-cc6a6fc8e9a1', 1), 'a97b6ef7a953f076e6f7712448a88e2fd661fc93e6fc2d4c2bc095c4b129ad24',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1fb8c62ab88724ed914dd87ccdd9864c3001b75f130007448e390678f8076c78.mp3', 3291, '2026-09-13 19:25:42.769522', '21e84868ddd1d2bcfe9f21483c16f47f9a623a04a25ba2d4354d901658115bcb', 'validated', '{"audio_key":"1fb8c62ab88724ed914dd87ccdd9864c3001b75f130007448e390678f8076c78","entity_key":"d_concession_reframing_01:1","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"21e84868ddd1d2bcfe9f21483c16f47f9a623a04a25ba2d4354d901658115bcb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/1fb8c62ab88724ed914dd87ccdd9864c3001b75f130007448e390678f8076c78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_mediation_02:4 -> audio/generated/tr-TR/dialogues/1fec8aa1923a1b1ef6c0765c311015e11bbc97604214649e02dd87baa4be3997.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6f51a1ef-e290-5d78-99ae-4894d59404c2', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_mediation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a9200edbb0d74caeb4e84fcf9604e8f4c0470bbb513920b33739a12d85da1de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('16daf704-1ded-5eca-8c30-7a25d0086d4d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6f51a1ef-e290-5d78-99ae-4894d59404c2', 1), '0a9200edbb0d74caeb4e84fcf9604e8f4c0470bbb513920b33739a12d85da1de',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1fec8aa1923a1b1ef6c0765c311015e11bbc97604214649e02dd87baa4be3997.mp3', 5015, '2026-09-13 19:25:43.308182', '715f65c1701bcde5a68c0ed10db2cf2e3dfc3a0c33aa26f267603f1a76c4a760', 'validated', '{"audio_key":"1fec8aa1923a1b1ef6c0765c311015e11bbc97604214649e02dd87baa4be3997","entity_key":"d_institutional_mediation_02:4","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"715f65c1701bcde5a68c0ed10db2cf2e3dfc3a0c33aa26f267603f1a76c4a760","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/1fec8aa1923a1b1ef6c0765c311015e11bbc97604214649e02dd87baa4be3997.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nominalization_density_01:2 -> audio/generated/tr-TR/dialogues/1ffedcc77d842569aba69eabd99acb87900fea43357f0f8d9a1a9acd7b7a6c40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e2867824-c4c5-58a1-a21d-044eb2f8eb90', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nominalization_density_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e28d5bb1286d10c304ce0c06fd18c5dfebaad5c0ac0906d67b76a38ba88717f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('750577e0-be0a-51e7-b199-606797bc82e4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e2867824-c4c5-58a1-a21d-044eb2f8eb90', 1), 'e28d5bb1286d10c304ce0c06fd18c5dfebaad5c0ac0906d67b76a38ba88717f2',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/1ffedcc77d842569aba69eabd99acb87900fea43357f0f8d9a1a9acd7b7a6c40.mp3', 3996, '2026-09-13 19:25:44.224508', 'f5c3d27f7c6e7a60019a48adf44fa85c104d8c17738e09875d800e5c3fad8f5d', 'validated', '{"audio_key":"1ffedcc77d842569aba69eabd99acb87900fea43357f0f8d9a1a9acd7b7a6c40","entity_key":"d_nominalization_density_01:2","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f5c3d27f7c6e7a60019a48adf44fa85c104d8c17738e09875d800e5c3fad8f5d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/1ffedcc77d842569aba69eabd99acb87900fea43357f0f8d9a1a9acd7b7a6c40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_stance_02:3 -> audio/generated/tr-TR/dialogues/29052102c892a7aa78b5b3f10dae5e2074241da7700a7b1972a755dc0887edc7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('57ff2578-764c-5a38-8a00-53edb4043236', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_stance_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '36ab1e14906ead7c7c3d2f69483f1a55d8d3d777d5150a1947499b3f323f8c90'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a1e8d19-8bb4-540a-8de4-2782c293a0ef', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('57ff2578-764c-5a38-8a00-53edb4043236', 1), '36ab1e14906ead7c7c3d2f69483f1a55d8d3d777d5150a1947499b3f323f8c90',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/29052102c892a7aa78b5b3f10dae5e2074241da7700a7b1972a755dc0887edc7.mp3', 3056, '2026-09-13 19:25:44.633453', 'b9bcf7d7155a9561050c14bf167ebb49a4fc0b37a6d7d05e85f94f43651dd689', 'validated', '{"audio_key":"29052102c892a7aa78b5b3f10dae5e2074241da7700a7b1972a755dc0887edc7","entity_key":"d_reported_stance_02:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b9bcf7d7155a9561050c14bf167ebb49a4fc0b37a6d7d05e85f94f43651dd689","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/29052102c892a7aa78b5b3f10dae5e2074241da7700a7b1972a755dc0887edc7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_idiomatic_precision_01:3 -> audio/generated/tr-TR/dialogues/29cb9f774fb55b4f0c8de002bb83917fbdf86557712ef473cecb80865ffdf71d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cc6bca52-8c9a-525f-a620-7d3047cda9f3', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_idiomatic_precision_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '82337474135f8612726aa86ce329ced50e8f282fe348a4016b533e96676bd06d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b477a655-1b20-52c5-ba68-aafe143b6d5b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cc6bca52-8c9a-525f-a620-7d3047cda9f3', 1), '82337474135f8612726aa86ce329ced50e8f282fe348a4016b533e96676bd06d',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/29cb9f774fb55b4f0c8de002bb83917fbdf86557712ef473cecb80865ffdf71d.mp3', 1515, '2026-09-13 19:25:45.346901', '30d98e6adc5be76e81cf45556f38169175c532ef303d91081855cbcfedebf38d', 'validated', '{"audio_key":"29cb9f774fb55b4f0c8de002bb83917fbdf86557712ef473cecb80865ffdf71d","entity_key":"d_idiomatic_precision_01:3","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"30d98e6adc5be76e81cf45556f38169175c532ef303d91081855cbcfedebf38d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/29cb9f774fb55b4f0c8de002bb83917fbdf86557712ef473cecb80865ffdf71d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_stance_01:2 -> audio/generated/tr-TR/dialogues/2f7cc5e59a6b56745b942d83c4169174df7e69268327f0245d4d086ebcbb05ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bf621581-b082-5e1a-8909-079415e60494', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_stance_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1f3703fe2224aff9a8766675ba38e730f0f5629f332aba859d6f02b589c5764'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('336d243f-89f8-58bc-b18d-0cf621dfbf7c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bf621581-b082-5e1a-8909-079415e60494', 1), 'b1f3703fe2224aff9a8766675ba38e730f0f5629f332aba859d6f02b589c5764',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/2f7cc5e59a6b56745b942d83c4169174df7e69268327f0245d4d086ebcbb05ef.mp3', 4911, '2026-09-13 19:25:46.225854', '2560636448a9389d86c94f557df693cdb87bd845729bf2c867a25f14546570be', 'validated', '{"audio_key":"2f7cc5e59a6b56745b942d83c4169174df7e69268327f0245d4d086ebcbb05ef","entity_key":"d_reported_stance_01:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2560636448a9389d86c94f557df693cdb87bd845729bf2c867a25f14546570be","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/2f7cc5e59a6b56745b942d83c4169174df7e69268327f0245d4d086ebcbb05ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_policy_synthesis_01:4 -> audio/generated/tr-TR/dialogues/3d7dfdf59e92b95b3636201b22e32a84ab67037d79b47afca368228f6d2b1a25.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5723bbb2-fb43-5461-8a90-a8a2512b9fb9', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_policy_synthesis_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ad3e6f75db0934c5671b2ae70d1795e71dfff95d768e73a705faadb16d9dcb3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9325f967-0bea-55cf-a0b4-1432a11ea5fd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5723bbb2-fb43-5461-8a90-a8a2512b9fb9', 1), '4ad3e6f75db0934c5671b2ae70d1795e71dfff95d768e73a705faadb16d9dcb3',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/3d7dfdf59e92b95b3636201b22e32a84ab67037d79b47afca368228f6d2b1a25.mp3', 3291, '2026-09-13 19:25:46.673370', 'c364a7af5a69069737f6f43a0bbd282d4b421f69720bb06978073a906476c301', 'validated', '{"audio_key":"3d7dfdf59e92b95b3636201b22e32a84ab67037d79b47afca368228f6d2b1a25","entity_key":"d_policy_synthesis_01:4","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c364a7af5a69069737f6f43a0bbd282d4b421f69720bb06978073a906476c301","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/3d7dfdf59e92b95b3636201b22e32a84ab67037d79b47afca368228f6d2b1a25.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_stance_01:3 -> audio/generated/tr-TR/dialogues/3ff1e4db354eada538373987165b280243d1d86c678c24e8031dfeff30035c81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('574154f6-7158-53fc-8628-92114f59bcba', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_stance_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bac8a6eb421bfab2802bf5369598acf2bd58ac90b137641e8905ecee0ccebfaf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5147413f-d8f9-5570-a7a6-89fa6257c171', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('574154f6-7158-53fc-8628-92114f59bcba', 1), 'bac8a6eb421bfab2802bf5369598acf2bd58ac90b137641e8905ecee0ccebfaf',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/3ff1e4db354eada538373987165b280243d1d86c678c24e8031dfeff30035c81.mp3', 2925, '2026-09-13 19:25:47.485241', 'b3f99e7b58d0b3fb5c5678c39d1cd254eb02f7e636da7f19e421c789d86a0001', 'validated', '{"audio_key":"3ff1e4db354eada538373987165b280243d1d86c678c24e8031dfeff30035c81","entity_key":"d_reported_stance_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b3f99e7b58d0b3fb5c5678c39d1cd254eb02f7e636da7f19e421c789d86a0001","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/3ff1e4db354eada538373987165b280243d1d86c678c24e8031dfeff30035c81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_architecture_02:1 -> audio/generated/tr-TR/dialogues/432621477b1fcabb90cd16738fd4fcbbf285c8ebaa27162a3b614d86b4cc1969.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1883b6cc-08d3-5239-8dc9-0ef6b760407c', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_architecture_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b464ac3925960372f65f04ea6f2f34185a74d13d92c4312d0991bf94ee7de10'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f529a74e-82bf-52c2-8966-0ba1a759004e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1883b6cc-08d3-5239-8dc9-0ef6b760407c', 1), '1b464ac3925960372f65f04ea6f2f34185a74d13d92c4312d0991bf94ee7de10',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/432621477b1fcabb90cd16738fd4fcbbf285c8ebaa27162a3b614d86b4cc1969.mp3', 1933, '2026-09-13 19:25:47.853674', '816ac592ecc07782b96a2906f66be46ca7c04883805196672d06c79bf00f5b39', 'validated', '{"audio_key":"432621477b1fcabb90cd16738fd4fcbbf285c8ebaa27162a3b614d86b4cc1969","entity_key":"d_argument_architecture_02:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"816ac592ecc07782b96a2906f66be46ca7c04883805196672d06c79bf00f5b39","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/432621477b1fcabb90cd16738fd4fcbbf285c8ebaa27162a3b614d86b4cc1969.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_reframing_01:3 -> audio/generated/tr-TR/dialogues/44725b1492090bc787bb34f51008d38371b84043033fb2bd8ca614a9ea3ebb5f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ad5605df-725d-567c-ac54-0eec80805b7e', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_reframing_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '470f54cfda687510cdcb92848fb96f3b94cf0312d660931e845bb8b83b6e4a4b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('82cc5460-2127-5142-93a8-c44653895e7e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ad5605df-725d-567c-ac54-0eec80805b7e', 1), '470f54cfda687510cdcb92848fb96f3b94cf0312d660931e845bb8b83b6e4a4b',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/44725b1492090bc787bb34f51008d38371b84043033fb2bd8ca614a9ea3ebb5f.mp3', 1280, '2026-09-13 19:25:48.591926', '736b472bc44daceeeebdc43d3b7b1cd64126bbd0325bf1ff9dc66a1e95a244e2', 'validated', '{"audio_key":"44725b1492090bc787bb34f51008d38371b84043033fb2bd8ca614a9ea3ebb5f","entity_key":"d_concession_reframing_01:3","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"736b472bc44daceeeebdc43d3b7b1cd64126bbd0325bf1ff9dc66a1e95a244e2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/44725b1492090bc787bb34f51008d38371b84043033fb2bd8ca614a9ea3ebb5f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nominalization_density_02:2 -> audio/generated/tr-TR/dialogues/46420aef276505ed57ff2206dd3170a6d73e27d7cd18f7f1b3daff21a6b196c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9f314b86-63ab-5919-84ac-41063c91e38e', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nominalization_density_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd87a215a03716f439d42b7cd658403d27d88974e583756d3b4545beddcc96017'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ed335b4-5d7f-50a2-8419-e9f659d51d47', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9f314b86-63ab-5919-84ac-41063c91e38e', 1), 'd87a215a03716f439d42b7cd658403d27d88974e583756d3b4545beddcc96017',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/46420aef276505ed57ff2206dd3170a6d73e27d7cd18f7f1b3daff21a6b196c4.mp3', 4075, '2026-09-13 19:25:49.339417', '3f748dcf4bf832c496acd560f5274a9613bbb3b871645b00ab7f04795dfbd17c', 'validated', '{"audio_key":"46420aef276505ed57ff2206dd3170a6d73e27d7cd18f7f1b3daff21a6b196c4","entity_key":"d_nominalization_density_02:2","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3f748dcf4bf832c496acd560f5274a9613bbb3b871645b00ab7f04795dfbd17c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/46420aef276505ed57ff2206dd3170a6d73e27d7cd18f7f1b3daff21a6b196c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nominalization_density_01:1 -> audio/generated/tr-TR/dialogues/4aeaf2abc522b556102384679e8d7c3e19ee7c9b997f066041e5c67adc9d7289.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a522a333-d3f8-57b5-846e-07f1f5f024f5', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nominalization_density_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e85b95ecab6bf6b1d460f81c07e92bc8a2e8d9e30934a6e04503c41f27c0bac8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3033d60b-62cb-5e13-81a2-3dccff131195', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a522a333-d3f8-57b5-846e-07f1f5f024f5', 1), 'e85b95ecab6bf6b1d460f81c07e92bc8a2e8d9e30934a6e04503c41f27c0bac8',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/4aeaf2abc522b556102384679e8d7c3e19ee7c9b997f066041e5c67adc9d7289.mp3', 2533, '2026-09-13 19:25:49.829531', '15c062ef5f5485063aa44ff7ecb199c4310a510feda6842294d2af906e069d53', 'validated', '{"audio_key":"4aeaf2abc522b556102384679e8d7c3e19ee7c9b997f066041e5c67adc9d7289","entity_key":"d_nominalization_density_01:1","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"15c062ef5f5485063aa44ff7ecb199c4310a510feda6842294d2af906e069d53","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/4aeaf2abc522b556102384679e8d7c3e19ee7c9b997f066041e5c67adc9d7289.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_stance_01:4 -> audio/generated/tr-TR/dialogues/4cc67ce9645b95940c494496b2a3d367d12f3d48c3b06f1bff6adaefed4018dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4ded2dff-c366-58c1-b81b-78b929345d6b', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_stance_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3efb4e6d747a076a1916efc1b2afbf8098ea343c90d749ac13d4bc0ff599a554'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56af8aea-b6f6-5e3c-ba86-2d0b329f0f7f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4ded2dff-c366-58c1-b81b-78b929345d6b', 1), '3efb4e6d747a076a1916efc1b2afbf8098ea343c90d749ac13d4bc0ff599a554',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/4cc67ce9645b95940c494496b2a3d367d12f3d48c3b06f1bff6adaefed4018dc.mp3', 2403, '2026-09-13 19:25:50.634966', 'a3a7ff3cb607f95f185c86aabeae10016182d4c1a7a7753d21a10de91d8945ce', 'validated', '{"audio_key":"4cc67ce9645b95940c494496b2a3d367d12f3d48c3b06f1bff6adaefed4018dc","entity_key":"d_reported_stance_01:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a3a7ff3cb607f95f185c86aabeae10016182d4c1a7a7753d21a10de91d8945ce","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/4cc67ce9645b95940c494496b2a3d367d12f3d48c3b06f1bff6adaefed4018dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c1_expert_roundtable_capstone_02:3 -> audio/generated/tr-TR/dialogues/4e378d10fa2f767d2ff3765fc6a69066368aa4d6e866293ad1b700392337ea1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('43cc9e44-f137-57b5-87fc-cc83ae4be135', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c1_expert_roundtable_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b81b8af686c756aa8886c4cfa14f53e0318092adff2ec91342faea303cd9451'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('72a43b92-dc48-5313-9264-2e4dc3aec9e5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('43cc9e44-f137-57b5-87fc-cc83ae4be135', 1), '8b81b8af686c756aa8886c4cfa14f53e0318092adff2ec91342faea303cd9451',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/4e378d10fa2f767d2ff3765fc6a69066368aa4d6e866293ad1b700392337ea1d.mp3', 3369, '2026-09-13 19:25:51.222133', '457264445703162f639fd5b6606494a0b51ca70e445e21b5ed48294456718098', 'validated', '{"audio_key":"4e378d10fa2f767d2ff3765fc6a69066368aa4d6e866293ad1b700392337ea1d","entity_key":"d_c1_expert_roundtable_capstone_02:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"457264445703162f639fd5b6606494a0b51ca70e445e21b5ed48294456718098","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/4e378d10fa2f767d2ff3765fc6a69066368aa4d6e866293ad1b700392337ea1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c1_expert_roundtable_capstone_01:2 -> audio/generated/tr-TR/dialogues/54193fc1ddf72c5046a9cfffb74a7b69e3a18f419c52ac0e099bbbe5f55e5844.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('77c4e233-3342-5295-a353-ee787bdd0e6a', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c1_expert_roundtable_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd8f073fdd886ed31d1b957e3e212bbbd5bdce9915bf7b9deea9e24edce04ed9a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd9f8017-a32b-5646-a013-24131785b41b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('77c4e233-3342-5295-a353-ee787bdd0e6a', 1), 'd8f073fdd886ed31d1b957e3e212bbbd5bdce9915bf7b9deea9e24edce04ed9a',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/54193fc1ddf72c5046a9cfffb74a7b69e3a18f419c52ac0e099bbbe5f55e5844.mp3', 4493, '2026-09-13 19:25:52.144262', '7d2ed7bfa64611a6994201a0723e0ca360c95b80cc6db0452fb2fe14ace79747', 'validated', '{"audio_key":"54193fc1ddf72c5046a9cfffb74a7b69e3a18f419c52ac0e099bbbe5f55e5844","entity_key":"d_c1_expert_roundtable_capstone_01:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7d2ed7bfa64611a6994201a0723e0ca360c95b80cc6db0452fb2fe14ace79747","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/54193fc1ddf72c5046a9cfffb74a7b69e3a18f419c52ac0e099bbbe5f55e5844.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidential_calibration_02:2 -> audio/generated/tr-TR/dialogues/579dad227f5a6f94128012b921cd4e3e190d7df93af7b3c5b14e86a0ce1f0ce9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2559c543-e56b-556a-898b-94fd72f01a35', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidential_calibration_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd9d2b334d825eb19b6172a4aa1179c134e80107e029551c09afe7baded07c9eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53713616-870b-51be-87e6-5f86de9a3092', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2559c543-e56b-556a-898b-94fd72f01a35', 1), 'd9d2b334d825eb19b6172a4aa1179c134e80107e029551c09afe7baded07c9eb',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/579dad227f5a6f94128012b921cd4e3e190d7df93af7b3c5b14e86a0ce1f0ce9.mp3', 3108, '2026-09-13 19:25:52.695444', '3f6cc5b3a58bdbc8499b7babb3875bc57c9a490826d4ba633eeced542cae4fe3', 'validated', '{"audio_key":"579dad227f5a6f94128012b921cd4e3e190d7df93af7b3c5b14e86a0ce1f0ce9","entity_key":"d_evidential_calibration_02:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3f6cc5b3a58bdbc8499b7babb3875bc57c9a490826d4ba633eeced542cae4fe3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/579dad227f5a6f94128012b921cd4e3e190d7df93af7b3c5b14e86a0ce1f0ce9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_architecture_01:2 -> audio/generated/tr-TR/dialogues/59bb5ae2befc4121492e57195157342a208cd769b11aa3f17667f0e4535f7d5c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('897fe440-53a8-509c-8063-cff2dbefeaac', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_architecture_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '698512903965b6610f5483640043e3960e73e24d36174956b8bebca6ae7ea3b0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('254a4321-5019-5559-8b0a-4cb0bedd127e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('897fe440-53a8-509c-8063-cff2dbefeaac', 1), '698512903965b6610f5483640043e3960e73e24d36174956b8bebca6ae7ea3b0',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/59bb5ae2befc4121492e57195157342a208cd769b11aa3f17667f0e4535f7d5c.mp3', 5328, '2026-09-13 19:25:53.674064', '7ba5ddbf97c4e5f5d1f4a55cf1d74ccf9d15a17f2b2d5886a377e359e9b2024d', 'validated', '{"audio_key":"59bb5ae2befc4121492e57195157342a208cd769b11aa3f17667f0e4535f7d5c","entity_key":"d_argument_architecture_01:2","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7ba5ddbf97c4e5f5d1f4a55cf1d74ccf9d15a17f2b2d5886a377e359e9b2024d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/59bb5ae2befc4121492e57195157342a208cd769b11aa3f17667f0e4535f7d5c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nominalization_density_01:3 -> audio/generated/tr-TR/dialogues/5a29edc0c6d015ccfb0fe642d3014f95bc722e5e74b0ec8765aae59fcd1a723b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e7c13c24-c768-586f-80b2-8f317b54cca5', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nominalization_density_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a96181050259decb7e6d8a8eaff5162ca3932fecc64341525baa7a880b69c96e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f11b3127-d483-5b22-ae60-88867577720b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e7c13c24-c768-586f-80b2-8f317b54cca5', 1), 'a96181050259decb7e6d8a8eaff5162ca3932fecc64341525baa7a880b69c96e',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5a29edc0c6d015ccfb0fe642d3014f95bc722e5e74b0ec8765aae59fcd1a723b.mp3', 1384, '2026-09-13 19:25:53.819592', '84cf160e38fb6b1e9697aa497886cbb2ad2cdc05923e8f3dd960342fe5ad46b9', 'validated', '{"audio_key":"5a29edc0c6d015ccfb0fe642d3014f95bc722e5e74b0ec8765aae59fcd1a723b","entity_key":"d_nominalization_density_01:3","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"84cf160e38fb6b1e9697aa497886cbb2ad2cdc05923e8f3dd960342fe5ad46b9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/5a29edc0c6d015ccfb0fe642d3014f95bc722e5e74b0ec8765aae59fcd1a723b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c1_expert_roundtable_capstone_02:2 -> audio/generated/tr-TR/dialogues/5b1f206f75ad9ca6d4bdac346eb45536dba396bf069c7876fb0e8917c125c53a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('71d3c0e0-fc38-59b8-82fe-77e7c4cdb1ca', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c1_expert_roundtable_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f57d898e06bbfb09d2387b451fbba2b5ca79c730fd712c2696e1a7fa386fac9c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9b0613b-b041-55fc-9105-4f37d880d324', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('71d3c0e0-fc38-59b8-82fe-77e7c4cdb1ca', 1), 'f57d898e06bbfb09d2387b451fbba2b5ca79c730fd712c2696e1a7fa386fac9c',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/5b1f206f75ad9ca6d4bdac346eb45536dba396bf069c7876fb0e8917c125c53a.mp3', 4780, '2026-09-13 19:25:55.160502', 'c97d7e14be00e33fb821dac523a1a2c1bbfa6e77a508a28e735696f3faf7cea1', 'validated', '{"audio_key":"5b1f206f75ad9ca6d4bdac346eb45536dba396bf069c7876fb0e8917c125c53a","entity_key":"d_c1_expert_roundtable_capstone_02:2","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c97d7e14be00e33fb821dac523a1a2c1bbfa6e77a508a28e735696f3faf7cea1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/5b1f206f75ad9ca6d4bdac346eb45536dba396bf069c7876fb0e8917c125c53a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_shifting_02:3 -> audio/generated/tr-TR/dialogues/6276874f03a6dc04f1bdaf907c3f68a776b9c5e4603b0e66439469d5b99d790d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6badf68c-dfba-5338-9d4d-d9d5262017d3', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_shifting_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b76b07e1dc3106f6fb447c4c5a5daaf3fe8a68e1cbfe373e0ba126d1a41779ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('825726eb-d266-506b-a8b4-854e06b79adb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6badf68c-dfba-5338-9d4d-d9d5262017d3', 1), 'b76b07e1dc3106f6fb447c4c5a5daaf3fe8a68e1cbfe373e0ba126d1a41779ed',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6276874f03a6dc04f1bdaf907c3f68a776b9c5e4603b0e66439469d5b99d790d.mp3', 3369, '2026-09-13 19:25:55.118138', '304a2d2d5f7813e0dbf3e17bffcfb06323ec785c8b14e7e789e345c2d7d43965', 'validated', '{"audio_key":"6276874f03a6dc04f1bdaf907c3f68a776b9c5e4603b0e66439469d5b99d790d","entity_key":"d_register_shifting_02:3","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"304a2d2d5f7813e0dbf3e17bffcfb06323ec785c8b14e7e789e345c2d7d43965","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/6276874f03a6dc04f1bdaf907c3f68a776b9c5e4603b0e66439469d5b99d790d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_reframing_02:1 -> audio/generated/tr-TR/dialogues/64d46ce8fde3f54fdd96694c47fb316c94d3aa51305db1ba3ae9e440ac79fad0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b2a7f83e-2422-5942-b285-defa091aefa2', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_reframing_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '22e5c01d4444184256a7675603ca6604478e58e8d643866ec70102512da739be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8ab78d1-ac2e-5ef2-bd06-9da77fecab12', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b2a7f83e-2422-5942-b285-defa091aefa2', 1), '22e5c01d4444184256a7675603ca6604478e58e8d643866ec70102512da739be',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/64d46ce8fde3f54fdd96694c47fb316c94d3aa51305db1ba3ae9e440ac79fad0.mp3', 2507, '2026-09-13 19:25:56.402707', 'dea350a32c622c750415f2fc53d026f6315cb6fc1de63807ee3e51acddb8929d', 'validated', '{"audio_key":"64d46ce8fde3f54fdd96694c47fb316c94d3aa51305db1ba3ae9e440ac79fad0","entity_key":"d_concession_reframing_02:1","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dea350a32c622c750415f2fc53d026f6315cb6fc1de63807ee3e51acddb8929d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/64d46ce8fde3f54fdd96694c47fb316c94d3aa51305db1ba3ae9e440ac79fad0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_policy_synthesis_01:1 -> audio/generated/tr-TR/dialogues/663cd03283162a74bf2fd1c446bfc21d67d1b40c52b4765970bd3550c9fa8027.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3658e5b0-2dcf-5770-ab41-0bb6212fa193', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_policy_synthesis_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '66ae2b0f09b9ea8d8ffd28ef8ff2f992c3d6f00e3cfe7a3b1d1ff3c86dc5cba1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4722d56b-4967-550b-8549-0d570db39a06', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3658e5b0-2dcf-5770-ab41-0bb6212fa193', 1), '66ae2b0f09b9ea8d8ffd28ef8ff2f992c3d6f00e3cfe7a3b1d1ff3c86dc5cba1',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/663cd03283162a74bf2fd1c446bfc21d67d1b40c52b4765970bd3550c9fa8027.mp3', 3474, '2026-09-13 19:25:56.481021', '33cf5d6110e1c194a10ad2bdb028389c6cd26b0fece7650c0be6f347b00afe91', 'validated', '{"audio_key":"663cd03283162a74bf2fd1c446bfc21d67d1b40c52b4765970bd3550c9fa8027","entity_key":"d_policy_synthesis_01:1","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"33cf5d6110e1c194a10ad2bdb028389c6cd26b0fece7650c0be6f347b00afe91","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/663cd03283162a74bf2fd1c446bfc21d67d1b40c52b4765970bd3550c9fa8027.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_architecture_01:4 -> audio/generated/tr-TR/dialogues/689ae3fcf0e0843adb198e0ae0591764898dba4c1f22f466237fcd43000c385a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7752d8ac-8039-5587-baba-e44d41e26981', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_architecture_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f7882a93215ce14c28e8f9d4e4b97a61d170441f07d07b56c6f554390e68dff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('55e461cb-0ae5-52e8-aecf-0e9b4d3ca9b9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7752d8ac-8039-5587-baba-e44d41e26981', 1), '1f7882a93215ce14c28e8f9d4e4b97a61d170441f07d07b56c6f554390e68dff',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/689ae3fcf0e0843adb198e0ae0591764898dba4c1f22f466237fcd43000c385a.mp3', 3186, '2026-09-13 19:25:57.695954', '4267624365260b74d44fdb19e094ffbb5930cdc9c56c137ed72781cc811bad66', 'validated', '{"audio_key":"689ae3fcf0e0843adb198e0ae0591764898dba4c1f22f466237fcd43000c385a","entity_key":"d_argument_architecture_01:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4267624365260b74d44fdb19e094ffbb5930cdc9c56c137ed72781cc811bad66","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/689ae3fcf0e0843adb198e0ae0591764898dba4c1f22f466237fcd43000c385a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_shifting_01:3 -> audio/generated/tr-TR/dialogues/697c3b0cf07c1d0ebcb1813e13c688a17b4fccbbdf982e2a0ee520853d8e9fed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('542e3548-9ab5-5819-b296-72f276ced6a8', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_shifting_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e67db8ab883833be59b6855b056f0544d42018c4b983abb1f06b163b8939446f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48940706-eac4-5ec3-afe7-1e3e4c5442db', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('542e3548-9ab5-5819-b296-72f276ced6a8', 1), 'e67db8ab883833be59b6855b056f0544d42018c4b983abb1f06b163b8939446f',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/697c3b0cf07c1d0ebcb1813e13c688a17b4fccbbdf982e2a0ee520853d8e9fed.mp3', 1906, '2026-09-13 19:25:57.592336', '1d2530ee51ffbb10d28f1a65306d85cd92583bb5e619ab8f62356c6cd7a3425f', 'validated', '{"audio_key":"697c3b0cf07c1d0ebcb1813e13c688a17b4fccbbdf982e2a0ee520853d8e9fed","entity_key":"d_register_shifting_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1d2530ee51ffbb10d28f1a65306d85cd92583bb5e619ab8f62356c6cd7a3425f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/697c3b0cf07c1d0ebcb1813e13c688a17b4fccbbdf982e2a0ee520853d8e9fed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_mediation_01:2 -> audio/generated/tr-TR/dialogues/6ccc3a213f0212c746108918c79c7633262df85825a8a79e3f7db23492d35096.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('915dcaad-43d4-5719-a807-15e44600ab06', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_mediation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dfd3c78ed9d91a950c41372560dbdda1613634693d43531662c27906d1d77133'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d96c8a74-12cf-5ec6-aab0-43fe93f12cc3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('915dcaad-43d4-5719-a807-15e44600ab06', 1), 'dfd3c78ed9d91a950c41372560dbdda1613634693d43531662c27906d1d77133',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/6ccc3a213f0212c746108918c79c7633262df85825a8a79e3f7db23492d35096.mp3', 5564, '2026-09-13 19:25:59.228173', 'c3d4ed0ebb5af2ec9c07d141cc0d4e701455f413fbafa0987daf0172f19f419c', 'validated', '{"audio_key":"6ccc3a213f0212c746108918c79c7633262df85825a8a79e3f7db23492d35096","entity_key":"d_institutional_mediation_01:2","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c3d4ed0ebb5af2ec9c07d141cc0d4e701455f413fbafa0987daf0172f19f419c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/6ccc3a213f0212c746108918c79c7633262df85825a8a79e3f7db23492d35096.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nominalization_density_01:4 -> audio/generated/tr-TR/dialogues/712d32ee529a1cf37b2cf89ca8f6d2bf505aaa07848b4cf3cc5c31d72d687ad0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e80c9246-497d-5f05-8a96-44d00ebc2d69', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nominalization_density_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2800895bcbd2e8a30c7eef226f5822692685d45837071cbed3a7ec2fefda5e8f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3654f7a7-f9b3-5c8c-a430-dae2fde36b0a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e80c9246-497d-5f05-8a96-44d00ebc2d69', 1), '2800895bcbd2e8a30c7eef226f5822692685d45837071cbed3a7ec2fefda5e8f',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/712d32ee529a1cf37b2cf89ca8f6d2bf505aaa07848b4cf3cc5c31d72d687ad0.mp3', 3578, '2026-09-13 19:25:58.981638', '97094f259229043ba45d4ec774310eb01656531e41a5fd020996f35e0355eaa7', 'validated', '{"audio_key":"712d32ee529a1cf37b2cf89ca8f6d2bf505aaa07848b4cf3cc5c31d72d687ad0","entity_key":"d_nominalization_density_01:4","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"97094f259229043ba45d4ec774310eb01656531e41a5fd020996f35e0355eaa7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/712d32ee529a1cf37b2cf89ca8f6d2bf505aaa07848b4cf3cc5c31d72d687ad0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_reframing_02:4 -> audio/generated/tr-TR/dialogues/7159b0b9d97c8880546891452078daf1a7cc52aef1df1f35de99274a964888e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d769b45f-2c8d-544e-affc-39abbbedce39', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_reframing_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cef19c2c7b370839626b9c1aa1d6d9dfd713ada1ad91d62fc7822fd1b6d7f9d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d4e51bc-568f-5f60-9a92-a9940b73fed1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d769b45f-2c8d-544e-affc-39abbbedce39', 1), '7cef19c2c7b370839626b9c1aa1d6d9dfd713ada1ad91d62fc7822fd1b6d7f9d',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/7159b0b9d97c8880546891452078daf1a7cc52aef1df1f35de99274a964888e8.mp3', 2324, '2026-09-13 19:26:00.139600', '41e7d261e1d2ff0cc0e6ece4ef0aaa8d19b9d20ed56f50661dcb11224ece7ae7', 'validated', '{"audio_key":"7159b0b9d97c8880546891452078daf1a7cc52aef1df1f35de99274a964888e8","entity_key":"d_concession_reframing_02:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"41e7d261e1d2ff0cc0e6ece4ef0aaa8d19b9d20ed56f50661dcb11224ece7ae7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/7159b0b9d97c8880546891452078daf1a7cc52aef1df1f35de99274a964888e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidential_calibration_02:3 -> audio/generated/tr-TR/dialogues/78f611b4112ff6624518fdc5285232470230fcb144f3e0a22fe1ae4df1d00c2f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0b156261-a46f-5bc8-9466-4de986769454', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidential_calibration_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd45f96c6cec3e6d4a6e6b5865107e59f5fa2defbfc8f1b949707d4c7e9191760'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('911b7f43-7873-5015-a72a-1edd7d2a4662', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0b156261-a46f-5bc8-9466-4de986769454', 1), 'd45f96c6cec3e6d4a6e6b5865107e59f5fa2defbfc8f1b949707d4c7e9191760',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/78f611b4112ff6624518fdc5285232470230fcb144f3e0a22fe1ae4df1d00c2f.mp3', 1384, '2026-09-13 19:26:00.340023', '00f34545fef60e75580aefdf2555980825dd1d9fd03fb5aa21ad9a246c19dd9d', 'validated', '{"audio_key":"78f611b4112ff6624518fdc5285232470230fcb144f3e0a22fe1ae4df1d00c2f","entity_key":"d_evidential_calibration_02:3","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"00f34545fef60e75580aefdf2555980825dd1d9fd03fb5aa21ad9a246c19dd9d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/78f611b4112ff6624518fdc5285232470230fcb144f3e0a22fe1ae4df1d00c2f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_idiomatic_precision_01:4 -> audio/generated/tr-TR/dialogues/7c2fddd2a8af6863fb9a72336d137dcca8b86e1e65520598fef81faf1c3bb8d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6c0f8ab0-ca32-5b46-967f-e829189d7f2a', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_idiomatic_precision_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4ef2abcbb62f07fbd83db5d611b08a07f5945e3da53d92da0cd4b6c9f7073a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb879354-084e-5c4b-bbaf-582a65305f94', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6c0f8ab0-ca32-5b46-967f-e829189d7f2a', 1), 'a4ef2abcbb62f07fbd83db5d611b08a07f5945e3da53d92da0cd4b6c9f7073a1',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/7c2fddd2a8af6863fb9a72336d137dcca8b86e1e65520598fef81faf1c3bb8d1.mp3', 2507, '2026-09-13 19:26:01.310694', '551be20137b9bce8663d1d181f6d779015d9e57ea9fdc7f0c7c5a17cb5221f51', 'validated', '{"audio_key":"7c2fddd2a8af6863fb9a72336d137dcca8b86e1e65520598fef81faf1c3bb8d1","entity_key":"d_idiomatic_precision_01:4","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"551be20137b9bce8663d1d181f6d779015d9e57ea9fdc7f0c7c5a17cb5221f51","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/7c2fddd2a8af6863fb9a72336d137dcca8b86e1e65520598fef81faf1c3bb8d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_reframing_02:3 -> audio/generated/tr-TR/dialogues/89d6c502e087ee9a586e6fa88a9d59ebe062b234a4fa6bb0a23324cf413dd2a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1cda0bbd-0a19-5725-bcfd-807b075b5407', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_reframing_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '91648bf08586d6f81fc7184e60428183d98ac33a1049fe870ff87640d13e53ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1cd461d1-b334-514c-a7ad-b58d048af487', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1cda0bbd-0a19-5725-bcfd-807b075b5407', 1), '91648bf08586d6f81fc7184e60428183d98ac33a1049fe870ff87640d13e53ce',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/89d6c502e087ee9a586e6fa88a9d59ebe062b234a4fa6bb0a23324cf413dd2a2.mp3', 2821, '2026-09-13 19:26:01.595470', 'b2555dbc7a5c1c587580ab6993aa1e7f1adb814956e79913f4f4506ac84b4918', 'validated', '{"audio_key":"89d6c502e087ee9a586e6fa88a9d59ebe062b234a4fa6bb0a23324cf413dd2a2","entity_key":"d_concession_reframing_02:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b2555dbc7a5c1c587580ab6993aa1e7f1adb814956e79913f4f4506ac84b4918","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/89d6c502e087ee9a586e6fa88a9d59ebe062b234a4fa6bb0a23324cf413dd2a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_architecture_02:4 -> audio/generated/tr-TR/dialogues/8a831dffd2b9ef8f2b3a221dd97d1705a6cd4c8db7c75ee2c286d7f3a94ac91a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a375213e-eedd-5776-9f2e-69d1998bcd91', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_architecture_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f02f2a61400a3fc178a43377c1d5672a226f03127bdf391e6a7c22164d7f4e7d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('24d139fa-092c-5cd9-9e6b-dcea92bf7bd6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a375213e-eedd-5776-9f2e-69d1998bcd91', 1), 'f02f2a61400a3fc178a43377c1d5672a226f03127bdf391e6a7c22164d7f4e7d',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/8a831dffd2b9ef8f2b3a221dd97d1705a6cd4c8db7c75ee2c286d7f3a94ac91a.mp3', 4623, '2026-09-13 19:26:02.783006', 'd98d659f54b23fbc44bb7e57c943d3f561f8ddf4b76e697625eb0acf30767a41', 'validated', '{"audio_key":"8a831dffd2b9ef8f2b3a221dd97d1705a6cd4c8db7c75ee2c286d7f3a94ac91a","entity_key":"d_argument_architecture_02:4","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"d98d659f54b23fbc44bb7e57c943d3f561f8ddf4b76e697625eb0acf30767a41","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/8a831dffd2b9ef8f2b3a221dd97d1705a6cd4c8db7c75ee2c286d7f3a94ac91a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_mediation_01:1 -> audio/generated/tr-TR/dialogues/8ad9b602a9c953290c063a3511e8d16164205643d751775366bdd576562767ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0f284c9d-0057-59e3-8c58-550bb8251e58', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_mediation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ea3e4606729f8ba9b9032be176aa861959adab1c106176a486b88aef750d506'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc858b7e-646f-5b7a-b22c-b00c0116373c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0f284c9d-0057-59e3-8c58-550bb8251e58', 1), '7ea3e4606729f8ba9b9032be176aa861959adab1c106176a486b88aef750d506',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/8ad9b602a9c953290c063a3511e8d16164205643d751775366bdd576562767ae.mp3', 5433, '2026-09-13 19:26:03.155307', 'd118a7451a83bdf37aff2ce3126d55b35e9c543a1f66c9f347b6895e0ad42dac', 'validated', '{"audio_key":"8ad9b602a9c953290c063a3511e8d16164205643d751775366bdd576562767ae","entity_key":"d_institutional_mediation_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d118a7451a83bdf37aff2ce3126d55b35e9c543a1f66c9f347b6895e0ad42dac","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/8ad9b602a9c953290c063a3511e8d16164205643d751775366bdd576562767ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_stance_02:2 -> audio/generated/tr-TR/dialogues/8de7433d0c11a2c4690cdf7ee1f223fc82663aaa871d2857b759a131e8c01320.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7016f2ce-97f9-589b-b680-25e48f1318d0', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_stance_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4caa4d25a2640a9c589d4fb6a3adb36a8814d47f6b1b12dfb135f7e2a6db3fb0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da648716-7cf5-50c1-a55c-36150a0992e8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7016f2ce-97f9-589b-b680-25e48f1318d0', 1), '4caa4d25a2640a9c589d4fb6a3adb36a8814d47f6b1b12dfb135f7e2a6db3fb0',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/8de7433d0c11a2c4690cdf7ee1f223fc82663aaa871d2857b759a131e8c01320.mp3', 4310, '2026-09-13 19:26:04.168022', 'ace01e025620a7167d61e10ab8e4b2d10abf504f52209ac1ca088eded6d88f5f', 'validated', '{"audio_key":"8de7433d0c11a2c4690cdf7ee1f223fc82663aaa871d2857b759a131e8c01320","entity_key":"d_reported_stance_02:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ace01e025620a7167d61e10ab8e4b2d10abf504f52209ac1ca088eded6d88f5f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/8de7433d0c11a2c4690cdf7ee1f223fc82663aaa871d2857b759a131e8c01320.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_reframing_02:2 -> audio/generated/tr-TR/dialogues/8f7cdae3038c23c92f0b4aa6895b34ade018832a1324aa9cf73fe6e3ba26127c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cfd6386a-39f5-5158-9941-474aaa7041c1', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_reframing_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c37c6d1063f0633399ef1c6f2567d07de9f41fdea5f4d6db11f5d4da0f6c4406'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e39277dc-848e-562c-b314-119446ee242e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cfd6386a-39f5-5158-9941-474aaa7041c1', 1), 'c37c6d1063f0633399ef1c6f2567d07de9f41fdea5f4d6db11f5d4da0f6c4406',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/8f7cdae3038c23c92f0b4aa6895b34ade018832a1324aa9cf73fe6e3ba26127c.mp3', 3004, '2026-09-13 19:26:04.527773', 'a60c9d20aa605c3a496b6affcba1fd4e6383a7a1415848b7b19b590fae3ad03f', 'validated', '{"audio_key":"8f7cdae3038c23c92f0b4aa6895b34ade018832a1324aa9cf73fe6e3ba26127c","entity_key":"d_concession_reframing_02:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a60c9d20aa605c3a496b6affcba1fd4e6383a7a1415848b7b19b590fae3ad03f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/8f7cdae3038c23c92f0b4aa6895b34ade018832a1324aa9cf73fe6e3ba26127c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_mediation_01:3 -> audio/generated/tr-TR/dialogues/947b3df54dce16bdf4e02478062728250bc6fe27433d87cce2919a55f0ebda1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d8a1aa8a-4ac1-5bb1-9da6-41b51143a20b', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_mediation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd2f1e7e8ba6ff8a6af7342aad2019174f7eeaa34fd0c42c6561601e124ff95bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a636e466-aa07-594b-9721-9332ad16c4dc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d8a1aa8a-4ac1-5bb1-9da6-41b51143a20b', 1), 'd2f1e7e8ba6ff8a6af7342aad2019174f7eeaa34fd0c42c6561601e124ff95bc',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/947b3df54dce16bdf4e02478062728250bc6fe27433d87cce2919a55f0ebda1d.mp3', 1697, '2026-09-13 19:26:05.266174', 'dd88a35e4e0d00dad2678ff4e288dca6c8a9c04a59b1e9b4130038cb5c09a25a', 'validated', '{"audio_key":"947b3df54dce16bdf4e02478062728250bc6fe27433d87cce2919a55f0ebda1d","entity_key":"d_institutional_mediation_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dd88a35e4e0d00dad2678ff4e288dca6c8a9c04a59b1e9b4130038cb5c09a25a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/947b3df54dce16bdf4e02478062728250bc6fe27433d87cce2919a55f0ebda1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_reframing_01:4 -> audio/generated/tr-TR/dialogues/953ca38ee9e68a569016ebc3c9d228c0df64831ffbb5bf669286bb49e39b676f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3bf652b5-9504-5a7e-9d0a-2d720c45b45d', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_reframing_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff3105d53835b0651d94fb0845049c52c5489b84cce039e349fa39ad3c4e86e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd49daad-729e-5967-abac-1b7d9d04cd16', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3bf652b5-9504-5a7e-9d0a-2d720c45b45d', 1), 'ff3105d53835b0651d94fb0845049c52c5489b84cce039e349fa39ad3c4e86e4',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/953ca38ee9e68a569016ebc3c9d228c0df64831ffbb5bf669286bb49e39b676f.mp3', 5093, '2026-09-13 19:26:06.079893', 'f53967add8a3a6f8d20e5c5641e4c5a54cf46d09c0acc3f280303f2ad7e1c14b', 'validated', '{"audio_key":"953ca38ee9e68a569016ebc3c9d228c0df64831ffbb5bf669286bb49e39b676f","entity_key":"d_concession_reframing_01:4","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f53967add8a3a6f8d20e5c5641e4c5a54cf46d09c0acc3f280303f2ad7e1c14b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/953ca38ee9e68a569016ebc3c9d228c0df64831ffbb5bf669286bb49e39b676f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_stance_02:4 -> audio/generated/tr-TR/dialogues/97b1b9fda56f9c64df589d92ea28fcf46ca64e4ba53aac1cc1473a6c92e869d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c715b576-d708-5300-b7b9-a457815f86ef', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_stance_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8469002f49a7b60b0e9f5fb87b48c62cf5e2274f2601ed125af420d7b33944d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('03f80f23-807c-5b0c-abb0-a74199907c7b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c715b576-d708-5300-b7b9-a457815f86ef', 1), 'c8469002f49a7b60b0e9f5fb87b48c62cf5e2274f2601ed125af420d7b33944d',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/97b1b9fda56f9c64df589d92ea28fcf46ca64e4ba53aac1cc1473a6c92e869d5.mp3', 3056, '2026-09-13 19:26:06.562433', 'a557ccb9b4ffd4cf280407ad10f7111572e4ad59cdb3e0dad113651490950886', 'validated', '{"audio_key":"97b1b9fda56f9c64df589d92ea28fcf46ca64e4ba53aac1cc1473a6c92e869d5","entity_key":"d_reported_stance_02:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a557ccb9b4ffd4cf280407ad10f7111572e4ad59cdb3e0dad113651490950886","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/97b1b9fda56f9c64df589d92ea28fcf46ca64e4ba53aac1cc1473a6c92e869d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidential_calibration_01:2 -> audio/generated/tr-TR/dialogues/9bb9b8c278b53c51b0d52b12274bd4e55f2e386a93591d5d36e8e0dace4f27cf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e2f83799-f2d8-5ba2-8d9a-513b0f34a690', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidential_calibration_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb35ebf3beaf27bf47a8f3adea1d3c9abb962ed8148c9089476c5f2f6ffd920f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78367c51-a2d7-5757-bf5e-7974cffacbc6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e2f83799-f2d8-5ba2-8d9a-513b0f34a690', 1), 'fb35ebf3beaf27bf47a8f3adea1d3c9abb962ed8148c9089476c5f2f6ffd920f',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/9bb9b8c278b53c51b0d52b12274bd4e55f2e386a93591d5d36e8e0dace4f27cf.mp3', 3578, '2026-09-13 19:26:07.412901', 'f9718615e883327962674fcbf5298a5e8e3ceb87da36f2b8197827f41802a831', 'validated', '{"audio_key":"9bb9b8c278b53c51b0d52b12274bd4e55f2e386a93591d5d36e8e0dace4f27cf","entity_key":"d_evidential_calibration_01:2","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f9718615e883327962674fcbf5298a5e8e3ceb87da36f2b8197827f41802a831","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/9bb9b8c278b53c51b0d52b12274bd4e55f2e386a93591d5d36e8e0dace4f27cf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c1_expert_roundtable_capstone_01:4 -> audio/generated/tr-TR/dialogues/9d758adc3066668b7fb053e519c3a489ac7efda99509d97690e4c15df42b6e53.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4e4de151-a266-5515-9527-3d3eb17e7182', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c1_expert_roundtable_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e0bb9e97cedac338ce14a2bf7e313cdc5aa3c146b6b6d651b4f48655c3032ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4b32c1ff-e330-5b39-8e1e-f0101899564d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4e4de151-a266-5515-9527-3d3eb17e7182', 1), '1e0bb9e97cedac338ce14a2bf7e313cdc5aa3c146b6b6d651b4f48655c3032ac',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/9d758adc3066668b7fb053e519c3a489ac7efda99509d97690e4c15df42b6e53.mp3', 3604, '2026-09-13 19:26:08.243046', 'b453e9770d5549686429b1679fba86e3adeb217b2c61c26d9181896ce5f37473', 'validated', '{"audio_key":"9d758adc3066668b7fb053e519c3a489ac7efda99509d97690e4c15df42b6e53","entity_key":"d_c1_expert_roundtable_capstone_01:4","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b453e9770d5549686429b1679fba86e3adeb217b2c61c26d9181896ce5f37473","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/9d758adc3066668b7fb053e519c3a489ac7efda99509d97690e4c15df42b6e53.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidential_calibration_01:4 -> audio/generated/tr-TR/dialogues/a30070996a1ef5ce25d80325e851f109798d38df1ac3abb60ce5407d13fdd772.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6f3cde41-558c-5519-85bd-37ea6c0c298a', 1)
  AND voice_key = 'character:mert:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidential_calibration_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '59afaee611df468341ac0177d6b4022d4e96f1a2f7a8b2092478208895b2a5c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae2bda81-ce25-52e6-815c-6f50b1e460af', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6f3cde41-558c-5519-85bd-37ea6c0c298a', 1), '59afaee611df468341ac0177d6b4022d4e96f1a2f7a8b2092478208895b2a5c9',
  'character:mert:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a30070996a1ef5ce25d80325e851f109798d38df1ac3abb60ce5407d13fdd772.mp3', 2586, '2026-09-13 19:26:08.601088', '7b7748372bb72a2ec0d86a8283daa4d88942dc2a686b03242e7ca7157f42d405', 'validated', '{"audio_key":"a30070996a1ef5ce25d80325e851f109798d38df1ac3abb60ce5407d13fdd772","entity_key":"d_evidential_calibration_01:4","voice_id":"jGqlr3dGaFN0IfJZa3zS","voice_name":"Talha - Friendly, Energetic and Neutral","voice_labels":{"gender":"male","accent":"central","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7b7748372bb72a2ec0d86a8283daa4d88942dc2a686b03242e7ca7157f42d405","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/a30070996a1ef5ce25d80325e851f109798d38df1ac3abb60ce5407d13fdd772.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_shifting_01:2 -> audio/generated/tr-TR/dialogues/a959123e17a4ab2d8a7f3b728bd5f4236b7849e357b7f49e9d690888b52ea39a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('134c0b73-ba97-5b7c-a0b9-5a0de4ed7194', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_shifting_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b865278275f4c09966639b4e00043a6ed6648e69615aa01880ea71421bd7bd42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e921832-ed5e-56fb-adc7-dedf1448ee1a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('134c0b73-ba97-5b7c-a0b9-5a0de4ed7194', 1), 'b865278275f4c09966639b4e00043a6ed6648e69615aa01880ea71421bd7bd42',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/a959123e17a4ab2d8a7f3b728bd5f4236b7849e357b7f49e9d690888b52ea39a.mp3', 4623, '2026-09-13 19:26:09.731397', '96f03a0c5a01df5eb5a97966949394ae6d477ef1fb3e9505465b6bf35dfa111c', 'validated', '{"audio_key":"a959123e17a4ab2d8a7f3b728bd5f4236b7849e357b7f49e9d690888b52ea39a","entity_key":"d_register_shifting_01:2","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"96f03a0c5a01df5eb5a97966949394ae6d477ef1fb3e9505465b6bf35dfa111c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/a959123e17a4ab2d8a7f3b728bd5f4236b7849e357b7f49e9d690888b52ea39a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_architecture_01:1 -> audio/generated/tr-TR/dialogues/aac7e64bef49822ada1099ef1545a46b0c3b564ad3e56fcecf29ad5364dea8d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('152edcd3-6178-5a54-9c2e-29816c660a95', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_architecture_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e052be22691f3a52a7823ed1a911d9ece94ba28dff48666a865752cf47bed103'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9880a90c-819b-52c7-8463-a9aa4feab1bb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('152edcd3-6178-5a54-9c2e-29816c660a95', 1), 'e052be22691f3a52a7823ed1a911d9ece94ba28dff48666a865752cf47bed103',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/aac7e64bef49822ada1099ef1545a46b0c3b564ad3e56fcecf29ad5364dea8d5.mp3', 3291, '2026-09-13 19:26:09.950025', '28e555a73f33ed360de2b3a1cc079e154d05d0288ba1fa7887122ea8a25c9a7e', 'validated', '{"audio_key":"aac7e64bef49822ada1099ef1545a46b0c3b564ad3e56fcecf29ad5364dea8d5","entity_key":"d_argument_architecture_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"28e555a73f33ed360de2b3a1cc079e154d05d0288ba1fa7887122ea8a25c9a7e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/aac7e64bef49822ada1099ef1545a46b0c3b564ad3e56fcecf29ad5364dea8d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_policy_synthesis_02:1 -> audio/generated/tr-TR/dialogues/b3835d7111d8352aeadbbd4148abcc4b7a2742721db874aa12aafa6c9bf418a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2a476410-a1f1-5e06-b4b9-a7ad7e391205', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_policy_synthesis_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f289874b4e0f227ad34d5e1b91fcf60f384e712bf9c0b32d0afe355098fde825'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc86a3ef-e382-5c25-abd4-975c779e5d57', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2a476410-a1f1-5e06-b4b9-a7ad7e391205', 1), 'f289874b4e0f227ad34d5e1b91fcf60f384e712bf9c0b32d0afe355098fde825',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b3835d7111d8352aeadbbd4148abcc4b7a2742721db874aa12aafa6c9bf418a3.mp3', 2351, '2026-09-13 19:26:10.932432', '00511d7a8ed7d5d557a3c0974fa3ab2cab463369612f3e4cd9166213487104bd', 'validated', '{"audio_key":"b3835d7111d8352aeadbbd4148abcc4b7a2742721db874aa12aafa6c9bf418a3","entity_key":"d_policy_synthesis_02:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"00511d7a8ed7d5d557a3c0974fa3ab2cab463369612f3e4cd9166213487104bd","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/b3835d7111d8352aeadbbd4148abcc4b7a2742721db874aa12aafa6c9bf418a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_architecture_02:2 -> audio/generated/tr-TR/dialogues/b8c87c99daeab6e1c1e6f8f33dbd09554d3405a223a3fd46970ab87012dc11e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('273b28fb-479f-5d3c-a019-ea28f25f78ed', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_architecture_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1979baa1780795a685fa772d45d7c03ce6092b943ba6511174ab8822431d342'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8da7ab22-423f-58dc-b1e8-da5a600efb3a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('273b28fb-479f-5d3c-a019-ea28f25f78ed', 1), 'b1979baa1780795a685fa772d45d7c03ce6092b943ba6511174ab8822431d342',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/b8c87c99daeab6e1c1e6f8f33dbd09554d3405a223a3fd46970ab87012dc11e5.mp3', 3186, '2026-09-13 19:26:11.192527', 'fb397d558c5971906301d1bf07ddb735de92934d9942a7289827224cd43c8ac9', 'validated', '{"audio_key":"b8c87c99daeab6e1c1e6f8f33dbd09554d3405a223a3fd46970ab87012dc11e5","entity_key":"d_argument_architecture_02:2","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"fb397d558c5971906301d1bf07ddb735de92934d9942a7289827224cd43c8ac9","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/b8c87c99daeab6e1c1e6f8f33dbd09554d3405a223a3fd46970ab87012dc11e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_architecture_02:3 -> audio/generated/tr-TR/dialogues/baaa65c67c2d42ad903c628ebed683e1cefaf0ca8ca91c0f1d2bf8527744dc65.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('971e482d-3769-5874-b699-144f103a4120', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_architecture_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4106a192b08196bd6fc206d92aaebfe1e0ca0def90cd616633164f58ac11992b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9211fc91-09f9-59d7-851f-7ac271df7294', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('971e482d-3769-5874-b699-144f103a4120', 1), '4106a192b08196bd6fc206d92aaebfe1e0ca0def90cd616633164f58ac11992b',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/baaa65c67c2d42ad903c628ebed683e1cefaf0ca8ca91c0f1d2bf8527744dc65.mp3', 1619, '2026-09-13 19:26:12.023719', '4f221eaeed452df9d7f1bb5d3aa81e5f41c88dc598959b8cd69d1335fec8ed16', 'validated', '{"audio_key":"baaa65c67c2d42ad903c628ebed683e1cefaf0ca8ca91c0f1d2bf8527744dc65","entity_key":"d_argument_architecture_02:3","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4f221eaeed452df9d7f1bb5d3aa81e5f41c88dc598959b8cd69d1335fec8ed16","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/baaa65c67c2d42ad903c628ebed683e1cefaf0ca8ca91c0f1d2bf8527744dc65.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidential_calibration_02:1 -> audio/generated/tr-TR/dialogues/bc7b4963c7f7396b6cc99cf33867fbf550a69473702fbf93c7820eaae2322628.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('01d28307-9897-5994-a559-62ea52199672', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidential_calibration_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b83868cd3a4b852b4eb8ba0c83d75eb7bcbd2d8f8270e5fc50ee645b9d4ba8f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48787361-2d72-5f72-9c94-c624cc547cb4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('01d28307-9897-5994-a559-62ea52199672', 1), 'b83868cd3a4b852b4eb8ba0c83d75eb7bcbd2d8f8270e5fc50ee645b9d4ba8f3',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/bc7b4963c7f7396b6cc99cf33867fbf550a69473702fbf93c7820eaae2322628.mp3', 2586, '2026-09-13 19:26:12.456553', '6c87c6fca5ce8d33e7330d7b0ffb601f1c3c8c20a015f628e3482ff8870c5c53', 'validated', '{"audio_key":"bc7b4963c7f7396b6cc99cf33867fbf550a69473702fbf93c7820eaae2322628","entity_key":"d_evidential_calibration_02:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6c87c6fca5ce8d33e7330d7b0ffb601f1c3c8c20a015f628e3482ff8870c5c53","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/bc7b4963c7f7396b6cc99cf33867fbf550a69473702fbf93c7820eaae2322628.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_mediation_02:2 -> audio/generated/tr-TR/dialogues/cb7229815d302dd02aed03e40a2d91bd5dde8e9e6db8aaafdf7ba0e5721538d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6f5ee220-f71d-52f8-b0a9-480091af28e8', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_mediation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3cf6b709e352e40b990c8d5c340c70c9b800d8caf589e13b9f97181b766be413'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f058c6ba-8efb-53df-9225-61dad530ba1a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6f5ee220-f71d-52f8-b0a9-480091af28e8', 1), '3cf6b709e352e40b990c8d5c340c70c9b800d8caf589e13b9f97181b766be413',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/cb7229815d302dd02aed03e40a2d91bd5dde8e9e6db8aaafdf7ba0e5721538d1.mp3', 3787, '2026-09-13 19:26:13.373783', 'b70a4c1377b4859998ebf66d7e3bbb4f71eca8eda23059e9cfea8022bff85183', 'validated', '{"audio_key":"cb7229815d302dd02aed03e40a2d91bd5dde8e9e6db8aaafdf7ba0e5721538d1","entity_key":"d_institutional_mediation_02:2","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b70a4c1377b4859998ebf66d7e3bbb4f71eca8eda23059e9cfea8022bff85183","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/cb7229815d302dd02aed03e40a2d91bd5dde8e9e6db8aaafdf7ba0e5721538d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_policy_synthesis_02:3 -> audio/generated/tr-TR/dialogues/cbc142df4b6c001740725fdc583351d879bcf89314cbe08962acdc046fa947b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c85d5bc3-4ce2-50b1-bd3f-6435af184afe', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_policy_synthesis_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cf9801ca30726a3e4b544133a42f2c075b3451d129d74b1355f8ed12a2aaaa84'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab1485cc-0c6d-51e5-afaf-1a59a2942cd6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c85d5bc3-4ce2-50b1-bd3f-6435af184afe', 1), 'cf9801ca30726a3e4b544133a42f2c075b3451d129d74b1355f8ed12a2aaaa84',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/cbc142df4b6c001740725fdc583351d879bcf89314cbe08962acdc046fa947b0.mp3', 3004, '2026-09-13 19:26:13.733047', '0b81da7a19ce331b36b9c28806b4fcd6cf87f0c0552fd7a22b3ffb8e55ca5688', 'validated', '{"audio_key":"cbc142df4b6c001740725fdc583351d879bcf89314cbe08962acdc046fa947b0","entity_key":"d_policy_synthesis_02:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b81da7a19ce331b36b9c28806b4fcd6cf87f0c0552fd7a22b3ffb8e55ca5688","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/cbc142df4b6c001740725fdc583351d879bcf89314cbe08962acdc046fa947b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_stance_01:1 -> audio/generated/tr-TR/dialogues/ce2b21df904ab12815724344e8860c15de189c9010bbf20ea2cc05dabdae6c02.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e6146dcc-ce6d-58c1-9e54-e33c82d66752', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_stance_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0644bb7ca8a9d13e6080f0dbb8a512b25589b73122defe74a9110145f3f9c05'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96baf837-7254-5661-8300-80e06a4d1cbf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e6146dcc-ce6d-58c1-9e54-e33c82d66752', 1), 'a0644bb7ca8a9d13e6080f0dbb8a512b25589b73122defe74a9110145f3f9c05',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ce2b21df904ab12815724344e8860c15de189c9010bbf20ea2cc05dabdae6c02.mp3', 3526, '2026-09-13 19:26:14.698550', '5683dd145390489e9d279b4615a78b72df641861f7f143cf2f356324b0b10c12', 'validated', '{"audio_key":"ce2b21df904ab12815724344e8860c15de189c9010bbf20ea2cc05dabdae6c02","entity_key":"d_reported_stance_01:1","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5683dd145390489e9d279b4615a78b72df641861f7f143cf2f356324b0b10c12","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/ce2b21df904ab12815724344e8860c15de189c9010bbf20ea2cc05dabdae6c02.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_idiomatic_precision_02:3 -> audio/generated/tr-TR/dialogues/d4a971258ebf6779d3c30091bf9e88da10f4e2c657c7062e7859b69d219c6b63.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2c2c2b41-a49b-5686-8f20-c07058c24851', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_idiomatic_precision_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2a19c372e961b6a2c8d14d79d09059fed34a69af041caa77d412a649dee39dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce0af49a-bf62-5ae2-83aa-d9c7dd538e9d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2c2c2b41-a49b-5686-8f20-c07058c24851', 1), 'b2a19c372e961b6a2c8d14d79d09059fed34a69af041caa77d412a649dee39dd',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/d4a971258ebf6779d3c30091bf9e88da10f4e2c657c7062e7859b69d219c6b63.mp3', 2455, '2026-09-13 19:26:14.913677', 'f3a08c40f0d0bc8d7de0c5a380bfba7237accfaccbf63e6bcfe68aaf3e1f43b6', 'validated', '{"audio_key":"d4a971258ebf6779d3c30091bf9e88da10f4e2c657c7062e7859b69d219c6b63","entity_key":"d_idiomatic_precision_02:3","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f3a08c40f0d0bc8d7de0c5a380bfba7237accfaccbf63e6bcfe68aaf3e1f43b6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/d4a971258ebf6779d3c30091bf9e88da10f4e2c657c7062e7859b69d219c6b63.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c1_expert_roundtable_capstone_01:3 -> audio/generated/tr-TR/dialogues/d603281c38b8a7f95c821ed721664fd7de3a98db28a1b52446506f8d9a855683.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('419a8c73-45a2-59cf-9e13-f82c56f2fb94', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c1_expert_roundtable_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '904ec1c85ef211577472abd26a1e6bf9b0be2ade1adc4e176117f13e394690c8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50c913e0-8e73-50fa-8596-4918e6d9a5ef', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('419a8c73-45a2-59cf-9e13-f82c56f2fb94', 1), '904ec1c85ef211577472abd26a1e6bf9b0be2ade1adc4e176117f13e394690c8',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/d603281c38b8a7f95c821ed721664fd7de3a98db28a1b52446506f8d9a855683.mp3', 3239, '2026-09-13 19:26:16.009178', '0622d7498e1d8535b6e765cad1a70380fb893abcdd034760e8e0655ddd255873', 'validated', '{"audio_key":"d603281c38b8a7f95c821ed721664fd7de3a98db28a1b52446506f8d9a855683","entity_key":"d_c1_expert_roundtable_capstone_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0622d7498e1d8535b6e765cad1a70380fb893abcdd034760e8e0655ddd255873","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/d603281c38b8a7f95c821ed721664fd7de3a98db28a1b52446506f8d9a855683.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_idiomatic_precision_01:2 -> audio/generated/tr-TR/dialogues/dcf042d10b1f382ca7beb6a0fe7c1d06d3198e366aa7933e3348696000bc4a78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a5c34cc0-906e-55d2-99ee-9dbd9d512ea0', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_idiomatic_precision_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ef10e835c1606e9d6625f2b004373af96fc70de4e90a923a8952647082ae9a11'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b735e461-0970-53f7-9358-c662c6a493b1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a5c34cc0-906e-55d2-99ee-9dbd9d512ea0', 1), 'ef10e835c1606e9d6625f2b004373af96fc70de4e90a923a8952647082ae9a11',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/dcf042d10b1f382ca7beb6a0fe7c1d06d3198e366aa7933e3348696000bc4a78.mp3', 3761, '2026-09-13 19:26:16.278948', '17a0f16e9a8cd1c29009700d39d0c15da3fad9fe8ea1e08eaa0f4fee235ed94f', 'validated', '{"audio_key":"dcf042d10b1f382ca7beb6a0fe7c1d06d3198e366aa7933e3348696000bc4a78","entity_key":"d_idiomatic_precision_01:2","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"17a0f16e9a8cd1c29009700d39d0c15da3fad9fe8ea1e08eaa0f4fee235ed94f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/dcf042d10b1f382ca7beb6a0fe7c1d06d3198e366aa7933e3348696000bc4a78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_shifting_02:2 -> audio/generated/tr-TR/dialogues/dfaed539b2ef18bd2117b5aafa78cbad3145c3b81ab46f2d407854c707394845.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d79a9a71-cacd-5a27-84aa-2e3035db5b8e', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_shifting_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '00a0503606fbd633737024730abf7c3548518789f28d682a5c9ae139ad9bf2a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1950397-79ad-533e-a44d-146141fbcb33', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d79a9a71-cacd-5a27-84aa-2e3035db5b8e', 1), '00a0503606fbd633737024730abf7c3548518789f28d682a5c9ae139ad9bf2a6',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/dfaed539b2ef18bd2117b5aafa78cbad3145c3b81ab46f2d407854c707394845.mp3', 4623, '2026-09-13 19:26:17.504523', 'b823bdd2997be9ca2f9129bd132d1a5a7473f43abac8877cc82c8acb6023d586', 'validated', '{"audio_key":"dfaed539b2ef18bd2117b5aafa78cbad3145c3b81ab46f2d407854c707394845","entity_key":"d_register_shifting_02:2","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b823bdd2997be9ca2f9129bd132d1a5a7473f43abac8877cc82c8acb6023d586","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/dfaed539b2ef18bd2117b5aafa78cbad3145c3b81ab46f2d407854c707394845.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_architecture_01:3 -> audio/generated/tr-TR/dialogues/e10b6f559a75fec3dcad81e49f5f23f1d5e912db55dd65ed8133472de84bd273.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9472268c-8d71-5b4c-8a85-41b4bed04eff', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_architecture_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6554191a96f6013b18695309083a0aa31707fa7f6431682258e80b3e96658ceb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47f35a3b-1048-5ca9-9009-8ad055e32e80', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9472268c-8d71-5b4c-8a85-41b4bed04eff', 1), '6554191a96f6013b18695309083a0aa31707fa7f6431682258e80b3e96658ceb',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/e10b6f559a75fec3dcad81e49f5f23f1d5e912db55dd65ed8133472de84bd273.mp3', 1854, '2026-09-13 19:26:17.455634', 'cd1e2341e79fa4442ccfcc14418cd79a219fca742e60b6905de5c79fc824a382', 'validated', '{"audio_key":"e10b6f559a75fec3dcad81e49f5f23f1d5e912db55dd65ed8133472de84bd273","entity_key":"d_argument_architecture_01:3","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cd1e2341e79fa4442ccfcc14418cd79a219fca742e60b6905de5c79fc824a382","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/e10b6f559a75fec3dcad81e49f5f23f1d5e912db55dd65ed8133472de84bd273.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_nominalization_density_02:1 -> audio/generated/tr-TR/dialogues/e9ae4166c45619a702bbc2ee659aeb033992b591b7480395f355980a5cfe1306.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('824b7908-af86-54d9-ae73-eab7b3e950d0', 1)
  AND voice_key = 'character:emre:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_nominalization_density_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b203f5260d39c2cc7f9056d34f63774b13e9f83603e7767175edf466c053753'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6956199c-ac63-51ba-a77b-d8f404d84907', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('824b7908-af86-54d9-ae73-eab7b3e950d0', 1), '3b203f5260d39c2cc7f9056d34f63774b13e9f83603e7767175edf466c053753',
  'character:emre:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/e9ae4166c45619a702bbc2ee659aeb033992b591b7480395f355980a5cfe1306.mp3', 3840, '2026-09-13 19:26:18.840031', '30f9cf291a0beef8a6a45e9cbc707ac364ae9a4941c2ef16fc815223af22f02a', 'validated', '{"audio_key":"e9ae4166c45619a702bbc2ee659aeb033992b591b7480395f355980a5cfe1306","entity_key":"d_nominalization_density_02:1","voice_id":"Md4RAnfKt9kVIbvqUxly","voice_name":"Cihan - Warm, Natural and Friendly","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"high_quality","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"30f9cf291a0beef8a6a45e9cbc707ac364ae9a4941c2ef16fc815223af22f02a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/e9ae4166c45619a702bbc2ee659aeb033992b591b7480395f355980a5cfe1306.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_policy_synthesis_01:2 -> audio/generated/tr-TR/dialogues/ebee1971bd8da5468d77f7ebb64b599f27017835271e3d2746326b764e51c554.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6251de6c-3359-50e1-a4ea-3bcd88f6d85c', 1)
  AND voice_key = 'character:zeynep:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_policy_synthesis_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0ef5b926e2b6688b8d792a2e80ee04f83d2eb73fb46d77a86fde9051070714a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('04e0be68-1e4e-5d48-9787-ed8c497afed5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6251de6c-3359-50e1-a4ea-3bcd88f6d85c', 1), 'f0ef5b926e2b6688b8d792a2e80ee04f83d2eb73fb46d77a86fde9051070714a',
  'character:zeynep:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ebee1971bd8da5468d77f7ebb64b599f27017835271e3d2746326b764e51c554.mp3', 4780, '2026-09-13 19:26:18.938921', '03122717beb6fd7c22cd5ef3a2d9653aa832c20ff6347847ac6ca556fdc6e9b8', 'validated', '{"audio_key":"ebee1971bd8da5468d77f7ebb64b599f27017835271e3d2746326b764e51c554","entity_key":"d_policy_synthesis_01:2","voice_id":"4XsbOSxQHw4NUVaEeo2o","voice_name":"Elif - Calm & Natural","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"03122717beb6fd7c22cd5ef3a2d9653aa832c20ff6347847ac6ca556fdc6e9b8","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/ebee1971bd8da5468d77f7ebb64b599f27017835271e3d2746326b764e51c554.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidential_calibration_02:4 -> audio/generated/tr-TR/dialogues/ed7d9e4927648b06ebc2c8253a4d6badabbb783b63eb6e2a018e885fe7031d42.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2b16e276-9de6-5fed-8a19-fdb93e5e4684', 1)
  AND voice_key = 'character:kaan:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidential_calibration_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b45f6c0f3f716f12da2cd8c2433ba094af3edb78f4727a03c12b5cb1800401d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('358045e6-3036-5851-af59-f5868235f860', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2b16e276-9de6-5fed-8a19-fdb93e5e4684', 1), '1b45f6c0f3f716f12da2cd8c2433ba094af3edb78f4727a03c12b5cb1800401d',
  'character:kaan:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/ed7d9e4927648b06ebc2c8253a4d6badabbb783b63eb6e2a018e885fe7031d42.mp3', 3892, '2026-09-13 19:26:20.236203', '6fa66b9bbf2bd925f482bb861d9607b85c81f6f89d6ad07c5c356fd7e7f1cd0c', 'validated', '{"audio_key":"ed7d9e4927648b06ebc2c8253a4d6badabbb783b63eb6e2a018e885fe7031d42","entity_key":"d_evidential_calibration_02:4","voice_id":"7mBFv1btncDZu2Bfgv0r","voice_name":"Tuna - Young and Soft","voice_labels":{"gender":"male","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"social_media","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6fa66b9bbf2bd925f482bb861d9607b85c81f6f89d6ad07c5c356fd7e7f1cd0c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/ed7d9e4927648b06ebc2c8253a4d6badabbb783b63eb6e2a018e885fe7031d42.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_concession_reframing_01:2 -> audio/generated/tr-TR/dialogues/eeb8b12ffa3c4bd177642976cc02d8fe6252e0d8d302d88a21c9204a5ba117a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('045d8044-0909-5045-9c09-ee24a77804c2', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_concession_reframing_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '918763bc64c63683ff037b8a0718c7a9276e579ce20d84aa3ca4806123aba6f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e417ba5-b2c7-5322-bf9f-3c80b1b3093c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('045d8044-0909-5045-9c09-ee24a77804c2', 1), '918763bc64c63683ff037b8a0718c7a9276e579ce20d84aa3ca4806123aba6f6',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/eeb8b12ffa3c4bd177642976cc02d8fe6252e0d8d302d88a21c9204a5ba117a4.mp3', 5694, '2026-09-13 19:26:20.541695', 'a04af2f59b635b278b84f58435b8d9ced8fb07f75c5e4cfd850ea7c254de8d70', 'validated', '{"audio_key":"eeb8b12ffa3c4bd177642976cc02d8fe6252e0d8d302d88a21c9204a5ba117a4","entity_key":"d_concession_reframing_01:2","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a04af2f59b635b278b84f58435b8d9ced8fb07f75c5e4cfd850ea7c254de8d70","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/eeb8b12ffa3c4bd177642976cc02d8fe6252e0d8d302d88a21c9204a5ba117a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_stance_02:1 -> audio/generated/tr-TR/dialogues/f08b345fe7af6df76295cc95e25638d5dc7d99e2681b923d485f895f67f490e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fe903749-309a-5153-8a52-7a79f751704a', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_stance_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac4bdaef26665c00e0ff0b65abc556fccbdce39da77abcb79cc0431eb4482f9d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c8711c5-2ba4-512d-b6a4-7fc0c994f07d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fe903749-309a-5153-8a52-7a79f751704a', 1), 'ac4bdaef26665c00e0ff0b65abc556fccbdce39da77abcb79cc0431eb4482f9d',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f08b345fe7af6df76295cc95e25638d5dc7d99e2681b923d485f895f67f490e5.mp3', 2455, '2026-09-13 19:26:21.437113', 'fe51dc5168e16dadb28cbacb6f0b642281814ec62c2477a5eff656f70f074ea9', 'validated', '{"audio_key":"f08b345fe7af6df76295cc95e25638d5dc7d99e2681b923d485f895f67f490e5","entity_key":"d_reported_stance_02:1","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fe51dc5168e16dadb28cbacb6f0b642281814ec62c2477a5eff656f70f074ea9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/f08b345fe7af6df76295cc95e25638d5dc7d99e2681b923d485f895f67f490e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_shifting_02:1 -> audio/generated/tr-TR/dialogues/f642cc7405b31231d4b19c98bba175ede4c363ed4f032f1646974db321bcc568.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2c1bb5b4-8fdc-547d-8817-0640efa6c63b', 1)
  AND voice_key = 'character:burak:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_shifting_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'efbd9f63b5c52309677e703543acd694fe695a8a25bb89f10ea926875852f240'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad287ed8-cad9-54b0-8fca-a203876e2a10', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2c1bb5b4-8fdc-547d-8817-0640efa6c63b', 1), 'efbd9f63b5c52309677e703543acd694fe695a8a25bb89f10ea926875852f240',
  'character:burak:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f642cc7405b31231d4b19c98bba175ede4c363ed4f032f1646974db321bcc568.mp3', 3787, '2026-09-13 19:26:21.925915', '4616b5ab4f3d7a8dc26f0d4f9bd77a07e4e76ac6afd384151aeb412d812fdad0', 'validated', '{"audio_key":"f642cc7405b31231d4b19c98bba175ede4c363ed4f032f1646974db321bcc568","entity_key":"d_register_shifting_02:1","voice_id":"5HEFEBb9WCCpCdgZE77B","voice_name":"Eyüp Tulûhan Etker - Deep and Rich","voice_labels":{"gender":"male","accent":"istanbul","age":"middle_aged","category":"professional","language":"tr","use_case":"conversational","descriptive":"neutral"},"output_format":"mp3_44100_192","file_sha256":"4616b5ab4f3d7a8dc26f0d4f9bd77a07e4e76ac6afd384151aeb412d812fdad0","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/tr-TR/dialogues/f642cc7405b31231d4b19c98bba175ede4c363ed4f032f1646974db321bcc568.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_shifting_01:1 -> audio/generated/tr-TR/dialogues/f6d59b80a03dcf7f2f5db14f378b2c70aeb921400bcee880f4faa51f1580f988.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('246fbb9a-f35e-56fc-b0d8-76e536f216cc', 1)
  AND voice_key = 'character:deniz:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_shifting_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4afd98619ed57cfe3c780f4e51cbee5a5e725a41869f5255ea15d8d4b98cb889'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('933ddbb2-815f-59e4-be47-1ec13676d0d0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('246fbb9a-f35e-56fc-b0d8-76e536f216cc', 1), '4afd98619ed57cfe3c780f4e51cbee5a5e725a41869f5255ea15d8d4b98cb889',
  'character:deniz:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f6d59b80a03dcf7f2f5db14f378b2c70aeb921400bcee880f4faa51f1580f988.mp3', 3604, '2026-09-13 19:26:22.868202', 'c826a5ee87b25e0b5f30b561c2388dbd3dc4de222ea1f49e7c63fce979d7395d', 'validated', '{"audio_key":"f6d59b80a03dcf7f2f5db14f378b2c70aeb921400bcee880f4faa51f1580f988","entity_key":"d_register_shifting_01:1","voice_id":"rstA752XNcJHV3KFLRON","voice_name":"Seth - Bright, Sincere and Clean","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c826a5ee87b25e0b5f30b561c2388dbd3dc4de222ea1f49e7c63fce979d7395d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/dialogues/f6d59b80a03dcf7f2f5db14f378b2c70aeb921400bcee880f4faa51f1580f988.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_shifting_02:4 -> audio/generated/tr-TR/dialogues/f72ac2c3d17addae6034ffef08056767213e5338f233ef621d8ae77be08c20bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('307a9847-8397-535a-9854-741a323edfbb', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_shifting_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '296235887f30db5d545b51384eb2365a82665672ab70caec75590156509c8fdc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('517c527c-4075-5e76-8c39-e5326fb40b1b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('307a9847-8397-535a-9854-741a323edfbb', 1), '296235887f30db5d545b51384eb2365a82665672ab70caec75590156509c8fdc',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f72ac2c3d17addae6034ffef08056767213e5338f233ef621d8ae77be08c20bd.mp3', 3186, '2026-09-13 19:26:23.214695', '39f71288f883abea4240d1c8b21ac5b1477df87273bb18af069db6cf60483950', 'validated', '{"audio_key":"f72ac2c3d17addae6034ffef08056767213e5338f233ef621d8ae77be08c20bd","entity_key":"d_register_shifting_02:4","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"39f71288f883abea4240d1c8b21ac5b1477df87273bb18af069db6cf60483950","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/f72ac2c3d17addae6034ffef08056767213e5338f233ef621d8ae77be08c20bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_evidential_calibration_01:3 -> audio/generated/tr-TR/dialogues/f7a5062a68cb2b92a1ae97c978b6982ddfab1d2f1f00bb791c51c61b5913cae1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d3b0044a-a7dc-5dbf-b410-6f0384776fd3', 1)
  AND voice_key = 'character:elif:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_evidential_calibration_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2aa4901fa974c22b3510eeb18fadc128d5ebfef369f9a98cc23f2777b411aa56'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d403150d-38e5-5e34-a232-affb7e155857', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d3b0044a-a7dc-5dbf-b410-6f0384776fd3', 1), '2aa4901fa974c22b3510eeb18fadc128d5ebfef369f9a98cc23f2777b411aa56',
  'character:elif:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/f7a5062a68cb2b92a1ae97c978b6982ddfab1d2f1f00bb791c51c61b5913cae1.mp3', 1854, '2026-09-13 19:26:23.960512', '5cdf5383dee3d00952c0ff6f9a8f604c9475969797c00830fc9973d61b9841f7', 'validated', '{"audio_key":"f7a5062a68cb2b92a1ae97c978b6982ddfab1d2f1f00bb791c51c61b5913cae1","entity_key":"d_evidential_calibration_01:3","voice_id":"aEJD8mYP0nuof1XHShVY","voice_name":"Gozde Arikan - Soft, Warm and Clear","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5cdf5383dee3d00952c0ff6f9a8f604c9475969797c00830fc9973d61b9841f7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/tr-TR/dialogues/f7a5062a68cb2b92a1ae97c978b6982ddfab1d2f1f00bb791c51c61b5913cae1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_idiomatic_precision_02:4 -> audio/generated/tr-TR/dialogues/fe4fd9fdf0222e16195a0e345df2b1a08928a37932c4629160e2df6fc6878a6b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9ea5ee2e-e546-5e3d-985d-64c9331b38f7', 1)
  AND voice_key = 'character:selin:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_idiomatic_precision_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd210e7bacc1e5d58d300eb050012b3c9e5b89fca2473e17b6152729fe9d5a288'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9cb42951-dd52-55fc-aac6-3d985c9811ea', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9ea5ee2e-e546-5e3d-985d-64c9331b38f7', 1), 'd210e7bacc1e5d58d300eb050012b3c9e5b89fca2473e17b6152729fe9d5a288',
  'character:selin:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/dialogues/fe4fd9fdf0222e16195a0e345df2b1a08928a37932c4629160e2df6fc6878a6b.mp3', 3422, '2026-09-13 19:26:24.541129', 'dd6a785618a63b0a53727047fdcddbc966ef59f478a79dd7bdedb2063b854f05', 'validated', '{"audio_key":"fe4fd9fdf0222e16195a0e345df2b1a08928a37932c4629160e2df6fc6878a6b","entity_key":"d_idiomatic_precision_02:4","voice_id":"D6QpOJ61ltQ3whot6iJZ","voice_name":"Tugba","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dd6a785618a63b0a53727047fdcddbc966ef59f478a79dd7bdedb2063b854f05","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/tr-TR/dialogues/fe4fd9fdf0222e16195a0e345df2b1a08928a37932c4629160e2df6fc6878a6b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_stance_06 -> audio/generated/tr-TR/lexical/08ba89799f4099cc40dd14efaea0b6360ec20da1a338ffa914586f78acd51dc5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7941d563-e7ff-527b-8785-07ea73cf90c4', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_stance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34116ffe297349d3cd8ab46aaa89661d364825967bc9b6cf8f25f7876f06a16e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e27a22b-7fba-55a7-9a60-9c5541f7e4dc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7941d563-e7ff-527b-8785-07ea73cf90c4', 1), '34116ffe297349d3cd8ab46aaa89661d364825967bc9b6cf8f25f7876f06a16e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/08ba89799f4099cc40dd14efaea0b6360ec20da1a338ffa914586f78acd51dc5.mp3', 1280, '2026-09-13 19:26:25.082965', 'ca89faeb1714200943bd355b157b446ea5d9f67a6f4d7dac9eb90f0cf32fcd6e', 'validated', '{"audio_key":"08ba89799f4099cc40dd14efaea0b6360ec20da1a338ffa914586f78acd51dc5","entity_key":"lx_reported_stance_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ca89faeb1714200943bd355b157b446ea5d9f67a6f4d7dac9eb90f0cf32fcd6e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/08ba89799f4099cc40dd14efaea0b6360ec20da1a338ffa914586f78acd51dc5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_stance_06 -> audio/generated/tr-TR/lexical/08ba89799f4099cc40dd14efaea0b6360ec20da1a338ffa914586f78acd51dc5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('45fc0b4d-7896-5a30-ba3a-22a3ebcc389f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_stance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34116ffe297349d3cd8ab46aaa89661d364825967bc9b6cf8f25f7876f06a16e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8304dd5b-17b6-5e6c-bfca-aefe25abe5e4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('45fc0b4d-7896-5a30-ba3a-22a3ebcc389f', 1), '34116ffe297349d3cd8ab46aaa89661d364825967bc9b6cf8f25f7876f06a16e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/08ba89799f4099cc40dd14efaea0b6360ec20da1a338ffa914586f78acd51dc5.mp3', 1280, '2026-09-13 19:26:25.082965', 'ca89faeb1714200943bd355b157b446ea5d9f67a6f4d7dac9eb90f0cf32fcd6e', 'validated', '{"audio_key":"08ba89799f4099cc40dd14efaea0b6360ec20da1a338ffa914586f78acd51dc5","entity_key":"wf_reported_stance_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ca89faeb1714200943bd355b157b446ea5d9f67a6f4d7dac9eb90f0cf32fcd6e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/08ba89799f4099cc40dd14efaea0b6360ec20da1a338ffa914586f78acd51dc5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_shifting_01 -> audio/generated/tr-TR/lexical/0c3a4f8d1c3e6bd5f8a08eae86d9b173826ce924c8512269fd1f732cd8aea442.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4c7d613f-220d-5213-9364-0be1e925be6b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_shifting_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1119afdd67a003a547faf996458fe5d09f8ed9c106823b4685279a14c32f76f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89267d93-32c6-54b2-8eff-ac7387ebc6b5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4c7d613f-220d-5213-9364-0be1e925be6b', 1), '1119afdd67a003a547faf996458fe5d09f8ed9c106823b4685279a14c32f76f4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/0c3a4f8d1c3e6bd5f8a08eae86d9b173826ce924c8512269fd1f732cd8aea442.mp3', 1018, '2026-09-13 19:26:25.539820', 'a666ad128c0c831fbcd65844a33f62e914a7f85a2745a6bb3d50b20c4c068a9b', 'validated', '{"audio_key":"0c3a4f8d1c3e6bd5f8a08eae86d9b173826ce924c8512269fd1f732cd8aea442","entity_key":"lx_register_shifting_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a666ad128c0c831fbcd65844a33f62e914a7f85a2745a6bb3d50b20c4c068a9b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/0c3a4f8d1c3e6bd5f8a08eae86d9b173826ce924c8512269fd1f732cd8aea442.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_shifting_01 -> audio/generated/tr-TR/lexical/0c3a4f8d1c3e6bd5f8a08eae86d9b173826ce924c8512269fd1f732cd8aea442.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2e557dc8-4012-5e67-8837-3f8fab5486e7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_shifting_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1119afdd67a003a547faf996458fe5d09f8ed9c106823b4685279a14c32f76f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c002176-e041-5745-b812-e89e0257d4f0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2e557dc8-4012-5e67-8837-3f8fab5486e7', 1), '1119afdd67a003a547faf996458fe5d09f8ed9c106823b4685279a14c32f76f4',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/0c3a4f8d1c3e6bd5f8a08eae86d9b173826ce924c8512269fd1f732cd8aea442.mp3', 1018, '2026-09-13 19:26:25.539820', 'a666ad128c0c831fbcd65844a33f62e914a7f85a2745a6bb3d50b20c4c068a9b', 'validated', '{"audio_key":"0c3a4f8d1c3e6bd5f8a08eae86d9b173826ce924c8512269fd1f732cd8aea442","entity_key":"wf_register_shifting_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a666ad128c0c831fbcd65844a33f62e914a7f85a2745a6bb3d50b20c4c068a9b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/0c3a4f8d1c3e6bd5f8a08eae86d9b173826ce924c8512269fd1f732cd8aea442.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c1_expert_roundtable_capstone_03 -> audio/generated/tr-TR/lexical/11997d55424e844f363b4e56ef878c422339ac21e7017af6381c5e475d0fe5c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9441988e-857c-5cd6-9739-e1e8e5814ff5', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c1_expert_roundtable_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '33effc8ce3f7d14ee54328af6191561123986b8bb3375a93de163d87de8f36db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91f694f8-8f9a-5f84-bd12-b6a492c9e1ed', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9441988e-857c-5cd6-9739-e1e8e5814ff5', 1), '33effc8ce3f7d14ee54328af6191561123986b8bb3375a93de163d87de8f36db',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/11997d55424e844f363b4e56ef878c422339ac21e7017af6381c5e475d0fe5c5.mp3', 1071, '2026-09-13 19:26:26.130047', '04644b6f12abf737dc5c542442caf79d7cc0db06e13447f279a6259a76b73b4e', 'validated', '{"audio_key":"11997d55424e844f363b4e56ef878c422339ac21e7017af6381c5e475d0fe5c5","entity_key":"lx_c1_expert_roundtable_capstone_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"04644b6f12abf737dc5c542442caf79d7cc0db06e13447f279a6259a76b73b4e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/11997d55424e844f363b4e56ef878c422339ac21e7017af6381c5e475d0fe5c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c1_expert_roundtable_capstone_03 -> audio/generated/tr-TR/lexical/11997d55424e844f363b4e56ef878c422339ac21e7017af6381c5e475d0fe5c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9b5490c2-22ca-55aa-9868-97ce28b65e87', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c1_expert_roundtable_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '33effc8ce3f7d14ee54328af6191561123986b8bb3375a93de163d87de8f36db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f05fc462-3a43-5a6c-845c-204e44a56a43', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9b5490c2-22ca-55aa-9868-97ce28b65e87', 1), '33effc8ce3f7d14ee54328af6191561123986b8bb3375a93de163d87de8f36db',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/11997d55424e844f363b4e56ef878c422339ac21e7017af6381c5e475d0fe5c5.mp3', 1071, '2026-09-13 19:26:26.130047', '04644b6f12abf737dc5c542442caf79d7cc0db06e13447f279a6259a76b73b4e', 'validated', '{"audio_key":"11997d55424e844f363b4e56ef878c422339ac21e7017af6381c5e475d0fe5c5","entity_key":"wf_c1_expert_roundtable_capstone_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"04644b6f12abf737dc5c542442caf79d7cc0db06e13447f279a6259a76b73b4e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/11997d55424e844f363b4e56ef878c422339ac21e7017af6381c5e475d0fe5c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_mediation_05 -> audio/generated/tr-TR/lexical/1432c8b6474b4497265f5511f550d81205ca25162b7873ac315790c19fbee49e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f705e321-d08b-5e9f-8f33-c20f50245868', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_mediation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c26801b0c20623660fd0150c4b0bd9223703dd973d64a60f8d2d592b0b1ba7b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a8a6a8d-fad6-5723-babb-7a8fef91f9c8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f705e321-d08b-5e9f-8f33-c20f50245868', 1), '1c26801b0c20623660fd0150c4b0bd9223703dd973d64a60f8d2d592b0b1ba7b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1432c8b6474b4497265f5511f550d81205ca25162b7873ac315790c19fbee49e.mp3', 1253, '2026-09-13 19:26:26.574345', '21629ba571992a0ed52ffb827a2e3d27a2823cd68c978026498cbef2dfa2bbc8', 'validated', '{"audio_key":"1432c8b6474b4497265f5511f550d81205ca25162b7873ac315790c19fbee49e","entity_key":"lx_institutional_mediation_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"21629ba571992a0ed52ffb827a2e3d27a2823cd68c978026498cbef2dfa2bbc8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1432c8b6474b4497265f5511f550d81205ca25162b7873ac315790c19fbee49e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_mediation_05 -> audio/generated/tr-TR/lexical/1432c8b6474b4497265f5511f550d81205ca25162b7873ac315790c19fbee49e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('77665696-3185-5c00-8315-471903d38558', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_mediation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c26801b0c20623660fd0150c4b0bd9223703dd973d64a60f8d2d592b0b1ba7b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9bac2243-19dd-532c-a077-eedc3d8e4afb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('77665696-3185-5c00-8315-471903d38558', 1), '1c26801b0c20623660fd0150c4b0bd9223703dd973d64a60f8d2d592b0b1ba7b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/1432c8b6474b4497265f5511f550d81205ca25162b7873ac315790c19fbee49e.mp3', 1253, '2026-09-13 19:26:26.574345', '21629ba571992a0ed52ffb827a2e3d27a2823cd68c978026498cbef2dfa2bbc8', 'validated', '{"audio_key":"1432c8b6474b4497265f5511f550d81205ca25162b7873ac315790c19fbee49e","entity_key":"wf_institutional_mediation_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"21629ba571992a0ed52ffb827a2e3d27a2823cd68c978026498cbef2dfa2bbc8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/1432c8b6474b4497265f5511f550d81205ca25162b7873ac315790c19fbee49e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_reframing_06 -> audio/generated/tr-TR/lexical/154d97afe886a2fa63690cc5fa80bbf6714b5c61774e3a0f2cb0a8ffbd905b04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b60d7207-06e9-538f-835b-3d7011655da0', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_reframing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6e5883d48106d56e27e1e98fc273b28808df428f451e62bf6ffc73c4499b6fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a3dbec1-4bda-533e-8afd-3f5f4fb6120b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b60d7207-06e9-538f-835b-3d7011655da0', 1), 'c6e5883d48106d56e27e1e98fc273b28808df428f451e62bf6ffc73c4499b6fe',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/154d97afe886a2fa63690cc5fa80bbf6714b5c61774e3a0f2cb0a8ffbd905b04.mp3', 1384, '2026-09-13 19:07:22.248464', 'faeab49d043838713e896d56a0198a0db6886b01911a7bb32f3a621d6d01e77f', 'validated', '{"audio_key":"154d97afe886a2fa63690cc5fa80bbf6714b5c61774e3a0f2cb0a8ffbd905b04","entity_key":"lx_concession_reframing_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"faeab49d043838713e896d56a0198a0db6886b01911a7bb32f3a621d6d01e77f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/154d97afe886a2fa63690cc5fa80bbf6714b5c61774e3a0f2cb0a8ffbd905b04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_reframing_06 -> audio/generated/tr-TR/lexical/154d97afe886a2fa63690cc5fa80bbf6714b5c61774e3a0f2cb0a8ffbd905b04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('00245b31-7838-50c3-b3fc-59ec0d7b3116', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_reframing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6e5883d48106d56e27e1e98fc273b28808df428f451e62bf6ffc73c4499b6fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe39cd90-f2e0-5a19-90f7-6acfe28e4418', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('00245b31-7838-50c3-b3fc-59ec0d7b3116', 1), 'c6e5883d48106d56e27e1e98fc273b28808df428f451e62bf6ffc73c4499b6fe',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/154d97afe886a2fa63690cc5fa80bbf6714b5c61774e3a0f2cb0a8ffbd905b04.mp3', 1384, '2026-09-13 19:07:22.248464', 'faeab49d043838713e896d56a0198a0db6886b01911a7bb32f3a621d6d01e77f', 'validated', '{"audio_key":"154d97afe886a2fa63690cc5fa80bbf6714b5c61774e3a0f2cb0a8ffbd905b04","entity_key":"wf_concession_reframing_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"faeab49d043838713e896d56a0198a0db6886b01911a7bb32f3a621d6d01e77f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/154d97afe886a2fa63690cc5fa80bbf6714b5c61774e3a0f2cb0a8ffbd905b04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidential_calibration_01 -> audio/generated/tr-TR/lexical/160b07313cc2a94ae0950925a5880cd859d23d14e0533a90188ccc29105b9276.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('35a3ea7c-0a9f-56d7-88e9-5ca9ab5f8f10', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidential_calibration_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5415c3c3d9d4f5b49c352c6c2281666bdb7005a4f9410ff72d4826a53491e404'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c53fb2d-159b-5437-a314-a44fa1497537', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('35a3ea7c-0a9f-56d7-88e9-5ca9ab5f8f10', 1), '5415c3c3d9d4f5b49c352c6c2281666bdb7005a4f9410ff72d4826a53491e404',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/160b07313cc2a94ae0950925a5880cd859d23d14e0533a90188ccc29105b9276.mp3', 1071, '2026-09-13 19:07:22.415282', '1ecd3ad3e089b0256dac1830a210456d180913e644ad24677c46f2c12cc7f6c1', 'validated', '{"audio_key":"160b07313cc2a94ae0950925a5880cd859d23d14e0533a90188ccc29105b9276","entity_key":"lx_evidential_calibration_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1ecd3ad3e089b0256dac1830a210456d180913e644ad24677c46f2c12cc7f6c1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/160b07313cc2a94ae0950925a5880cd859d23d14e0533a90188ccc29105b9276.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidential_calibration_01 -> audio/generated/tr-TR/lexical/160b07313cc2a94ae0950925a5880cd859d23d14e0533a90188ccc29105b9276.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d3bba95e-4733-5a70-972b-2bbec6abf061', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidential_calibration_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5415c3c3d9d4f5b49c352c6c2281666bdb7005a4f9410ff72d4826a53491e404'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('024b8ab7-67ed-54b8-bbd7-d25bb4ab696b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d3bba95e-4733-5a70-972b-2bbec6abf061', 1), '5415c3c3d9d4f5b49c352c6c2281666bdb7005a4f9410ff72d4826a53491e404',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/160b07313cc2a94ae0950925a5880cd859d23d14e0533a90188ccc29105b9276.mp3', 1071, '2026-09-13 19:07:22.415282', '1ecd3ad3e089b0256dac1830a210456d180913e644ad24677c46f2c12cc7f6c1', 'validated', '{"audio_key":"160b07313cc2a94ae0950925a5880cd859d23d14e0533a90188ccc29105b9276","entity_key":"wf_evidential_calibration_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1ecd3ad3e089b0256dac1830a210456d180913e644ad24677c46f2c12cc7f6c1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/160b07313cc2a94ae0950925a5880cd859d23d14e0533a90188ccc29105b9276.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_idiomatic_precision_05 -> audio/generated/tr-TR/lexical/16178dc9dbe861afac56b6cd1b613230747b7667b85ea3c8fcb12e6a4f8e5c2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('328f1cbf-43ac-52be-883a-2359751cdacd', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_idiomatic_precision_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bdbe45af2c075d6327ff6ae9cb6216e72cc8811e5f85df93d5b00f7c78c6d51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7bf6ca7a-2d8e-5e4f-9efa-199f4246cf2c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('328f1cbf-43ac-52be-883a-2359751cdacd', 1), '9bdbe45af2c075d6327ff6ae9cb6216e72cc8811e5f85df93d5b00f7c78c6d51',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/16178dc9dbe861afac56b6cd1b613230747b7667b85ea3c8fcb12e6a4f8e5c2d.mp3', 1097, '2026-09-13 19:26:27.234554', 'b1dcf6b644e850eb488a1924b1b5438912f09a655d0442a93c9943712aafaa73', 'validated', '{"audio_key":"16178dc9dbe861afac56b6cd1b613230747b7667b85ea3c8fcb12e6a4f8e5c2d","entity_key":"lx_idiomatic_precision_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1dcf6b644e850eb488a1924b1b5438912f09a655d0442a93c9943712aafaa73","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/16178dc9dbe861afac56b6cd1b613230747b7667b85ea3c8fcb12e6a4f8e5c2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_idiomatic_precision_05 -> audio/generated/tr-TR/lexical/16178dc9dbe861afac56b6cd1b613230747b7667b85ea3c8fcb12e6a4f8e5c2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e6d92456-6f89-5357-85f4-1e1c4e619f00', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_idiomatic_precision_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9bdbe45af2c075d6327ff6ae9cb6216e72cc8811e5f85df93d5b00f7c78c6d51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c2c362c-764d-5766-a3fa-bf70fdbb92ef', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e6d92456-6f89-5357-85f4-1e1c4e619f00', 1), '9bdbe45af2c075d6327ff6ae9cb6216e72cc8811e5f85df93d5b00f7c78c6d51',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/16178dc9dbe861afac56b6cd1b613230747b7667b85ea3c8fcb12e6a4f8e5c2d.mp3', 1097, '2026-09-13 19:26:27.234554', 'b1dcf6b644e850eb488a1924b1b5438912f09a655d0442a93c9943712aafaa73', 'validated', '{"audio_key":"16178dc9dbe861afac56b6cd1b613230747b7667b85ea3c8fcb12e6a4f8e5c2d","entity_key":"wf_idiomatic_precision_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1dcf6b644e850eb488a1924b1b5438912f09a655d0442a93c9943712aafaa73","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/16178dc9dbe861afac56b6cd1b613230747b7667b85ea3c8fcb12e6a4f8e5c2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_idiomatic_precision_04 -> audio/generated/tr-TR/lexical/20696ecb99b2e63bf64cf6b0a4a42605152623d23b8a772cad792daf8e15e37e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b26fe1f1-3918-55f9-80ab-e633f018215a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_idiomatic_precision_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38669523da6d38bb18e16d040e87345e0a3d08cd8451089cb11f85cd3cd48720'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('def66f81-e79f-5fac-8d87-93d370602250', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b26fe1f1-3918-55f9-80ab-e633f018215a', 1), '38669523da6d38bb18e16d040e87345e0a3d08cd8451089cb11f85cd3cd48720',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/20696ecb99b2e63bf64cf6b0a4a42605152623d23b8a772cad792daf8e15e37e.mp3', 1488, '2026-09-13 19:26:27.636672', 'd94a9e1af34dbed41639bba6022f32189e28373ca436ed4afe7120b2a22dd33c', 'validated', '{"audio_key":"20696ecb99b2e63bf64cf6b0a4a42605152623d23b8a772cad792daf8e15e37e","entity_key":"lx_idiomatic_precision_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d94a9e1af34dbed41639bba6022f32189e28373ca436ed4afe7120b2a22dd33c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/20696ecb99b2e63bf64cf6b0a4a42605152623d23b8a772cad792daf8e15e37e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_idiomatic_precision_04 -> audio/generated/tr-TR/lexical/20696ecb99b2e63bf64cf6b0a4a42605152623d23b8a772cad792daf8e15e37e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5efc6e24-e5c1-5a2c-83c3-a4108f844696', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_idiomatic_precision_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38669523da6d38bb18e16d040e87345e0a3d08cd8451089cb11f85cd3cd48720'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e495b42-5188-56d8-af21-e358ffb7d917', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5efc6e24-e5c1-5a2c-83c3-a4108f844696', 1), '38669523da6d38bb18e16d040e87345e0a3d08cd8451089cb11f85cd3cd48720',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/20696ecb99b2e63bf64cf6b0a4a42605152623d23b8a772cad792daf8e15e37e.mp3', 1488, '2026-09-13 19:26:27.636672', 'd94a9e1af34dbed41639bba6022f32189e28373ca436ed4afe7120b2a22dd33c', 'validated', '{"audio_key":"20696ecb99b2e63bf64cf6b0a4a42605152623d23b8a772cad792daf8e15e37e","entity_key":"wf_idiomatic_precision_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d94a9e1af34dbed41639bba6022f32189e28373ca436ed4afe7120b2a22dd33c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/20696ecb99b2e63bf64cf6b0a4a42605152623d23b8a772cad792daf8e15e37e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_stance_01 -> audio/generated/tr-TR/lexical/25f0e8127c0902a1e47f29cf2593617e2567905d78b53e469270c5a99cdf56d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c1b76ea0-aeeb-5d55-b65e-3f969f092c8f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_stance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0dbfb9ca12aeb92a60cba7e2be00f0d49d0412c082cced1eaceb2fcfa7ee4d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('19a7ecaf-1675-57fc-8749-097d3dce2c1f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c1b76ea0-aeeb-5d55-b65e-3f969f092c8f', 1), 'b0dbfb9ca12aeb92a60cba7e2be00f0d49d0412c082cced1eaceb2fcfa7ee4d7',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/25f0e8127c0902a1e47f29cf2593617e2567905d78b53e469270c5a99cdf56d5.mp3', 1018, '2026-09-13 19:26:28.259449', 'ea62c013cd9ec8d0c4ca9b9c9d78e1daaaf72dcb6c7fcd8669e66e07df14325e', 'validated', '{"audio_key":"25f0e8127c0902a1e47f29cf2593617e2567905d78b53e469270c5a99cdf56d5","entity_key":"lx_reported_stance_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ea62c013cd9ec8d0c4ca9b9c9d78e1daaaf72dcb6c7fcd8669e66e07df14325e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/25f0e8127c0902a1e47f29cf2593617e2567905d78b53e469270c5a99cdf56d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_stance_01 -> audio/generated/tr-TR/lexical/25f0e8127c0902a1e47f29cf2593617e2567905d78b53e469270c5a99cdf56d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4fb4cff4-f095-50bd-95c3-304622e5ecb5', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_stance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0dbfb9ca12aeb92a60cba7e2be00f0d49d0412c082cced1eaceb2fcfa7ee4d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad1bbdad-9b0e-5145-97be-7aa4865d3b7c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4fb4cff4-f095-50bd-95c3-304622e5ecb5', 1), 'b0dbfb9ca12aeb92a60cba7e2be00f0d49d0412c082cced1eaceb2fcfa7ee4d7',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/25f0e8127c0902a1e47f29cf2593617e2567905d78b53e469270c5a99cdf56d5.mp3', 1018, '2026-09-13 19:26:28.259449', 'ea62c013cd9ec8d0c4ca9b9c9d78e1daaaf72dcb6c7fcd8669e66e07df14325e', 'validated', '{"audio_key":"25f0e8127c0902a1e47f29cf2593617e2567905d78b53e469270c5a99cdf56d5","entity_key":"wf_reported_stance_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ea62c013cd9ec8d0c4ca9b9c9d78e1daaaf72dcb6c7fcd8669e66e07df14325e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/25f0e8127c0902a1e47f29cf2593617e2567905d78b53e469270c5a99cdf56d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_idiomatic_precision_03 -> audio/generated/tr-TR/lexical/29ac319b4b7e81723de9693eef94e6f04c7c0a628f1dbe0cf24b6f904ca1ad3e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('42346209-f4fb-50bc-9440-0da694774559', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_idiomatic_precision_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1396f8528fd78c09c8884a5a54cc17258751823a5c0ba8444c5f483ccfc08afb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('24a69639-a62a-558a-8c9a-186c728a4848', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('42346209-f4fb-50bc-9440-0da694774559', 1), '1396f8528fd78c09c8884a5a54cc17258751823a5c0ba8444c5f483ccfc08afb',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/29ac319b4b7e81723de9693eef94e6f04c7c0a628f1dbe0cf24b6f904ca1ad3e.mp3', 1201, '2026-09-13 19:26:28.902539', 'a44557e2990714facc7e754b20546b93f35e85768e3887911c5624798b6e3384', 'validated', '{"audio_key":"29ac319b4b7e81723de9693eef94e6f04c7c0a628f1dbe0cf24b6f904ca1ad3e","entity_key":"lx_idiomatic_precision_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a44557e2990714facc7e754b20546b93f35e85768e3887911c5624798b6e3384","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/29ac319b4b7e81723de9693eef94e6f04c7c0a628f1dbe0cf24b6f904ca1ad3e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_idiomatic_precision_03 -> audio/generated/tr-TR/lexical/29ac319b4b7e81723de9693eef94e6f04c7c0a628f1dbe0cf24b6f904ca1ad3e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e271c3e8-f3b7-5c4a-a451-4357ae56127f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_idiomatic_precision_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1396f8528fd78c09c8884a5a54cc17258751823a5c0ba8444c5f483ccfc08afb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eed94446-3895-5b0c-bb31-13f45ee4da8a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e271c3e8-f3b7-5c4a-a451-4357ae56127f', 1), '1396f8528fd78c09c8884a5a54cc17258751823a5c0ba8444c5f483ccfc08afb',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/29ac319b4b7e81723de9693eef94e6f04c7c0a628f1dbe0cf24b6f904ca1ad3e.mp3', 1201, '2026-09-13 19:26:28.902539', 'a44557e2990714facc7e754b20546b93f35e85768e3887911c5624798b6e3384', 'validated', '{"audio_key":"29ac319b4b7e81723de9693eef94e6f04c7c0a628f1dbe0cf24b6f904ca1ad3e","entity_key":"wf_idiomatic_precision_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a44557e2990714facc7e754b20546b93f35e85768e3887911c5624798b6e3384","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/29ac319b4b7e81723de9693eef94e6f04c7c0a628f1dbe0cf24b6f904ca1ad3e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_idiomatic_precision_01 -> audio/generated/tr-TR/lexical/2fec7f0f8c690a6b0aee78e21c8f659cd39f327c63270e5c3de6a70b701c938f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0345cc19-5ed2-5e01-ae51-2c5c3829fe6d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_idiomatic_precision_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '642b136542554d00d8803f5f3af3ea8d23e69d8d1a6d886d7e946a9a7a5520c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38e34a55-dcc5-5baf-aa49-bd48f4405055', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0345cc19-5ed2-5e01-ae51-2c5c3829fe6d', 1), '642b136542554d00d8803f5f3af3ea8d23e69d8d1a6d886d7e946a9a7a5520c6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/2fec7f0f8c690a6b0aee78e21c8f659cd39f327c63270e5c3de6a70b701c938f.mp3', 1332, '2026-09-13 19:26:29.343190', '0ad809d276e65827eef131f746b7a87c19576f9e621d8f8894cd1b1a53e77314', 'validated', '{"audio_key":"2fec7f0f8c690a6b0aee78e21c8f659cd39f327c63270e5c3de6a70b701c938f","entity_key":"lx_idiomatic_precision_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0ad809d276e65827eef131f746b7a87c19576f9e621d8f8894cd1b1a53e77314","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/2fec7f0f8c690a6b0aee78e21c8f659cd39f327c63270e5c3de6a70b701c938f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_idiomatic_precision_01 -> audio/generated/tr-TR/lexical/2fec7f0f8c690a6b0aee78e21c8f659cd39f327c63270e5c3de6a70b701c938f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('72f0ebb4-2587-5f8e-aba3-304e4f12b55a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_idiomatic_precision_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '642b136542554d00d8803f5f3af3ea8d23e69d8d1a6d886d7e946a9a7a5520c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('454a9608-ebdd-519a-8f71-69bd1c57113f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('72f0ebb4-2587-5f8e-aba3-304e4f12b55a', 1), '642b136542554d00d8803f5f3af3ea8d23e69d8d1a6d886d7e946a9a7a5520c6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/2fec7f0f8c690a6b0aee78e21c8f659cd39f327c63270e5c3de6a70b701c938f.mp3', 1332, '2026-09-13 19:26:29.343190', '0ad809d276e65827eef131f746b7a87c19576f9e621d8f8894cd1b1a53e77314', 'validated', '{"audio_key":"2fec7f0f8c690a6b0aee78e21c8f659cd39f327c63270e5c3de6a70b701c938f","entity_key":"wf_idiomatic_precision_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0ad809d276e65827eef131f746b7a87c19576f9e621d8f8894cd1b1a53e77314","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/2fec7f0f8c690a6b0aee78e21c8f659cd39f327c63270e5c3de6a70b701c938f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_shifting_03 -> audio/generated/tr-TR/lexical/36b30d43280512fe94215f1b3d4b8ddfbe0f3cec3d0451b8a8fe0bf6090276ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('066ffdd0-dfa4-5fbf-8ed8-9909a39eb845', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_shifting_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f1020b3ff88d1f5015a604a6a66441b34c3cbbe22df4b1703243f214229819d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c603dc1a-0526-5086-bdac-ea1359eea520', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('066ffdd0-dfa4-5fbf-8ed8-9909a39eb845', 1), '7f1020b3ff88d1f5015a604a6a66441b34c3cbbe22df4b1703243f214229819d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/36b30d43280512fe94215f1b3d4b8ddfbe0f3cec3d0451b8a8fe0bf6090276ee.mp3', 1018, '2026-09-13 19:26:30.064353', '88a354ece06824ba77efb5d0ef4d59d51d166164d57a306c6100db6f248d22c2', 'validated', '{"audio_key":"36b30d43280512fe94215f1b3d4b8ddfbe0f3cec3d0451b8a8fe0bf6090276ee","entity_key":"lx_register_shifting_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"88a354ece06824ba77efb5d0ef4d59d51d166164d57a306c6100db6f248d22c2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/36b30d43280512fe94215f1b3d4b8ddfbe0f3cec3d0451b8a8fe0bf6090276ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_shifting_03 -> audio/generated/tr-TR/lexical/36b30d43280512fe94215f1b3d4b8ddfbe0f3cec3d0451b8a8fe0bf6090276ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('21070534-0ed6-5de0-9910-1751d0068a64', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_shifting_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f1020b3ff88d1f5015a604a6a66441b34c3cbbe22df4b1703243f214229819d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58c6b4df-1896-516d-864c-e0c43ab2a1a0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('21070534-0ed6-5de0-9910-1751d0068a64', 1), '7f1020b3ff88d1f5015a604a6a66441b34c3cbbe22df4b1703243f214229819d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/36b30d43280512fe94215f1b3d4b8ddfbe0f3cec3d0451b8a8fe0bf6090276ee.mp3', 1018, '2026-09-13 19:26:30.064353', '88a354ece06824ba77efb5d0ef4d59d51d166164d57a306c6100db6f248d22c2', 'validated', '{"audio_key":"36b30d43280512fe94215f1b3d4b8ddfbe0f3cec3d0451b8a8fe0bf6090276ee","entity_key":"wf_register_shifting_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"88a354ece06824ba77efb5d0ef4d59d51d166164d57a306c6100db6f248d22c2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/36b30d43280512fe94215f1b3d4b8ddfbe0f3cec3d0451b8a8fe0bf6090276ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_mediation_02 -> audio/generated/tr-TR/lexical/3794b92f86ab2ad2442ad2cf932dbbc56832e6d7753521279626161f72d1a0ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b6c9b829-5d16-54a3-8196-390df6fc6f61', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_mediation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85eb005693dea9455e22d3e47ebd1921c910e98cd1a62c9dbb58a437ff868617'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c138a70c-cce4-567f-99d7-4ce4a30d1301', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b6c9b829-5d16-54a3-8196-390df6fc6f61', 1), '85eb005693dea9455e22d3e47ebd1921c910e98cd1a62c9dbb58a437ff868617',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/3794b92f86ab2ad2442ad2cf932dbbc56832e6d7753521279626161f72d1a0ff.mp3', 1253, '2026-09-13 19:26:30.424452', '0124624e7d6435fcb7f3702a36a982dce58ccdeb01ca50f433b0098e1163cee1', 'validated', '{"audio_key":"3794b92f86ab2ad2442ad2cf932dbbc56832e6d7753521279626161f72d1a0ff","entity_key":"lx_institutional_mediation_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0124624e7d6435fcb7f3702a36a982dce58ccdeb01ca50f433b0098e1163cee1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/3794b92f86ab2ad2442ad2cf932dbbc56832e6d7753521279626161f72d1a0ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_mediation_02 -> audio/generated/tr-TR/lexical/3794b92f86ab2ad2442ad2cf932dbbc56832e6d7753521279626161f72d1a0ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f529d90f-e8fa-53c5-9610-2db7a0c3a793', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_mediation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '85eb005693dea9455e22d3e47ebd1921c910e98cd1a62c9dbb58a437ff868617'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c6006674-aed2-52e7-b783-9d742bb6de3b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f529d90f-e8fa-53c5-9610-2db7a0c3a793', 1), '85eb005693dea9455e22d3e47ebd1921c910e98cd1a62c9dbb58a437ff868617',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/3794b92f86ab2ad2442ad2cf932dbbc56832e6d7753521279626161f72d1a0ff.mp3', 1253, '2026-09-13 19:26:30.424452', '0124624e7d6435fcb7f3702a36a982dce58ccdeb01ca50f433b0098e1163cee1', 'validated', '{"audio_key":"3794b92f86ab2ad2442ad2cf932dbbc56832e6d7753521279626161f72d1a0ff","entity_key":"wf_institutional_mediation_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0124624e7d6435fcb7f3702a36a982dce58ccdeb01ca50f433b0098e1163cee1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/3794b92f86ab2ad2442ad2cf932dbbc56832e6d7753521279626161f72d1a0ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_reframing_01 -> audio/generated/tr-TR/lexical/39e622d47ea4feddd1e8d20f4a7dcd74f95a82b8719f93f8d7a3f32566088d76.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('947b9233-c119-53b5-977e-3c75f23a37ad', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_reframing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4d6dd38c96465ea447939477cae6384d16d4b33de5d1ed1e9524470f0a9fedf3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('35af92a3-7208-5481-aba3-cda756b0a722', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('947b9233-c119-53b5-977e-3c75f23a37ad', 1), '4d6dd38c96465ea447939477cae6384d16d4b33de5d1ed1e9524470f0a9fedf3',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/39e622d47ea4feddd1e8d20f4a7dcd74f95a82b8719f93f8d7a3f32566088d76.mp3', 1071, '2026-09-13 19:07:26.353961', '4d5f465f2a112e949e1c875c5684014a2be882887b6ea5962efac512164ce49d', 'validated', '{"audio_key":"39e622d47ea4feddd1e8d20f4a7dcd74f95a82b8719f93f8d7a3f32566088d76","entity_key":"lx_concession_reframing_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d5f465f2a112e949e1c875c5684014a2be882887b6ea5962efac512164ce49d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/39e622d47ea4feddd1e8d20f4a7dcd74f95a82b8719f93f8d7a3f32566088d76.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_reframing_01 -> audio/generated/tr-TR/lexical/39e622d47ea4feddd1e8d20f4a7dcd74f95a82b8719f93f8d7a3f32566088d76.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1c079c64-6e84-5756-914f-e0ccf2bf10bb', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_reframing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4d6dd38c96465ea447939477cae6384d16d4b33de5d1ed1e9524470f0a9fedf3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87207142-3f37-54d5-957c-f96a60e498de', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1c079c64-6e84-5756-914f-e0ccf2bf10bb', 1), '4d6dd38c96465ea447939477cae6384d16d4b33de5d1ed1e9524470f0a9fedf3',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/39e622d47ea4feddd1e8d20f4a7dcd74f95a82b8719f93f8d7a3f32566088d76.mp3', 1071, '2026-09-13 19:07:26.353961', '4d5f465f2a112e949e1c875c5684014a2be882887b6ea5962efac512164ce49d', 'validated', '{"audio_key":"39e622d47ea4feddd1e8d20f4a7dcd74f95a82b8719f93f8d7a3f32566088d76","entity_key":"wf_concession_reframing_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d5f465f2a112e949e1c875c5684014a2be882887b6ea5962efac512164ce49d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/39e622d47ea4feddd1e8d20f4a7dcd74f95a82b8719f93f8d7a3f32566088d76.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_policy_synthesis_01 -> audio/generated/tr-TR/lexical/39e81bbeb82eafc6edcf64b2531ae7bffc16514cc93d33bd7e06a34347ac1e87.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('66b24d78-2c50-5795-90e8-bd9cd8fdc7a1', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_policy_synthesis_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'acbf0a276a4d880b3f627077d4f0940f3585257f8e790d3b394526978a73d46d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e0980054-2d97-5008-88ff-e152b1c2f3ca', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('66b24d78-2c50-5795-90e8-bd9cd8fdc7a1', 1), 'acbf0a276a4d880b3f627077d4f0940f3585257f8e790d3b394526978a73d46d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/39e81bbeb82eafc6edcf64b2531ae7bffc16514cc93d33bd7e06a34347ac1e87.mp3', 966, '2026-09-13 19:26:31.109530', '8b958b91e6b5e135b5f2ada96e7f0dc0110f08ac891a22ca9ed8e98237c9ac3c', 'validated', '{"audio_key":"39e81bbeb82eafc6edcf64b2531ae7bffc16514cc93d33bd7e06a34347ac1e87","entity_key":"lx_policy_synthesis_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8b958b91e6b5e135b5f2ada96e7f0dc0110f08ac891a22ca9ed8e98237c9ac3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/39e81bbeb82eafc6edcf64b2531ae7bffc16514cc93d33bd7e06a34347ac1e87.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_policy_synthesis_01 -> audio/generated/tr-TR/lexical/39e81bbeb82eafc6edcf64b2531ae7bffc16514cc93d33bd7e06a34347ac1e87.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f0f0df40-fa39-5e7a-8881-93f59069fcd2', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_policy_synthesis_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'acbf0a276a4d880b3f627077d4f0940f3585257f8e790d3b394526978a73d46d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3f5b1e2-f6e8-5576-a35f-032368edc9db', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f0f0df40-fa39-5e7a-8881-93f59069fcd2', 1), 'acbf0a276a4d880b3f627077d4f0940f3585257f8e790d3b394526978a73d46d',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/39e81bbeb82eafc6edcf64b2531ae7bffc16514cc93d33bd7e06a34347ac1e87.mp3', 966, '2026-09-13 19:26:31.109530', '8b958b91e6b5e135b5f2ada96e7f0dc0110f08ac891a22ca9ed8e98237c9ac3c', 'validated', '{"audio_key":"39e81bbeb82eafc6edcf64b2531ae7bffc16514cc93d33bd7e06a34347ac1e87","entity_key":"wf_policy_synthesis_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8b958b91e6b5e135b5f2ada96e7f0dc0110f08ac891a22ca9ed8e98237c9ac3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/39e81bbeb82eafc6edcf64b2531ae7bffc16514cc93d33bd7e06a34347ac1e87.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_argument_architecture_04 -> audio/generated/tr-TR/lexical/3c89be0abf3bd9d69d2aed8fa3fca940b36181b6d37cfadbc1a2540b1cb1e353.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('da7589f7-de55-55f2-b5a3-83e4440ca746', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_argument_architecture_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe4a8fd0873d5bbd38adba30d4171cf357d4aaec6854947293b9bc282b703752'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6d04307-0ddf-5734-a981-43d89a383a43', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('da7589f7-de55-55f2-b5a3-83e4440ca746', 1), 'fe4a8fd0873d5bbd38adba30d4171cf357d4aaec6854947293b9bc282b703752',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/3c89be0abf3bd9d69d2aed8fa3fca940b36181b6d37cfadbc1a2540b1cb1e353.mp3', 1201, '2026-09-13 19:26:31.542890', '27a3cc6b841f6f918e0007157ae8df7c94d6fdfa78d31f237bb5ff5a9a38bdd4', 'validated', '{"audio_key":"3c89be0abf3bd9d69d2aed8fa3fca940b36181b6d37cfadbc1a2540b1cb1e353","entity_key":"lx_argument_architecture_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"27a3cc6b841f6f918e0007157ae8df7c94d6fdfa78d31f237bb5ff5a9a38bdd4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/3c89be0abf3bd9d69d2aed8fa3fca940b36181b6d37cfadbc1a2540b1cb1e353.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_argument_architecture_04 -> audio/generated/tr-TR/lexical/3c89be0abf3bd9d69d2aed8fa3fca940b36181b6d37cfadbc1a2540b1cb1e353.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('55db4d95-9a1b-521b-9805-0efbe2d76ed4', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_argument_architecture_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe4a8fd0873d5bbd38adba30d4171cf357d4aaec6854947293b9bc282b703752'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4bfbbf3f-83a4-5298-a384-514151448917', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('55db4d95-9a1b-521b-9805-0efbe2d76ed4', 1), 'fe4a8fd0873d5bbd38adba30d4171cf357d4aaec6854947293b9bc282b703752',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/3c89be0abf3bd9d69d2aed8fa3fca940b36181b6d37cfadbc1a2540b1cb1e353.mp3', 1201, '2026-09-13 19:26:31.542890', '27a3cc6b841f6f918e0007157ae8df7c94d6fdfa78d31f237bb5ff5a9a38bdd4', 'validated', '{"audio_key":"3c89be0abf3bd9d69d2aed8fa3fca940b36181b6d37cfadbc1a2540b1cb1e353","entity_key":"wf_argument_architecture_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"27a3cc6b841f6f918e0007157ae8df7c94d6fdfa78d31f237bb5ff5a9a38bdd4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/3c89be0abf3bd9d69d2aed8fa3fca940b36181b6d37cfadbc1a2540b1cb1e353.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c1_expert_roundtable_capstone_05 -> audio/generated/tr-TR/lexical/40b05eaf0ea61583212d207166d44b0d345e945c5e9e0f7a788dadecb39eb889.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('45cba0d5-c18f-5617-b11f-7c2f1f93f40c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c1_expert_roundtable_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd56b8ee787dd1ffbb85c7e37de808381dfbc82893a0a5dc898c3a13b260b8adc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('838d3e5c-4133-5028-9b9a-501a89600d0f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('45cba0d5-c18f-5617-b11f-7c2f1f93f40c', 1), 'd56b8ee787dd1ffbb85c7e37de808381dfbc82893a0a5dc898c3a13b260b8adc',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/40b05eaf0ea61583212d207166d44b0d345e945c5e9e0f7a788dadecb39eb889.mp3', 1515, '2026-09-13 19:26:32.171551', '43af5ba96e8bb1d3b1bf019956f20d272d110a3748b4c4a291e9c883504e7993', 'validated', '{"audio_key":"40b05eaf0ea61583212d207166d44b0d345e945c5e9e0f7a788dadecb39eb889","entity_key":"lx_c1_expert_roundtable_capstone_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"43af5ba96e8bb1d3b1bf019956f20d272d110a3748b4c4a291e9c883504e7993","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/40b05eaf0ea61583212d207166d44b0d345e945c5e9e0f7a788dadecb39eb889.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c1_expert_roundtable_capstone_05 -> audio/generated/tr-TR/lexical/40b05eaf0ea61583212d207166d44b0d345e945c5e9e0f7a788dadecb39eb889.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('06c6ea06-dde8-5b47-bfe3-f5d09fa92cea', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c1_expert_roundtable_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd56b8ee787dd1ffbb85c7e37de808381dfbc82893a0a5dc898c3a13b260b8adc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a7af9c1-4172-50e0-b8d3-5156fe1aaf33', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('06c6ea06-dde8-5b47-bfe3-f5d09fa92cea', 1), 'd56b8ee787dd1ffbb85c7e37de808381dfbc82893a0a5dc898c3a13b260b8adc',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/40b05eaf0ea61583212d207166d44b0d345e945c5e9e0f7a788dadecb39eb889.mp3', 1515, '2026-09-13 19:26:32.171551', '43af5ba96e8bb1d3b1bf019956f20d272d110a3748b4c4a291e9c883504e7993', 'validated', '{"audio_key":"40b05eaf0ea61583212d207166d44b0d345e945c5e9e0f7a788dadecb39eb889","entity_key":"wf_c1_expert_roundtable_capstone_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"43af5ba96e8bb1d3b1bf019956f20d272d110a3748b4c4a291e9c883504e7993","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/40b05eaf0ea61583212d207166d44b0d345e945c5e9e0f7a788dadecb39eb889.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_reframing_04 -> audio/generated/tr-TR/lexical/4cd7dbb3c5cdb110e15aaea4c3d27a588218323a80c8bd462838ff8050397ec1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('08001cb1-01fc-5d67-8461-245c914a8b4a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_reframing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35bd9a339c9ad309ead9d327a451f410e549dbea938f1248607583fc2a48a637'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('adc7f9c7-4499-5e2b-bb5b-2b80286e6b5d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('08001cb1-01fc-5d67-8461-245c914a8b4a', 1), '35bd9a339c9ad309ead9d327a451f410e549dbea938f1248607583fc2a48a637',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4cd7dbb3c5cdb110e15aaea4c3d27a588218323a80c8bd462838ff8050397ec1.mp3', 1018, '2026-09-13 19:07:29.204815', '7a784a76b795b9330afef21dd34baebd7c73fb49f343a2b8a92994fa4b0953d9', 'validated', '{"audio_key":"4cd7dbb3c5cdb110e15aaea4c3d27a588218323a80c8bd462838ff8050397ec1","entity_key":"lx_concession_reframing_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7a784a76b795b9330afef21dd34baebd7c73fb49f343a2b8a92994fa4b0953d9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4cd7dbb3c5cdb110e15aaea4c3d27a588218323a80c8bd462838ff8050397ec1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_reframing_04 -> audio/generated/tr-TR/lexical/4cd7dbb3c5cdb110e15aaea4c3d27a588218323a80c8bd462838ff8050397ec1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d02b9ae4-d073-594b-ad56-1bba36e7fb44', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_reframing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35bd9a339c9ad309ead9d327a451f410e549dbea938f1248607583fc2a48a637'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('532525d2-53d5-5301-9ac1-0f0bb20c5afc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d02b9ae4-d073-594b-ad56-1bba36e7fb44', 1), '35bd9a339c9ad309ead9d327a451f410e549dbea938f1248607583fc2a48a637',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/4cd7dbb3c5cdb110e15aaea4c3d27a588218323a80c8bd462838ff8050397ec1.mp3', 1018, '2026-09-13 19:07:29.204815', '7a784a76b795b9330afef21dd34baebd7c73fb49f343a2b8a92994fa4b0953d9', 'validated', '{"audio_key":"4cd7dbb3c5cdb110e15aaea4c3d27a588218323a80c8bd462838ff8050397ec1","entity_key":"wf_concession_reframing_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7a784a76b795b9330afef21dd34baebd7c73fb49f343a2b8a92994fa4b0953d9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/4cd7dbb3c5cdb110e15aaea4c3d27a588218323a80c8bd462838ff8050397ec1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidential_calibration_06 -> audio/generated/tr-TR/lexical/537344dbd10d8edf3a3c3762e368a0207d3d8c3f62151e399d0e07dfe0f7bb0f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('df0de34d-4879-58ae-bde1-4e0d2531fb19', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidential_calibration_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1a950075372354d74dc35f958dce5099ac3c8a1c1de15a98fa32dd4badad2e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b909839-3b31-5ac2-b0b2-5cc17987a286', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('df0de34d-4879-58ae-bde1-4e0d2531fb19', 1), 'e1a950075372354d74dc35f958dce5099ac3c8a1c1de15a98fa32dd4badad2e0',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/537344dbd10d8edf3a3c3762e368a0207d3d8c3f62151e399d0e07dfe0f7bb0f.mp3', 1280, '2026-09-13 19:26:32.671118', 'efda1c2b3608e8c2da9bbb563b736f079385f3e38018677385db9d961672e464', 'validated', '{"audio_key":"537344dbd10d8edf3a3c3762e368a0207d3d8c3f62151e399d0e07dfe0f7bb0f","entity_key":"lx_evidential_calibration_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"efda1c2b3608e8c2da9bbb563b736f079385f3e38018677385db9d961672e464","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/537344dbd10d8edf3a3c3762e368a0207d3d8c3f62151e399d0e07dfe0f7bb0f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidential_calibration_06 -> audio/generated/tr-TR/lexical/537344dbd10d8edf3a3c3762e368a0207d3d8c3f62151e399d0e07dfe0f7bb0f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0bc7f0ed-566f-54a7-af94-fa6eb3d94991', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidential_calibration_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1a950075372354d74dc35f958dce5099ac3c8a1c1de15a98fa32dd4badad2e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e04ceee-3795-5edb-aaf5-fb031509a7f2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0bc7f0ed-566f-54a7-af94-fa6eb3d94991', 1), 'e1a950075372354d74dc35f958dce5099ac3c8a1c1de15a98fa32dd4badad2e0',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/537344dbd10d8edf3a3c3762e368a0207d3d8c3f62151e399d0e07dfe0f7bb0f.mp3', 1280, '2026-09-13 19:26:32.671118', 'efda1c2b3608e8c2da9bbb563b736f079385f3e38018677385db9d961672e464', 'validated', '{"audio_key":"537344dbd10d8edf3a3c3762e368a0207d3d8c3f62151e399d0e07dfe0f7bb0f","entity_key":"wf_evidential_calibration_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"efda1c2b3608e8c2da9bbb563b736f079385f3e38018677385db9d961672e464","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/537344dbd10d8edf3a3c3762e368a0207d3d8c3f62151e399d0e07dfe0f7bb0f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_argument_architecture_03 -> audio/generated/tr-TR/lexical/569341da6eacd67bd1fb9cf1fbc3c31bdf7405f1be3d9a5804f4c4b8dec94ec5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('02e55b79-8490-5ffe-ad89-2a05eabad48a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_argument_architecture_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1697d23f417a5a03cde06581b285c134fd495e5a0970980dabf0f21dfc607972'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('defd2c04-5a10-54dd-b4a1-90747b487a1b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('02e55b79-8490-5ffe-ad89-2a05eabad48a', 1), '1697d23f417a5a03cde06581b285c134fd495e5a0970980dabf0f21dfc607972',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/569341da6eacd67bd1fb9cf1fbc3c31bdf7405f1be3d9a5804f4c4b8dec94ec5.mp3', 1018, '2026-09-13 19:26:33.185611', '1ce82930a68ca408259abe548fbc36f830c49c7971057369a5e25bd6d20dd607', 'validated', '{"audio_key":"569341da6eacd67bd1fb9cf1fbc3c31bdf7405f1be3d9a5804f4c4b8dec94ec5","entity_key":"lx_argument_architecture_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1ce82930a68ca408259abe548fbc36f830c49c7971057369a5e25bd6d20dd607","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/569341da6eacd67bd1fb9cf1fbc3c31bdf7405f1be3d9a5804f4c4b8dec94ec5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_argument_architecture_03 -> audio/generated/tr-TR/lexical/569341da6eacd67bd1fb9cf1fbc3c31bdf7405f1be3d9a5804f4c4b8dec94ec5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4d0561b8-cf3b-5265-96f6-f4affe84abb2', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_argument_architecture_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1697d23f417a5a03cde06581b285c134fd495e5a0970980dabf0f21dfc607972'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3f31cfc-9b8e-569d-97e1-b8edd1eef883', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4d0561b8-cf3b-5265-96f6-f4affe84abb2', 1), '1697d23f417a5a03cde06581b285c134fd495e5a0970980dabf0f21dfc607972',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/569341da6eacd67bd1fb9cf1fbc3c31bdf7405f1be3d9a5804f4c4b8dec94ec5.mp3', 1018, '2026-09-13 19:26:33.185611', '1ce82930a68ca408259abe548fbc36f830c49c7971057369a5e25bd6d20dd607', 'validated', '{"audio_key":"569341da6eacd67bd1fb9cf1fbc3c31bdf7405f1be3d9a5804f4c4b8dec94ec5","entity_key":"wf_argument_architecture_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1ce82930a68ca408259abe548fbc36f830c49c7971057369a5e25bd6d20dd607","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/569341da6eacd67bd1fb9cf1fbc3c31bdf7405f1be3d9a5804f4c4b8dec94ec5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidential_calibration_03 -> audio/generated/tr-TR/lexical/571726e8ced03e1ae0e521972b796c1a058c3b2a6d73d071e04b54eb62960439.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('317ed554-8d78-5ec2-81f9-d61accebe0e4', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidential_calibration_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '98c24a9b9d47647e1d9959228226a6ea106dd25f279bff2d7ecc3d9053ed4d8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('609c4c2e-a6eb-5315-99da-a6520848564c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('317ed554-8d78-5ec2-81f9-d61accebe0e4', 1), '98c24a9b9d47647e1d9959228226a6ea106dd25f279bff2d7ecc3d9053ed4d8b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/571726e8ced03e1ae0e521972b796c1a058c3b2a6d73d071e04b54eb62960439.mp3', 1149, '2026-09-13 19:26:33.720304', '534989fd290d89145d63cffc566ec53d2e6b89caa4e358e3709dba15080c15b7', 'validated', '{"audio_key":"571726e8ced03e1ae0e521972b796c1a058c3b2a6d73d071e04b54eb62960439","entity_key":"lx_evidential_calibration_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"534989fd290d89145d63cffc566ec53d2e6b89caa4e358e3709dba15080c15b7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/571726e8ced03e1ae0e521972b796c1a058c3b2a6d73d071e04b54eb62960439.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidential_calibration_03 -> audio/generated/tr-TR/lexical/571726e8ced03e1ae0e521972b796c1a058c3b2a6d73d071e04b54eb62960439.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('97af92ef-1077-5094-a021-21ae70e73d9d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidential_calibration_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '98c24a9b9d47647e1d9959228226a6ea106dd25f279bff2d7ecc3d9053ed4d8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7db1227-645a-57cf-b3cc-4775d0916dea', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('97af92ef-1077-5094-a021-21ae70e73d9d', 1), '98c24a9b9d47647e1d9959228226a6ea106dd25f279bff2d7ecc3d9053ed4d8b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/571726e8ced03e1ae0e521972b796c1a058c3b2a6d73d071e04b54eb62960439.mp3', 1149, '2026-09-13 19:26:33.720304', '534989fd290d89145d63cffc566ec53d2e6b89caa4e358e3709dba15080c15b7', 'validated', '{"audio_key":"571726e8ced03e1ae0e521972b796c1a058c3b2a6d73d071e04b54eb62960439","entity_key":"wf_evidential_calibration_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"534989fd290d89145d63cffc566ec53d2e6b89caa4e358e3709dba15080c15b7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/571726e8ced03e1ae0e521972b796c1a058c3b2a6d73d071e04b54eb62960439.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_shifting_02 -> audio/generated/tr-TR/lexical/589b0d27b2ec828a09dc160cb7941b0b375763bfe4dc132ab3a6ec71f4dd4ad2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5a128dc7-543e-544f-b01d-3c05994ffd4f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_shifting_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eefdf61f57953b348c09f7b2d867d14582b6320bbf44ac9078a4aeb16e3b71f0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c4d34df-fbcf-58e8-b83f-7ebcff8b8596', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5a128dc7-543e-544f-b01d-3c05994ffd4f', 1), 'eefdf61f57953b348c09f7b2d867d14582b6320bbf44ac9078a4aeb16e3b71f0',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/589b0d27b2ec828a09dc160cb7941b0b375763bfe4dc132ab3a6ec71f4dd4ad2.mp3', 1201, '2026-09-13 19:26:34.256074', '0d86546a83c632995fcd4c0136a60f10d8c0cbad4264531631fbdba8866f96cf', 'validated', '{"audio_key":"589b0d27b2ec828a09dc160cb7941b0b375763bfe4dc132ab3a6ec71f4dd4ad2","entity_key":"lx_register_shifting_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0d86546a83c632995fcd4c0136a60f10d8c0cbad4264531631fbdba8866f96cf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/589b0d27b2ec828a09dc160cb7941b0b375763bfe4dc132ab3a6ec71f4dd4ad2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_shifting_02 -> audio/generated/tr-TR/lexical/589b0d27b2ec828a09dc160cb7941b0b375763bfe4dc132ab3a6ec71f4dd4ad2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('00815d4d-e123-5199-a48c-73de5e5408cf', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_shifting_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eefdf61f57953b348c09f7b2d867d14582b6320bbf44ac9078a4aeb16e3b71f0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2b89911-7c26-5a9f-a3a6-419f9f0ca99b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('00815d4d-e123-5199-a48c-73de5e5408cf', 1), 'eefdf61f57953b348c09f7b2d867d14582b6320bbf44ac9078a4aeb16e3b71f0',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/589b0d27b2ec828a09dc160cb7941b0b375763bfe4dc132ab3a6ec71f4dd4ad2.mp3', 1201, '2026-09-13 19:26:34.256074', '0d86546a83c632995fcd4c0136a60f10d8c0cbad4264531631fbdba8866f96cf', 'validated', '{"audio_key":"589b0d27b2ec828a09dc160cb7941b0b375763bfe4dc132ab3a6ec71f4dd4ad2","entity_key":"wf_register_shifting_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0d86546a83c632995fcd4c0136a60f10d8c0cbad4264531631fbdba8866f96cf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/589b0d27b2ec828a09dc160cb7941b0b375763bfe4dc132ab3a6ec71f4dd4ad2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_idiomatic_precision_06 -> audio/generated/tr-TR/lexical/58e469582ce20ac1b1f99f665b56a44ea214b1e4c1eaa5d24c5e916be7c0a095.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5361e819-26fc-5f80-8fdd-79ca19139089', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_idiomatic_precision_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0be424aba46fd6470c360a1e48dbf0249e01b12f23d73163b0610369baf1c776'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95a9d041-bcb2-562c-9a65-d60011f54ab0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5361e819-26fc-5f80-8fdd-79ca19139089', 1), '0be424aba46fd6470c360a1e48dbf0249e01b12f23d73163b0610369baf1c776',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/58e469582ce20ac1b1f99f665b56a44ea214b1e4c1eaa5d24c5e916be7c0a095.mp3', 1149, '2026-09-13 19:26:34.808860', 'e4bc2329a20e9a0dd13dc1b1be85f2ffd66c4b5a12417db84dde63958cfce8b7', 'validated', '{"audio_key":"58e469582ce20ac1b1f99f665b56a44ea214b1e4c1eaa5d24c5e916be7c0a095","entity_key":"lx_idiomatic_precision_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e4bc2329a20e9a0dd13dc1b1be85f2ffd66c4b5a12417db84dde63958cfce8b7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/58e469582ce20ac1b1f99f665b56a44ea214b1e4c1eaa5d24c5e916be7c0a095.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_idiomatic_precision_06 -> audio/generated/tr-TR/lexical/58e469582ce20ac1b1f99f665b56a44ea214b1e4c1eaa5d24c5e916be7c0a095.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ffe22752-5ac4-5431-ac78-3a230a4f58ba', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_idiomatic_precision_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0be424aba46fd6470c360a1e48dbf0249e01b12f23d73163b0610369baf1c776'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7de1ca93-f4f2-535e-80f4-2cc44bc975fc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ffe22752-5ac4-5431-ac78-3a230a4f58ba', 1), '0be424aba46fd6470c360a1e48dbf0249e01b12f23d73163b0610369baf1c776',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/58e469582ce20ac1b1f99f665b56a44ea214b1e4c1eaa5d24c5e916be7c0a095.mp3', 1149, '2026-09-13 19:26:34.808860', 'e4bc2329a20e9a0dd13dc1b1be85f2ffd66c4b5a12417db84dde63958cfce8b7', 'validated', '{"audio_key":"58e469582ce20ac1b1f99f665b56a44ea214b1e4c1eaa5d24c5e916be7c0a095","entity_key":"wf_idiomatic_precision_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e4bc2329a20e9a0dd13dc1b1be85f2ffd66c4b5a12417db84dde63958cfce8b7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/58e469582ce20ac1b1f99f665b56a44ea214b1e4c1eaa5d24c5e916be7c0a095.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_reframing_02 -> audio/generated/tr-TR/lexical/5e93a7fb2e0eef94c689795f56b006efb72257092ed92d24046a0389cf972ffe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5d8494b7-c02d-581c-9bc4-906a4755c1ba', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_reframing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5cf54882d10e4ca56430537a8591d264380ef5aa97236f735597aa20e3da99bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('110571a0-53fd-52e4-808e-449438bb8fc9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5d8494b7-c02d-581c-9bc4-906a4755c1ba', 1), '5cf54882d10e4ca56430537a8591d264380ef5aa97236f735597aa20e3da99bd',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5e93a7fb2e0eef94c689795f56b006efb72257092ed92d24046a0389cf972ffe.mp3', 1201, '2026-09-13 19:26:35.311418', 'b580f5cb000897ade73cc482d77a64fba0b560fad2d90505322f869e0c8716a4', 'validated', '{"audio_key":"5e93a7fb2e0eef94c689795f56b006efb72257092ed92d24046a0389cf972ffe","entity_key":"lx_concession_reframing_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b580f5cb000897ade73cc482d77a64fba0b560fad2d90505322f869e0c8716a4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5e93a7fb2e0eef94c689795f56b006efb72257092ed92d24046a0389cf972ffe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_reframing_02 -> audio/generated/tr-TR/lexical/5e93a7fb2e0eef94c689795f56b006efb72257092ed92d24046a0389cf972ffe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9076e22d-5848-5f39-95e6-08658113b93b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_reframing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5cf54882d10e4ca56430537a8591d264380ef5aa97236f735597aa20e3da99bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d402cd8c-fa94-5227-821e-105d06d034dc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9076e22d-5848-5f39-95e6-08658113b93b', 1), '5cf54882d10e4ca56430537a8591d264380ef5aa97236f735597aa20e3da99bd',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5e93a7fb2e0eef94c689795f56b006efb72257092ed92d24046a0389cf972ffe.mp3', 1201, '2026-09-13 19:26:35.311418', 'b580f5cb000897ade73cc482d77a64fba0b560fad2d90505322f869e0c8716a4', 'validated', '{"audio_key":"5e93a7fb2e0eef94c689795f56b006efb72257092ed92d24046a0389cf972ffe","entity_key":"wf_concession_reframing_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b580f5cb000897ade73cc482d77a64fba0b560fad2d90505322f869e0c8716a4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5e93a7fb2e0eef94c689795f56b006efb72257092ed92d24046a0389cf972ffe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_shifting_04 -> audio/generated/tr-TR/lexical/5fa6b9b4a79951a7870756dfe42254ee523e1336468c033370072c5530d7ea0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b85ce60d-07fd-5d5c-abaf-70db01c9bfd3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_shifting_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0392047780249c40ab0b60d07ad80ad3ee9399dd0efc1d3fba7b43f956aa83e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b49f0e0-ee4b-5e58-bf29-8ae27d1a04e7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b85ce60d-07fd-5d5c-abaf-70db01c9bfd3', 1), '0392047780249c40ab0b60d07ad80ad3ee9399dd0efc1d3fba7b43f956aa83e9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5fa6b9b4a79951a7870756dfe42254ee523e1336468c033370072c5530d7ea0c.mp3', 1253, '2026-09-13 19:26:35.883228', '6387e2a448cc25949c9f12b3794dbf2a4b1bc286412ba9004ba21994b77b1f21', 'validated', '{"audio_key":"5fa6b9b4a79951a7870756dfe42254ee523e1336468c033370072c5530d7ea0c","entity_key":"lx_register_shifting_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6387e2a448cc25949c9f12b3794dbf2a4b1bc286412ba9004ba21994b77b1f21","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5fa6b9b4a79951a7870756dfe42254ee523e1336468c033370072c5530d7ea0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_shifting_04 -> audio/generated/tr-TR/lexical/5fa6b9b4a79951a7870756dfe42254ee523e1336468c033370072c5530d7ea0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e3179116-6e5a-5020-9959-a31fa2c60886', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_shifting_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0392047780249c40ab0b60d07ad80ad3ee9399dd0efc1d3fba7b43f956aa83e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c69a26a4-04fe-57f2-85cb-dcf76382c5b2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e3179116-6e5a-5020-9959-a31fa2c60886', 1), '0392047780249c40ab0b60d07ad80ad3ee9399dd0efc1d3fba7b43f956aa83e9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/5fa6b9b4a79951a7870756dfe42254ee523e1336468c033370072c5530d7ea0c.mp3', 1253, '2026-09-13 19:26:35.883228', '6387e2a448cc25949c9f12b3794dbf2a4b1bc286412ba9004ba21994b77b1f21', 'validated', '{"audio_key":"5fa6b9b4a79951a7870756dfe42254ee523e1336468c033370072c5530d7ea0c","entity_key":"wf_register_shifting_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6387e2a448cc25949c9f12b3794dbf2a4b1bc286412ba9004ba21994b77b1f21","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/5fa6b9b4a79951a7870756dfe42254ee523e1336468c033370072c5530d7ea0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_stance_02 -> audio/generated/tr-TR/lexical/61868ce25dffdd068ab18128a262eccedde64105869cd464bbe45f016252031a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bac241eb-561f-59ab-bd4e-928d5adf3f68', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_stance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '850176e574ac87f24be3125c83ed9dfd5e90ec2d24e0d34596dd57d8bbd314db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1d27901-7033-5e67-89ac-e115832d45f9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bac241eb-561f-59ab-bd4e-928d5adf3f68', 1), '850176e574ac87f24be3125c83ed9dfd5e90ec2d24e0d34596dd57d8bbd314db',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/61868ce25dffdd068ab18128a262eccedde64105869cd464bbe45f016252031a.mp3', 1071, '2026-09-13 19:07:31.130628', '59d29b8a8b7c070b6e3815c119319ee5700ecf511e86d3fc466cee4247d46651', 'validated', '{"audio_key":"61868ce25dffdd068ab18128a262eccedde64105869cd464bbe45f016252031a","entity_key":"lx_reported_stance_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"59d29b8a8b7c070b6e3815c119319ee5700ecf511e86d3fc466cee4247d46651","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/61868ce25dffdd068ab18128a262eccedde64105869cd464bbe45f016252031a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_stance_02 -> audio/generated/tr-TR/lexical/61868ce25dffdd068ab18128a262eccedde64105869cd464bbe45f016252031a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f751514f-9bdd-51f5-aa31-fc0454421c99', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_stance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '850176e574ac87f24be3125c83ed9dfd5e90ec2d24e0d34596dd57d8bbd314db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c61acfba-bdc1-5004-9da9-93ad3ac9c2c0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f751514f-9bdd-51f5-aa31-fc0454421c99', 1), '850176e574ac87f24be3125c83ed9dfd5e90ec2d24e0d34596dd57d8bbd314db',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/61868ce25dffdd068ab18128a262eccedde64105869cd464bbe45f016252031a.mp3', 1071, '2026-09-13 19:07:31.130628', '59d29b8a8b7c070b6e3815c119319ee5700ecf511e86d3fc466cee4247d46651', 'validated', '{"audio_key":"61868ce25dffdd068ab18128a262eccedde64105869cd464bbe45f016252031a","entity_key":"wf_reported_stance_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"59d29b8a8b7c070b6e3815c119319ee5700ecf511e86d3fc466cee4247d46651","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/61868ce25dffdd068ab18128a262eccedde64105869cd464bbe45f016252031a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_policy_synthesis_03 -> audio/generated/tr-TR/lexical/63fefb24bd34ffbbfcd91597d20e3d53d738392f26616e02661299916c6353a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('060b5f68-f33e-5269-9cf5-bda48ae7d87c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_policy_synthesis_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3bbf30be7bf75ea8eaaa159945065a8419c8da1679093e0a3c9c474e1f9deb92'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81b81680-94ca-5787-8afe-401bf6d4b6bc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('060b5f68-f33e-5269-9cf5-bda48ae7d87c', 1), '3bbf30be7bf75ea8eaaa159945065a8419c8da1679093e0a3c9c474e1f9deb92',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/63fefb24bd34ffbbfcd91597d20e3d53d738392f26616e02661299916c6353a1.mp3', 1071, '2026-09-13 19:26:36.351974', 'a3f70a1138b16204a4b5b20d6b9e4568beabf5927795e767dbc6b79d2148f7c8', 'validated', '{"audio_key":"63fefb24bd34ffbbfcd91597d20e3d53d738392f26616e02661299916c6353a1","entity_key":"lx_policy_synthesis_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a3f70a1138b16204a4b5b20d6b9e4568beabf5927795e767dbc6b79d2148f7c8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/63fefb24bd34ffbbfcd91597d20e3d53d738392f26616e02661299916c6353a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_policy_synthesis_03 -> audio/generated/tr-TR/lexical/63fefb24bd34ffbbfcd91597d20e3d53d738392f26616e02661299916c6353a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1c0408f4-7331-5f66-8b2f-aa5f0f55a00a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_policy_synthesis_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3bbf30be7bf75ea8eaaa159945065a8419c8da1679093e0a3c9c474e1f9deb92'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('490584ff-eeac-50a0-bb22-5692e7a87e8d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1c0408f4-7331-5f66-8b2f-aa5f0f55a00a', 1), '3bbf30be7bf75ea8eaaa159945065a8419c8da1679093e0a3c9c474e1f9deb92',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/63fefb24bd34ffbbfcd91597d20e3d53d738392f26616e02661299916c6353a1.mp3', 1071, '2026-09-13 19:26:36.351974', 'a3f70a1138b16204a4b5b20d6b9e4568beabf5927795e767dbc6b79d2148f7c8', 'validated', '{"audio_key":"63fefb24bd34ffbbfcd91597d20e3d53d738392f26616e02661299916c6353a1","entity_key":"wf_policy_synthesis_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a3f70a1138b16204a4b5b20d6b9e4568beabf5927795e767dbc6b79d2148f7c8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/63fefb24bd34ffbbfcd91597d20e3d53d738392f26616e02661299916c6353a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_policy_synthesis_02 -> audio/generated/tr-TR/lexical/65aded8cf8b39a4721f84ba5d794f43a1d618250b222915d264a503d0b10bc68.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b8b8b1f2-5d78-520b-b1ad-6d2fe336a954', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_policy_synthesis_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6f0ffb84e201291bed88077c6f86a728b46bec41536d51df1f9e4116a2d9af7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('562fd319-2898-5055-8ae2-9c3582f6ec0b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b8b8b1f2-5d78-520b-b1ad-6d2fe336a954', 1), 'a6f0ffb84e201291bed88077c6f86a728b46bec41536d51df1f9e4116a2d9af7',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/65aded8cf8b39a4721f84ba5d794f43a1d618250b222915d264a503d0b10bc68.mp3', 1149, '2026-09-13 19:26:36.951789', 'd3055e4083fb95d98f911ffcdc9f445f0c1f2c8b4d3f33d77304f7e4ed8cac6b', 'validated', '{"audio_key":"65aded8cf8b39a4721f84ba5d794f43a1d618250b222915d264a503d0b10bc68","entity_key":"lx_policy_synthesis_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d3055e4083fb95d98f911ffcdc9f445f0c1f2c8b4d3f33d77304f7e4ed8cac6b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/65aded8cf8b39a4721f84ba5d794f43a1d618250b222915d264a503d0b10bc68.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_policy_synthesis_02 -> audio/generated/tr-TR/lexical/65aded8cf8b39a4721f84ba5d794f43a1d618250b222915d264a503d0b10bc68.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9a1418bd-670d-5cb7-92d8-b478bcaa3fa0', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_policy_synthesis_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6f0ffb84e201291bed88077c6f86a728b46bec41536d51df1f9e4116a2d9af7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6553090-607a-5d60-bb23-76bd127f9d8a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9a1418bd-670d-5cb7-92d8-b478bcaa3fa0', 1), 'a6f0ffb84e201291bed88077c6f86a728b46bec41536d51df1f9e4116a2d9af7',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/65aded8cf8b39a4721f84ba5d794f43a1d618250b222915d264a503d0b10bc68.mp3', 1149, '2026-09-13 19:26:36.951789', 'd3055e4083fb95d98f911ffcdc9f445f0c1f2c8b4d3f33d77304f7e4ed8cac6b', 'validated', '{"audio_key":"65aded8cf8b39a4721f84ba5d794f43a1d618250b222915d264a503d0b10bc68","entity_key":"wf_policy_synthesis_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d3055e4083fb95d98f911ffcdc9f445f0c1f2c8b4d3f33d77304f7e4ed8cac6b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/65aded8cf8b39a4721f84ba5d794f43a1d618250b222915d264a503d0b10bc68.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_argument_architecture_06 -> audio/generated/tr-TR/lexical/6d9f6af33baecc7cb4c42f7c1c2ef6622222c5b9b5094b3f364f547420415ef4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c15c9366-51c1-557e-83f7-0e92442b01fa', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_argument_architecture_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e12c58ec1e7d8cf0f5979d20cdfaf3d99599727633d174d8de36ba1f2b1bf5c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5701e09c-50a0-5ccf-bd35-3bc5d120cdf1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c15c9366-51c1-557e-83f7-0e92442b01fa', 1), '9e12c58ec1e7d8cf0f5979d20cdfaf3d99599727633d174d8de36ba1f2b1bf5c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6d9f6af33baecc7cb4c42f7c1c2ef6622222c5b9b5094b3f364f547420415ef4.mp3', 1149, '2026-09-13 19:26:37.396000', '75a732dc07f7c01169e0815794f46f80236b24f821dd89d20b79ab30067a6866', 'validated', '{"audio_key":"6d9f6af33baecc7cb4c42f7c1c2ef6622222c5b9b5094b3f364f547420415ef4","entity_key":"lx_argument_architecture_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75a732dc07f7c01169e0815794f46f80236b24f821dd89d20b79ab30067a6866","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6d9f6af33baecc7cb4c42f7c1c2ef6622222c5b9b5094b3f364f547420415ef4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_argument_architecture_06 -> audio/generated/tr-TR/lexical/6d9f6af33baecc7cb4c42f7c1c2ef6622222c5b9b5094b3f364f547420415ef4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d61abe3a-f9ad-5e85-bec0-9ce324491bd2', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_argument_architecture_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e12c58ec1e7d8cf0f5979d20cdfaf3d99599727633d174d8de36ba1f2b1bf5c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c368f849-8919-55c3-b2b7-9a0c2867c106', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d61abe3a-f9ad-5e85-bec0-9ce324491bd2', 1), '9e12c58ec1e7d8cf0f5979d20cdfaf3d99599727633d174d8de36ba1f2b1bf5c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/6d9f6af33baecc7cb4c42f7c1c2ef6622222c5b9b5094b3f364f547420415ef4.mp3', 1149, '2026-09-13 19:26:37.396000', '75a732dc07f7c01169e0815794f46f80236b24f821dd89d20b79ab30067a6866', 'validated', '{"audio_key":"6d9f6af33baecc7cb4c42f7c1c2ef6622222c5b9b5094b3f364f547420415ef4","entity_key":"wf_argument_architecture_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75a732dc07f7c01169e0815794f46f80236b24f821dd89d20b79ab30067a6866","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/6d9f6af33baecc7cb4c42f7c1c2ef6622222c5b9b5094b3f364f547420415ef4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_stance_03 -> audio/generated/tr-TR/lexical/7341e76016b67fa6344d176ad0f7c49bd328738e0a3ca6fa1e71f1332ff5c202.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dafb9a35-b0f2-5082-856f-f408147b6451', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_stance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '33aed8b499c8fd3f3d80b8a5020da2b90ab33ea6dc404f3bc150ef5820718171'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7fa073c-7ae2-5ba1-815b-9c3fe25ac2c7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dafb9a35-b0f2-5082-856f-f408147b6451', 1), '33aed8b499c8fd3f3d80b8a5020da2b90ab33ea6dc404f3bc150ef5820718171',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7341e76016b67fa6344d176ad0f7c49bd328738e0a3ca6fa1e71f1332ff5c202.mp3', 1149, '2026-09-13 19:26:38.051539', '38a819ce69a675c79cbbe3c8eb175a81f4f148612a80f157a3adeefd6ac5ec73', 'validated', '{"audio_key":"7341e76016b67fa6344d176ad0f7c49bd328738e0a3ca6fa1e71f1332ff5c202","entity_key":"lx_reported_stance_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"38a819ce69a675c79cbbe3c8eb175a81f4f148612a80f157a3adeefd6ac5ec73","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7341e76016b67fa6344d176ad0f7c49bd328738e0a3ca6fa1e71f1332ff5c202.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_stance_03 -> audio/generated/tr-TR/lexical/7341e76016b67fa6344d176ad0f7c49bd328738e0a3ca6fa1e71f1332ff5c202.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d4ebb362-a27c-51dc-b3bb-196350483b69', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_stance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '33aed8b499c8fd3f3d80b8a5020da2b90ab33ea6dc404f3bc150ef5820718171'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('97530f30-70b4-5154-9285-9cf7b6074c8a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d4ebb362-a27c-51dc-b3bb-196350483b69', 1), '33aed8b499c8fd3f3d80b8a5020da2b90ab33ea6dc404f3bc150ef5820718171',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7341e76016b67fa6344d176ad0f7c49bd328738e0a3ca6fa1e71f1332ff5c202.mp3', 1149, '2026-09-13 19:26:38.051539', '38a819ce69a675c79cbbe3c8eb175a81f4f148612a80f157a3adeefd6ac5ec73', 'validated', '{"audio_key":"7341e76016b67fa6344d176ad0f7c49bd328738e0a3ca6fa1e71f1332ff5c202","entity_key":"wf_reported_stance_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"38a819ce69a675c79cbbe3c8eb175a81f4f148612a80f157a3adeefd6ac5ec73","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7341e76016b67fa6344d176ad0f7c49bd328738e0a3ca6fa1e71f1332ff5c202.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nominalization_density_02 -> audio/generated/tr-TR/lexical/79b422535e0992814a2bc0070dcbcc7d52c50a2433a254b4490c7d1939075968.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3fbcef29-8016-581c-9b7e-dedaac5bb2fe', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nominalization_density_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26514ba5d17b685d323e4519d9069cd42e2b71c8b8a5157b14aff822fb530f90'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('531e88d5-db37-5dc2-9573-45018169ad27', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3fbcef29-8016-581c-9b7e-dedaac5bb2fe', 1), '26514ba5d17b685d323e4519d9069cd42e2b71c8b8a5157b14aff822fb530f90',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/79b422535e0992814a2bc0070dcbcc7d52c50a2433a254b4490c7d1939075968.mp3', 1201, '2026-09-13 19:26:38.490702', 'c8638620e38578b0b8fa62295d11dc298fe22455b7bffbba6e8c742b85661c96', 'validated', '{"audio_key":"79b422535e0992814a2bc0070dcbcc7d52c50a2433a254b4490c7d1939075968","entity_key":"lx_nominalization_density_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c8638620e38578b0b8fa62295d11dc298fe22455b7bffbba6e8c742b85661c96","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/79b422535e0992814a2bc0070dcbcc7d52c50a2433a254b4490c7d1939075968.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nominalization_density_02 -> audio/generated/tr-TR/lexical/79b422535e0992814a2bc0070dcbcc7d52c50a2433a254b4490c7d1939075968.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4cedf38d-d1ed-5a34-ae59-eff37bd429e3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nominalization_density_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26514ba5d17b685d323e4519d9069cd42e2b71c8b8a5157b14aff822fb530f90'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('acbc7d86-a74c-5581-9307-bdf725465511', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4cedf38d-d1ed-5a34-ae59-eff37bd429e3', 1), '26514ba5d17b685d323e4519d9069cd42e2b71c8b8a5157b14aff822fb530f90',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/79b422535e0992814a2bc0070dcbcc7d52c50a2433a254b4490c7d1939075968.mp3', 1201, '2026-09-13 19:26:38.490702', 'c8638620e38578b0b8fa62295d11dc298fe22455b7bffbba6e8c742b85661c96', 'validated', '{"audio_key":"79b422535e0992814a2bc0070dcbcc7d52c50a2433a254b4490c7d1939075968","entity_key":"wf_nominalization_density_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c8638620e38578b0b8fa62295d11dc298fe22455b7bffbba6e8c742b85661c96","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/79b422535e0992814a2bc0070dcbcc7d52c50a2433a254b4490c7d1939075968.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nominalization_density_03 -> audio/generated/tr-TR/lexical/7abb8bef64d7020101fda4a2e35c5963725fe56e4847e3d31391fc7d6aeafa1b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e5efd1e2-169a-5199-a7ad-313529ce609a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nominalization_density_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '313f1b87dfac6c9b44e2e8244891716f842200604360ce84c9c73f65fec328f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6ef9575-b104-54df-b939-a68de792000f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e5efd1e2-169a-5199-a7ad-313529ce609a', 1), '313f1b87dfac6c9b44e2e8244891716f842200604360ce84c9c73f65fec328f5',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7abb8bef64d7020101fda4a2e35c5963725fe56e4847e3d31391fc7d6aeafa1b.mp3', 1201, '2026-09-13 19:26:39.121655', 'aa0dce0461816f9d7ea36b2ee4b912459b654d2f7796d36f8489a4a5cbbac41b', 'validated', '{"audio_key":"7abb8bef64d7020101fda4a2e35c5963725fe56e4847e3d31391fc7d6aeafa1b","entity_key":"lx_nominalization_density_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aa0dce0461816f9d7ea36b2ee4b912459b654d2f7796d36f8489a4a5cbbac41b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7abb8bef64d7020101fda4a2e35c5963725fe56e4847e3d31391fc7d6aeafa1b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nominalization_density_03 -> audio/generated/tr-TR/lexical/7abb8bef64d7020101fda4a2e35c5963725fe56e4847e3d31391fc7d6aeafa1b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a8e64faa-0a34-536f-9c4a-6f9459d7c476', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nominalization_density_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '313f1b87dfac6c9b44e2e8244891716f842200604360ce84c9c73f65fec328f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('314bb580-7bad-5821-9380-fc784d884106', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a8e64faa-0a34-536f-9c4a-6f9459d7c476', 1), '313f1b87dfac6c9b44e2e8244891716f842200604360ce84c9c73f65fec328f5',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/7abb8bef64d7020101fda4a2e35c5963725fe56e4847e3d31391fc7d6aeafa1b.mp3', 1201, '2026-09-13 19:26:39.121655', 'aa0dce0461816f9d7ea36b2ee4b912459b654d2f7796d36f8489a4a5cbbac41b', 'validated', '{"audio_key":"7abb8bef64d7020101fda4a2e35c5963725fe56e4847e3d31391fc7d6aeafa1b","entity_key":"wf_nominalization_density_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aa0dce0461816f9d7ea36b2ee4b912459b654d2f7796d36f8489a4a5cbbac41b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/7abb8bef64d7020101fda4a2e35c5963725fe56e4847e3d31391fc7d6aeafa1b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_stance_05 -> audio/generated/tr-TR/lexical/843730b79ed7c4b5b8efcf49d7ce87825fdf4606e0ac02a39f482ba0da73f418.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d68f6100-ddd2-58f4-96fd-94c46d49b138', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_stance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '202bb86fac5209481b295556af95e09794648ff3e6304f45bf99c9a7b66fddf3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5150ec41-9b40-5f59-a39a-d86270f1d224', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d68f6100-ddd2-58f4-96fd-94c46d49b138', 1), '202bb86fac5209481b295556af95e09794648ff3e6304f45bf99c9a7b66fddf3',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/843730b79ed7c4b5b8efcf49d7ce87825fdf4606e0ac02a39f482ba0da73f418.mp3', 1201, '2026-09-13 19:26:39.528426', 'eb7b2534e928eb97bcd11750b4dbe53686feae62db119ccabde722c56bb90b57', 'validated', '{"audio_key":"843730b79ed7c4b5b8efcf49d7ce87825fdf4606e0ac02a39f482ba0da73f418","entity_key":"lx_reported_stance_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eb7b2534e928eb97bcd11750b4dbe53686feae62db119ccabde722c56bb90b57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/843730b79ed7c4b5b8efcf49d7ce87825fdf4606e0ac02a39f482ba0da73f418.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_stance_05 -> audio/generated/tr-TR/lexical/843730b79ed7c4b5b8efcf49d7ce87825fdf4606e0ac02a39f482ba0da73f418.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e529e3ea-8f94-5ef5-b389-29be81ca0305', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_stance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '202bb86fac5209481b295556af95e09794648ff3e6304f45bf99c9a7b66fddf3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5fcc557-0641-53e7-bb15-fefd85d1915c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e529e3ea-8f94-5ef5-b389-29be81ca0305', 1), '202bb86fac5209481b295556af95e09794648ff3e6304f45bf99c9a7b66fddf3',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/843730b79ed7c4b5b8efcf49d7ce87825fdf4606e0ac02a39f482ba0da73f418.mp3', 1201, '2026-09-13 19:26:39.528426', 'eb7b2534e928eb97bcd11750b4dbe53686feae62db119ccabde722c56bb90b57', 'validated', '{"audio_key":"843730b79ed7c4b5b8efcf49d7ce87825fdf4606e0ac02a39f482ba0da73f418","entity_key":"wf_reported_stance_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eb7b2534e928eb97bcd11750b4dbe53686feae62db119ccabde722c56bb90b57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/843730b79ed7c4b5b8efcf49d7ce87825fdf4606e0ac02a39f482ba0da73f418.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_reframing_03 -> audio/generated/tr-TR/lexical/84bdda60b4e5db4a820b29c820fc46512ab7863a5ccf2a6cd21ae04b85071c3f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('14f5f0fc-90a4-520e-a3d5-eda321db2667', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_reframing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '99ed83c75b23a610522ea164abf7922e66c52117df7021bc9f75ba0e3e47efa1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('063d2a83-9536-580e-a712-95b6c80aa79b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('14f5f0fc-90a4-520e-a3d5-eda321db2667', 1), '99ed83c75b23a610522ea164abf7922e66c52117df7021bc9f75ba0e3e47efa1',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/84bdda60b4e5db4a820b29c820fc46512ab7863a5ccf2a6cd21ae04b85071c3f.mp3', 1201, '2026-09-13 19:07:34.996866', '7bf35d8bcab79eb50146d1b4f5047af2aef3cf779419ddcfb99cba85e08d2779', 'validated', '{"audio_key":"84bdda60b4e5db4a820b29c820fc46512ab7863a5ccf2a6cd21ae04b85071c3f","entity_key":"lx_concession_reframing_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7bf35d8bcab79eb50146d1b4f5047af2aef3cf779419ddcfb99cba85e08d2779","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/84bdda60b4e5db4a820b29c820fc46512ab7863a5ccf2a6cd21ae04b85071c3f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_reframing_03 -> audio/generated/tr-TR/lexical/84bdda60b4e5db4a820b29c820fc46512ab7863a5ccf2a6cd21ae04b85071c3f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5d13d19e-4926-57bd-80a6-47cd45ff9f38', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_reframing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '99ed83c75b23a610522ea164abf7922e66c52117df7021bc9f75ba0e3e47efa1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50c5ea81-0500-5591-af1e-990bc1eeb9f6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5d13d19e-4926-57bd-80a6-47cd45ff9f38', 1), '99ed83c75b23a610522ea164abf7922e66c52117df7021bc9f75ba0e3e47efa1',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/84bdda60b4e5db4a820b29c820fc46512ab7863a5ccf2a6cd21ae04b85071c3f.mp3', 1201, '2026-09-13 19:07:34.996866', '7bf35d8bcab79eb50146d1b4f5047af2aef3cf779419ddcfb99cba85e08d2779', 'validated', '{"audio_key":"84bdda60b4e5db4a820b29c820fc46512ab7863a5ccf2a6cd21ae04b85071c3f","entity_key":"wf_concession_reframing_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7bf35d8bcab79eb50146d1b4f5047af2aef3cf779419ddcfb99cba85e08d2779","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/84bdda60b4e5db4a820b29c820fc46512ab7863a5ccf2a6cd21ae04b85071c3f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_mediation_03 -> audio/generated/tr-TR/lexical/88266e17558655f64bb59406474ed7ce8c5c9ceeb097f56a3b4ae74ec25492c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c5d43d6b-dd6e-592a-86c3-997bd685dc7d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_mediation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f874c553abb1260a73b3693a4c32f5b5fea514c08a3aeb6197ab7dd2204a5f72'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48fa40c5-22f0-5e6b-b1f8-ca302b827f61', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c5d43d6b-dd6e-592a-86c3-997bd685dc7d', 1), 'f874c553abb1260a73b3693a4c32f5b5fea514c08a3aeb6197ab7dd2204a5f72',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/88266e17558655f64bb59406474ed7ce8c5c9ceeb097f56a3b4ae74ec25492c7.mp3', 1097, '2026-09-13 19:07:35.127462', 'b1226d523157dba27e889161e9fdaac6f12b0be4934be15c414c5cac8f9dde3c', 'validated', '{"audio_key":"88266e17558655f64bb59406474ed7ce8c5c9ceeb097f56a3b4ae74ec25492c7","entity_key":"lx_institutional_mediation_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1226d523157dba27e889161e9fdaac6f12b0be4934be15c414c5cac8f9dde3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/88266e17558655f64bb59406474ed7ce8c5c9ceeb097f56a3b4ae74ec25492c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_mediation_03 -> audio/generated/tr-TR/lexical/88266e17558655f64bb59406474ed7ce8c5c9ceeb097f56a3b4ae74ec25492c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dec28dc7-de1b-5c4f-8c1c-222fd9013929', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_mediation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f874c553abb1260a73b3693a4c32f5b5fea514c08a3aeb6197ab7dd2204a5f72'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29cf2571-6dd7-5a8a-82db-fc797ced31ba', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dec28dc7-de1b-5c4f-8c1c-222fd9013929', 1), 'f874c553abb1260a73b3693a4c32f5b5fea514c08a3aeb6197ab7dd2204a5f72',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/88266e17558655f64bb59406474ed7ce8c5c9ceeb097f56a3b4ae74ec25492c7.mp3', 1097, '2026-09-13 19:07:35.127462', 'b1226d523157dba27e889161e9fdaac6f12b0be4934be15c414c5cac8f9dde3c', 'validated', '{"audio_key":"88266e17558655f64bb59406474ed7ce8c5c9ceeb097f56a3b4ae74ec25492c7","entity_key":"wf_institutional_mediation_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1226d523157dba27e889161e9fdaac6f12b0be4934be15c414c5cac8f9dde3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/88266e17558655f64bb59406474ed7ce8c5c9ceeb097f56a3b4ae74ec25492c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nominalization_density_04 -> audio/generated/tr-TR/lexical/88266e17558655f64bb59406474ed7ce8c5c9ceeb097f56a3b4ae74ec25492c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c5d43d6b-dd6e-592a-86c3-997bd685dc7d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nominalization_density_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f874c553abb1260a73b3693a4c32f5b5fea514c08a3aeb6197ab7dd2204a5f72'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48fa40c5-22f0-5e6b-b1f8-ca302b827f61', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c5d43d6b-dd6e-592a-86c3-997bd685dc7d', 1), 'f874c553abb1260a73b3693a4c32f5b5fea514c08a3aeb6197ab7dd2204a5f72',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/88266e17558655f64bb59406474ed7ce8c5c9ceeb097f56a3b4ae74ec25492c7.mp3', 1097, '2026-09-13 19:07:35.127462', 'b1226d523157dba27e889161e9fdaac6f12b0be4934be15c414c5cac8f9dde3c', 'validated', '{"audio_key":"88266e17558655f64bb59406474ed7ce8c5c9ceeb097f56a3b4ae74ec25492c7","entity_key":"lx_nominalization_density_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1226d523157dba27e889161e9fdaac6f12b0be4934be15c414c5cac8f9dde3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/88266e17558655f64bb59406474ed7ce8c5c9ceeb097f56a3b4ae74ec25492c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nominalization_density_04 -> audio/generated/tr-TR/lexical/88266e17558655f64bb59406474ed7ce8c5c9ceeb097f56a3b4ae74ec25492c7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cc3bf41b-16c6-5e78-8cee-f68a2ed8f505', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nominalization_density_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f874c553abb1260a73b3693a4c32f5b5fea514c08a3aeb6197ab7dd2204a5f72'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3feb3600-94a4-578c-a233-ca4bdce7ede3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cc3bf41b-16c6-5e78-8cee-f68a2ed8f505', 1), 'f874c553abb1260a73b3693a4c32f5b5fea514c08a3aeb6197ab7dd2204a5f72',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/88266e17558655f64bb59406474ed7ce8c5c9ceeb097f56a3b4ae74ec25492c7.mp3', 1097, '2026-09-13 19:07:35.127462', 'b1226d523157dba27e889161e9fdaac6f12b0be4934be15c414c5cac8f9dde3c', 'validated', '{"audio_key":"88266e17558655f64bb59406474ed7ce8c5c9ceeb097f56a3b4ae74ec25492c7","entity_key":"wf_nominalization_density_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1226d523157dba27e889161e9fdaac6f12b0be4934be15c414c5cac8f9dde3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/88266e17558655f64bb59406474ed7ce8c5c9ceeb097f56a3b4ae74ec25492c7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_argument_architecture_05 -> audio/generated/tr-TR/lexical/8a84e3e9706ecb1e5721f71c1439ed5c42bd704fdbcefc3aba41137ec3692ce4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7935fc63-c53e-5640-958b-565e234d55dd', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_argument_architecture_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57c4597f291a6bf52c9929b07b7fc78118711f4b1c8fc62b200ea5a0a5fce8ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('434ca265-cbe3-54f7-8742-d4072b4484db', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7935fc63-c53e-5640-958b-565e234d55dd', 1), '57c4597f291a6bf52c9929b07b7fc78118711f4b1c8fc62b200ea5a0a5fce8ee',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8a84e3e9706ecb1e5721f71c1439ed5c42bd704fdbcefc3aba41137ec3692ce4.mp3', 1253, '2026-09-13 19:26:40.124127', '96a945619f42c707ce8efc775cd8ddc2fd9fde72260628c959b89ebc9390795c', 'validated', '{"audio_key":"8a84e3e9706ecb1e5721f71c1439ed5c42bd704fdbcefc3aba41137ec3692ce4","entity_key":"lx_argument_architecture_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"96a945619f42c707ce8efc775cd8ddc2fd9fde72260628c959b89ebc9390795c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8a84e3e9706ecb1e5721f71c1439ed5c42bd704fdbcefc3aba41137ec3692ce4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_argument_architecture_05 -> audio/generated/tr-TR/lexical/8a84e3e9706ecb1e5721f71c1439ed5c42bd704fdbcefc3aba41137ec3692ce4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('165e3439-9f0a-5963-8d7e-610876f43d5e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_argument_architecture_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57c4597f291a6bf52c9929b07b7fc78118711f4b1c8fc62b200ea5a0a5fce8ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('738f63a4-0c44-5f59-bf93-c999c80c62e7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('165e3439-9f0a-5963-8d7e-610876f43d5e', 1), '57c4597f291a6bf52c9929b07b7fc78118711f4b1c8fc62b200ea5a0a5fce8ee',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/8a84e3e9706ecb1e5721f71c1439ed5c42bd704fdbcefc3aba41137ec3692ce4.mp3', 1253, '2026-09-13 19:26:40.124127', '96a945619f42c707ce8efc775cd8ddc2fd9fde72260628c959b89ebc9390795c', 'validated', '{"audio_key":"8a84e3e9706ecb1e5721f71c1439ed5c42bd704fdbcefc3aba41137ec3692ce4","entity_key":"wf_argument_architecture_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"96a945619f42c707ce8efc775cd8ddc2fd9fde72260628c959b89ebc9390795c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/8a84e3e9706ecb1e5721f71c1439ed5c42bd704fdbcefc3aba41137ec3692ce4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidential_calibration_02 -> audio/generated/tr-TR/lexical/96acdf831d0b93e7b7682b559c5e8ee34f46130816cc1ff31484c5afff1ae095.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d42d6832-0c12-5ccc-bf65-a5aaea93abc6', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidential_calibration_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0e264c607b9194e8571a6d355b515806c7eca1a936c463f0f00508a6b316c5ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8fd58677-8208-5160-b84a-1efbed512ab7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d42d6832-0c12-5ccc-bf65-a5aaea93abc6', 1), '0e264c607b9194e8571a6d355b515806c7eca1a936c463f0f00508a6b316c5ee',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/96acdf831d0b93e7b7682b559c5e8ee34f46130816cc1ff31484c5afff1ae095.mp3', 1071, '2026-09-13 17:56:54.719584', '8517b50fb13594790ad1ca57d415c9d2ee7a275bb874e430dd6e034472357b3c', 'validated', '{"audio_key":"96acdf831d0b93e7b7682b559c5e8ee34f46130816cc1ff31484c5afff1ae095","entity_key":"lx_evidential_calibration_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8517b50fb13594790ad1ca57d415c9d2ee7a275bb874e430dd6e034472357b3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/96acdf831d0b93e7b7682b559c5e8ee34f46130816cc1ff31484c5afff1ae095.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidential_calibration_02 -> audio/generated/tr-TR/lexical/96acdf831d0b93e7b7682b559c5e8ee34f46130816cc1ff31484c5afff1ae095.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('176fb047-ed18-57b6-a5f2-bf0a806ce0c6', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidential_calibration_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0e264c607b9194e8571a6d355b515806c7eca1a936c463f0f00508a6b316c5ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee6c7f15-385b-5644-b2e8-20f504914e06', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('176fb047-ed18-57b6-a5f2-bf0a806ce0c6', 1), '0e264c607b9194e8571a6d355b515806c7eca1a936c463f0f00508a6b316c5ee',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/96acdf831d0b93e7b7682b559c5e8ee34f46130816cc1ff31484c5afff1ae095.mp3', 1071, '2026-09-13 17:56:54.719584', '8517b50fb13594790ad1ca57d415c9d2ee7a275bb874e430dd6e034472357b3c', 'validated', '{"audio_key":"96acdf831d0b93e7b7682b559c5e8ee34f46130816cc1ff31484c5afff1ae095","entity_key":"wf_evidential_calibration_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8517b50fb13594790ad1ca57d415c9d2ee7a275bb874e430dd6e034472357b3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/96acdf831d0b93e7b7682b559c5e8ee34f46130816cc1ff31484c5afff1ae095.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_mediation_01 -> audio/generated/tr-TR/lexical/96f54bbebe18b40dd3b92c31805d1f971aad58cba01f6ab7fa6f0f7f2ef33563.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('68400317-7266-5544-a3a3-d1e9d442fb97', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_mediation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2ff44859dc71487b5fce5d774018fb42de1fbc16a935f06f9d840fe6412b94c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0cac353-be55-58c8-9b8f-58aa457f4bb0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('68400317-7266-5544-a3a3-d1e9d442fb97', 1), '2ff44859dc71487b5fce5d774018fb42de1fbc16a935f06f9d840fe6412b94c5',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/96f54bbebe18b40dd3b92c31805d1f971aad58cba01f6ab7fa6f0f7f2ef33563.mp3', 1201, '2026-09-13 19:07:37.068546', '7a1b8857036c652c74dbf93d42281dd5d2e23ab51d2f485913d3de64b8e5791d', 'validated', '{"audio_key":"96f54bbebe18b40dd3b92c31805d1f971aad58cba01f6ab7fa6f0f7f2ef33563","entity_key":"lx_institutional_mediation_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7a1b8857036c652c74dbf93d42281dd5d2e23ab51d2f485913d3de64b8e5791d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/96f54bbebe18b40dd3b92c31805d1f971aad58cba01f6ab7fa6f0f7f2ef33563.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_mediation_01 -> audio/generated/tr-TR/lexical/96f54bbebe18b40dd3b92c31805d1f971aad58cba01f6ab7fa6f0f7f2ef33563.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2f9a6f38-12b6-5219-aa56-33b9e2866cb9', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_mediation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2ff44859dc71487b5fce5d774018fb42de1fbc16a935f06f9d840fe6412b94c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd7a97ab-b76b-5795-9695-60f4744e753f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2f9a6f38-12b6-5219-aa56-33b9e2866cb9', 1), '2ff44859dc71487b5fce5d774018fb42de1fbc16a935f06f9d840fe6412b94c5',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/96f54bbebe18b40dd3b92c31805d1f971aad58cba01f6ab7fa6f0f7f2ef33563.mp3', 1201, '2026-09-13 19:07:37.068546', '7a1b8857036c652c74dbf93d42281dd5d2e23ab51d2f485913d3de64b8e5791d', 'validated', '{"audio_key":"96f54bbebe18b40dd3b92c31805d1f971aad58cba01f6ab7fa6f0f7f2ef33563","entity_key":"wf_institutional_mediation_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7a1b8857036c652c74dbf93d42281dd5d2e23ab51d2f485913d3de64b8e5791d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/96f54bbebe18b40dd3b92c31805d1f971aad58cba01f6ab7fa6f0f7f2ef33563.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_stance_04 -> audio/generated/tr-TR/lexical/9fa6bb95755bb2de6ef5eeb669a024036437551d7c5821a8126af1a959387865.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6477b035-a692-5b7c-ab46-245dca4d6a12', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_stance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2748d2268e58483b5ed552d902a579356fc0873a4974fb600d25ebfdc93f7c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1e010de-d097-54be-bd1a-7b23d3d7ea28', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6477b035-a692-5b7c-ab46-245dca4d6a12', 1), 'c2748d2268e58483b5ed552d902a579356fc0873a4974fb600d25ebfdc93f7c9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/9fa6bb95755bb2de6ef5eeb669a024036437551d7c5821a8126af1a959387865.mp3', 1253, '2026-09-13 19:26:40.600654', '12a7160644047414475771f0047346e5e468c831f1279d4649d909e34a808411', 'validated', '{"audio_key":"9fa6bb95755bb2de6ef5eeb669a024036437551d7c5821a8126af1a959387865","entity_key":"lx_reported_stance_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"12a7160644047414475771f0047346e5e468c831f1279d4649d909e34a808411","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/9fa6bb95755bb2de6ef5eeb669a024036437551d7c5821a8126af1a959387865.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_stance_04 -> audio/generated/tr-TR/lexical/9fa6bb95755bb2de6ef5eeb669a024036437551d7c5821a8126af1a959387865.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2a007ee3-1a57-58af-bc16-d19beb1660a3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_stance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2748d2268e58483b5ed552d902a579356fc0873a4974fb600d25ebfdc93f7c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49072477-8cd5-55ce-83e5-dffe788417d9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2a007ee3-1a57-58af-bc16-d19beb1660a3', 1), 'c2748d2268e58483b5ed552d902a579356fc0873a4974fb600d25ebfdc93f7c9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/9fa6bb95755bb2de6ef5eeb669a024036437551d7c5821a8126af1a959387865.mp3', 1253, '2026-09-13 19:26:40.600654', '12a7160644047414475771f0047346e5e468c831f1279d4649d909e34a808411', 'validated', '{"audio_key":"9fa6bb95755bb2de6ef5eeb669a024036437551d7c5821a8126af1a959387865","entity_key":"wf_reported_stance_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"12a7160644047414475771f0047346e5e468c831f1279d4649d909e34a808411","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/9fa6bb95755bb2de6ef5eeb669a024036437551d7c5821a8126af1a959387865.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_mediation_06 -> audio/generated/tr-TR/lexical/a8d5cf3f1e318d295456040fcf5ff98d6f479293354d55a8355d5fae85520e37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3cc04576-d83b-57a9-947c-d236d4cb9ea8', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_mediation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f242cd80e9d7bc09c9b15f46ad58541b93ebef4e8120364357b52157c1f0d51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0331dda1-2f85-5e91-af3a-137e004efc7d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3cc04576-d83b-57a9-947c-d236d4cb9ea8', 1), '7f242cd80e9d7bc09c9b15f46ad58541b93ebef4e8120364357b52157c1f0d51',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a8d5cf3f1e318d295456040fcf5ff98d6f479293354d55a8355d5fae85520e37.mp3', 1201, '2026-09-13 19:26:41.176125', '02a931bdef0397661fba31fb64bdec153a48a0b772a70099ed961e563bc35281', 'validated', '{"audio_key":"a8d5cf3f1e318d295456040fcf5ff98d6f479293354d55a8355d5fae85520e37","entity_key":"lx_institutional_mediation_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"02a931bdef0397661fba31fb64bdec153a48a0b772a70099ed961e563bc35281","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a8d5cf3f1e318d295456040fcf5ff98d6f479293354d55a8355d5fae85520e37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_mediation_06 -> audio/generated/tr-TR/lexical/a8d5cf3f1e318d295456040fcf5ff98d6f479293354d55a8355d5fae85520e37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f45e286b-3a2e-569d-9988-89008ad42820', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_mediation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f242cd80e9d7bc09c9b15f46ad58541b93ebef4e8120364357b52157c1f0d51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cbdb3f13-2fec-5f13-baf6-2ffea5d93d9d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f45e286b-3a2e-569d-9988-89008ad42820', 1), '7f242cd80e9d7bc09c9b15f46ad58541b93ebef4e8120364357b52157c1f0d51',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/a8d5cf3f1e318d295456040fcf5ff98d6f479293354d55a8355d5fae85520e37.mp3', 1201, '2026-09-13 19:26:41.176125', '02a931bdef0397661fba31fb64bdec153a48a0b772a70099ed961e563bc35281', 'validated', '{"audio_key":"a8d5cf3f1e318d295456040fcf5ff98d6f479293354d55a8355d5fae85520e37","entity_key":"wf_institutional_mediation_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"02a931bdef0397661fba31fb64bdec153a48a0b772a70099ed961e563bc35281","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/a8d5cf3f1e318d295456040fcf5ff98d6f479293354d55a8355d5fae85520e37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_policy_synthesis_04 -> audio/generated/tr-TR/lexical/b5df5af658c12e5505ab63edad2a28b720536a14fda09a1bad275dd16085bc38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3040dcbe-99bc-5d0d-91c5-977206fadf3a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_policy_synthesis_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '223c4f96c9881a364a3b8095972029e7a742759f837d186a45034606225de3f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('72e063f2-376d-5257-9609-deb4e42aab55', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3040dcbe-99bc-5d0d-91c5-977206fadf3a', 1), '223c4f96c9881a364a3b8095972029e7a742759f837d186a45034606225de3f8',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b5df5af658c12e5505ab63edad2a28b720536a14fda09a1bad275dd16085bc38.mp3', 1071, '2026-09-13 17:56:58.629213', '5389adbe743cf96d255992b60e4dcde3bdf609fb45582025b80f99367101b229', 'validated', '{"audio_key":"b5df5af658c12e5505ab63edad2a28b720536a14fda09a1bad275dd16085bc38","entity_key":"lx_policy_synthesis_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5389adbe743cf96d255992b60e4dcde3bdf609fb45582025b80f99367101b229","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b5df5af658c12e5505ab63edad2a28b720536a14fda09a1bad275dd16085bc38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_policy_synthesis_04 -> audio/generated/tr-TR/lexical/b5df5af658c12e5505ab63edad2a28b720536a14fda09a1bad275dd16085bc38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('900a0a47-5c6e-553b-8dca-cb582002511b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_policy_synthesis_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '223c4f96c9881a364a3b8095972029e7a742759f837d186a45034606225de3f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5ee1e67-4c3f-5b5a-8fd1-0770d97b59c7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('900a0a47-5c6e-553b-8dca-cb582002511b', 1), '223c4f96c9881a364a3b8095972029e7a742759f837d186a45034606225de3f8',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b5df5af658c12e5505ab63edad2a28b720536a14fda09a1bad275dd16085bc38.mp3', 1071, '2026-09-13 17:56:58.629213', '5389adbe743cf96d255992b60e4dcde3bdf609fb45582025b80f99367101b229', 'validated', '{"audio_key":"b5df5af658c12e5505ab63edad2a28b720536a14fda09a1bad275dd16085bc38","entity_key":"wf_policy_synthesis_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5389adbe743cf96d255992b60e4dcde3bdf609fb45582025b80f99367101b229","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b5df5af658c12e5505ab63edad2a28b720536a14fda09a1bad275dd16085bc38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nominalization_density_06 -> audio/generated/tr-TR/lexical/b730136ac9312db2614fc38acb27727dfe3725e665ae3920cefbd643102ff4c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('33601595-d6dc-54be-b9f1-9aec495d76ea', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nominalization_density_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fecc1012b2c37ce4ec223b060975e212c9e32c902befa29356248a6ae7697af9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6eda52e-01da-5c09-94d6-28d897e78438', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('33601595-d6dc-54be-b9f1-9aec495d76ea', 1), 'fecc1012b2c37ce4ec223b060975e212c9e32c902befa29356248a6ae7697af9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b730136ac9312db2614fc38acb27727dfe3725e665ae3920cefbd643102ff4c4.mp3', 1515, '2026-09-13 19:26:41.671042', 'd4b4b23628b1a88261575885ac9b5976f0b3ac180172fcd0d676f40803ea9d78', 'validated', '{"audio_key":"b730136ac9312db2614fc38acb27727dfe3725e665ae3920cefbd643102ff4c4","entity_key":"lx_nominalization_density_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d4b4b23628b1a88261575885ac9b5976f0b3ac180172fcd0d676f40803ea9d78","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b730136ac9312db2614fc38acb27727dfe3725e665ae3920cefbd643102ff4c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nominalization_density_06 -> audio/generated/tr-TR/lexical/b730136ac9312db2614fc38acb27727dfe3725e665ae3920cefbd643102ff4c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a48b16a2-ad9b-559d-a26e-fd7ae965de10', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nominalization_density_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fecc1012b2c37ce4ec223b060975e212c9e32c902befa29356248a6ae7697af9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('923128ca-8805-5f34-be89-f4a3b6154ad0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a48b16a2-ad9b-559d-a26e-fd7ae965de10', 1), 'fecc1012b2c37ce4ec223b060975e212c9e32c902befa29356248a6ae7697af9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/b730136ac9312db2614fc38acb27727dfe3725e665ae3920cefbd643102ff4c4.mp3', 1515, '2026-09-13 19:26:41.671042', 'd4b4b23628b1a88261575885ac9b5976f0b3ac180172fcd0d676f40803ea9d78', 'validated', '{"audio_key":"b730136ac9312db2614fc38acb27727dfe3725e665ae3920cefbd643102ff4c4","entity_key":"wf_nominalization_density_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d4b4b23628b1a88261575885ac9b5976f0b3ac180172fcd0d676f40803ea9d78","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/b730136ac9312db2614fc38acb27727dfe3725e665ae3920cefbd643102ff4c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_idiomatic_precision_02 -> audio/generated/tr-TR/lexical/baf94f2844c38577e453b63d167c966855b04d289f17b4673954f9e5189bd0c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('155c9324-ab5e-520a-8b96-af85efef040a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_idiomatic_precision_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '647d97b951b9211a7ac5b2ab8c76a8c9f49e9337907bcba0b5939c4f4d6b5379'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('248a97fd-95ff-5805-b108-5e21a989d9a2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('155c9324-ab5e-520a-8b96-af85efef040a', 1), '647d97b951b9211a7ac5b2ab8c76a8c9f49e9337907bcba0b5939c4f4d6b5379',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/baf94f2844c38577e453b63d167c966855b04d289f17b4673954f9e5189bd0c3.mp3', 1097, '2026-09-13 19:26:42.220242', 'd571854b38fa6ed06e740e206715f5e698054767c38c3ee44c33c8ef99a46e28', 'validated', '{"audio_key":"baf94f2844c38577e453b63d167c966855b04d289f17b4673954f9e5189bd0c3","entity_key":"lx_idiomatic_precision_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d571854b38fa6ed06e740e206715f5e698054767c38c3ee44c33c8ef99a46e28","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/baf94f2844c38577e453b63d167c966855b04d289f17b4673954f9e5189bd0c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_idiomatic_precision_02 -> audio/generated/tr-TR/lexical/baf94f2844c38577e453b63d167c966855b04d289f17b4673954f9e5189bd0c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('755c4373-96b0-55fd-afcf-0d888dae842f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_idiomatic_precision_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '647d97b951b9211a7ac5b2ab8c76a8c9f49e9337907bcba0b5939c4f4d6b5379'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a272023-397d-5a11-ad2a-9d5cf51340f2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('755c4373-96b0-55fd-afcf-0d888dae842f', 1), '647d97b951b9211a7ac5b2ab8c76a8c9f49e9337907bcba0b5939c4f4d6b5379',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/baf94f2844c38577e453b63d167c966855b04d289f17b4673954f9e5189bd0c3.mp3', 1097, '2026-09-13 19:26:42.220242', 'd571854b38fa6ed06e740e206715f5e698054767c38c3ee44c33c8ef99a46e28', 'validated', '{"audio_key":"baf94f2844c38577e453b63d167c966855b04d289f17b4673954f9e5189bd0c3","entity_key":"wf_idiomatic_precision_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d571854b38fa6ed06e740e206715f5e698054767c38c3ee44c33c8ef99a46e28","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/baf94f2844c38577e453b63d167c966855b04d289f17b4673954f9e5189bd0c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c1_expert_roundtable_capstone_02 -> audio/generated/tr-TR/lexical/bc1f918cc93e739a8a64107de2bd7c74838199f50a4e2bc2a163eff1a3188a3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('39f164aa-5e6f-5700-8f06-62e15a4a77f1', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c1_expert_roundtable_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c079a753e07c8d8281a83f59df3981474cc09f35cc64255c09697e586875ca9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f0232f0-de09-5b65-b086-4f391ba10500', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('39f164aa-5e6f-5700-8f06-62e15a4a77f1', 1), '2c079a753e07c8d8281a83f59df3981474cc09f35cc64255c09697e586875ca9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/bc1f918cc93e739a8a64107de2bd7c74838199f50a4e2bc2a163eff1a3188a3a.mp3', 1149, '2026-09-13 19:26:42.759745', '80e382f9d97abe5c3c880a2211a40e333cef7fb0febee10763bf7c0385f0fa04', 'validated', '{"audio_key":"bc1f918cc93e739a8a64107de2bd7c74838199f50a4e2bc2a163eff1a3188a3a","entity_key":"lx_c1_expert_roundtable_capstone_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"80e382f9d97abe5c3c880a2211a40e333cef7fb0febee10763bf7c0385f0fa04","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/bc1f918cc93e739a8a64107de2bd7c74838199f50a4e2bc2a163eff1a3188a3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c1_expert_roundtable_capstone_02 -> audio/generated/tr-TR/lexical/bc1f918cc93e739a8a64107de2bd7c74838199f50a4e2bc2a163eff1a3188a3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d4d70bcb-edf9-561c-acef-503fa42cf286', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c1_expert_roundtable_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c079a753e07c8d8281a83f59df3981474cc09f35cc64255c09697e586875ca9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1fa68375-24f1-5303-b09f-51cdf067c8cd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d4d70bcb-edf9-561c-acef-503fa42cf286', 1), '2c079a753e07c8d8281a83f59df3981474cc09f35cc64255c09697e586875ca9',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/bc1f918cc93e739a8a64107de2bd7c74838199f50a4e2bc2a163eff1a3188a3a.mp3', 1149, '2026-09-13 19:26:42.759745', '80e382f9d97abe5c3c880a2211a40e333cef7fb0febee10763bf7c0385f0fa04', 'validated', '{"audio_key":"bc1f918cc93e739a8a64107de2bd7c74838199f50a4e2bc2a163eff1a3188a3a","entity_key":"wf_c1_expert_roundtable_capstone_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"80e382f9d97abe5c3c880a2211a40e333cef7fb0febee10763bf7c0385f0fa04","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/bc1f918cc93e739a8a64107de2bd7c74838199f50a4e2bc2a163eff1a3188a3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c1_expert_roundtable_capstone_06 -> audio/generated/tr-TR/lexical/bf22288ffc9880e0d9b1e387851f8e36d7deb78cdc4f5919bab9e0da7ef4c33a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bb54c514-7631-55b6-bde4-90a299296e7f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c1_expert_roundtable_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4dda997738dcf99bd5bee9c5eb5cd2ddf3979d29d161acf3d54e401742bd284'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83591a5d-8c65-5421-a20d-75482c93196b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bb54c514-7631-55b6-bde4-90a299296e7f', 1), 'a4dda997738dcf99bd5bee9c5eb5cd2ddf3979d29d161acf3d54e401742bd284',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/bf22288ffc9880e0d9b1e387851f8e36d7deb78cdc4f5919bab9e0da7ef4c33a.mp3', 1802, '2026-09-13 19:26:43.370909', '24fc0b092202177aa4da4752fe67232640675f1e038614a714fa3a4d6d938e91', 'validated', '{"audio_key":"bf22288ffc9880e0d9b1e387851f8e36d7deb78cdc4f5919bab9e0da7ef4c33a","entity_key":"lx_c1_expert_roundtable_capstone_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"24fc0b092202177aa4da4752fe67232640675f1e038614a714fa3a4d6d938e91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/bf22288ffc9880e0d9b1e387851f8e36d7deb78cdc4f5919bab9e0da7ef4c33a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c1_expert_roundtable_capstone_06 -> audio/generated/tr-TR/lexical/bf22288ffc9880e0d9b1e387851f8e36d7deb78cdc4f5919bab9e0da7ef4c33a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('91c94dc6-1cc8-57b7-aed1-6c1e35e40185', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c1_expert_roundtable_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4dda997738dcf99bd5bee9c5eb5cd2ddf3979d29d161acf3d54e401742bd284'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94048f25-e49a-5b40-a1bb-78f1513db761', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('91c94dc6-1cc8-57b7-aed1-6c1e35e40185', 1), 'a4dda997738dcf99bd5bee9c5eb5cd2ddf3979d29d161acf3d54e401742bd284',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/bf22288ffc9880e0d9b1e387851f8e36d7deb78cdc4f5919bab9e0da7ef4c33a.mp3', 1802, '2026-09-13 19:26:43.370909', '24fc0b092202177aa4da4752fe67232640675f1e038614a714fa3a4d6d938e91', 'validated', '{"audio_key":"bf22288ffc9880e0d9b1e387851f8e36d7deb78cdc4f5919bab9e0da7ef4c33a","entity_key":"wf_c1_expert_roundtable_capstone_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"24fc0b092202177aa4da4752fe67232640675f1e038614a714fa3a4d6d938e91","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/bf22288ffc9880e0d9b1e387851f8e36d7deb78cdc4f5919bab9e0da7ef4c33a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidential_calibration_04 -> audio/generated/tr-TR/lexical/c2b177b6fa78f29d16d7bbea83fdeffb8b4ae364adb2b5aff9926075febb5f10.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('17bd78ca-133d-52f8-af81-fa24a3cfb69c', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidential_calibration_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bdc1a92f556366fea07be678c47f995224e8109fee548721cd204841b47cdc7c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60af2ab4-e206-5949-9b7c-a159db4768b7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('17bd78ca-133d-52f8-af81-fa24a3cfb69c', 1), 'bdc1a92f556366fea07be678c47f995224e8109fee548721cd204841b47cdc7c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c2b177b6fa78f29d16d7bbea83fdeffb8b4ae364adb2b5aff9926075febb5f10.mp3', 1149, '2026-09-13 19:07:38.891800', 'c7a726edca9336cc0d048ae319d4bafc40043348df3a5b4e6e00af4d2649b26f', 'validated', '{"audio_key":"c2b177b6fa78f29d16d7bbea83fdeffb8b4ae364adb2b5aff9926075febb5f10","entity_key":"lx_evidential_calibration_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c7a726edca9336cc0d048ae319d4bafc40043348df3a5b4e6e00af4d2649b26f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c2b177b6fa78f29d16d7bbea83fdeffb8b4ae364adb2b5aff9926075febb5f10.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidential_calibration_04 -> audio/generated/tr-TR/lexical/c2b177b6fa78f29d16d7bbea83fdeffb8b4ae364adb2b5aff9926075febb5f10.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b7e4e8cc-c832-51e1-923b-e28e35cc24f7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidential_calibration_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bdc1a92f556366fea07be678c47f995224e8109fee548721cd204841b47cdc7c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2303e1d-b0a5-5086-b155-3e88bd0c8f30', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b7e4e8cc-c832-51e1-923b-e28e35cc24f7', 1), 'bdc1a92f556366fea07be678c47f995224e8109fee548721cd204841b47cdc7c',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c2b177b6fa78f29d16d7bbea83fdeffb8b4ae364adb2b5aff9926075febb5f10.mp3', 1149, '2026-09-13 19:07:38.891800', 'c7a726edca9336cc0d048ae319d4bafc40043348df3a5b4e6e00af4d2649b26f', 'validated', '{"audio_key":"c2b177b6fa78f29d16d7bbea83fdeffb8b4ae364adb2b5aff9926075febb5f10","entity_key":"wf_evidential_calibration_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c7a726edca9336cc0d048ae319d4bafc40043348df3a5b4e6e00af4d2649b26f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c2b177b6fa78f29d16d7bbea83fdeffb8b4ae364adb2b5aff9926075febb5f10.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_shifting_05 -> audio/generated/tr-TR/lexical/c393c2b2e851b8b9c098a779d2f5869355e2d0f15512f4c645397448c975b4e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('16691e7d-922e-5aa3-9a41-8b053954bf6f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_shifting_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4de1b3e5f0458f5d928070b4467a01b9fd8a31e2bb9043a2671f54127051ff3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1c6c565-c2dc-5764-b40a-6e9df13fe195', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('16691e7d-922e-5aa3-9a41-8b053954bf6f', 1), '4de1b3e5f0458f5d928070b4467a01b9fd8a31e2bb9043a2671f54127051ff3e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c393c2b2e851b8b9c098a779d2f5869355e2d0f15512f4c645397448c975b4e8.mp3', 1436, '2026-09-13 19:26:43.843936', 'f1ad4066fa536a00fda4da75aa69129a8a1d607dc94e3bd3938ac9df61e2485c', 'validated', '{"audio_key":"c393c2b2e851b8b9c098a779d2f5869355e2d0f15512f4c645397448c975b4e8","entity_key":"lx_register_shifting_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f1ad4066fa536a00fda4da75aa69129a8a1d607dc94e3bd3938ac9df61e2485c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c393c2b2e851b8b9c098a779d2f5869355e2d0f15512f4c645397448c975b4e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_shifting_05 -> audio/generated/tr-TR/lexical/c393c2b2e851b8b9c098a779d2f5869355e2d0f15512f4c645397448c975b4e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f8f3b544-316c-52b1-a7a6-ba96cc559da0', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_shifting_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4de1b3e5f0458f5d928070b4467a01b9fd8a31e2bb9043a2671f54127051ff3e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1286fadc-a3e9-5f84-9784-8384c9dd3cb2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f8f3b544-316c-52b1-a7a6-ba96cc559da0', 1), '4de1b3e5f0458f5d928070b4467a01b9fd8a31e2bb9043a2671f54127051ff3e',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c393c2b2e851b8b9c098a779d2f5869355e2d0f15512f4c645397448c975b4e8.mp3', 1436, '2026-09-13 19:26:43.843936', 'f1ad4066fa536a00fda4da75aa69129a8a1d607dc94e3bd3938ac9df61e2485c', 'validated', '{"audio_key":"c393c2b2e851b8b9c098a779d2f5869355e2d0f15512f4c645397448c975b4e8","entity_key":"wf_register_shifting_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f1ad4066fa536a00fda4da75aa69129a8a1d607dc94e3bd3938ac9df61e2485c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c393c2b2e851b8b9c098a779d2f5869355e2d0f15512f4c645397448c975b4e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nominalization_density_05 -> audio/generated/tr-TR/lexical/c3bc5d2c6e223d30be0ec5206d30ab09aa4c568117a237a537edac1ead49398b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5a0766dd-1c91-51fd-8d70-5e71373a2789', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nominalization_density_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b00ff909a8c5cc6a4c6fa2edaeda61f4c49200359a64e741503ef0f6d102987a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78c19b93-21b5-51f4-aab3-7d9c1916dae9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5a0766dd-1c91-51fd-8d70-5e71373a2789', 1), 'b00ff909a8c5cc6a4c6fa2edaeda61f4c49200359a64e741503ef0f6d102987a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c3bc5d2c6e223d30be0ec5206d30ab09aa4c568117a237a537edac1ead49398b.mp3', 1201, '2026-09-13 19:26:44.436298', '7039444e122b7c063bcd1765903449b2365dfa5c3deb31644a73358e48f4e703', 'validated', '{"audio_key":"c3bc5d2c6e223d30be0ec5206d30ab09aa4c568117a237a537edac1ead49398b","entity_key":"lx_nominalization_density_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7039444e122b7c063bcd1765903449b2365dfa5c3deb31644a73358e48f4e703","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c3bc5d2c6e223d30be0ec5206d30ab09aa4c568117a237a537edac1ead49398b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nominalization_density_05 -> audio/generated/tr-TR/lexical/c3bc5d2c6e223d30be0ec5206d30ab09aa4c568117a237a537edac1ead49398b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('be3a873d-473d-59ac-b093-a28d04acc65a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nominalization_density_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b00ff909a8c5cc6a4c6fa2edaeda61f4c49200359a64e741503ef0f6d102987a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07748d33-690f-57d9-8523-7ec56677c3b6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('be3a873d-473d-59ac-b093-a28d04acc65a', 1), 'b00ff909a8c5cc6a4c6fa2edaeda61f4c49200359a64e741503ef0f6d102987a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/c3bc5d2c6e223d30be0ec5206d30ab09aa4c568117a237a537edac1ead49398b.mp3', 1201, '2026-09-13 19:26:44.436298', '7039444e122b7c063bcd1765903449b2365dfa5c3deb31644a73358e48f4e703', 'validated', '{"audio_key":"c3bc5d2c6e223d30be0ec5206d30ab09aa4c568117a237a537edac1ead49398b","entity_key":"wf_nominalization_density_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7039444e122b7c063bcd1765903449b2365dfa5c3deb31644a73358e48f4e703","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/c3bc5d2c6e223d30be0ec5206d30ab09aa4c568117a237a537edac1ead49398b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_policy_synthesis_05 -> audio/generated/tr-TR/lexical/dc5efae8575483a42acc29d675d9e8d25d40f4dcee7e7fb5f8f2aa42f55b4de1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1f70b8b5-0097-5e21-b6d6-3c7de89a101e', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_policy_synthesis_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '261943d6711c57be0dbf81990ef0e0b38294cbd2f2f1568a89c33c16a8519735'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd993528-9c3d-59c8-af97-959a43a69069', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1f70b8b5-0097-5e21-b6d6-3c7de89a101e', 1), '261943d6711c57be0dbf81990ef0e0b38294cbd2f2f1568a89c33c16a8519735',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/dc5efae8575483a42acc29d675d9e8d25d40f4dcee7e7fb5f8f2aa42f55b4de1.mp3', 1488, '2026-09-13 19:26:44.920444', '144844362830e41392b1faaef9f0cfbce45b513766ed2c6f28442943aa3393de', 'validated', '{"audio_key":"dc5efae8575483a42acc29d675d9e8d25d40f4dcee7e7fb5f8f2aa42f55b4de1","entity_key":"lx_policy_synthesis_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"144844362830e41392b1faaef9f0cfbce45b513766ed2c6f28442943aa3393de","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/dc5efae8575483a42acc29d675d9e8d25d40f4dcee7e7fb5f8f2aa42f55b4de1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_policy_synthesis_05 -> audio/generated/tr-TR/lexical/dc5efae8575483a42acc29d675d9e8d25d40f4dcee7e7fb5f8f2aa42f55b4de1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5973cd6f-9050-5b10-bbeb-657e50b4a231', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_policy_synthesis_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '261943d6711c57be0dbf81990ef0e0b38294cbd2f2f1568a89c33c16a8519735'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0cd56758-633d-504c-be57-7f53529643c2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5973cd6f-9050-5b10-bbeb-657e50b4a231', 1), '261943d6711c57be0dbf81990ef0e0b38294cbd2f2f1568a89c33c16a8519735',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/dc5efae8575483a42acc29d675d9e8d25d40f4dcee7e7fb5f8f2aa42f55b4de1.mp3', 1488, '2026-09-13 19:26:44.920444', '144844362830e41392b1faaef9f0cfbce45b513766ed2c6f28442943aa3393de', 'validated', '{"audio_key":"dc5efae8575483a42acc29d675d9e8d25d40f4dcee7e7fb5f8f2aa42f55b4de1","entity_key":"wf_policy_synthesis_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"144844362830e41392b1faaef9f0cfbce45b513766ed2c6f28442943aa3393de","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/dc5efae8575483a42acc29d675d9e8d25d40f4dcee7e7fb5f8f2aa42f55b4de1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c1_expert_roundtable_capstone_04 -> audio/generated/tr-TR/lexical/de397a8c6f04849accf04d467e5cb39455c6660e46f3b7372b826046439a6e44.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a9aa4fba-b3e2-5c25-8e05-7f8bb8d0db0f', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c1_expert_roundtable_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c391bfb279690a1a45f09dfa2d5cbd5f2a7fa889b1f3b8d31b3f417f80625ec1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2cc67a60-c561-5cbe-ab8d-d56e28c58b00', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a9aa4fba-b3e2-5c25-8e05-7f8bb8d0db0f', 1), 'c391bfb279690a1a45f09dfa2d5cbd5f2a7fa889b1f3b8d31b3f417f80625ec1',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/de397a8c6f04849accf04d467e5cb39455c6660e46f3b7372b826046439a6e44.mp3', 1280, '2026-09-13 19:26:45.521963', '4172fe260a3347a29c3736115ea7f23e881d6a77b9e0528ff088cbe380552f14', 'validated', '{"audio_key":"de397a8c6f04849accf04d467e5cb39455c6660e46f3b7372b826046439a6e44","entity_key":"lx_c1_expert_roundtable_capstone_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4172fe260a3347a29c3736115ea7f23e881d6a77b9e0528ff088cbe380552f14","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/de397a8c6f04849accf04d467e5cb39455c6660e46f3b7372b826046439a6e44.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c1_expert_roundtable_capstone_04 -> audio/generated/tr-TR/lexical/de397a8c6f04849accf04d467e5cb39455c6660e46f3b7372b826046439a6e44.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3f9b7f12-2cdc-5aad-a4ba-398991967d10', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c1_expert_roundtable_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c391bfb279690a1a45f09dfa2d5cbd5f2a7fa889b1f3b8d31b3f417f80625ec1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0dd6630-b978-5e67-a00e-d6d97e5a51f5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3f9b7f12-2cdc-5aad-a4ba-398991967d10', 1), 'c391bfb279690a1a45f09dfa2d5cbd5f2a7fa889b1f3b8d31b3f417f80625ec1',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/de397a8c6f04849accf04d467e5cb39455c6660e46f3b7372b826046439a6e44.mp3', 1280, '2026-09-13 19:26:45.521963', '4172fe260a3347a29c3736115ea7f23e881d6a77b9e0528ff088cbe380552f14', 'validated', '{"audio_key":"de397a8c6f04849accf04d467e5cb39455c6660e46f3b7372b826046439a6e44","entity_key":"wf_c1_expert_roundtable_capstone_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4172fe260a3347a29c3736115ea7f23e881d6a77b9e0528ff088cbe380552f14","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/de397a8c6f04849accf04d467e5cb39455c6660e46f3b7372b826046439a6e44.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_evidential_calibration_05 -> audio/generated/tr-TR/lexical/e635d90a85e9e2913ca31ba59efec65c4a271083c8f5368d5820e8e691592c0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8313305c-3c4c-5239-8572-b3071c7f365d', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_evidential_calibration_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd8eed1219284da51e5879b382ec60466e29e043afa8b6ca5daa50ccbfa5fce7f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21937827-7495-55c6-9f6e-11c6e90d8933', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8313305c-3c4c-5239-8572-b3071c7f365d', 1), 'd8eed1219284da51e5879b382ec60466e29e043afa8b6ca5daa50ccbfa5fce7f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e635d90a85e9e2913ca31ba59efec65c4a271083c8f5368d5820e8e691592c0c.mp3', 1201, '2026-09-13 17:57:04.332211', '8b2853987b0bccf4731bff5d498c462ede79722cff68a611f47d66a977232a54', 'validated', '{"audio_key":"e635d90a85e9e2913ca31ba59efec65c4a271083c8f5368d5820e8e691592c0c","entity_key":"lx_evidential_calibration_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8b2853987b0bccf4731bff5d498c462ede79722cff68a611f47d66a977232a54","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e635d90a85e9e2913ca31ba59efec65c4a271083c8f5368d5820e8e691592c0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_evidential_calibration_05 -> audio/generated/tr-TR/lexical/e635d90a85e9e2913ca31ba59efec65c4a271083c8f5368d5820e8e691592c0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b7106ab2-7a71-54ee-b092-200bed6932dc', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_evidential_calibration_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd8eed1219284da51e5879b382ec60466e29e043afa8b6ca5daa50ccbfa5fce7f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('158522c1-e96c-5af4-b406-149cc0451499', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b7106ab2-7a71-54ee-b092-200bed6932dc', 1), 'd8eed1219284da51e5879b382ec60466e29e043afa8b6ca5daa50ccbfa5fce7f',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e635d90a85e9e2913ca31ba59efec65c4a271083c8f5368d5820e8e691592c0c.mp3', 1201, '2026-09-13 17:57:04.332211', '8b2853987b0bccf4731bff5d498c462ede79722cff68a611f47d66a977232a54', 'validated', '{"audio_key":"e635d90a85e9e2913ca31ba59efec65c4a271083c8f5368d5820e8e691592c0c","entity_key":"wf_evidential_calibration_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8b2853987b0bccf4731bff5d498c462ede79722cff68a611f47d66a977232a54","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e635d90a85e9e2913ca31ba59efec65c4a271083c8f5368d5820e8e691592c0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_concession_reframing_05 -> audio/generated/tr-TR/lexical/e66795232b13fe74687be533ae07f763e7f61becdf5a89a0da3bfb773430a253.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f5787a56-c587-5cb8-9e29-026d1e0a7437', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_concession_reframing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0ac87dddcab343b726c990de94d7fd982e7e4f292522a76979859ca96714990'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5ab8e12-80e4-517a-b17a-df2a867b2d2b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f5787a56-c587-5cb8-9e29-026d1e0a7437', 1), 'f0ac87dddcab343b726c990de94d7fd982e7e4f292522a76979859ca96714990',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e66795232b13fe74687be533ae07f763e7f61becdf5a89a0da3bfb773430a253.mp3', 1750, '2026-09-13 19:26:45.998892', '03762ded6328210d2aca4ec096cc955c3dd39cb6018e82bce5619dab745997ea', 'validated', '{"audio_key":"e66795232b13fe74687be533ae07f763e7f61becdf5a89a0da3bfb773430a253","entity_key":"lx_concession_reframing_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"03762ded6328210d2aca4ec096cc955c3dd39cb6018e82bce5619dab745997ea","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e66795232b13fe74687be533ae07f763e7f61becdf5a89a0da3bfb773430a253.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_concession_reframing_05 -> audio/generated/tr-TR/lexical/e66795232b13fe74687be533ae07f763e7f61becdf5a89a0da3bfb773430a253.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2603bb8a-aaef-5967-8cc2-a765246b0b00', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_concession_reframing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0ac87dddcab343b726c990de94d7fd982e7e4f292522a76979859ca96714990'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1824f9c7-a5d1-5d7e-a30f-5eaf6197be3b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2603bb8a-aaef-5967-8cc2-a765246b0b00', 1), 'f0ac87dddcab343b726c990de94d7fd982e7e4f292522a76979859ca96714990',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e66795232b13fe74687be533ae07f763e7f61becdf5a89a0da3bfb773430a253.mp3', 1750, '2026-09-13 19:26:45.998892', '03762ded6328210d2aca4ec096cc955c3dd39cb6018e82bce5619dab745997ea', 'validated', '{"audio_key":"e66795232b13fe74687be533ae07f763e7f61becdf5a89a0da3bfb773430a253","entity_key":"wf_concession_reframing_05","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"03762ded6328210d2aca4ec096cc955c3dd39cb6018e82bce5619dab745997ea","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e66795232b13fe74687be533ae07f763e7f61becdf5a89a0da3bfb773430a253.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_mediation_04 -> audio/generated/tr-TR/lexical/e921aa7776a22e298ee7d266a15705478d41db5570ac7b180e2f8b7806184ada.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('12496478-aaf3-52f7-a832-637607dc658a', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_mediation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0d6724e764fab376b87fc972f2d0d2f382b13ee61926322de444f6524b5eeca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9b79657-736e-5386-88ac-dbd9f6ae9ae9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('12496478-aaf3-52f7-a832-637607dc658a', 1), 'a0d6724e764fab376b87fc972f2d0d2f382b13ee61926322de444f6524b5eeca',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e921aa7776a22e298ee7d266a15705478d41db5570ac7b180e2f8b7806184ada.mp3', 1201, '2026-09-13 19:26:46.555806', '73d8fe650ff80e70cfbc8bdf2f2f902c24442e04be89d3e8c7824887d1de9cfd', 'validated', '{"audio_key":"e921aa7776a22e298ee7d266a15705478d41db5570ac7b180e2f8b7806184ada","entity_key":"lx_institutional_mediation_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73d8fe650ff80e70cfbc8bdf2f2f902c24442e04be89d3e8c7824887d1de9cfd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e921aa7776a22e298ee7d266a15705478d41db5570ac7b180e2f8b7806184ada.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_mediation_04 -> audio/generated/tr-TR/lexical/e921aa7776a22e298ee7d266a15705478d41db5570ac7b180e2f8b7806184ada.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('019b9af9-d956-5873-a395-82a12d851ebb', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_mediation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0d6724e764fab376b87fc972f2d0d2f382b13ee61926322de444f6524b5eeca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26b03cba-ff63-5999-a882-ef2fbe78a141', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('019b9af9-d956-5873-a395-82a12d851ebb', 1), 'a0d6724e764fab376b87fc972f2d0d2f382b13ee61926322de444f6524b5eeca',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/e921aa7776a22e298ee7d266a15705478d41db5570ac7b180e2f8b7806184ada.mp3', 1201, '2026-09-13 19:26:46.555806', '73d8fe650ff80e70cfbc8bdf2f2f902c24442e04be89d3e8c7824887d1de9cfd', 'validated', '{"audio_key":"e921aa7776a22e298ee7d266a15705478d41db5570ac7b180e2f8b7806184ada","entity_key":"wf_institutional_mediation_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73d8fe650ff80e70cfbc8bdf2f2f902c24442e04be89d3e8c7824887d1de9cfd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/e921aa7776a22e298ee7d266a15705478d41db5570ac7b180e2f8b7806184ada.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_argument_architecture_02 -> audio/generated/tr-TR/lexical/ee69f41059d36680a33e58b943fb040ac8dd8200245a5ec49520a6ac4009d9a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1187acf7-ddb1-5b19-b7cc-674740fc2f54', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_argument_architecture_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '834283018224f33f9a73998cb8fa429d3ed0fbc1f6573bd81c7bf91000fa952b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b0d4d34-3631-5a8c-b9ee-d030984f6fe0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1187acf7-ddb1-5b19-b7cc-674740fc2f54', 1), '834283018224f33f9a73998cb8fa429d3ed0fbc1f6573bd81c7bf91000fa952b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ee69f41059d36680a33e58b943fb040ac8dd8200245a5ec49520a6ac4009d9a0.mp3', 1149, '2026-09-13 19:07:43.663704', '75ee19c3c52821c007ac95ed85bf5b717fd8a4c86b17a6e3acf71eaaf63d0de4', 'validated', '{"audio_key":"ee69f41059d36680a33e58b943fb040ac8dd8200245a5ec49520a6ac4009d9a0","entity_key":"lx_argument_architecture_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75ee19c3c52821c007ac95ed85bf5b717fd8a4c86b17a6e3acf71eaaf63d0de4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ee69f41059d36680a33e58b943fb040ac8dd8200245a5ec49520a6ac4009d9a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_argument_architecture_02 -> audio/generated/tr-TR/lexical/ee69f41059d36680a33e58b943fb040ac8dd8200245a5ec49520a6ac4009d9a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a686dc97-30fa-5669-bd39-571affeda0bd', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_argument_architecture_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '834283018224f33f9a73998cb8fa429d3ed0fbc1f6573bd81c7bf91000fa952b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30ece762-1937-515d-aab3-1351b53e0c2a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a686dc97-30fa-5669-bd39-571affeda0bd', 1), '834283018224f33f9a73998cb8fa429d3ed0fbc1f6573bd81c7bf91000fa952b',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/ee69f41059d36680a33e58b943fb040ac8dd8200245a5ec49520a6ac4009d9a0.mp3', 1149, '2026-09-13 19:07:43.663704', '75ee19c3c52821c007ac95ed85bf5b717fd8a4c86b17a6e3acf71eaaf63d0de4', 'validated', '{"audio_key":"ee69f41059d36680a33e58b943fb040ac8dd8200245a5ec49520a6ac4009d9a0","entity_key":"wf_argument_architecture_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75ee19c3c52821c007ac95ed85bf5b717fd8a4c86b17a6e3acf71eaaf63d0de4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/ee69f41059d36680a33e58b943fb040ac8dd8200245a5ec49520a6ac4009d9a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_argument_architecture_01 -> audio/generated/tr-TR/lexical/f99f61ecd5c9cb0a3f737af5f82aef568f9f99639452da036b4f36520c48b918.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6c61255f-b0c2-5d34-965e-12f9034c36c7', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_argument_architecture_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '821e8244b8db9f3a27b5b25062a3783a6d0c78e37e091daa0766baf0efc0688a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d9280f3-b70a-5171-a7f3-fb8e6e8e0aac', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6c61255f-b0c2-5d34-965e-12f9034c36c7', 1), '821e8244b8db9f3a27b5b25062a3783a6d0c78e37e091daa0766baf0efc0688a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f99f61ecd5c9cb0a3f737af5f82aef568f9f99639452da036b4f36520c48b918.mp3', 1097, '2026-09-13 17:57:06.388358', 'fbff684abb20a5b4bad1734b30b890d6113d6cff2a87cdf2ff3b774f7f02eb05', 'validated', '{"audio_key":"f99f61ecd5c9cb0a3f737af5f82aef568f9f99639452da036b4f36520c48b918","entity_key":"lx_argument_architecture_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fbff684abb20a5b4bad1734b30b890d6113d6cff2a87cdf2ff3b774f7f02eb05","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f99f61ecd5c9cb0a3f737af5f82aef568f9f99639452da036b4f36520c48b918.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_argument_architecture_01 -> audio/generated/tr-TR/lexical/f99f61ecd5c9cb0a3f737af5f82aef568f9f99639452da036b4f36520c48b918.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c4041bcf-388f-5570-bb72-f06150c6c9ed', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_argument_architecture_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '821e8244b8db9f3a27b5b25062a3783a6d0c78e37e091daa0766baf0efc0688a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1fd27e02-730e-5c49-9847-07c90b9ea51c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c4041bcf-388f-5570-bb72-f06150c6c9ed', 1), '821e8244b8db9f3a27b5b25062a3783a6d0c78e37e091daa0766baf0efc0688a',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/f99f61ecd5c9cb0a3f737af5f82aef568f9f99639452da036b4f36520c48b918.mp3', 1097, '2026-09-13 17:57:06.388358', 'fbff684abb20a5b4bad1734b30b890d6113d6cff2a87cdf2ff3b774f7f02eb05', 'validated', '{"audio_key":"f99f61ecd5c9cb0a3f737af5f82aef568f9f99639452da036b4f36520c48b918","entity_key":"wf_argument_architecture_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fbff684abb20a5b4bad1734b30b890d6113d6cff2a87cdf2ff3b774f7f02eb05","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/f99f61ecd5c9cb0a3f737af5f82aef568f9f99639452da036b4f36520c48b918.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c1_expert_roundtable_capstone_01 -> audio/generated/tr-TR/lexical/fd4d2798292d52bf68f8d77e9a3c14fecf4ea37ffd01c3cb6a9535c6de487304.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('96b4d61e-1228-5eb0-aed9-2891506fd4b3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c1_expert_roundtable_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '747479ce4bbd4846db7981a389869884f966cad8e72c5edb27ed6673cd931702'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12aa98e5-bec3-5850-abcb-c89f5f6c7f9f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('96b4d61e-1228-5eb0-aed9-2891506fd4b3', 1), '747479ce4bbd4846db7981a389869884f966cad8e72c5edb27ed6673cd931702',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fd4d2798292d52bf68f8d77e9a3c14fecf4ea37ffd01c3cb6a9535c6de487304.mp3', 1567, '2026-09-13 19:26:47.085864', 'f2d1db0291dfe7e1c9f8e43c9571ea46b0633c6696955cad52869c06b5a8e50f', 'validated', '{"audio_key":"fd4d2798292d52bf68f8d77e9a3c14fecf4ea37ffd01c3cb6a9535c6de487304","entity_key":"lx_c1_expert_roundtable_capstone_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f2d1db0291dfe7e1c9f8e43c9571ea46b0633c6696955cad52869c06b5a8e50f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fd4d2798292d52bf68f8d77e9a3c14fecf4ea37ffd01c3cb6a9535c6de487304.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c1_expert_roundtable_capstone_01 -> audio/generated/tr-TR/lexical/fd4d2798292d52bf68f8d77e9a3c14fecf4ea37ffd01c3cb6a9535c6de487304.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cd658078-706b-5d1f-acee-1238dbae70f2', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c1_expert_roundtable_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '747479ce4bbd4846db7981a389869884f966cad8e72c5edb27ed6673cd931702'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('24cd887d-9edd-5d40-b527-ba2f10df5aae', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cd658078-706b-5d1f-acee-1238dbae70f2', 1), '747479ce4bbd4846db7981a389869884f966cad8e72c5edb27ed6673cd931702',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fd4d2798292d52bf68f8d77e9a3c14fecf4ea37ffd01c3cb6a9535c6de487304.mp3', 1567, '2026-09-13 19:26:47.085864', 'f2d1db0291dfe7e1c9f8e43c9571ea46b0633c6696955cad52869c06b5a8e50f', 'validated', '{"audio_key":"fd4d2798292d52bf68f8d77e9a3c14fecf4ea37ffd01c3cb6a9535c6de487304","entity_key":"wf_c1_expert_roundtable_capstone_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f2d1db0291dfe7e1c9f8e43c9571ea46b0633c6696955cad52869c06b5a8e50f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fd4d2798292d52bf68f8d77e9a3c14fecf4ea37ffd01c3cb6a9535c6de487304.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_nominalization_density_01 -> audio/generated/tr-TR/lexical/fd4d2798292d52bf68f8d77e9a3c14fecf4ea37ffd01c3cb6a9535c6de487304.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('96b4d61e-1228-5eb0-aed9-2891506fd4b3', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_nominalization_density_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '747479ce4bbd4846db7981a389869884f966cad8e72c5edb27ed6673cd931702'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12aa98e5-bec3-5850-abcb-c89f5f6c7f9f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('96b4d61e-1228-5eb0-aed9-2891506fd4b3', 1), '747479ce4bbd4846db7981a389869884f966cad8e72c5edb27ed6673cd931702',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fd4d2798292d52bf68f8d77e9a3c14fecf4ea37ffd01c3cb6a9535c6de487304.mp3', 1567, '2026-09-13 19:26:47.085864', 'f2d1db0291dfe7e1c9f8e43c9571ea46b0633c6696955cad52869c06b5a8e50f', 'validated', '{"audio_key":"fd4d2798292d52bf68f8d77e9a3c14fecf4ea37ffd01c3cb6a9535c6de487304","entity_key":"lx_nominalization_density_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f2d1db0291dfe7e1c9f8e43c9571ea46b0633c6696955cad52869c06b5a8e50f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fd4d2798292d52bf68f8d77e9a3c14fecf4ea37ffd01c3cb6a9535c6de487304.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_nominalization_density_01 -> audio/generated/tr-TR/lexical/fd4d2798292d52bf68f8d77e9a3c14fecf4ea37ffd01c3cb6a9535c6de487304.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f5658039-d1ba-592a-bc41-e0e4455b45bf', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_nominalization_density_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '747479ce4bbd4846db7981a389869884f966cad8e72c5edb27ed6673cd931702'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('79546dcd-82cd-5a0d-bc12-a75b758e64a7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f5658039-d1ba-592a-bc41-e0e4455b45bf', 1), '747479ce4bbd4846db7981a389869884f966cad8e72c5edb27ed6673cd931702',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fd4d2798292d52bf68f8d77e9a3c14fecf4ea37ffd01c3cb6a9535c6de487304.mp3', 1567, '2026-09-13 19:26:47.085864', 'f2d1db0291dfe7e1c9f8e43c9571ea46b0633c6696955cad52869c06b5a8e50f', 'validated', '{"audio_key":"fd4d2798292d52bf68f8d77e9a3c14fecf4ea37ffd01c3cb6a9535c6de487304","entity_key":"wf_nominalization_density_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f2d1db0291dfe7e1c9f8e43c9571ea46b0633c6696955cad52869c06b5a8e50f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fd4d2798292d52bf68f8d77e9a3c14fecf4ea37ffd01c3cb6a9535c6de487304.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_shifting_06 -> audio/generated/tr-TR/lexical/fd7a33f1d08a536acd4ac5899c63a4cde97d71f96684ba3482d8029364aa86ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7123d58b-d304-5f06-8409-834fa325e9f8', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_shifting_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa46199925d1257e87af8edfd80c653438f4acf0fdfabc22c5a443d5171d4ab6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3ad0b72-ee07-5004-aaf0-2421801491ca', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7123d58b-d304-5f06-8409-834fa325e9f8', 1), 'fa46199925d1257e87af8edfd80c653438f4acf0fdfabc22c5a443d5171d4ab6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fd7a33f1d08a536acd4ac5899c63a4cde97d71f96684ba3482d8029364aa86ea.mp3', 1253, '2026-09-13 19:26:47.598459', '65a5a62a98f1042c900e24d0c52ecadf99c3ef3eed1e4590f6f8313c39650b1e', 'validated', '{"audio_key":"fd7a33f1d08a536acd4ac5899c63a4cde97d71f96684ba3482d8029364aa86ea","entity_key":"lx_register_shifting_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65a5a62a98f1042c900e24d0c52ecadf99c3ef3eed1e4590f6f8313c39650b1e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fd7a33f1d08a536acd4ac5899c63a4cde97d71f96684ba3482d8029364aa86ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_shifting_06 -> audio/generated/tr-TR/lexical/fd7a33f1d08a536acd4ac5899c63a4cde97d71f96684ba3482d8029364aa86ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ee335488-d674-5e36-a335-4aa6450d4ed1', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_shifting_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa46199925d1257e87af8edfd80c653438f4acf0fdfabc22c5a443d5171d4ab6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad6d713f-63af-582e-9686-f472abe199c4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ee335488-d674-5e36-a335-4aa6450d4ed1', 1), 'fa46199925d1257e87af8edfd80c653438f4acf0fdfabc22c5a443d5171d4ab6',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/fd7a33f1d08a536acd4ac5899c63a4cde97d71f96684ba3482d8029364aa86ea.mp3', 1253, '2026-09-13 19:26:47.598459', '65a5a62a98f1042c900e24d0c52ecadf99c3ef3eed1e4590f6f8313c39650b1e', 'validated', '{"audio_key":"fd7a33f1d08a536acd4ac5899c63a4cde97d71f96684ba3482d8029364aa86ea","entity_key":"wf_register_shifting_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"65a5a62a98f1042c900e24d0c52ecadf99c3ef3eed1e4590f6f8313c39650b1e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/fd7a33f1d08a536acd4ac5899c63a4cde97d71f96684ba3482d8029364aa86ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_policy_synthesis_06 -> audio/generated/tr-TR/lexical/feed89e86aeccf44a9e6c0113ee8b6dca7cc462f43eba4dc4de3a74d2970d4de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('838b0042-d0dd-5ee1-9df3-1d0b9c19f68b', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_policy_synthesis_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '782c08c9e79dc281d20c061fc7855f5f5faf56a6be4d96efc9f46e4c533711db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac699a63-bcf2-5197-92ff-3ebf1c334a4b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('838b0042-d0dd-5ee1-9df3-1d0b9c19f68b', 1), '782c08c9e79dc281d20c061fc7855f5f5faf56a6be4d96efc9f46e4c533711db',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/feed89e86aeccf44a9e6c0113ee8b6dca7cc462f43eba4dc4de3a74d2970d4de.mp3', 1384, '2026-09-13 19:26:48.174965', 'ee1153e40a24b0271a065486f4d70e2cc53894506123fae2d291ddc8de9f82ee', 'validated', '{"audio_key":"feed89e86aeccf44a9e6c0113ee8b6dca7cc462f43eba4dc4de3a74d2970d4de","entity_key":"lx_policy_synthesis_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ee1153e40a24b0271a065486f4d70e2cc53894506123fae2d291ddc8de9f82ee","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/feed89e86aeccf44a9e6c0113ee8b6dca7cc462f43eba4dc4de3a74d2970d4de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_policy_synthesis_06 -> audio/generated/tr-TR/lexical/feed89e86aeccf44a9e6c0113ee8b6dca7cc462f43eba4dc4de3a74d2970d4de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('44aebde4-dda7-5912-822f-dd6b67a44d90', 1)
  AND voice_key = 'tr-tr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_policy_synthesis_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '782c08c9e79dc281d20c061fc7855f5f5faf56a6be4d96efc9f46e4c533711db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a95a4ca5-695e-559d-af85-7176cfd1a8bc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('44aebde4-dda7-5912-822f-dd6b67a44d90', 1), '782c08c9e79dc281d20c061fc7855f5f5faf56a6be4d96efc9f46e4c533711db',
  'tr-tr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/lexical/feed89e86aeccf44a9e6c0113ee8b6dca7cc462f43eba4dc4de3a74d2970d4de.mp3', 1384, '2026-09-13 19:26:48.174965', 'ee1153e40a24b0271a065486f4d70e2cc53894506123fae2d291ddc8de9f82ee', 'validated', '{"audio_key":"feed89e86aeccf44a9e6c0113ee8b6dca7cc462f43eba4dc4de3a74d2970d4de","entity_key":"wf_policy_synthesis_06","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ee1153e40a24b0271a065486f4d70e2cc53894506123fae2d291ddc8de9f82ee","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/tr-TR/lexical/feed89e86aeccf44a9e6c0113ee8b6dca7cc462f43eba4dc4de3a74d2970d4de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_nominalization_density_04 -> audio/generated/tr-TR/utterances/0704f6cb3f9efe79ae496bb24182b0fe9686ce39b23791dab097229b97e9aad8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('81734d89-bdee-5ea3-a975-1f8e49005fa2', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_nominalization_density_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4eada692914048ccff5be48f4d55287b7817e8c2d7a209108a9a629f17985d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d5449b8-4429-5cbe-9451-ffa226d59f88', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('81734d89-bdee-5ea3-a975-1f8e49005fa2', 1), 'a4eada692914048ccff5be48f4d55287b7817e8c2d7a209108a9a629f17985d0',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0704f6cb3f9efe79ae496bb24182b0fe9686ce39b23791dab097229b97e9aad8.mp3', 4780, '2026-09-13 19:26:49.076862', '9ad13cae2a58be33349ac3ff6b438560c15c560d6615585ae980d18dddf0a471', 'validated', '{"audio_key":"0704f6cb3f9efe79ae496bb24182b0fe9686ce39b23791dab097229b97e9aad8","entity_key":"u_nominalization_density_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9ad13cae2a58be33349ac3ff6b438560c15c560d6615585ae980d18dddf0a471","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0704f6cb3f9efe79ae496bb24182b0fe9686ce39b23791dab097229b97e9aad8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_nominalization_density_02_listen -> audio/generated/tr-TR/utterances/0704f6cb3f9efe79ae496bb24182b0fe9686ce39b23791dab097229b97e9aad8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e385e2b7-a12d-572e-a626-1485d8266653', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_nominalization_density_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4eada692914048ccff5be48f4d55287b7817e8c2d7a209108a9a629f17985d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f20842f1-b283-5b71-8603-e8fff8456767', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e385e2b7-a12d-572e-a626-1485d8266653', 1), 'a4eada692914048ccff5be48f4d55287b7817e8c2d7a209108a9a629f17985d0',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0704f6cb3f9efe79ae496bb24182b0fe9686ce39b23791dab097229b97e9aad8.mp3', 4780, '2026-09-13 19:26:49.076862', '9ad13cae2a58be33349ac3ff6b438560c15c560d6615585ae980d18dddf0a471', 'validated', '{"audio_key":"0704f6cb3f9efe79ae496bb24182b0fe9686ce39b23791dab097229b97e9aad8","entity_key":"e_nominalization_density_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9ad13cae2a58be33349ac3ff6b438560c15c560d6615585ae980d18dddf0a471","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0704f6cb3f9efe79ae496bb24182b0fe9686ce39b23791dab097229b97e9aad8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidential_calibration_01 -> audio/generated/tr-TR/utterances/0b83e4c0d521e62d69a55ca9612912d1e0945143678f53f9c7354bf955f78b8f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('64062166-8829-58d9-a4d9-fee415b9f3f4', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidential_calibration_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad282803cd2fa763334f407dd0bb9fcd217317a9231aa315b6f09c41b03c0e82'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f76def1-8c10-550c-bc9d-3e4775ba95cb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('64062166-8829-58d9-a4d9-fee415b9f3f4', 1), 'ad282803cd2fa763334f407dd0bb9fcd217317a9231aa315b6f09c41b03c0e82',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0b83e4c0d521e62d69a55ca9612912d1e0945143678f53f9c7354bf955f78b8f.mp3', 5328, '2026-09-13 19:26:49.701448', '3939afd22eb39d2d35110e8c23539a40116086c51d102162bef9acd83f047896', 'validated', '{"audio_key":"0b83e4c0d521e62d69a55ca9612912d1e0945143678f53f9c7354bf955f78b8f","entity_key":"u_evidential_calibration_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3939afd22eb39d2d35110e8c23539a40116086c51d102162bef9acd83f047896","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0b83e4c0d521e62d69a55ca9612912d1e0945143678f53f9c7354bf955f78b8f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_nominalization_density_01 -> audio/generated/tr-TR/utterances/0efaa4d1a5e9014e259668886cd04ed9179ce3d0efae7744b2fb64307d6cd5ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('839b91fb-5044-5906-8409-ac63ffd68126', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_nominalization_density_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1b6e35528a80eebe1f23716ce8894b63c27231141ab723f8852b91a1113ce20'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df634a81-9e84-50a3-9f95-59243602a5ca', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('839b91fb-5044-5906-8409-ac63ffd68126', 1), 'b1b6e35528a80eebe1f23716ce8894b63c27231141ab723f8852b91a1113ce20',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/0efaa4d1a5e9014e259668886cd04ed9179ce3d0efae7744b2fb64307d6cd5ad.mp3', 5511, '2026-09-13 19:26:50.664182', '5a8214a781a2549611b962701be5d08ed90456b22461057660f519c67904444f', 'validated', '{"audio_key":"0efaa4d1a5e9014e259668886cd04ed9179ce3d0efae7744b2fb64307d6cd5ad","entity_key":"u_nominalization_density_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a8214a781a2549611b962701be5d08ed90456b22461057660f519c67904444f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/0efaa4d1a5e9014e259668886cd04ed9179ce3d0efae7744b2fb64307d6cd5ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_idiomatic_precision_02 -> audio/generated/tr-TR/utterances/1580b353418da6c8b334b2b65dcf76946e22dd2794324f487bf20061e3ade4dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7c3ba66b-0cac-5c4f-932f-c50f555b52e9', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_idiomatic_precision_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c4d01f56a2c7c4a8e5cc8f6e90a28d6540e5851dbc0bf1cb98583926d1ad3b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b323c896-d395-52b3-988b-93d20d9ae2ca', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7c3ba66b-0cac-5c4f-932f-c50f555b52e9', 1), '1c4d01f56a2c7c4a8e5cc8f6e90a28d6540e5851dbc0bf1cb98583926d1ad3b3',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/1580b353418da6c8b334b2b65dcf76946e22dd2794324f487bf20061e3ade4dd.mp3', 5093, '2026-09-13 19:26:51.251924', 'b432602fc9044a9c6efcb384c74481ee8fd1c5a522c5017a2591671f1d1d69c5', 'validated', '{"audio_key":"1580b353418da6c8b334b2b65dcf76946e22dd2794324f487bf20061e3ade4dd","entity_key":"u_idiomatic_precision_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b432602fc9044a9c6efcb384c74481ee8fd1c5a522c5017a2591671f1d1d69c5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/1580b353418da6c8b334b2b65dcf76946e22dd2794324f487bf20061e3ade4dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_idiomatic_precision_01_listen -> audio/generated/tr-TR/utterances/1580b353418da6c8b334b2b65dcf76946e22dd2794324f487bf20061e3ade4dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f113a1f0-9c89-522f-83c5-d8884d331db7', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_idiomatic_precision_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c4d01f56a2c7c4a8e5cc8f6e90a28d6540e5851dbc0bf1cb98583926d1ad3b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77cd822a-b831-5252-b37e-7b9e78559010', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f113a1f0-9c89-522f-83c5-d8884d331db7', 1), '1c4d01f56a2c7c4a8e5cc8f6e90a28d6540e5851dbc0bf1cb98583926d1ad3b3',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/1580b353418da6c8b334b2b65dcf76946e22dd2794324f487bf20061e3ade4dd.mp3', 5093, '2026-09-13 19:26:51.251924', 'b432602fc9044a9c6efcb384c74481ee8fd1c5a522c5017a2591671f1d1d69c5', 'validated', '{"audio_key":"1580b353418da6c8b334b2b65dcf76946e22dd2794324f487bf20061e3ade4dd","entity_key":"e_idiomatic_precision_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b432602fc9044a9c6efcb384c74481ee8fd1c5a522c5017a2591671f1d1d69c5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/1580b353418da6c8b334b2b65dcf76946e22dd2794324f487bf20061e3ade4dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_argument_architecture_01 -> audio/generated/tr-TR/utterances/244e355ee7dbc884be55ceddf4acb94c215f71c19b122679f6946b7374080698.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c8fe92c2-9162-5a33-874f-1d3a3dd28175', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_argument_architecture_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '72ee1145248a3a8c8c58d32eb94528744fca4d4e4b75ea2807e58f0079bc9ddb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e110dd4-3170-5897-981d-6118b3942f73', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c8fe92c2-9162-5a33-874f-1d3a3dd28175', 1), '72ee1145248a3a8c8c58d32eb94528744fca4d4e4b75ea2807e58f0079bc9ddb',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/244e355ee7dbc884be55ceddf4acb94c215f71c19b122679f6946b7374080698.mp3', 4963, '2026-09-13 19:26:52.236074', 'eab26c0057dea69cb416fd07e7314082c89ddf091b5572a79c9073807a602d4d', 'validated', '{"audio_key":"244e355ee7dbc884be55ceddf4acb94c215f71c19b122679f6946b7374080698","entity_key":"u_argument_architecture_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eab26c0057dea69cb416fd07e7314082c89ddf091b5572a79c9073807a602d4d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/244e355ee7dbc884be55ceddf4acb94c215f71c19b122679f6946b7374080698.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_c1_expert_roundtable_capstone_02 -> audio/generated/tr-TR/utterances/26476ba60ec192c3b55b806205dfef1a9e936e89a8e5e7d547129539bbec8f94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2beed08a-cdba-5895-ac73-cf6ec7402ce0', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_c1_expert_roundtable_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c6a9f5ea87c3852e21c097bbc7fa3f1c486509d6b20da915e0b13ff3e5536cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a251ab81-f64c-5676-9067-4d1e0609020b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2beed08a-cdba-5895-ac73-cf6ec7402ce0', 1), '1c6a9f5ea87c3852e21c097bbc7fa3f1c486509d6b20da915e0b13ff3e5536cd',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/26476ba60ec192c3b55b806205dfef1a9e936e89a8e5e7d547129539bbec8f94.mp3', 5851, '2026-09-13 19:26:52.881609', '01118837ce10a827f5bb3e3afc6dd85fb3087989064f47adc4943492f0e85508', 'validated', '{"audio_key":"26476ba60ec192c3b55b806205dfef1a9e936e89a8e5e7d547129539bbec8f94","entity_key":"u_c1_expert_roundtable_capstone_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"01118837ce10a827f5bb3e3afc6dd85fb3087989064f47adc4943492f0e85508","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/26476ba60ec192c3b55b806205dfef1a9e936e89a8e5e7d547129539bbec8f94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_c1_expert_roundtable_capstone_01_listen -> audio/generated/tr-TR/utterances/26476ba60ec192c3b55b806205dfef1a9e936e89a8e5e7d547129539bbec8f94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6c313470-24f9-5246-8480-a21a09098f73', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_c1_expert_roundtable_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c6a9f5ea87c3852e21c097bbc7fa3f1c486509d6b20da915e0b13ff3e5536cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a01a705-4d37-5ada-a989-b92acbdd5dee', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6c313470-24f9-5246-8480-a21a09098f73', 1), '1c6a9f5ea87c3852e21c097bbc7fa3f1c486509d6b20da915e0b13ff3e5536cd',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/26476ba60ec192c3b55b806205dfef1a9e936e89a8e5e7d547129539bbec8f94.mp3', 5851, '2026-09-13 19:26:52.881609', '01118837ce10a827f5bb3e3afc6dd85fb3087989064f47adc4943492f0e85508', 'validated', '{"audio_key":"26476ba60ec192c3b55b806205dfef1a9e936e89a8e5e7d547129539bbec8f94","entity_key":"e_c1_expert_roundtable_capstone_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"01118837ce10a827f5bb3e3afc6dd85fb3087989064f47adc4943492f0e85508","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/26476ba60ec192c3b55b806205dfef1a9e936e89a8e5e7d547129539bbec8f94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_policy_synthesis_03 -> audio/generated/tr-TR/utterances/35d95132cd33a1942eef776abbb85d2ddfbac8f664a4215bbb46b2ffb9dd7d9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('042c4c74-8c58-5287-8219-680ae22914f6', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_policy_synthesis_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a210327177e8e8a06c4766243c664985de8429f6b0002945973d70e96c720457'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4df4fe63-326c-54aa-992f-c2b160dfd08f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('042c4c74-8c58-5287-8219-680ae22914f6', 1), 'a210327177e8e8a06c4766243c664985de8429f6b0002945973d70e96c720457',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/35d95132cd33a1942eef776abbb85d2ddfbac8f664a4215bbb46b2ffb9dd7d9c.mp3', 4623, '2026-09-13 19:26:53.730646', '6360b779522ad64d1aba4f51f25112bf5ce105633bdc328edd6347214d17e526', 'validated', '{"audio_key":"35d95132cd33a1942eef776abbb85d2ddfbac8f664a4215bbb46b2ffb9dd7d9c","entity_key":"u_policy_synthesis_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6360b779522ad64d1aba4f51f25112bf5ce105633bdc328edd6347214d17e526","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/35d95132cd33a1942eef776abbb85d2ddfbac8f664a4215bbb46b2ffb9dd7d9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_shifting_02 -> audio/generated/tr-TR/utterances/3890314a48c5ecc5d149eaa35dd126f07655da0c8aaeeb53d9be29ce2588c7aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b799da91-1c63-5ae7-90f1-4b3ab59521d6', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_shifting_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d6cfeb9f16885f131a37c84c5faeac001aef617835145f11d32ddeeb983b378'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f097dc11-3206-5880-b196-6736ad87c95a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b799da91-1c63-5ae7-90f1-4b3ab59521d6', 1), '0d6cfeb9f16885f131a37c84c5faeac001aef617835145f11d32ddeeb983b378',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/3890314a48c5ecc5d149eaa35dd126f07655da0c8aaeeb53d9be29ce2588c7aa.mp3', 4205, '2026-09-13 19:26:54.278370', 'a748fa6481f27d1e90d1c436631d6ba979f3ceb93254179acf057b5aba169eba', 'validated', '{"audio_key":"3890314a48c5ecc5d149eaa35dd126f07655da0c8aaeeb53d9be29ce2588c7aa","entity_key":"u_register_shifting_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a748fa6481f27d1e90d1c436631d6ba979f3ceb93254179acf057b5aba169eba","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/3890314a48c5ecc5d149eaa35dd126f07655da0c8aaeeb53d9be29ce2588c7aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_register_shifting_01_listen -> audio/generated/tr-TR/utterances/3890314a48c5ecc5d149eaa35dd126f07655da0c8aaeeb53d9be29ce2588c7aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9fb179a0-6a69-5a0a-9fcc-3775547127c6', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_register_shifting_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d6cfeb9f16885f131a37c84c5faeac001aef617835145f11d32ddeeb983b378'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce5e9415-cbc0-502c-98cd-004ff7cd479f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9fb179a0-6a69-5a0a-9fcc-3775547127c6', 1), '0d6cfeb9f16885f131a37c84c5faeac001aef617835145f11d32ddeeb983b378',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/3890314a48c5ecc5d149eaa35dd126f07655da0c8aaeeb53d9be29ce2588c7aa.mp3', 4205, '2026-09-13 19:26:54.278370', 'a748fa6481f27d1e90d1c436631d6ba979f3ceb93254179acf057b5aba169eba', 'validated', '{"audio_key":"3890314a48c5ecc5d149eaa35dd126f07655da0c8aaeeb53d9be29ce2588c7aa","entity_key":"e_register_shifting_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a748fa6481f27d1e90d1c436631d6ba979f3ceb93254179acf057b5aba169eba","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/3890314a48c5ecc5d149eaa35dd126f07655da0c8aaeeb53d9be29ce2588c7aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_concession_reframing_02 -> audio/generated/tr-TR/utterances/433d0845cade47bd1198f884d996a9e78f6e028907a809ad85b50bb73d4e7c21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('86ab8bd1-950f-5029-8121-297240177933', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_concession_reframing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e814aec03e1f82b6964f25b319532e829ae5a2654af8f8d92ba440e89013570a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4dbe18bf-ddaa-5d65-8f28-d890be9c2264', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('86ab8bd1-950f-5029-8121-297240177933', 1), 'e814aec03e1f82b6964f25b319532e829ae5a2654af8f8d92ba440e89013570a',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/433d0845cade47bd1198f884d996a9e78f6e028907a809ad85b50bb73d4e7c21.mp3', 3657, '2026-09-13 19:26:55.112601', '38da06ee52692dc6be8990ef54b56e39d887f261e113ab71829910e2603f7173', 'validated', '{"audio_key":"433d0845cade47bd1198f884d996a9e78f6e028907a809ad85b50bb73d4e7c21","entity_key":"u_concession_reframing_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"38da06ee52692dc6be8990ef54b56e39d887f261e113ab71829910e2603f7173","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/433d0845cade47bd1198f884d996a9e78f6e028907a809ad85b50bb73d4e7c21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_concession_reframing_01_listen -> audio/generated/tr-TR/utterances/433d0845cade47bd1198f884d996a9e78f6e028907a809ad85b50bb73d4e7c21.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('79d2d632-000a-5216-aff2-b7fae1bd8e36', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_concession_reframing_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e814aec03e1f82b6964f25b319532e829ae5a2654af8f8d92ba440e89013570a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('10735ec1-16ef-50b2-8940-f320d69443c1', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('79d2d632-000a-5216-aff2-b7fae1bd8e36', 1), 'e814aec03e1f82b6964f25b319532e829ae5a2654af8f8d92ba440e89013570a',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/433d0845cade47bd1198f884d996a9e78f6e028907a809ad85b50bb73d4e7c21.mp3', 3657, '2026-09-13 19:26:55.112601', '38da06ee52692dc6be8990ef54b56e39d887f261e113ab71829910e2603f7173', 'validated', '{"audio_key":"433d0845cade47bd1198f884d996a9e78f6e028907a809ad85b50bb73d4e7c21","entity_key":"e_concession_reframing_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"38da06ee52692dc6be8990ef54b56e39d887f261e113ab71829910e2603f7173","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/433d0845cade47bd1198f884d996a9e78f6e028907a809ad85b50bb73d4e7c21.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_c1_expert_roundtable_capstone_03 -> audio/generated/tr-TR/utterances/45618c88ca784e54945bae20e2c233dcd7a6edab1d5ffbb6c43b6b729751780f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1db14940-208e-5681-8059-ef95021e50c3', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_c1_expert_roundtable_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '86c6658e55bcdac8f893d6350264b35d43455bad3e6ce9586c388d60fe04474b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33a722f7-3ba6-5383-bf26-7aa234a61398', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1db14940-208e-5681-8059-ef95021e50c3', 1), '86c6658e55bcdac8f893d6350264b35d43455bad3e6ce9586c388d60fe04474b',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/45618c88ca784e54945bae20e2c233dcd7a6edab1d5ffbb6c43b6b729751780f.mp3', 5041, '2026-09-13 19:26:55.811530', '5dfdb49241ab186447097b6486d36a609f2da3b9a16047c7d814d46cb5e5a0a1', 'validated', '{"audio_key":"45618c88ca784e54945bae20e2c233dcd7a6edab1d5ffbb6c43b6b729751780f","entity_key":"u_c1_expert_roundtable_capstone_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5dfdb49241ab186447097b6486d36a609f2da3b9a16047c7d814d46cb5e5a0a1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/45618c88ca784e54945bae20e2c233dcd7a6edab1d5ffbb6c43b6b729751780f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_policy_synthesis_01 -> audio/generated/tr-TR/utterances/45880f8eb0c16068521eb35f6e507498f1e45037ce05023f03aec8dc16333b09.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2eede753-c8c9-5fe1-9a4a-9bc3f5a555f0', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_policy_synthesis_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32013c0170ea6d250799acc26ad859f3b47bcc4f94bb8132b6a2e3b0958697a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7dbab928-97c1-563e-a573-066c17e8f0b8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2eede753-c8c9-5fe1-9a4a-9bc3f5a555f0', 1), '32013c0170ea6d250799acc26ad859f3b47bcc4f94bb8132b6a2e3b0958697a1',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/45880f8eb0c16068521eb35f6e507498f1e45037ce05023f03aec8dc16333b09.mp3', 6400, '2026-09-13 19:26:56.789844', 'c9f03e9f346b920fb2bdffc458fb4c20c53c5443056254d353bffbe290e37551', 'validated', '{"audio_key":"45880f8eb0c16068521eb35f6e507498f1e45037ce05023f03aec8dc16333b09","entity_key":"u_policy_synthesis_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c9f03e9f346b920fb2bdffc458fb4c20c53c5443056254d353bffbe290e37551","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/45880f8eb0c16068521eb35f6e507498f1e45037ce05023f03aec8dc16333b09.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_shifting_03 -> audio/generated/tr-TR/utterances/464c14b8306b98cfc96ff4ccc92d4d786140e22efd9ab8baa355a76076b231f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7510f7c5-2b53-5c41-8e94-9681c6e987b2', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_shifting_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04cc7c08cb41436a3d9381e65940ad6b4321d511d0e0b9cb14bca8ffd5ede201'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5aec5e69-99b9-5b05-91e1-2895f9ff81dc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7510f7c5-2b53-5c41-8e94-9681c6e987b2', 1), '04cc7c08cb41436a3d9381e65940ad6b4321d511d0e0b9cb14bca8ffd5ede201',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/464c14b8306b98cfc96ff4ccc92d4d786140e22efd9ab8baa355a76076b231f0.mp3', 3657, '2026-09-13 19:26:57.152758', 'aaf42226c63b1aa3f6694e80f27f1a6aee6203d6616a711c7594ede7b099c7eb', 'validated', '{"audio_key":"464c14b8306b98cfc96ff4ccc92d4d786140e22efd9ab8baa355a76076b231f0","entity_key":"u_register_shifting_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aaf42226c63b1aa3f6694e80f27f1a6aee6203d6616a711c7594ede7b099c7eb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/464c14b8306b98cfc96ff4ccc92d4d786140e22efd9ab8baa355a76076b231f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_argument_architecture_03 -> audio/generated/tr-TR/utterances/494214bc841d82e66c138f3512c68f021d6c73cb521dd49e6f6a0e520941845d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a27e0f5a-2008-5a88-8299-5157c93c988a', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_argument_architecture_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '875925c126aed45b64e177da1fdfa2df2b6f405c08547d4505fe2d733a9b1dd0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c06b7dcf-9fc4-5d0c-b312-008b7e040200', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a27e0f5a-2008-5a88-8299-5157c93c988a', 1), '875925c126aed45b64e177da1fdfa2df2b6f405c08547d4505fe2d733a9b1dd0',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/494214bc841d82e66c138f3512c68f021d6c73cb521dd49e6f6a0e520941845d.mp3', 5250, '2026-09-13 19:26:58.380691', 'a27e21c9483efdb66365b2f76fb8af2ea3dc7f5308153c31119342b44fe4d2e6', 'validated', '{"audio_key":"494214bc841d82e66c138f3512c68f021d6c73cb521dd49e6f6a0e520941845d","entity_key":"u_argument_architecture_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a27e21c9483efdb66365b2f76fb8af2ea3dc7f5308153c31119342b44fe4d2e6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/494214bc841d82e66c138f3512c68f021d6c73cb521dd49e6f6a0e520941845d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_stance_04 -> audio/generated/tr-TR/utterances/5cd68452095457ca27eedd21896fe2b550ac7020e3b1904020a0e1a11216943a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e417accd-b93b-5358-80bb-0909daa2577b', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_stance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '678b37d813a6868a5847906a51504b2ceb3cbb04dc66c66169aa15d222cdc8b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('998cfa48-0411-5054-9507-c06a424b0564', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e417accd-b93b-5358-80bb-0909daa2577b', 1), '678b37d813a6868a5847906a51504b2ceb3cbb04dc66c66169aa15d222cdc8b8',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/5cd68452095457ca27eedd21896fe2b550ac7020e3b1904020a0e1a11216943a.mp3', 5250, '2026-09-13 19:26:58.670978', '9a59b55c16e975a74745a3121983c6f58b4c9c91fde79d970acb96a570a6dc09', 'validated', '{"audio_key":"5cd68452095457ca27eedd21896fe2b550ac7020e3b1904020a0e1a11216943a","entity_key":"u_reported_stance_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9a59b55c16e975a74745a3121983c6f58b4c9c91fde79d970acb96a570a6dc09","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/5cd68452095457ca27eedd21896fe2b550ac7020e3b1904020a0e1a11216943a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_reported_stance_02_listen -> audio/generated/tr-TR/utterances/5cd68452095457ca27eedd21896fe2b550ac7020e3b1904020a0e1a11216943a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c2ec3a3c-df83-5ccd-b252-b5882198b1c0', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_reported_stance_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '678b37d813a6868a5847906a51504b2ceb3cbb04dc66c66169aa15d222cdc8b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef39f2b9-7527-5a15-ad2e-1fe72e74a325', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c2ec3a3c-df83-5ccd-b252-b5882198b1c0', 1), '678b37d813a6868a5847906a51504b2ceb3cbb04dc66c66169aa15d222cdc8b8',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/5cd68452095457ca27eedd21896fe2b550ac7020e3b1904020a0e1a11216943a.mp3', 5250, '2026-09-13 19:26:58.670978', '9a59b55c16e975a74745a3121983c6f58b4c9c91fde79d970acb96a570a6dc09', 'validated', '{"audio_key":"5cd68452095457ca27eedd21896fe2b550ac7020e3b1904020a0e1a11216943a","entity_key":"e_reported_stance_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9a59b55c16e975a74745a3121983c6f58b4c9c91fde79d970acb96a570a6dc09","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/5cd68452095457ca27eedd21896fe2b550ac7020e3b1904020a0e1a11216943a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_idiomatic_precision_01 -> audio/generated/tr-TR/utterances/6ac98af6980777204b3bdcad179d00b68476e6efed3d28a9b0d9de3aaba82738.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e4ea87cc-bba4-5699-85ff-46d37143254a', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_idiomatic_precision_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6c14a36b8a5c6775527a57a8cf7470b65580922072fc1857546391916a088c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2458cc38-2c9a-5519-8ace-b8ca5af1a93d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e4ea87cc-bba4-5699-85ff-46d37143254a', 1), 'b6c14a36b8a5c6775527a57a8cf7470b65580922072fc1857546391916a088c5',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/6ac98af6980777204b3bdcad179d00b68476e6efed3d28a9b0d9de3aaba82738.mp3', 4362, '2026-09-13 19:26:59.888464', 'bc462b8f2fcf8fbba66d701a940aa5849f12449ffbfa1822dd6c77b30c24ba65', 'validated', '{"audio_key":"6ac98af6980777204b3bdcad179d00b68476e6efed3d28a9b0d9de3aaba82738","entity_key":"u_idiomatic_precision_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bc462b8f2fcf8fbba66d701a940aa5849f12449ffbfa1822dd6c77b30c24ba65","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/6ac98af6980777204b3bdcad179d00b68476e6efed3d28a9b0d9de3aaba82738.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_c1_expert_roundtable_capstone_04 -> audio/generated/tr-TR/utterances/7781846f1677416071edf732f02cc084ff61b72640ee5acfeeeb71d9dc8eb3dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f4e32a11-2cf6-5948-830d-c0efc8e1a4e2', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_c1_expert_roundtable_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '088c164c2fb61a2dafd579de663e0bfab54ca18e54f3ee18c1ab8ab4df710c57'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c101bef-e1df-5bea-afbc-37b22abb65f1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f4e32a11-2cf6-5948-830d-c0efc8e1a4e2', 1), '088c164c2fb61a2dafd579de663e0bfab54ca18e54f3ee18c1ab8ab4df710c57',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/7781846f1677416071edf732f02cc084ff61b72640ee5acfeeeb71d9dc8eb3dd.mp3', 6530, '2026-09-13 19:27:00.363972', '031a6d310000f85fb5278debff6cfe27415fca4b19c32526f419609a68ac4828', 'validated', '{"audio_key":"7781846f1677416071edf732f02cc084ff61b72640ee5acfeeeb71d9dc8eb3dd","entity_key":"u_c1_expert_roundtable_capstone_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"031a6d310000f85fb5278debff6cfe27415fca4b19c32526f419609a68ac4828","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/7781846f1677416071edf732f02cc084ff61b72640ee5acfeeeb71d9dc8eb3dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_c1_expert_roundtable_capstone_02_listen -> audio/generated/tr-TR/utterances/7781846f1677416071edf732f02cc084ff61b72640ee5acfeeeb71d9dc8eb3dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('883a1fec-98fa-5d62-a7f0-7cd19dad9758', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_c1_expert_roundtable_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '088c164c2fb61a2dafd579de663e0bfab54ca18e54f3ee18c1ab8ab4df710c57'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('156483e5-cce8-5459-833c-9ea7609308c9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('883a1fec-98fa-5d62-a7f0-7cd19dad9758', 1), '088c164c2fb61a2dafd579de663e0bfab54ca18e54f3ee18c1ab8ab4df710c57',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/7781846f1677416071edf732f02cc084ff61b72640ee5acfeeeb71d9dc8eb3dd.mp3', 6530, '2026-09-13 19:27:00.363972', '031a6d310000f85fb5278debff6cfe27415fca4b19c32526f419609a68ac4828', 'validated', '{"audio_key":"7781846f1677416071edf732f02cc084ff61b72640ee5acfeeeb71d9dc8eb3dd","entity_key":"e_c1_expert_roundtable_capstone_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"031a6d310000f85fb5278debff6cfe27415fca4b19c32526f419609a68ac4828","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/7781846f1677416071edf732f02cc084ff61b72640ee5acfeeeb71d9dc8eb3dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_concession_reframing_01 -> audio/generated/tr-TR/utterances/7ff0d3556c1b9674946cf3976f1c50425d089bcbcd1b48cf3c4a4c675de9de7e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('459344a9-781e-513d-8021-19907567be40', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_concession_reframing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '161797876893409d0245f4dba99058cef083501a09093f1b0e475e2e296b1244'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c33d9f81-f4d2-5748-94c6-c0e9f90652ab', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('459344a9-781e-513d-8021-19907567be40', 1), '161797876893409d0245f4dba99058cef083501a09093f1b0e475e2e296b1244',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/7ff0d3556c1b9674946cf3976f1c50425d089bcbcd1b48cf3c4a4c675de9de7e.mp3', 4675, '2026-09-13 19:27:01.379217', 'b1a1d85dcd767bc1c08c38ae8a00e655c40ed3083532b317376cdee35635ce14', 'validated', '{"audio_key":"7ff0d3556c1b9674946cf3976f1c50425d089bcbcd1b48cf3c4a4c675de9de7e","entity_key":"u_concession_reframing_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1a1d85dcd767bc1c08c38ae8a00e655c40ed3083532b317376cdee35635ce14","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/7ff0d3556c1b9674946cf3976f1c50425d089bcbcd1b48cf3c4a4c675de9de7e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_nominalization_density_02 -> audio/generated/tr-TR/utterances/80b96f7140904a692493667d57582d48925ff72470e9020d388554269571b1f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('41c3e61f-a50d-5f87-bae3-7414c20267ec', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_nominalization_density_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de4acb0516d82a8c08ce2ac8dd2ac3959b640945e87616b75ff2e1adb83c369d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62534fb2-16f7-59e7-987e-caf481b1d1c0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('41c3e61f-a50d-5f87-bae3-7414c20267ec', 1), 'de4acb0516d82a8c08ce2ac8dd2ac3959b640945e87616b75ff2e1adb83c369d',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/80b96f7140904a692493667d57582d48925ff72470e9020d388554269571b1f9.mp3', 5328, '2026-09-13 19:27:01.895998', 'c942b22d993f52976dc86cf178e661c6443ef1d7dea8d8676c8f2b4ae806e640', 'validated', '{"audio_key":"80b96f7140904a692493667d57582d48925ff72470e9020d388554269571b1f9","entity_key":"u_nominalization_density_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c942b22d993f52976dc86cf178e661c6443ef1d7dea8d8676c8f2b4ae806e640","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/80b96f7140904a692493667d57582d48925ff72470e9020d388554269571b1f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_nominalization_density_01_listen -> audio/generated/tr-TR/utterances/80b96f7140904a692493667d57582d48925ff72470e9020d388554269571b1f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0035ffd2-3fc5-567f-8e04-f8ca18216ce9', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_nominalization_density_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de4acb0516d82a8c08ce2ac8dd2ac3959b640945e87616b75ff2e1adb83c369d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('90c793a2-99b2-564d-acbd-aa22428f6aa2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0035ffd2-3fc5-567f-8e04-f8ca18216ce9', 1), 'de4acb0516d82a8c08ce2ac8dd2ac3959b640945e87616b75ff2e1adb83c369d',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/80b96f7140904a692493667d57582d48925ff72470e9020d388554269571b1f9.mp3', 5328, '2026-09-13 19:27:01.895998', 'c942b22d993f52976dc86cf178e661c6443ef1d7dea8d8676c8f2b4ae806e640', 'validated', '{"audio_key":"80b96f7140904a692493667d57582d48925ff72470e9020d388554269571b1f9","entity_key":"e_nominalization_density_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c942b22d993f52976dc86cf178e661c6443ef1d7dea8d8676c8f2b4ae806e640","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/80b96f7140904a692493667d57582d48925ff72470e9020d388554269571b1f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_stance_01 -> audio/generated/tr-TR/utterances/839625cbdae5154bd33d9ebfb246834532c5ee417de71896fe5328811b48c35a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bcdabdcf-3dcc-50b8-88c7-af1dfd0df020', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_stance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1cd824a63ad1065f5cd405c28de9ce6ab4daf3ce663d09a0293611888e38a5db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df74a0ef-0e0a-5948-87cd-11a90edcad3a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bcdabdcf-3dcc-50b8-88c7-af1dfd0df020', 1), '1cd824a63ad1065f5cd405c28de9ce6ab4daf3ce663d09a0293611888e38a5db',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/839625cbdae5154bd33d9ebfb246834532c5ee417de71896fe5328811b48c35a.mp3', 3996, '2026-09-13 19:27:02.801633', '3520d84e6b478bdbe7f68978804d99998c146ca22727227f5a42d31e0b510165', 'validated', '{"audio_key":"839625cbdae5154bd33d9ebfb246834532c5ee417de71896fe5328811b48c35a","entity_key":"u_reported_stance_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3520d84e6b478bdbe7f68978804d99998c146ca22727227f5a42d31e0b510165","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/839625cbdae5154bd33d9ebfb246834532c5ee417de71896fe5328811b48c35a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidential_calibration_03 -> audio/generated/tr-TR/utterances/8785b9e738a4e1d1101dd0eaa2f8fe18c350760ef52f69d2d19b9fa922d0694a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7c8b68aa-65f5-551e-997d-e91b16d8f4a5', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidential_calibration_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '971c1a2b840bc64cf4922b7cc5101ddff6f0955e01e4cd7cdc0cb04e4fd99ed0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20adf0a2-5572-5f81-82d7-67b8623a170e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7c8b68aa-65f5-551e-997d-e91b16d8f4a5', 1), '971c1a2b840bc64cf4922b7cc5101ddff6f0955e01e4cd7cdc0cb04e4fd99ed0',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/8785b9e738a4e1d1101dd0eaa2f8fe18c350760ef52f69d2d19b9fa922d0694a.mp3', 3239, '2026-09-13 19:27:03.237713', '206643f665640fa4afb1839570565aca5159bcc4a575ab8043b57377e5c02120', 'validated', '{"audio_key":"8785b9e738a4e1d1101dd0eaa2f8fe18c350760ef52f69d2d19b9fa922d0694a","entity_key":"u_evidential_calibration_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"206643f665640fa4afb1839570565aca5159bcc4a575ab8043b57377e5c02120","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/8785b9e738a4e1d1101dd0eaa2f8fe18c350760ef52f69d2d19b9fa922d0694a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_shifting_04 -> audio/generated/tr-TR/utterances/8ae051a4b507b992d366df7ac3eb3de8d6f87282577fc58c6117d3c83a691862.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2d7cc5e8-6903-55d5-9ee6-ae24b2017710', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_shifting_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e2d55e70157a118fd0dd2e6475f67ac2ba2a85f5611715c28c9966d98aa24112'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b377ff8-947d-5d2c-8083-4cb1f29a4c8d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2d7cc5e8-6903-55d5-9ee6-ae24b2017710', 1), 'e2d55e70157a118fd0dd2e6475f67ac2ba2a85f5611715c28c9966d98aa24112',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/8ae051a4b507b992d366df7ac3eb3de8d6f87282577fc58c6117d3c83a691862.mp3', 4911, '2026-09-13 19:27:04.429830', '976cf45239b705c8c3df8e9e347acc99ff0fc9e7437da870aea62be62a4866a0', 'validated', '{"audio_key":"8ae051a4b507b992d366df7ac3eb3de8d6f87282577fc58c6117d3c83a691862","entity_key":"u_register_shifting_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"976cf45239b705c8c3df8e9e347acc99ff0fc9e7437da870aea62be62a4866a0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/8ae051a4b507b992d366df7ac3eb3de8d6f87282577fc58c6117d3c83a691862.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_register_shifting_02_listen -> audio/generated/tr-TR/utterances/8ae051a4b507b992d366df7ac3eb3de8d6f87282577fc58c6117d3c83a691862.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('5732a0fd-f36f-5d3b-b7be-739412bb4a70', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_register_shifting_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e2d55e70157a118fd0dd2e6475f67ac2ba2a85f5611715c28c9966d98aa24112'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e47026d7-7036-5e16-ae36-4e32a4cbe0c0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('5732a0fd-f36f-5d3b-b7be-739412bb4a70', 1), 'e2d55e70157a118fd0dd2e6475f67ac2ba2a85f5611715c28c9966d98aa24112',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/8ae051a4b507b992d366df7ac3eb3de8d6f87282577fc58c6117d3c83a691862.mp3', 4911, '2026-09-13 19:27:04.429830', '976cf45239b705c8c3df8e9e347acc99ff0fc9e7437da870aea62be62a4866a0', 'validated', '{"audio_key":"8ae051a4b507b992d366df7ac3eb3de8d6f87282577fc58c6117d3c83a691862","entity_key":"e_register_shifting_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"976cf45239b705c8c3df8e9e347acc99ff0fc9e7437da870aea62be62a4866a0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/8ae051a4b507b992d366df7ac3eb3de8d6f87282577fc58c6117d3c83a691862.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_idiomatic_precision_03 -> audio/generated/tr-TR/utterances/91d2ebafc83039cd0164a790834f5fa227bcc77f8c94316c2fb8bc19a14ae79b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5789f85e-41ca-55ff-9c98-6fa2ca2e887a', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_idiomatic_precision_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5bb92e7adf2c7458a61b58ce19292ea88d49253c5e2e8d91c8ee51a657276f28'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c056b38c-06cc-560e-933a-e3d67097f4b5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5789f85e-41ca-55ff-9c98-6fa2ca2e887a', 1), '5bb92e7adf2c7458a61b58ce19292ea88d49253c5e2e8d91c8ee51a657276f28',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/91d2ebafc83039cd0164a790834f5fa227bcc77f8c94316c2fb8bc19a14ae79b.mp3', 5146, '2026-09-13 19:27:04.819142', 'a6d42f68221fd818fe2f5ac65444f30ebf480e20b499a2891328ea980bc25821', 'validated', '{"audio_key":"91d2ebafc83039cd0164a790834f5fa227bcc77f8c94316c2fb8bc19a14ae79b","entity_key":"u_idiomatic_precision_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a6d42f68221fd818fe2f5ac65444f30ebf480e20b499a2891328ea980bc25821","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/91d2ebafc83039cd0164a790834f5fa227bcc77f8c94316c2fb8bc19a14ae79b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_concession_reframing_04 -> audio/generated/tr-TR/utterances/9255040c4b5541c86003b61160d152ffb92ebafb5bffef65f8da2f3af1a341d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c9ced581-abe5-5d87-95d4-bf64789b2137', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_concession_reframing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42aadb8e8c8b1cc8d6e96eb75714569b33b31db5b949eaea62a89cf80fad5d71'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('033f4351-6f36-5ec5-8a84-f3a25a0f768f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c9ced581-abe5-5d87-95d4-bf64789b2137', 1), '42aadb8e8c8b1cc8d6e96eb75714569b33b31db5b949eaea62a89cf80fad5d71',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/9255040c4b5541c86003b61160d152ffb92ebafb5bffef65f8da2f3af1a341d5.mp3', 4832, '2026-09-13 19:27:05.967655', '961990d1dcdfadb7875cb12fa9f9eae140886b66dd6e31fb045e4e190d675a0d', 'validated', '{"audio_key":"9255040c4b5541c86003b61160d152ffb92ebafb5bffef65f8da2f3af1a341d5","entity_key":"u_concession_reframing_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"961990d1dcdfadb7875cb12fa9f9eae140886b66dd6e31fb045e4e190d675a0d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/9255040c4b5541c86003b61160d152ffb92ebafb5bffef65f8da2f3af1a341d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_concession_reframing_02_listen -> audio/generated/tr-TR/utterances/9255040c4b5541c86003b61160d152ffb92ebafb5bffef65f8da2f3af1a341d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d2dbef76-02ee-5100-ade4-63a3896815f0', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_concession_reframing_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42aadb8e8c8b1cc8d6e96eb75714569b33b31db5b949eaea62a89cf80fad5d71'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee7b34c6-27ed-52c6-8e80-c0c7fefd06ef', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d2dbef76-02ee-5100-ade4-63a3896815f0', 1), '42aadb8e8c8b1cc8d6e96eb75714569b33b31db5b949eaea62a89cf80fad5d71',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/9255040c4b5541c86003b61160d152ffb92ebafb5bffef65f8da2f3af1a341d5.mp3', 4832, '2026-09-13 19:27:05.967655', '961990d1dcdfadb7875cb12fa9f9eae140886b66dd6e31fb045e4e190d675a0d', 'validated', '{"audio_key":"9255040c4b5541c86003b61160d152ffb92ebafb5bffef65f8da2f3af1a341d5","entity_key":"e_concession_reframing_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"961990d1dcdfadb7875cb12fa9f9eae140886b66dd6e31fb045e4e190d675a0d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/9255040c4b5541c86003b61160d152ffb92ebafb5bffef65f8da2f3af1a341d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_institutional_mediation_01 -> audio/generated/tr-TR/utterances/98dc7ecd85f66f1ce8d17eab2ea32df4b3b83c07bef47188f962778ace83b8e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a20a9957-0e21-57f5-9f98-6c8c106b353c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_institutional_mediation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69ff88a58c35b8788e7673fca841244e4840b882612f814c510ac28ae85a5e5b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dab88c9b-d9ac-5ac2-94d0-9fe20517efd8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a20a9957-0e21-57f5-9f98-6c8c106b353c', 1), '69ff88a58c35b8788e7673fca841244e4840b882612f814c510ac28ae85a5e5b',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/98dc7ecd85f66f1ce8d17eab2ea32df4b3b83c07bef47188f962778ace83b8e5.mp3', 4911, '2026-09-13 19:27:06.358127', '6855b77fd52da66822e3fe347ad9a7c3a2bfe0e73295e15e21a8fe37e8a6f93d', 'validated', '{"audio_key":"98dc7ecd85f66f1ce8d17eab2ea32df4b3b83c07bef47188f962778ace83b8e5","entity_key":"u_institutional_mediation_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6855b77fd52da66822e3fe347ad9a7c3a2bfe0e73295e15e21a8fe37e8a6f93d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/98dc7ecd85f66f1ce8d17eab2ea32df4b3b83c07bef47188f962778ace83b8e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_c1_expert_roundtable_capstone_01 -> audio/generated/tr-TR/utterances/a4f688dc88dd1cd2118b90aa65d3ba0e406615f9fd1d0349d1364253d33155f3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9c5d09ac-5467-54c2-af19-9e224bb5c4b7', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_c1_expert_roundtable_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7fc4d0f4b9f1a3648ca8b91bd49ea0298d81332dac84a8cde3105dae379e8ada'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e016b716-3f60-5f1c-8a11-4cc143163ed2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9c5d09ac-5467-54c2-af19-9e224bb5c4b7', 1), '7fc4d0f4b9f1a3648ca8b91bd49ea0298d81332dac84a8cde3105dae379e8ada',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/a4f688dc88dd1cd2118b90aa65d3ba0e406615f9fd1d0349d1364253d33155f3.mp3', 5694, '2026-09-13 19:27:07.597919', '8f7d0857f93bf2d2ed13285ebb0e555b66567e2bf3e2257ec4a6cd5169bc38a5', 'validated', '{"audio_key":"a4f688dc88dd1cd2118b90aa65d3ba0e406615f9fd1d0349d1364253d33155f3","entity_key":"u_c1_expert_roundtable_capstone_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8f7d0857f93bf2d2ed13285ebb0e555b66567e2bf3e2257ec4a6cd5169bc38a5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/a4f688dc88dd1cd2118b90aa65d3ba0e406615f9fd1d0349d1364253d33155f3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_policy_synthesis_02 -> audio/generated/tr-TR/utterances/a7cd261b3ce487aa04dbc3dd86c82dc6bc970471575cc45c1c7448286df986b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('88769ed0-c3a3-53fb-8fb7-b4e2dd808426', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_policy_synthesis_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2bfc4d3375a2f510dad7b2b25151c9809adf5c195d694e0254b85f25c0f5955d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd8b06f0-5175-5714-8afc-3de4a99413d7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('88769ed0-c3a3-53fb-8fb7-b4e2dd808426', 1), '2bfc4d3375a2f510dad7b2b25151c9809adf5c195d694e0254b85f25c0f5955d',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/a7cd261b3ce487aa04dbc3dd86c82dc6bc970471575cc45c1c7448286df986b7.mp3', 5381, '2026-09-13 19:27:07.938795', '91eb21f1b9e4edba5cc5fb90e03878562bbae104e5b766e72f001890df5f99e2', 'validated', '{"audio_key":"a7cd261b3ce487aa04dbc3dd86c82dc6bc970471575cc45c1c7448286df986b7","entity_key":"u_policy_synthesis_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"91eb21f1b9e4edba5cc5fb90e03878562bbae104e5b766e72f001890df5f99e2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/a7cd261b3ce487aa04dbc3dd86c82dc6bc970471575cc45c1c7448286df986b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_policy_synthesis_01_listen -> audio/generated/tr-TR/utterances/a7cd261b3ce487aa04dbc3dd86c82dc6bc970471575cc45c1c7448286df986b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f4dd4892-1d88-5d7c-a09f-43e8993716b7', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_policy_synthesis_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2bfc4d3375a2f510dad7b2b25151c9809adf5c195d694e0254b85f25c0f5955d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac98e45b-8158-5da2-b24e-e4bd0ffa1eb2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f4dd4892-1d88-5d7c-a09f-43e8993716b7', 1), '2bfc4d3375a2f510dad7b2b25151c9809adf5c195d694e0254b85f25c0f5955d',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/a7cd261b3ce487aa04dbc3dd86c82dc6bc970471575cc45c1c7448286df986b7.mp3', 5381, '2026-09-13 19:27:07.938795', '91eb21f1b9e4edba5cc5fb90e03878562bbae104e5b766e72f001890df5f99e2', 'validated', '{"audio_key":"a7cd261b3ce487aa04dbc3dd86c82dc6bc970471575cc45c1c7448286df986b7","entity_key":"e_policy_synthesis_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"91eb21f1b9e4edba5cc5fb90e03878562bbae104e5b766e72f001890df5f99e2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/a7cd261b3ce487aa04dbc3dd86c82dc6bc970471575cc45c1c7448286df986b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_institutional_mediation_04 -> audio/generated/tr-TR/utterances/a81ed24d60c4c656d4e24a6503e16daef03ebd54e18f6ed86d7c891ffdaaf780.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e2513ee5-d8b6-57e7-a927-09feee6f2855', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_institutional_mediation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd06ddb32091fb140d3b7e348f86c85d335efd5cccf9c7199924f2b6ffda58dd2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c638b60d-1f4f-5c6a-a628-1cfba24d4a05', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e2513ee5-d8b6-57e7-a927-09feee6f2855', 1), 'd06ddb32091fb140d3b7e348f86c85d335efd5cccf9c7199924f2b6ffda58dd2',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/a81ed24d60c4c656d4e24a6503e16daef03ebd54e18f6ed86d7c891ffdaaf780.mp3', 5564, '2026-09-13 19:27:09.158363', 'dae48103907d2b71f77e5eb088fdf613b3092b2bc364dfd7036c1f193e2827db', 'validated', '{"audio_key":"a81ed24d60c4c656d4e24a6503e16daef03ebd54e18f6ed86d7c891ffdaaf780","entity_key":"u_institutional_mediation_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dae48103907d2b71f77e5eb088fdf613b3092b2bc364dfd7036c1f193e2827db","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/a81ed24d60c4c656d4e24a6503e16daef03ebd54e18f6ed86d7c891ffdaaf780.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_institutional_mediation_02_listen -> audio/generated/tr-TR/utterances/a81ed24d60c4c656d4e24a6503e16daef03ebd54e18f6ed86d7c891ffdaaf780.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7667cca9-16d1-59a6-9aab-f8945086ba1c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_institutional_mediation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd06ddb32091fb140d3b7e348f86c85d335efd5cccf9c7199924f2b6ffda58dd2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('789eaaeb-fc2a-5b63-ae26-b2009b22bd58', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7667cca9-16d1-59a6-9aab-f8945086ba1c', 1), 'd06ddb32091fb140d3b7e348f86c85d335efd5cccf9c7199924f2b6ffda58dd2',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/a81ed24d60c4c656d4e24a6503e16daef03ebd54e18f6ed86d7c891ffdaaf780.mp3', 5564, '2026-09-13 19:27:09.158363', 'dae48103907d2b71f77e5eb088fdf613b3092b2bc364dfd7036c1f193e2827db', 'validated', '{"audio_key":"a81ed24d60c4c656d4e24a6503e16daef03ebd54e18f6ed86d7c891ffdaaf780","entity_key":"e_institutional_mediation_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dae48103907d2b71f77e5eb088fdf613b3092b2bc364dfd7036c1f193e2827db","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/a81ed24d60c4c656d4e24a6503e16daef03ebd54e18f6ed86d7c891ffdaaf780.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_stance_02 -> audio/generated/tr-TR/utterances/b27da6c954667af6a3346a7ef857718c2a61f272746776b564c39f05f455f173.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8e2500be-0e3a-569e-8cf5-a71727bfab0b', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_stance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bb636a2ed9b24ed54a4a20151d14a3d7939ac3d7686d941bb6238dd7c3186b0a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f460c0bf-0599-5899-9642-22536033eb77', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8e2500be-0e3a-569e-8cf5-a71727bfab0b', 1), 'bb636a2ed9b24ed54a4a20151d14a3d7939ac3d7686d941bb6238dd7c3186b0a',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b27da6c954667af6a3346a7ef857718c2a61f272746776b564c39f05f455f173.mp3', 3604, '2026-09-13 19:27:09.270289', '403f639f0090981a745cef207990a9806b33350b061c1d428536444991a5ed42', 'validated', '{"audio_key":"b27da6c954667af6a3346a7ef857718c2a61f272746776b564c39f05f455f173","entity_key":"u_reported_stance_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"403f639f0090981a745cef207990a9806b33350b061c1d428536444991a5ed42","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b27da6c954667af6a3346a7ef857718c2a61f272746776b564c39f05f455f173.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_reported_stance_01_listen -> audio/generated/tr-TR/utterances/b27da6c954667af6a3346a7ef857718c2a61f272746776b564c39f05f455f173.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2ac8c771-6b98-5d16-a2ef-be0df61a8aef', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_reported_stance_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bb636a2ed9b24ed54a4a20151d14a3d7939ac3d7686d941bb6238dd7c3186b0a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8dd5527-fc4a-530d-81ab-90d0c5842169', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2ac8c771-6b98-5d16-a2ef-be0df61a8aef', 1), 'bb636a2ed9b24ed54a4a20151d14a3d7939ac3d7686d941bb6238dd7c3186b0a',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b27da6c954667af6a3346a7ef857718c2a61f272746776b564c39f05f455f173.mp3', 3604, '2026-09-13 19:27:09.270289', '403f639f0090981a745cef207990a9806b33350b061c1d428536444991a5ed42', 'validated', '{"audio_key":"b27da6c954667af6a3346a7ef857718c2a61f272746776b564c39f05f455f173","entity_key":"e_reported_stance_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"403f639f0090981a745cef207990a9806b33350b061c1d428536444991a5ed42","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b27da6c954667af6a3346a7ef857718c2a61f272746776b564c39f05f455f173.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_policy_synthesis_04 -> audio/generated/tr-TR/utterances/b4356c2388aa3d084fc3d580606a0ed26581060a09d91d1cf7a2c262fd6d90af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c47ac6c5-2aa8-5a27-b348-ba0cc78545c9', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_policy_synthesis_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc79af541898634bb9449bc6cf7bbdbd33c6bd6512a6b998093faea569eb5533'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3cf64a43-8270-5a1c-8b8f-968122706d39', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c47ac6c5-2aa8-5a27-b348-ba0cc78545c9', 1), 'bc79af541898634bb9449bc6cf7bbdbd33c6bd6512a6b998093faea569eb5533',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b4356c2388aa3d084fc3d580606a0ed26581060a09d91d1cf7a2c262fd6d90af.mp3', 5198, '2026-09-13 19:27:10.798014', '3624b7b736dd0d065dab43c2ea3356b7a3bfc1a0cb3b3831927344feab09f32a', 'validated', '{"audio_key":"b4356c2388aa3d084fc3d580606a0ed26581060a09d91d1cf7a2c262fd6d90af","entity_key":"u_policy_synthesis_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3624b7b736dd0d065dab43c2ea3356b7a3bfc1a0cb3b3831927344feab09f32a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b4356c2388aa3d084fc3d580606a0ed26581060a09d91d1cf7a2c262fd6d90af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_policy_synthesis_02_listen -> audio/generated/tr-TR/utterances/b4356c2388aa3d084fc3d580606a0ed26581060a09d91d1cf7a2c262fd6d90af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ff1d698d-aa59-57f5-a335-39843550170f', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_policy_synthesis_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc79af541898634bb9449bc6cf7bbdbd33c6bd6512a6b998093faea569eb5533'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('72181f50-be1b-50b3-aa2c-74b3ddb7a61b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ff1d698d-aa59-57f5-a335-39843550170f', 1), 'bc79af541898634bb9449bc6cf7bbdbd33c6bd6512a6b998093faea569eb5533',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b4356c2388aa3d084fc3d580606a0ed26581060a09d91d1cf7a2c262fd6d90af.mp3', 5198, '2026-09-13 19:27:10.798014', '3624b7b736dd0d065dab43c2ea3356b7a3bfc1a0cb3b3831927344feab09f32a', 'validated', '{"audio_key":"b4356c2388aa3d084fc3d580606a0ed26581060a09d91d1cf7a2c262fd6d90af","entity_key":"e_policy_synthesis_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3624b7b736dd0d065dab43c2ea3356b7a3bfc1a0cb3b3831927344feab09f32a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b4356c2388aa3d084fc3d580606a0ed26581060a09d91d1cf7a2c262fd6d90af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_stance_03 -> audio/generated/tr-TR/utterances/b87e353364acc65233279aa7a74a83a432f80702a462df6b0945135818814b7d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6187b2b4-1c5d-5f14-8572-a02866b79d1c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_stance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '622884cc0023e0f19e29c223e58e473754022691d6df7740b549d34955b13d35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ce994dc-0300-5e71-bfa5-9176b6b46996', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6187b2b4-1c5d-5f14-8572-a02866b79d1c', 1), '622884cc0023e0f19e29c223e58e473754022691d6df7740b549d34955b13d35',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/b87e353364acc65233279aa7a74a83a432f80702a462df6b0945135818814b7d.mp3', 4728, '2026-09-13 19:27:10.809324', '08055a9f3707c9dcafbdad1d4bd27502650b1f47b6b095ae1d34e13baa461eec', 'validated', '{"audio_key":"b87e353364acc65233279aa7a74a83a432f80702a462df6b0945135818814b7d","entity_key":"u_reported_stance_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08055a9f3707c9dcafbdad1d4bd27502650b1f47b6b095ae1d34e13baa461eec","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/b87e353364acc65233279aa7a74a83a432f80702a462df6b0945135818814b7d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_argument_architecture_02 -> audio/generated/tr-TR/utterances/c7d917304512579e9f6a88b7cf7f59d41f901909c01236aa1a4cc2244c4b79f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('26f126b0-8308-5ea6-9356-7059b2e17aa1', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_argument_architecture_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '748f7012a3bf5811de76dd8f4580d8b0eca613dce8d9ddd85f8b3cdc791e1428'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('93009d32-abdb-5818-9de9-93007e178f61', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('26f126b0-8308-5ea6-9356-7059b2e17aa1', 1), '748f7012a3bf5811de76dd8f4580d8b0eca613dce8d9ddd85f8b3cdc791e1428',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/c7d917304512579e9f6a88b7cf7f59d41f901909c01236aa1a4cc2244c4b79f7.mp3', 4728, '2026-09-13 19:27:12.367745', '8cca0acfee963924cb76caf100f168c944db8e2cc60b84a651ef3410a84e7282', 'validated', '{"audio_key":"c7d917304512579e9f6a88b7cf7f59d41f901909c01236aa1a4cc2244c4b79f7","entity_key":"u_argument_architecture_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8cca0acfee963924cb76caf100f168c944db8e2cc60b84a651ef3410a84e7282","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/c7d917304512579e9f6a88b7cf7f59d41f901909c01236aa1a4cc2244c4b79f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_argument_architecture_01_listen -> audio/generated/tr-TR/utterances/c7d917304512579e9f6a88b7cf7f59d41f901909c01236aa1a4cc2244c4b79f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('79cd0a7f-dcca-5d80-bb3c-314066daab6b', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_argument_architecture_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '748f7012a3bf5811de76dd8f4580d8b0eca613dce8d9ddd85f8b3cdc791e1428'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33dbfec3-0ea7-55bc-b500-482ad739829f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('79cd0a7f-dcca-5d80-bb3c-314066daab6b', 1), '748f7012a3bf5811de76dd8f4580d8b0eca613dce8d9ddd85f8b3cdc791e1428',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/c7d917304512579e9f6a88b7cf7f59d41f901909c01236aa1a4cc2244c4b79f7.mp3', 4728, '2026-09-13 19:27:12.367745', '8cca0acfee963924cb76caf100f168c944db8e2cc60b84a651ef3410a84e7282', 'validated', '{"audio_key":"c7d917304512579e9f6a88b7cf7f59d41f901909c01236aa1a4cc2244c4b79f7","entity_key":"e_argument_architecture_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8cca0acfee963924cb76caf100f168c944db8e2cc60b84a651ef3410a84e7282","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/c7d917304512579e9f6a88b7cf7f59d41f901909c01236aa1a4cc2244c4b79f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_shifting_01 -> audio/generated/tr-TR/utterances/c9bcc425ddf9536e426096fd7fa48ef955522acb90c958da1465df09c37eb5ed.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('532f7284-41d3-5d71-bc21-59cba0875ff0', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_shifting_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9303a10a87267747e77e4672758e8f939f4049db47e42ff7b8d3baaf64f55f8f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9c15b49-7aa3-59c6-9961-ba85eac3fec1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('532f7284-41d3-5d71-bc21-59cba0875ff0', 1), '9303a10a87267747e77e4672758e8f939f4049db47e42ff7b8d3baaf64f55f8f',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/c9bcc425ddf9536e426096fd7fa48ef955522acb90c958da1465df09c37eb5ed.mp3', 3761, '2026-09-13 19:27:12.179541', '0807fc67354f581bfa187549c113ef9423e528c9213d088128f408d7b884ee6c', 'validated', '{"audio_key":"c9bcc425ddf9536e426096fd7fa48ef955522acb90c958da1465df09c37eb5ed","entity_key":"u_register_shifting_01","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0807fc67354f581bfa187549c113ef9423e528c9213d088128f408d7b884ee6c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/c9bcc425ddf9536e426096fd7fa48ef955522acb90c958da1465df09c37eb5ed.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_nominalization_density_03 -> audio/generated/tr-TR/utterances/cacd269ffe93a4a9b584dd9f3a6216c63c2ea5c953df9a9a37343fd1f5302991.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('03c6a619-b7ea-5af9-bbf3-47b9913c74ab', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_nominalization_density_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2079b54e53546df9e1a3972705a7c380b9795ed435b4f3f5b01d2f81f22d7ab6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ceaf2517-d318-54f2-8f23-1b9b40577c22', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('03c6a619-b7ea-5af9-bbf3-47b9913c74ab', 1), '2079b54e53546df9e1a3972705a7c380b9795ed435b4f3f5b01d2f81f22d7ab6',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/cacd269ffe93a4a9b584dd9f3a6216c63c2ea5c953df9a9a37343fd1f5302991.mp3', 5146, '2026-09-13 19:27:13.728200', '39b1034f8186c74772178966746730a32220cf0ce1a3df2c100196183d35aaf5', 'validated', '{"audio_key":"cacd269ffe93a4a9b584dd9f3a6216c63c2ea5c953df9a9a37343fd1f5302991","entity_key":"u_nominalization_density_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"39b1034f8186c74772178966746730a32220cf0ce1a3df2c100196183d35aaf5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/cacd269ffe93a4a9b584dd9f3a6216c63c2ea5c953df9a9a37343fd1f5302991.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_idiomatic_precision_04 -> audio/generated/tr-TR/utterances/cbce1c702b78e47670a7315e57aafeae824abbf58bd3bf253f79bedb638640e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('55e4f5e6-3b7d-5652-8e95-561daa97491c', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_idiomatic_precision_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b870be74c5b310e5fe011b754dee907060b8c493ebd7f39825112be4303d4b64'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('817240e5-bf1d-522d-80d8-f9b6264a2cb2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('55e4f5e6-3b7d-5652-8e95-561daa97491c', 1), 'b870be74c5b310e5fe011b754dee907060b8c493ebd7f39825112be4303d4b64',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/cbce1c702b78e47670a7315e57aafeae824abbf58bd3bf253f79bedb638640e8.mp3', 6034, '2026-09-13 19:27:14.016100', '31c9cb1328d3db7c80ff0deb88fc7cb2cc21504976d1135792e62c0c50cd6e64', 'validated', '{"audio_key":"cbce1c702b78e47670a7315e57aafeae824abbf58bd3bf253f79bedb638640e8","entity_key":"u_idiomatic_precision_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"31c9cb1328d3db7c80ff0deb88fc7cb2cc21504976d1135792e62c0c50cd6e64","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/cbce1c702b78e47670a7315e57aafeae824abbf58bd3bf253f79bedb638640e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_idiomatic_precision_02_listen -> audio/generated/tr-TR/utterances/cbce1c702b78e47670a7315e57aafeae824abbf58bd3bf253f79bedb638640e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6c55ed2c-db71-559d-98d2-33ce128f2713', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_idiomatic_precision_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b870be74c5b310e5fe011b754dee907060b8c493ebd7f39825112be4303d4b64'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2ec5e5f-898a-5ee3-b9cf-fb63948b8f6b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6c55ed2c-db71-559d-98d2-33ce128f2713', 1), 'b870be74c5b310e5fe011b754dee907060b8c493ebd7f39825112be4303d4b64',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/cbce1c702b78e47670a7315e57aafeae824abbf58bd3bf253f79bedb638640e8.mp3', 6034, '2026-09-13 19:27:14.016100', '31c9cb1328d3db7c80ff0deb88fc7cb2cc21504976d1135792e62c0c50cd6e64', 'validated', '{"audio_key":"cbce1c702b78e47670a7315e57aafeae824abbf58bd3bf253f79bedb638640e8","entity_key":"e_idiomatic_precision_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"31c9cb1328d3db7c80ff0deb88fc7cb2cc21504976d1135792e62c0c50cd6e64","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/cbce1c702b78e47670a7315e57aafeae824abbf58bd3bf253f79bedb638640e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidential_calibration_04 -> audio/generated/tr-TR/utterances/eba43ab5ac08e0cf79b21e2707b19cdef647c9ef135a45c6a910640b439cd1c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ce2c3df1-1e58-5d02-ad63-0e7c49ebba2f', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidential_calibration_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5df65b9a702fbfaa3f23c9829102353c775b98cd7b972823457761a6e7c339e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2afce342-5e21-53c3-947a-246b1f88acac', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ce2c3df1-1e58-5d02-ad63-0e7c49ebba2f', 1), '5df65b9a702fbfaa3f23c9829102353c775b98cd7b972823457761a6e7c339e1',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/eba43ab5ac08e0cf79b21e2707b19cdef647c9ef135a45c6a910640b439cd1c6.mp3', 3840, '2026-09-13 19:27:15.154578', '5d91f0ac98f88d24c551e4be8647362bd576dbbab7719889c20beaa20891c97c', 'validated', '{"audio_key":"eba43ab5ac08e0cf79b21e2707b19cdef647c9ef135a45c6a910640b439cd1c6","entity_key":"u_evidential_calibration_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5d91f0ac98f88d24c551e4be8647362bd576dbbab7719889c20beaa20891c97c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/eba43ab5ac08e0cf79b21e2707b19cdef647c9ef135a45c6a910640b439cd1c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_evidential_calibration_02_listen -> audio/generated/tr-TR/utterances/eba43ab5ac08e0cf79b21e2707b19cdef647c9ef135a45c6a910640b439cd1c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a3ff9764-baa0-5eec-8a63-ba3d6c8a7ae4', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_evidential_calibration_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5df65b9a702fbfaa3f23c9829102353c775b98cd7b972823457761a6e7c339e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('898fdd2d-52cd-513b-a9e0-681dab388df7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a3ff9764-baa0-5eec-8a63-ba3d6c8a7ae4', 1), '5df65b9a702fbfaa3f23c9829102353c775b98cd7b972823457761a6e7c339e1',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/eba43ab5ac08e0cf79b21e2707b19cdef647c9ef135a45c6a910640b439cd1c6.mp3', 3840, '2026-09-13 19:27:15.154578', '5d91f0ac98f88d24c551e4be8647362bd576dbbab7719889c20beaa20891c97c', 'validated', '{"audio_key":"eba43ab5ac08e0cf79b21e2707b19cdef647c9ef135a45c6a910640b439cd1c6","entity_key":"e_evidential_calibration_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5d91f0ac98f88d24c551e4be8647362bd576dbbab7719889c20beaa20891c97c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/eba43ab5ac08e0cf79b21e2707b19cdef647c9ef135a45c6a910640b439cd1c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_argument_architecture_04 -> audio/generated/tr-TR/utterances/ee1c4fc5a0eb6e85e81eee76d7370feb95571787b7bef8f347d2f024c04c6639.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f362c247-65bc-514a-847a-1812f72c59c8', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_argument_architecture_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffe9ab3de717c9838b3927ebc61b71d3fc65c0154ebdbbd61d2d5ed8f83317c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('241a1071-c3a2-59bf-90be-88a5dff8b09c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f362c247-65bc-514a-847a-1812f72c59c8', 1), 'ffe9ab3de717c9838b3927ebc61b71d3fc65c0154ebdbbd61d2d5ed8f83317c7',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ee1c4fc5a0eb6e85e81eee76d7370feb95571787b7bef8f347d2f024c04c6639.mp3', 4075, '2026-09-13 19:27:15.408752', '4b6b8ce80930e481cc04e5409be25e9e2367c311423cc5d39f8b1e2bb083775b', 'validated', '{"audio_key":"ee1c4fc5a0eb6e85e81eee76d7370feb95571787b7bef8f347d2f024c04c6639","entity_key":"u_argument_architecture_04","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b6b8ce80930e481cc04e5409be25e9e2367c311423cc5d39f8b1e2bb083775b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ee1c4fc5a0eb6e85e81eee76d7370feb95571787b7bef8f347d2f024c04c6639.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_argument_architecture_02_listen -> audio/generated/tr-TR/utterances/ee1c4fc5a0eb6e85e81eee76d7370feb95571787b7bef8f347d2f024c04c6639.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3420de92-23b1-5e7a-8768-cddf5764d892', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_argument_architecture_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ffe9ab3de717c9838b3927ebc61b71d3fc65c0154ebdbbd61d2d5ed8f83317c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b303fa2-25d2-5e63-89fb-c6d66f6ccd37', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3420de92-23b1-5e7a-8768-cddf5764d892', 1), 'ffe9ab3de717c9838b3927ebc61b71d3fc65c0154ebdbbd61d2d5ed8f83317c7',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ee1c4fc5a0eb6e85e81eee76d7370feb95571787b7bef8f347d2f024c04c6639.mp3', 4075, '2026-09-13 19:27:15.408752', '4b6b8ce80930e481cc04e5409be25e9e2367c311423cc5d39f8b1e2bb083775b', 'validated', '{"audio_key":"ee1c4fc5a0eb6e85e81eee76d7370feb95571787b7bef8f347d2f024c04c6639","entity_key":"e_argument_architecture_02_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b6b8ce80930e481cc04e5409be25e9e2367c311423cc5d39f8b1e2bb083775b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ee1c4fc5a0eb6e85e81eee76d7370feb95571787b7bef8f347d2f024c04c6639.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_institutional_mediation_02 -> audio/generated/tr-TR/utterances/f0b9f7341eec2db07b1c18d7fd29e3676eff4e05d8272d576ecf34912a54a0b6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ae6b5588-da3f-52b1-9745-44f1d54d81c0', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_institutional_mediation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b4febd010e03ce9616cac3ada8b70d1ebcc362802fdcb151f1dfe7ffb50d9de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b44b6d26-7a6a-57e0-a4dd-184e00a863d0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ae6b5588-da3f-52b1-9745-44f1d54d81c0', 1), '8b4febd010e03ce9616cac3ada8b70d1ebcc362802fdcb151f1dfe7ffb50d9de',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/f0b9f7341eec2db07b1c18d7fd29e3676eff4e05d8272d576ecf34912a54a0b6.mp3', 5015, '2026-09-13 19:27:16.644696', 'a5608ca9c87e31ae6cffeb7569b4b1d7c2b0b6de2bd03ffdae292b78511c084b', 'validated', '{"audio_key":"f0b9f7341eec2db07b1c18d7fd29e3676eff4e05d8272d576ecf34912a54a0b6","entity_key":"u_institutional_mediation_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a5608ca9c87e31ae6cffeb7569b4b1d7c2b0b6de2bd03ffdae292b78511c084b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/f0b9f7341eec2db07b1c18d7fd29e3676eff4e05d8272d576ecf34912a54a0b6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_institutional_mediation_01_listen -> audio/generated/tr-TR/utterances/f0b9f7341eec2db07b1c18d7fd29e3676eff4e05d8272d576ecf34912a54a0b6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('bd8d19ab-c707-5ac4-8290-f9ebbab79b1e', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_institutional_mediation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b4febd010e03ce9616cac3ada8b70d1ebcc362802fdcb151f1dfe7ffb50d9de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('152d3436-647b-5b8d-9ab6-e37ccb26e6fe', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('bd8d19ab-c707-5ac4-8290-f9ebbab79b1e', 1), '8b4febd010e03ce9616cac3ada8b70d1ebcc362802fdcb151f1dfe7ffb50d9de',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/f0b9f7341eec2db07b1c18d7fd29e3676eff4e05d8272d576ecf34912a54a0b6.mp3', 5015, '2026-09-13 19:27:16.644696', 'a5608ca9c87e31ae6cffeb7569b4b1d7c2b0b6de2bd03ffdae292b78511c084b', 'validated', '{"audio_key":"f0b9f7341eec2db07b1c18d7fd29e3676eff4e05d8272d576ecf34912a54a0b6","entity_key":"e_institutional_mediation_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a5608ca9c87e31ae6cffeb7569b4b1d7c2b0b6de2bd03ffdae292b78511c084b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/f0b9f7341eec2db07b1c18d7fd29e3676eff4e05d8272d576ecf34912a54a0b6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_concession_reframing_03 -> audio/generated/tr-TR/utterances/f52e4d910065d54c1867d531b194d856b55cd11c57b966a6f6e50a7dd9a19f7a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3873452e-71c6-58a2-986c-c837950aff1f', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_concession_reframing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e01fdee070c214edfa9b81b3883d7099568f7e1eb58d1872dc220d1bfd6fee29'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4fe04855-b989-53c7-84f8-e80d3e5d5ecb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3873452e-71c6-58a2-986c-c837950aff1f', 1), 'e01fdee070c214edfa9b81b3883d7099568f7e1eb58d1872dc220d1bfd6fee29',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/f52e4d910065d54c1867d531b194d856b55cd11c57b966a6f6e50a7dd9a19f7a.mp3', 5093, '2026-09-13 19:27:16.974636', '04fc87936f9310fa33c81d91571eeef545ed3bef5271239bd57033a2c600ee55', 'validated', '{"audio_key":"f52e4d910065d54c1867d531b194d856b55cd11c57b966a6f6e50a7dd9a19f7a","entity_key":"u_concession_reframing_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"04fc87936f9310fa33c81d91571eeef545ed3bef5271239bd57033a2c600ee55","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/f52e4d910065d54c1867d531b194d856b55cd11c57b966a6f6e50a7dd9a19f7a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_evidential_calibration_02 -> audio/generated/tr-TR/utterances/fca503da9985d3e9622abaaf2342a8febcce6da2378455c51e647b3fbc93c29c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c85f0bf0-7597-58b8-97ad-e59987ffa659', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_evidential_calibration_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42c6b6620e42a73527b54f1b5e55591864cec011d02816e0378c6279900fa090'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('27b8fc39-1bb9-543e-b1d4-b70163a75a05', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c85f0bf0-7597-58b8-97ad-e59987ffa659', 1), '42c6b6620e42a73527b54f1b5e55591864cec011d02816e0378c6279900fa090',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/fca503da9985d3e9622abaaf2342a8febcce6da2378455c51e647b3fbc93c29c.mp3', 2925, '2026-09-13 19:27:17.908820', '1ccc804de59fa4ab0d57058a79beffe4e53d220b57674df8a5ce339dce14803a', 'validated', '{"audio_key":"fca503da9985d3e9622abaaf2342a8febcce6da2378455c51e647b3fbc93c29c","entity_key":"u_evidential_calibration_02","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1ccc804de59fa4ab0d57058a79beffe4e53d220b57674df8a5ce339dce14803a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/fca503da9985d3e9622abaaf2342a8febcce6da2378455c51e647b3fbc93c29c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_evidential_calibration_01_listen -> audio/generated/tr-TR/utterances/fca503da9985d3e9622abaaf2342a8febcce6da2378455c51e647b3fbc93c29c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('732b15e7-b307-599a-9fb0-e117de9adaa4', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_evidential_calibration_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42c6b6620e42a73527b54f1b5e55591864cec011d02816e0378c6279900fa090'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a08d5eb7-7dc2-57a0-bf35-8a64fa39272e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('732b15e7-b307-599a-9fb0-e117de9adaa4', 1), '42c6b6620e42a73527b54f1b5e55591864cec011d02816e0378c6279900fa090',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/fca503da9985d3e9622abaaf2342a8febcce6da2378455c51e647b3fbc93c29c.mp3', 2925, '2026-09-13 19:27:17.908820', '1ccc804de59fa4ab0d57058a79beffe4e53d220b57674df8a5ce339dce14803a', 'validated', '{"audio_key":"fca503da9985d3e9622abaaf2342a8febcce6da2378455c51e647b3fbc93c29c","entity_key":"e_evidential_calibration_01_listen","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1ccc804de59fa4ab0d57058a79beffe4e53d220b57674df8a5ce339dce14803a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/fca503da9985d3e9622abaaf2342a8febcce6da2378455c51e647b3fbc93c29c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_institutional_mediation_03 -> audio/generated/tr-TR/utterances/ff5f33933cf90a65e2fa288a0672093529f7cd249c4161845094a1085f3d9f92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6c7f6684-d30e-572e-aaf9-045de2613079', 1)
  AND voice_key = 'tr-tr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_institutional_mediation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15317a543652fe68dbb8c8588f29223c4bc13e10a5c51a0c8e92124ddc3753f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7d3dbfe7-f1f0-527f-873a-acb6dc294b44', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6c7f6684-d30e-572e-aaf9-045de2613079', 1), '15317a543652fe68dbb8c8588f29223c4bc13e10a5c51a0c8e92124ddc3753f3',
  'tr-tr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/tr-TR/utterances/ff5f33933cf90a65e2fa288a0672093529f7cd249c4161845094a1085f3d9f92.mp3', 4832, '2026-09-13 19:27:18.497555', '389fa037ad23f4c9ec0a95a93ee864079879c5fe4fbf69501b21f83955266674', 'validated', '{"audio_key":"ff5f33933cf90a65e2fa288a0672093529f7cd249c4161845094a1085f3d9f92","entity_key":"u_institutional_mediation_03","voice_id":"FDs1ZX5J4e4f2c2erxtW","voice_name":"Fili - Warm Turkish Female ","voice_labels":{"gender":"female","accent":"istanbul","age":"young","category":"professional","language":"tr","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"389fa037ad23f4c9ec0a95a93ee864079879c5fe4fbf69501b21f83955266674","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/tr-TR/utterances/ff5f33933cf90a65e2fa288a0672093529f7cd249c4161845094a1085f3d9f92.mp3"}'
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

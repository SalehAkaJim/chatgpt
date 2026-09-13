-- Generated audio link import for de-DE B1
-- Source manifest: audio/manifests/de/B1-batch-5.json
-- Generated rows: 165
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'de' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'de-DE' LIMIT 1);
START TRANSACTION;

-- d_instructions_notices_03:2 -> audio/generated/de-DE/dialogues/059f9fefb3b82d3d6b5c56eccf53c1581a064a0907b3b7aa604108e3f41b501d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('df13f764-c24e-5bd8-b3b8-a40624557c57', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_instructions_notices_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cabe976d03d94c8515785f337274731743da8e451db6c55c072c17141b81177d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22806994-38e6-5a4a-b073-008077204d34', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('df13f764-c24e-5bd8-b3b8-a40624557c57', 1), 'cabe976d03d94c8515785f337274731743da8e451db6c55c072c17141b81177d',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/059f9fefb3b82d3d6b5c56eccf53c1581a064a0907b3b7aa604108e3f41b501d.mp3', 2455, '2026-09-13 07:34:57.200229', '22c6051818ea83cea2b99c32137486dc07c16d746d317475ca7a6ece5f725bac', 'validated', '{"audio_key":"059f9fefb3b82d3d6b5c56eccf53c1581a064a0907b3b7aa604108e3f41b501d","entity_key":"d_instructions_notices_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"22c6051818ea83cea2b99c32137486dc07c16d746d317475ca7a6ece5f725bac","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/059f9fefb3b82d3d6b5c56eccf53c1581a064a0907b3b7aa604108e3f41b501d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_practical_writing_03:4 -> audio/generated/de-DE/dialogues/0723d855a2d9749ba618e2877737f4fae3de9e0cf35bb28a1746274890d8c9c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2a0a46aa-561b-5246-8fcf-b08fce10aa1c', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_practical_writing_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ecc3d54166e188c42bdcba7a486ad585fb8d2ae35c2d04ffd9ebacb4e6897a69'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28a47d53-1deb-58c4-b250-193db2f80364', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2a0a46aa-561b-5246-8fcf-b08fce10aa1c', 1), 'ecc3d54166e188c42bdcba7a486ad585fb8d2ae35c2d04ffd9ebacb4e6897a69',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0723d855a2d9749ba618e2877737f4fae3de9e0cf35bb28a1746274890d8c9c2.mp3', 2351, '2026-09-13 07:34:57.280260', '2ab2756b707cde13d385dc14e8e16acd86b518dde451d93a819c8eaaf2838020', 'validated', '{"audio_key":"0723d855a2d9749ba618e2877737f4fae3de9e0cf35bb28a1746274890d8c9c2","entity_key":"d_practical_writing_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2ab2756b707cde13d385dc14e8e16acd86b518dde451d93a819c8eaaf2838020","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/0723d855a2d9749ba618e2877737f4fae3de9e0cf35bb28a1746274890d8c9c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_relaying_03:1 -> audio/generated/de-DE/dialogues/0ae34e6cc9ef4b96403eaf450d4a5980fcffb9c6adf4d8fbfe2f7b36737596e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1fcde373-04c6-51b0-913a-b9789d39a5f3', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_relaying_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fdd269c84cfc1d5472c03c0fd40231e05f2d6b6bfa8a5f016974f94ede53eecb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d4d87a2-2a09-531c-897e-0b00ccac3c6d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1fcde373-04c6-51b0-913a-b9789d39a5f3', 1), 'fdd269c84cfc1d5472c03c0fd40231e05f2d6b6bfa8a5f016974f94ede53eecb',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0ae34e6cc9ef4b96403eaf450d4a5980fcffb9c6adf4d8fbfe2f7b36737596e7.mp3', 2768, '2026-09-13 07:34:58.471643', '7fa19b04dd77fdd14f16e83b20a1c5ca5f62f44266728b0fab415fac0d705cb8', 'validated', '{"audio_key":"0ae34e6cc9ef4b96403eaf450d4a5980fcffb9c6adf4d8fbfe2f7b36737596e7","entity_key":"d_summarizing_relaying_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"7fa19b04dd77fdd14f16e83b20a1c5ca5f62f44266728b0fab415fac0d705cb8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0ae34e6cc9ef4b96403eaf450d4a5980fcffb9c6adf4d8fbfe2f7b36737596e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_relaying_01:1 -> audio/generated/de-DE/dialogues/0d988788585da1c9621ac2e2ab37a64e95e40c0e7065ddd10f7e93f244407e34.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('893a648d-f763-5625-ba66-14e588a8e3d9', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_relaying_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f258ba142f9fe7d49611fe7595e13b2ca4626f02dcfa526fa1020b5c01e7fbe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9806f22d-a15a-5538-a93f-c37a1e33486a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('893a648d-f763-5625-ba66-14e588a8e3d9', 1), '2f258ba142f9fe7d49611fe7595e13b2ca4626f02dcfa526fa1020b5c01e7fbe',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0d988788585da1c9621ac2e2ab37a64e95e40c0e7065ddd10f7e93f244407e34.mp3', 3996, '2026-09-13 07:34:58.774946', 'd9c18d76f19fcc53ef37fa8d77547bd00d13e0c2de99a9abb58f1f22a4665880', 'validated', '{"audio_key":"0d988788585da1c9621ac2e2ab37a64e95e40c0e7065ddd10f7e93f244407e34","entity_key":"d_summarizing_relaying_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d9c18d76f19fcc53ef37fa8d77547bd00d13e0c2de99a9abb58f1f22a4665880","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/0d988788585da1c9621ac2e2ab37a64e95e40c0e7065ddd10f7e93f244407e34.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_practical_writing_01:4 -> audio/generated/de-DE/dialogues/1588f63148eb35153812242c91cd23f01b77b866aa2a9503c1a56b8553f07711.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('512eb9c6-f026-575c-9805-9b99cbb497dd', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_practical_writing_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ef9de2d441e2e44f322854c77610daae3dd2e96c21686e86c55df15e2d57a3b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e11713e9-1f6f-54b2-9f10-19ed2d2a6ee6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('512eb9c6-f026-575c-9805-9b99cbb497dd', 1), 'ef9de2d441e2e44f322854c77610daae3dd2e96c21686e86c55df15e2d57a3b5',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1588f63148eb35153812242c91cd23f01b77b866aa2a9503c1a56b8553f07711.mp3', 3422, '2026-09-13 07:34:59.846223', '75948534a1bfe207f44239da83de0977d4c4223f970e09ae7f31cda76ca72624', 'validated', '{"audio_key":"1588f63148eb35153812242c91cd23f01b77b866aa2a9503c1a56b8553f07711","entity_key":"d_practical_writing_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"75948534a1bfe207f44239da83de0977d4c4223f970e09ae7f31cda76ca72624","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/1588f63148eb35153812242c91cd23f01b77b866aa2a9503c1a56b8553f07711.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_explaining_presenting_01:4 -> audio/generated/de-DE/dialogues/18afc14f4dc18ddfd71eaeb95f30c15b2ba9d2a28a08088d3b6e846e86d9f9b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d125ac80-916d-5ed0-9022-4fb624b7733a', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_explaining_presenting_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ce5f1760db2c1e1ed7d39be8233291914d4531d7998633cb2d0af900d916c0d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a6fd10a-4047-5aff-8c06-1b656fe6c4a8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d125ac80-916d-5ed0-9022-4fb624b7733a', 1), '9ce5f1760db2c1e1ed7d39be8233291914d4531d7998633cb2d0af900d916c0d',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/18afc14f4dc18ddfd71eaeb95f30c15b2ba9d2a28a08088d3b6e846e86d9f9b7.mp3', 2768, '2026-09-13 07:34:59.931575', '0a271832d298c4ecb5def7ffad07f4801204840ee6f20afc093170a64b7237eb', 'validated', '{"audio_key":"18afc14f4dc18ddfd71eaeb95f30c15b2ba9d2a28a08088d3b6e846e86d9f9b7","entity_key":"d_explaining_presenting_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0a271832d298c4ecb5def7ffad07f4801204840ee6f20afc093170a64b7237eb","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/18afc14f4dc18ddfd71eaeb95f30c15b2ba9d2a28a08088d3b6e846e86d9f9b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_relaying_01:3 -> audio/generated/de-DE/dialogues/27602a8ffc7992a7abb67218e0947ceab235dc2295a69997584bcc3024506f19.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e15ded4d-ec15-537d-bf30-d8cbc3627ecb', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_relaying_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed564b0de6bc87efea6fd3d50a1539af0e6eefe18f36e5afb9a6ca236f1aab5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('831c2948-4489-5024-a4a2-a942693736bf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e15ded4d-ec15-537d-bf30-d8cbc3627ecb', 1), 'ed564b0de6bc87efea6fd3d50a1539af0e6eefe18f36e5afb9a6ca236f1aab5a',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/27602a8ffc7992a7abb67218e0947ceab235dc2295a69997584bcc3024506f19.mp3', 1671, '2026-09-13 07:35:00.929183', '79c3366e332e602e4fe5e2b887b9401ea0f696219b0f2a4f78e7aa0d83af6ae7', 'validated', '{"audio_key":"27602a8ffc7992a7abb67218e0947ceab235dc2295a69997584bcc3024506f19","entity_key":"d_summarizing_relaying_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"79c3366e332e602e4fe5e2b887b9401ea0f696219b0f2a4f78e7aa0d83af6ae7","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/27602a8ffc7992a7abb67218e0947ceab235dc2295a69997584bcc3024506f19.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_practical_writing_03:1 -> audio/generated/de-DE/dialogues/2897837075bd67653d8682d6e6a61c1b04f90c7c95a0baf837bfd36958f8d9fd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('73948a4b-2df9-53b6-86fa-6e30b3aef585', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_practical_writing_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '46e5cf4b889295005f85deb5819ee9c6b38d6270b22a3df31ac6c6c7a63afa2c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba2e5338-8f23-55bf-8f1d-79e05985015a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('73948a4b-2df9-53b6-86fa-6e30b3aef585', 1), '46e5cf4b889295005f85deb5819ee9c6b38d6270b22a3df31ac6c6c7a63afa2c',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2897837075bd67653d8682d6e6a61c1b04f90c7c95a0baf837bfd36958f8d9fd.mp3', 2324, '2026-09-13 07:35:01.159344', 'f36b3464e36bea42b055620ac54c86b9a5c557cec6cfa6f6a4c784cc3a4d249f', 'validated', '{"audio_key":"2897837075bd67653d8682d6e6a61c1b04f90c7c95a0baf837bfd36958f8d9fd","entity_key":"d_practical_writing_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f36b3464e36bea42b055620ac54c86b9a5c557cec6cfa6f6a4c784cc3a4d249f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/2897837075bd67653d8682d6e6a61c1b04f90c7c95a0baf837bfd36958f8d9fd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_relaying_03:2 -> audio/generated/de-DE/dialogues/2996510fdffc9dfa53714eb1b4545c0e10e81efd7d7c04403b5613eb452a3185.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5dde20ce-dcf9-5ae2-a96f-b5433a46f080', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_relaying_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fdf4d6b5ecdd5a46113be553afb92dd945f19e4b66e14874268577553b9b05ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c6067458-767a-5370-9ac4-6f02a5d5b9d2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5dde20ce-dcf9-5ae2-a96f-b5433a46f080', 1), 'fdf4d6b5ecdd5a46113be553afb92dd945f19e4b66e14874268577553b9b05ae',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2996510fdffc9dfa53714eb1b4545c0e10e81efd7d7c04403b5613eb452a3185.mp3', 2324, '2026-09-13 07:35:02.075866', '54ce73b92476bc75ce5a78a8e672fd4f662eddaedb68bb721e727386d3ae8cb8', 'validated', '{"audio_key":"2996510fdffc9dfa53714eb1b4545c0e10e81efd7d7c04403b5613eb452a3185","entity_key":"d_summarizing_relaying_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"54ce73b92476bc75ce5a78a8e672fd4f662eddaedb68bb721e727386d3ae8cb8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/2996510fdffc9dfa53714eb1b4545c0e10e81efd7d7c04403b5613eb452a3185.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_practical_writing_02:4 -> audio/generated/de-DE/dialogues/29b187b3c8ab588c067e1f09f7a0211e3c3fc99360b0426cfab59a4df49c04a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6d7ac35c-08e7-5168-a251-30a8a674f014', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_practical_writing_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd52addd6e539ae846cd9a0619810a221a9dc0d5614e6108d13a68c5c6255b5d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dbd11290-cdab-53d3-a893-340d6bbe9ff9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6d7ac35c-08e7-5168-a251-30a8a674f014', 1), 'd52addd6e539ae846cd9a0619810a221a9dc0d5614e6108d13a68c5c6255b5d1',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/29b187b3c8ab588c067e1f09f7a0211e3c3fc99360b0426cfab59a4df49c04a2.mp3', 3239, '2026-09-13 07:35:02.449239', '1685b14f5c380d1cce903cad114ac6616cdb4c0e617fb477cf52b73f7fe392c5', 'validated', '{"audio_key":"29b187b3c8ab588c067e1f09f7a0211e3c3fc99360b0426cfab59a4df49c04a2","entity_key":"d_practical_writing_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"1685b14f5c380d1cce903cad114ac6616cdb4c0e617fb477cf52b73f7fe392c5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/29b187b3c8ab588c067e1f09f7a0211e3c3fc99360b0426cfab59a4df49c04a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_relaying_01:2 -> audio/generated/de-DE/dialogues/2bcc56c732e3ddd5d8c7bf6512c65b83fb3c3005d57e45494986b60272db236d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3b84c3d3-7f7f-5a92-aaa4-26c5eb946f78', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_relaying_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '777f40301a1ca911c6d63c8a3f50e5bd4350ae7e40b89ea09b2762462e9d54ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54f6a00b-4b4c-5ea5-89f6-49e2cc004400', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3b84c3d3-7f7f-5a92-aaa4-26c5eb946f78', 1), '777f40301a1ca911c6d63c8a3f50e5bd4350ae7e40b89ea09b2762462e9d54ca',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2bcc56c732e3ddd5d8c7bf6512c65b83fb3c3005d57e45494986b60272db236d.mp3', 3761, '2026-09-13 07:35:03.392567', 'bf8618241707ceecc46585849c9022721e42b0f052528ad2c1b1629fd59f4375', 'validated', '{"audio_key":"2bcc56c732e3ddd5d8c7bf6512c65b83fb3c3005d57e45494986b60272db236d","entity_key":"d_summarizing_relaying_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"bf8618241707ceecc46585849c9022721e42b0f052528ad2c1b1629fd59f4375","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2bcc56c732e3ddd5d8c7bf6512c65b83fb3c3005d57e45494986b60272db236d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_instructions_notices_01:4 -> audio/generated/de-DE/dialogues/2eceab404ac990d8b86838ee5bd4d4db0c6571174a7ad48ed9b148ebf067ccf3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ad55678c-3021-5a57-94d8-01bdf3d296d4', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_instructions_notices_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d924043af85bf52936466cfc993f0d084dc2f165a23d3c24d9905624c1c1aa9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6b7644a-f59f-5a0a-ad92-23169fe01ef6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ad55678c-3021-5a57-94d8-01bdf3d296d4', 1), '1d924043af85bf52936466cfc993f0d084dc2f165a23d3c24d9905624c1c1aa9',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2eceab404ac990d8b86838ee5bd4d4db0c6571174a7ad48ed9b148ebf067ccf3.mp3', 2168, '2026-09-13 07:35:03.595310', 'f2fe4e37f854ae1abf07b4775edb9583a267b45d87f4c0880428dd1d244d6003', 'validated', '{"audio_key":"2eceab404ac990d8b86838ee5bd4d4db0c6571174a7ad48ed9b148ebf067ccf3","entity_key":"d_instructions_notices_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"f2fe4e37f854ae1abf07b4775edb9583a267b45d87f4c0880428dd1d244d6003","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2eceab404ac990d8b86838ee5bd4d4db0c6571174a7ad48ed9b148ebf067ccf3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_practical_writing_01:1 -> audio/generated/de-DE/dialogues/30f9381bb7f31ca3415064d85ecf088fdad5d7893ab9806af721258fda827ea0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('63dd7d4e-897d-5108-b682-bc2fa6791ed5', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_practical_writing_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a5cb8d87d28fc1946ecf8d129eaf7b8b0f0bd0cae096985be054076a609e246'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ede50379-3531-53fe-86ed-7bfbc4a77102', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('63dd7d4e-897d-5108-b682-bc2fa6791ed5', 1), '9a5cb8d87d28fc1946ecf8d129eaf7b8b0f0bd0cae096985be054076a609e246',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/30f9381bb7f31ca3415064d85ecf088fdad5d7893ab9806af721258fda827ea0.mp3', 1671, '2026-09-13 07:35:04.472562', 'd5fa813c09980467e4c9e631b918677dc56d48d68ee0e786dd007c5d4ec63005', 'validated', '{"audio_key":"30f9381bb7f31ca3415064d85ecf088fdad5d7893ab9806af721258fda827ea0","entity_key":"d_practical_writing_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d5fa813c09980467e4c9e631b918677dc56d48d68ee0e786dd007c5d4ec63005","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/30f9381bb7f31ca3415064d85ecf088fdad5d7893ab9806af721258fda827ea0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_capstone_02:1 -> audio/generated/de-DE/dialogues/3a13663e2cdb8d57d2acbd502b66246b100826a4fcd17da087b63e538b075240.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3fa9dd17-bfdb-5bf8-afdb-7d2a8131c01e', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ef7733a7f76d5306fecf196652ddd170e66b27e088853cea870a45f7b2755db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2ad7208-b341-5790-a6b0-a6b4e43d0d01', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3fa9dd17-bfdb-5bf8-afdb-7d2a8131c01e', 1), '3ef7733a7f76d5306fecf196652ddd170e66b27e088853cea870a45f7b2755db',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3a13663e2cdb8d57d2acbd502b66246b100826a4fcd17da087b63e538b075240.mp3', 2115, '2026-09-13 07:35:04.747239', 'a073192392ab17bf335ab42b3a5a94a74aa14938ff48fc4186ae119207a56295', 'validated', '{"audio_key":"3a13663e2cdb8d57d2acbd502b66246b100826a4fcd17da087b63e538b075240","entity_key":"d_integrated_capstone_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a073192392ab17bf335ab42b3a5a94a74aa14938ff48fc4186ae119207a56295","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3a13663e2cdb8d57d2acbd502b66246b100826a4fcd17da087b63e538b075240.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_explaining_presenting_01:2 -> audio/generated/de-DE/dialogues/3a85cce4a19ef4feeec6a3caa79c399b2a098a77888a90398da7addd764b56d4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fd8c825c-9127-5c28-b022-f19108e351f8', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_explaining_presenting_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b66f5e7727a184d7f07b1ae27623c75a0a3d1d579a3d8533d76d739653bfcb9f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a5c3f7c-38a8-51fa-957a-6b83324eba89', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fd8c825c-9127-5c28-b022-f19108e351f8', 1), 'b66f5e7727a184d7f07b1ae27623c75a0a3d1d579a3d8533d76d739653bfcb9f',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3a85cce4a19ef4feeec6a3caa79c399b2a098a77888a90398da7addd764b56d4.mp3', 3056, '2026-09-13 07:35:05.961365', '17061274d22618c571af0c433f177bd52136bf89f555609f2bb4936e2d80d48a', 'validated', '{"audio_key":"3a85cce4a19ef4feeec6a3caa79c399b2a098a77888a90398da7addd764b56d4","entity_key":"d_explaining_presenting_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"17061274d22618c571af0c433f177bd52136bf89f555609f2bb4936e2d80d48a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3a85cce4a19ef4feeec6a3caa79c399b2a098a77888a90398da7addd764b56d4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_capstone_03:4 -> audio/generated/de-DE/dialogues/452b1fd3133cc98e854d33068a0e97bbc87795d20c5e7994640c89b5dc63ec88.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2086a9c0-176a-5db4-be74-3b99446386a0', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_capstone_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9f81b455bd0f4940e57f55e9685812de0bf43f87e9dbbf1f88eb8e111551b02f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('718510d8-b23b-5d7f-9d2a-8cfa2669ac9b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2086a9c0-176a-5db4-be74-3b99446386a0', 1), '9f81b455bd0f4940e57f55e9685812de0bf43f87e9dbbf1f88eb8e111551b02f',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/452b1fd3133cc98e854d33068a0e97bbc87795d20c5e7994640c89b5dc63ec88.mp3', 4022, '2026-09-13 07:35:06.116670', '2d9570a1a871f1de13a81db47235809beb9b5de81935c72aa8bef4879bff16ff', 'validated', '{"audio_key":"452b1fd3133cc98e854d33068a0e97bbc87795d20c5e7994640c89b5dc63ec88","entity_key":"d_integrated_capstone_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2d9570a1a871f1de13a81db47235809beb9b5de81935c72aa8bef4879bff16ff","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/452b1fd3133cc98e854d33068a0e97bbc87795d20c5e7994640c89b5dc63ec88.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_explaining_presenting_02:4 -> audio/generated/de-DE/dialogues/4617d53dab6e396e0d66bdc2c67c1c4333afd933848ec25b634aedcc34d46013.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c5de822c-67f7-5d72-a0d2-89d378908093', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_explaining_presenting_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '812240dfd4e455a65eb077cbeefdac3a7610a09b8560e6b245cd73e04ab13df3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8363f43-9714-53e9-9fca-8d959e66dbcd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c5de822c-67f7-5d72-a0d2-89d378908093', 1), '812240dfd4e455a65eb077cbeefdac3a7610a09b8560e6b245cd73e04ab13df3',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4617d53dab6e396e0d66bdc2c67c1c4333afd933848ec25b634aedcc34d46013.mp3', 3291, '2026-09-13 07:35:07.226640', 'c392a99a85efbe3c94d61fb281090a5aa25c923639af8d5cc2cf8202518c150d', 'validated', '{"audio_key":"4617d53dab6e396e0d66bdc2c67c1c4333afd933848ec25b634aedcc34d46013","entity_key":"d_explaining_presenting_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"c392a99a85efbe3c94d61fb281090a5aa25c923639af8d5cc2cf8202518c150d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4617d53dab6e396e0d66bdc2c67c1c4333afd933848ec25b634aedcc34d46013.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_capstone_02:2 -> audio/generated/de-DE/dialogues/4ad4c13ead042e0084cf1d637be7535c43e9cf1a2aba05678aded537cbdaaff3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c4ab92bc-298b-5483-a86b-4148594c80bc', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d47fe612d03df2f0045528c64fff6dc0cda4540a4f0db267112731659185d67'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fcb06441-9507-5d39-8f9f-f75c9a9e1177', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c4ab92bc-298b-5483-a86b-4148594c80bc', 1), '9d47fe612d03df2f0045528c64fff6dc0cda4540a4f0db267112731659185d67',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4ad4c13ead042e0084cf1d637be7535c43e9cf1a2aba05678aded537cbdaaff3.mp3', 4675, '2026-09-13 07:35:07.514833', 'ce14adfde0a5d4d50022e39404b5bb50b00c93becfb803cbeace53a1c69c2d9d', 'validated', '{"audio_key":"4ad4c13ead042e0084cf1d637be7535c43e9cf1a2aba05678aded537cbdaaff3","entity_key":"d_integrated_capstone_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"ce14adfde0a5d4d50022e39404b5bb50b00c93becfb803cbeace53a1c69c2d9d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4ad4c13ead042e0084cf1d637be7535c43e9cf1a2aba05678aded537cbdaaff3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_capstone_01:4 -> audio/generated/de-DE/dialogues/4d49a00cebb11e3060afe9a670da36c05b9a5046718bd7e1e37c3c0e4ae3dd14.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1156da83-dfa7-5ec1-82bc-169671dbd95d', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbbcaee82861f21be5e0753a629c1d29cc24106e62a16f4871c6c21f96da7e5d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6e9a5af-bf81-5c98-9f45-fcc2df699036', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1156da83-dfa7-5ec1-82bc-169671dbd95d', 1), 'dbbcaee82861f21be5e0753a629c1d29cc24106e62a16f4871c6c21f96da7e5d',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4d49a00cebb11e3060afe9a670da36c05b9a5046718bd7e1e37c3c0e4ae3dd14.mp3', 2351, '2026-09-13 07:35:08.347587', 'c037978ecc0c708ea6b320e956db8ff5b9dc6bc9a69ca3802c17b76bdc088cb7', 'validated', '{"audio_key":"4d49a00cebb11e3060afe9a670da36c05b9a5046718bd7e1e37c3c0e4ae3dd14","entity_key":"d_integrated_capstone_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c037978ecc0c708ea6b320e956db8ff5b9dc6bc9a69ca3802c17b76bdc088cb7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4d49a00cebb11e3060afe9a670da36c05b9a5046718bd7e1e37c3c0e4ae3dd14.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_capstone_02:4 -> audio/generated/de-DE/dialogues/4dde5eccafa9f0194a6810b8936fd6c4d6cfbc9665580b7214828138cbdbb297.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dab39f30-ba1e-5fd7-bac7-daffddb98595', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fac4ba10b818aeb6771aecc1a7b3fe5691b76af310144db09fa1c9470c377641'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a138f59-e3a1-511f-99c8-8a90f5bf7cee', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dab39f30-ba1e-5fd7-bac7-daffddb98595', 1), 'fac4ba10b818aeb6771aecc1a7b3fe5691b76af310144db09fa1c9470c377641',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4dde5eccafa9f0194a6810b8936fd6c4d6cfbc9665580b7214828138cbdbb297.mp3', 3526, '2026-09-13 07:35:08.804993', 'cbc20d0b177332fd5cd2d81e17e6773d99ae470edb88f41e39871c7022d0e966', 'validated', '{"audio_key":"4dde5eccafa9f0194a6810b8936fd6c4d6cfbc9665580b7214828138cbdbb297","entity_key":"d_integrated_capstone_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"cbc20d0b177332fd5cd2d81e17e6773d99ae470edb88f41e39871c7022d0e966","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4dde5eccafa9f0194a6810b8936fd6c4d6cfbc9665580b7214828138cbdbb297.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_relaying_02:3 -> audio/generated/de-DE/dialogues/512ffd91840c047827f2e8648c6cac4e2024daf83d3dc4c4a340c8061b85f460.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('72b82784-b901-5669-9db0-ddf3477dd4d8', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_relaying_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e73a8982a5b788f3b22db09bfad0d47696ca38a0b1faae9cfa4fcea37d984fdd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('148d704c-17ae-58b6-b11d-29a1508cd552', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('72b82784-b901-5669-9db0-ddf3477dd4d8', 1), 'e73a8982a5b788f3b22db09bfad0d47696ca38a0b1faae9cfa4fcea37d984fdd',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/512ffd91840c047827f2e8648c6cac4e2024daf83d3dc4c4a340c8061b85f460.mp3', 2533, '2026-09-13 07:35:09.815861', '521069c1929a29363d9a0165351baf8612fe4095243a373927648585fee6f516', 'validated', '{"audio_key":"512ffd91840c047827f2e8648c6cac4e2024daf83d3dc4c4a340c8061b85f460","entity_key":"d_summarizing_relaying_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"521069c1929a29363d9a0165351baf8612fe4095243a373927648585fee6f516","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/512ffd91840c047827f2e8648c6cac4e2024daf83d3dc4c4a340c8061b85f460.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_instructions_notices_02:4 -> audio/generated/de-DE/dialogues/581f84bf9cfcae44dfd7aed2c5e489654028dc76d1040952a31d30210486cf82.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6f150098-deb3-5e7a-a501-79d48b30e51b', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_instructions_notices_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7dd695372e783808f5ba67d0cf287e85fc514bd092451974e1056cf49240fff3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a7069124-cea6-51a6-8e8c-39bfbd90a09c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6f150098-deb3-5e7a-a501-79d48b30e51b', 1), '7dd695372e783808f5ba67d0cf287e85fc514bd092451974e1056cf49240fff3',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/581f84bf9cfcae44dfd7aed2c5e489654028dc76d1040952a31d30210486cf82.mp3', 2089, '2026-09-13 07:35:09.958506', 'b25bf660b9c57d12cec88209d27d8b7e4b8759efff7b23d80a36c62572777231', 'validated', '{"audio_key":"581f84bf9cfcae44dfd7aed2c5e489654028dc76d1040952a31d30210486cf82","entity_key":"d_instructions_notices_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"b25bf660b9c57d12cec88209d27d8b7e4b8759efff7b23d80a36c62572777231","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/581f84bf9cfcae44dfd7aed2c5e489654028dc76d1040952a31d30210486cf82.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_relaying_03:3 -> audio/generated/de-DE/dialogues/59cb6e7dd271c7573bc6dd5c8d9269bba289f43d11f4b6342d7b769ac9626b5a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fbefcb4b-2e2b-5317-9932-63e68134e412', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_relaying_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc5cbe8d20b057f3eb918eb5d0bc379e8bde0fd5d8e1353de85be92f8a338cf7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('631998a5-a7be-51bb-ae45-d24be5bd942b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fbefcb4b-2e2b-5317-9932-63e68134e412', 1), 'bc5cbe8d20b057f3eb918eb5d0bc379e8bde0fd5d8e1353de85be92f8a338cf7',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/59cb6e7dd271c7573bc6dd5c8d9269bba289f43d11f4b6342d7b769ac9626b5a.mp3', 4022, '2026-09-13 07:35:11.114403', '0824a681c93ecf539d66a3a2f70972d7cfeba9c1f69411b9f3e5665861603ae1', 'validated', '{"audio_key":"59cb6e7dd271c7573bc6dd5c8d9269bba289f43d11f4b6342d7b769ac9626b5a","entity_key":"d_summarizing_relaying_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"0824a681c93ecf539d66a3a2f70972d7cfeba9c1f69411b9f3e5665861603ae1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/59cb6e7dd271c7573bc6dd5c8d9269bba289f43d11f4b6342d7b769ac9626b5a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_capstone_01:1 -> audio/generated/de-DE/dialogues/628dd6676451e57536058f9f12520d02fd7f10546b990f3d7253592d2ad811ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('af97aad8-2339-58a6-bb20-cb349567ee9b', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '777b0df1dfafc5afa7fc421a424dda8747ba3844f47caa1101923e669af988b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f96bcc6-ea01-50cf-9b2a-bff5c6ceaf5b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('af97aad8-2339-58a6-bb20-cb349567ee9b', 1), '777b0df1dfafc5afa7fc421a424dda8747ba3844f47caa1101923e669af988b8',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/628dd6676451e57536058f9f12520d02fd7f10546b990f3d7253592d2ad811ff.mp3', 3422, '2026-09-13 07:35:11.265222', 'dab79a7efc68f42a1f17574e5e857ba19312e57cbd31733067b0413bf35d08e9', 'validated', '{"audio_key":"628dd6676451e57536058f9f12520d02fd7f10546b990f3d7253592d2ad811ff","entity_key":"d_integrated_capstone_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"dab79a7efc68f42a1f17574e5e857ba19312e57cbd31733067b0413bf35d08e9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/628dd6676451e57536058f9f12520d02fd7f10546b990f3d7253592d2ad811ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_explaining_presenting_01:1 -> audio/generated/de-DE/dialogues/687fb123942fd3dba0165b569d77a69758bf9a68287cc6b59a18c465d3f13ce5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('866177c6-334e-5dc9-8981-28c3e8db7654', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_explaining_presenting_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50c629cc0c529c8385f9e3d7101017ce34c866c6ebed1fe23b4b11148d5eff09'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25caff8a-d58f-534f-9485-9995d93768b2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('866177c6-334e-5dc9-8981-28c3e8db7654', 1), '50c629cc0c529c8385f9e3d7101017ce34c866c6ebed1fe23b4b11148d5eff09',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/687fb123942fd3dba0165b569d77a69758bf9a68287cc6b59a18c465d3f13ce5.mp3', 2220, '2026-09-13 07:35:12.245579', '8bfb2afc7eeedd2cbd2bf4638acef40af0b67fb2882ddf41657096508117292c', 'validated', '{"audio_key":"687fb123942fd3dba0165b569d77a69758bf9a68287cc6b59a18c465d3f13ce5","entity_key":"d_explaining_presenting_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8bfb2afc7eeedd2cbd2bf4638acef40af0b67fb2882ddf41657096508117292c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/687fb123942fd3dba0165b569d77a69758bf9a68287cc6b59a18c465d3f13ce5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_explaining_presenting_03:2 -> audio/generated/de-DE/dialogues/6904332b768ed5011e803db0cc8c5bf532c0d21e2890bfb8f6fb11837523f374.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('132ced8c-6d35-5c0a-907d-fcc180a76573', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_explaining_presenting_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1246ecaad7bb83e959838553fec1dc6374e25ed9bc977bff6b92efa51e52c523'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e34ce87b-add3-52a6-9d94-3018031d18ff', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('132ced8c-6d35-5c0a-907d-fcc180a76573', 1), '1246ecaad7bb83e959838553fec1dc6374e25ed9bc977bff6b92efa51e52c523',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6904332b768ed5011e803db0cc8c5bf532c0d21e2890bfb8f6fb11837523f374.mp3', 3186, '2026-09-13 07:35:12.506226', 'acddc74274479b481ee0feb73898aba9b3c02fd0c6367fedeedc4c968066e107', 'validated', '{"audio_key":"6904332b768ed5011e803db0cc8c5bf532c0d21e2890bfb8f6fb11837523f374","entity_key":"d_explaining_presenting_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"acddc74274479b481ee0feb73898aba9b3c02fd0c6367fedeedc4c968066e107","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/6904332b768ed5011e803db0cc8c5bf532c0d21e2890bfb8f6fb11837523f374.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_explaining_presenting_03:3 -> audio/generated/de-DE/dialogues/6f4f0209509adda2bf8b34b702b7e91c9a206a745b9db1b9420820f75365a896.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0bb4a7f3-b50a-5440-bfd1-3de25628beb8', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_explaining_presenting_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e165985adbe6cfdd0467d174b799d383abd1dddc56e729dd4e0c497378e91b51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed2da312-bb68-5cd2-9e7b-cd8e9397c311', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0bb4a7f3-b50a-5440-bfd1-3de25628beb8', 1), 'e165985adbe6cfdd0467d174b799d383abd1dddc56e729dd4e0c497378e91b51',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6f4f0209509adda2bf8b34b702b7e91c9a206a745b9db1b9420820f75365a896.mp3', 2220, '2026-09-13 07:35:13.391798', 'ecee6a313451246633933b5f62b68e5efb03ef17ead25da13ac7c360be852001', 'validated', '{"audio_key":"6f4f0209509adda2bf8b34b702b7e91c9a206a745b9db1b9420820f75365a896","entity_key":"d_explaining_presenting_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ecee6a313451246633933b5f62b68e5efb03ef17ead25da13ac7c360be852001","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/6f4f0209509adda2bf8b34b702b7e91c9a206a745b9db1b9420820f75365a896.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_capstone_03:2 -> audio/generated/de-DE/dialogues/74af8ecfaf8dc6e77ddc6d1348658c6c3f60fe5a3d009af76ea0d5ffbf011b3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cbe3027e-e328-581b-b333-8b26e1245b13', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_capstone_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '615e791668fcb042c302992a61962e5e29210f51d79246099a429a96eade3bbd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5a8c6f7-f0d4-56cb-b2df-5c77080d1453', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cbe3027e-e328-581b-b333-8b26e1245b13', 1), '615e791668fcb042c302992a61962e5e29210f51d79246099a429a96eade3bbd',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/74af8ecfaf8dc6e77ddc6d1348658c6c3f60fe5a3d009af76ea0d5ffbf011b3b.mp3', 1802, '2026-09-13 07:35:13.608409', '0c97a5bff553d2c161dfe1a7e0bb7cfe2d0b036e19574c3ee86b9f150aa12423', 'validated', '{"audio_key":"74af8ecfaf8dc6e77ddc6d1348658c6c3f60fe5a3d009af76ea0d5ffbf011b3b","entity_key":"d_integrated_capstone_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0c97a5bff553d2c161dfe1a7e0bb7cfe2d0b036e19574c3ee86b9f150aa12423","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/74af8ecfaf8dc6e77ddc6d1348658c6c3f60fe5a3d009af76ea0d5ffbf011b3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_relaying_02:2 -> audio/generated/de-DE/dialogues/77047f8486bdba0a3e65ff12aba9cc4eee23a130abe76e37fe50a9b21840caf2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d667051d-b172-5788-b943-646744e2d8c8', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_relaying_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '592027847ad8bdab90ec2df2036c179f73804ced83486159da1c3e6b0ecd673c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('72109f89-3e07-5f37-ad83-d59fff999bc0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d667051d-b172-5788-b943-646744e2d8c8', 1), '592027847ad8bdab90ec2df2036c179f73804ced83486159da1c3e6b0ecd673c',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/77047f8486bdba0a3e65ff12aba9cc4eee23a130abe76e37fe50a9b21840caf2.mp3', 2220, '2026-09-13 07:35:14.635756', '605dda9921af835917b8c763ed9669f10d7acb020141b34ba0a663ef78ae3a9d', 'validated', '{"audio_key":"77047f8486bdba0a3e65ff12aba9cc4eee23a130abe76e37fe50a9b21840caf2","entity_key":"d_summarizing_relaying_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"605dda9921af835917b8c763ed9669f10d7acb020141b34ba0a663ef78ae3a9d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/77047f8486bdba0a3e65ff12aba9cc4eee23a130abe76e37fe50a9b21840caf2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_explaining_presenting_01:3 -> audio/generated/de-DE/dialogues/7c9a6150ef5c8cd2d99ab24d8f48b49b8345d54ff2774c12aacfd0403a3a930e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e04930ea-7fa8-5393-b249-f2eb284e6fe6', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_explaining_presenting_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb66a0e512ada5af9793643b57b58b1df19b07b4a3ef437eccac80e00202fe51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a22aeaf3-8b7f-5708-9532-e439340bb4cf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e04930ea-7fa8-5393-b249-f2eb284e6fe6', 1), 'cb66a0e512ada5af9793643b57b58b1df19b07b4a3ef437eccac80e00202fe51',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7c9a6150ef5c8cd2d99ab24d8f48b49b8345d54ff2774c12aacfd0403a3a930e.mp3', 2037, '2026-09-13 07:35:14.716360', 'f9025dea240613170679e9201df124c48cf21807f6f5da36c2dcb37ab0d950fb', 'validated', '{"audio_key":"7c9a6150ef5c8cd2d99ab24d8f48b49b8345d54ff2774c12aacfd0403a3a930e","entity_key":"d_explaining_presenting_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"f9025dea240613170679e9201df124c48cf21807f6f5da36c2dcb37ab0d950fb","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/7c9a6150ef5c8cd2d99ab24d8f48b49b8345d54ff2774c12aacfd0403a3a930e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_relaying_03:4 -> audio/generated/de-DE/dialogues/7f28faa48ee191e146ff86fad8626d53b9092649f04576b8dbc57724c9a311a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1c360933-f33c-5191-bd9f-614ecb592ad0', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_relaying_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05a16a44a8177c0c8a92d3fe5771c4a4c3196112f836d45a3eb7c28dce9e98fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('631ca034-854b-5f06-9eca-5b1c3cde9d05', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1c360933-f33c-5191-bd9f-614ecb592ad0', 1), '05a16a44a8177c0c8a92d3fe5771c4a4c3196112f836d45a3eb7c28dce9e98fa',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7f28faa48ee191e146ff86fad8626d53b9092649f04576b8dbc57724c9a311a1.mp3', 3526, '2026-09-13 07:35:15.888006', '61168e15ae3cc9e3c3f65f305bacada5a4a0f94c9c94f36635ddd0c646f4fb82', 'validated', '{"audio_key":"7f28faa48ee191e146ff86fad8626d53b9092649f04576b8dbc57724c9a311a1","entity_key":"d_summarizing_relaying_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"61168e15ae3cc9e3c3f65f305bacada5a4a0f94c9c94f36635ddd0c646f4fb82","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7f28faa48ee191e146ff86fad8626d53b9092649f04576b8dbc57724c9a311a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_instructions_notices_01:2 -> audio/generated/de-DE/dialogues/87eab7fb4b90601528714681d3c3e4305ac287e38f00411b9a9dbdd141d584af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2ff2e6ad-7630-50d7-8a78-a5f26dbc21e8', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_instructions_notices_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'beb8b2186e8995c0d243a489c4e094d844402e8d9973099eab3d11d0db6f7552'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6258292-f16b-58d5-b574-309307cdd1f8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2ff2e6ad-7630-50d7-8a78-a5f26dbc21e8', 1), 'beb8b2186e8995c0d243a489c4e094d844402e8d9973099eab3d11d0db6f7552',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/87eab7fb4b90601528714681d3c3e4305ac287e38f00411b9a9dbdd141d584af.mp3', 2220, '2026-09-13 07:35:15.850806', 'efca619ec01acd098310ee4ab1ab04bcc68ca6f5f3d27d71394cdd88c69f9c31', 'validated', '{"audio_key":"87eab7fb4b90601528714681d3c3e4305ac287e38f00411b9a9dbdd141d584af","entity_key":"d_instructions_notices_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"efca619ec01acd098310ee4ab1ab04bcc68ca6f5f3d27d71394cdd88c69f9c31","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/87eab7fb4b90601528714681d3c3e4305ac287e38f00411b9a9dbdd141d584af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_practical_writing_01:3 -> audio/generated/de-DE/dialogues/8911fe46b2b8a864f279305d25a58c21973ad9d3d7954d3d924540e6b46e22fd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('793fa27f-e19e-5161-9b74-5f918876a5b0', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_practical_writing_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '87e4b2b2aefd9c095f93139f455389f5fa13cd890f38fb3402c170a7477499ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50af2fed-a638-507a-bee4-5fef4c850c7d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('793fa27f-e19e-5161-9b74-5f918876a5b0', 1), '87e4b2b2aefd9c095f93139f455389f5fa13cd890f38fb3402c170a7477499ba',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8911fe46b2b8a864f279305d25a58c21973ad9d3d7954d3d924540e6b46e22fd.mp3', 2403, '2026-09-13 07:35:16.988841', '57b1069578548abd22a2920192c8b52b70afa7376d522c65b164b416fabc0f60', 'validated', '{"audio_key":"8911fe46b2b8a864f279305d25a58c21973ad9d3d7954d3d924540e6b46e22fd","entity_key":"d_practical_writing_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"57b1069578548abd22a2920192c8b52b70afa7376d522c65b164b416fabc0f60","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/8911fe46b2b8a864f279305d25a58c21973ad9d3d7954d3d924540e6b46e22fd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_explaining_presenting_02:3 -> audio/generated/de-DE/dialogues/8b661afe22c01090beb762bc5ae4f857e9730710f4ab728ff6cfdd6e609cceb9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('712fd9e1-a1cf-5e66-a79f-2d8cf4e16291', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_explaining_presenting_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3444ca40e049bdbaa142877c152981969ce88f5f591fd409f6afeee214d6518d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e378c29c-f3e6-57b1-a3b1-2ce83c4b6014', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('712fd9e1-a1cf-5e66-a79f-2d8cf4e16291', 1), '3444ca40e049bdbaa142877c152981969ce88f5f591fd409f6afeee214d6518d',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8b661afe22c01090beb762bc5ae4f857e9730710f4ab728ff6cfdd6e609cceb9.mp3', 2168, '2026-09-13 07:35:17.017009', '13367a1e5b8f239f9254714fac5a9dcca15951ed3ab060c816e6b9e619a90879', 'validated', '{"audio_key":"8b661afe22c01090beb762bc5ae4f857e9730710f4ab728ff6cfdd6e609cceb9","entity_key":"d_explaining_presenting_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"13367a1e5b8f239f9254714fac5a9dcca15951ed3ab060c816e6b9e619a90879","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8b661afe22c01090beb762bc5ae4f857e9730710f4ab728ff6cfdd6e609cceb9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_instructions_notices_03:4 -> audio/generated/de-DE/dialogues/8bf848832e221626871549bda772656853365756637bd86727e75031d6aa5c35.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('94652ab7-d206-5249-83cb-27247fc45dd7', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_instructions_notices_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e79bf4a285210837e9a7175ba9045f5448d35f1347d072a6abae5cd1b55bc55a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee28d547-9d18-50ad-98bf-c320bb6bf4f4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('94652ab7-d206-5249-83cb-27247fc45dd7', 1), 'e79bf4a285210837e9a7175ba9045f5448d35f1347d072a6abae5cd1b55bc55a',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/8bf848832e221626871549bda772656853365756637bd86727e75031d6aa5c35.mp3', 3056, '2026-09-13 07:35:18.236475', '45b98f9b53ce7f79357488771b15fe6ff5b63a62b4c8fbb4a37d35d8c7fdfa2a', 'validated', '{"audio_key":"8bf848832e221626871549bda772656853365756637bd86727e75031d6aa5c35","entity_key":"d_instructions_notices_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"45b98f9b53ce7f79357488771b15fe6ff5b63a62b4c8fbb4a37d35d8c7fdfa2a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/8bf848832e221626871549bda772656853365756637bd86727e75031d6aa5c35.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_instructions_notices_02:2 -> audio/generated/de-DE/dialogues/a3bfd06cb570646fb654758ceaaaf2d1fc4326fd99c20632a4352863cb83e1b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('44be4c78-84e9-5f25-80e2-fb5cf74eeeb5', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_instructions_notices_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93b628151fae0dbbc45980366c131d89aeac7e378b6151101d7bf39c92cbe244'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4511ef04-1956-5809-9cda-899a2e81755d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('44be4c78-84e9-5f25-80e2-fb5cf74eeeb5', 1), '93b628151fae0dbbc45980366c131d89aeac7e378b6151101d7bf39c92cbe244',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a3bfd06cb570646fb654758ceaaaf2d1fc4326fd99c20632a4352863cb83e1b0.mp3', 2272, '2026-09-13 07:35:18.148920', 'e4b834f40256ddcd2faded3a521ec2b98712242d6929fb92a47fdd809b34e85e', 'validated', '{"audio_key":"a3bfd06cb570646fb654758ceaaaf2d1fc4326fd99c20632a4352863cb83e1b0","entity_key":"d_instructions_notices_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"e4b834f40256ddcd2faded3a521ec2b98712242d6929fb92a47fdd809b34e85e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a3bfd06cb570646fb654758ceaaaf2d1fc4326fd99c20632a4352863cb83e1b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_practical_writing_03:2 -> audio/generated/de-DE/dialogues/a4bdf168ae38fa98699edecb7f6ade525106575b19c7b743287474b58511e18b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('68b8e80d-e5c0-56c8-b255-af7d23634eb9', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_practical_writing_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8fb0e5cc434f4e8b33fe1d96146306e2854b72a713fefbf16b03ba1132ac496a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a71ba580-fc6a-5639-aacb-d3f5b1a2a90b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('68b8e80d-e5c0-56c8-b255-af7d23634eb9', 1), '8fb0e5cc434f4e8b33fe1d96146306e2854b72a713fefbf16b03ba1132ac496a',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a4bdf168ae38fa98699edecb7f6ade525106575b19c7b743287474b58511e18b.mp3', 3944, '2026-09-13 07:35:19.472205', '45fa7f9acd41dea1feb9769e5fac8b59cd3e2cae2edfe14f431c2c67d62e26ca', 'validated', '{"audio_key":"a4bdf168ae38fa98699edecb7f6ade525106575b19c7b743287474b58511e18b","entity_key":"d_practical_writing_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"45fa7f9acd41dea1feb9769e5fac8b59cd3e2cae2edfe14f431c2c67d62e26ca","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/a4bdf168ae38fa98699edecb7f6ade525106575b19c7b743287474b58511e18b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_practical_writing_02:1 -> audio/generated/de-DE/dialogues/a4ecfdf2380f39e7a476814eae69de5cb8f079fa9b8217a44663fd79cb5decb3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2bbe5702-bf04-516f-a403-08c64e681718', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_practical_writing_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7f929654cc8bca5bb8a0002c4061c44e5ba6155bfbe51fe9c5ea95ba8ea0b52b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9280f39e-c50a-51c9-96dc-0c5c68a672f6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2bbe5702-bf04-516f-a403-08c64e681718', 1), '7f929654cc8bca5bb8a0002c4061c44e5ba6155bfbe51fe9c5ea95ba8ea0b52b',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a4ecfdf2380f39e7a476814eae69de5cb8f079fa9b8217a44663fd79cb5decb3.mp3', 2037, '2026-09-13 07:35:19.347375', 'fe526680aaa80e886465ec62f9a2db36b93dd86da9154bf8c1068fb8842e0990', 'validated', '{"audio_key":"a4ecfdf2380f39e7a476814eae69de5cb8f079fa9b8217a44663fd79cb5decb3","entity_key":"d_practical_writing_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fe526680aaa80e886465ec62f9a2db36b93dd86da9154bf8c1068fb8842e0990","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a4ecfdf2380f39e7a476814eae69de5cb8f079fa9b8217a44663fd79cb5decb3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_instructions_notices_02:1 -> audio/generated/de-DE/dialogues/a54a8ba777ade99edfb4c93cedf2a1f71deb7d5b84f4eae810fc00a7e0f31421.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5b0fb291-6318-5b30-beaa-64736f1a7ff5', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_instructions_notices_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '115aa4249d1d7b21734b5a54ca4a2a4a2fd29efdcd3eaeb8778100a2a2c8056b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec26050e-01cd-5bce-8d57-db8f81c1bf42', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5b0fb291-6318-5b30-beaa-64736f1a7ff5', 1), '115aa4249d1d7b21734b5a54ca4a2a4a2fd29efdcd3eaeb8778100a2a2c8056b',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a54a8ba777ade99edfb4c93cedf2a1f71deb7d5b84f4eae810fc00a7e0f31421.mp3', 2272, '2026-09-13 07:35:20.485335', '3297c5d4004654ec811f7f417002bb7d0498a05fd6c8d1df129bb64c19c5c2ae', 'validated', '{"audio_key":"a54a8ba777ade99edfb4c93cedf2a1f71deb7d5b84f4eae810fc00a7e0f31421","entity_key":"d_instructions_notices_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3297c5d4004654ec811f7f417002bb7d0498a05fd6c8d1df129bb64c19c5c2ae","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a54a8ba777ade99edfb4c93cedf2a1f71deb7d5b84f4eae810fc00a7e0f31421.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_practical_writing_03:3 -> audio/generated/de-DE/dialogues/a6a99ee776b0173c9af2e08959699e2265b179244947384633509109fca28c16.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e415b2ae-c79b-54ac-894b-2750e3477f41', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_practical_writing_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c3c5b6edaed46bde63f735065cec03dec6f5696ab38135942bc8afe5178c79aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4928e392-c0f3-56af-8939-cf9ee1459a37', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e415b2ae-c79b-54ac-894b-2750e3477f41', 1), 'c3c5b6edaed46bde63f735065cec03dec6f5696ab38135942bc8afe5178c79aa',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a6a99ee776b0173c9af2e08959699e2265b179244947384633509109fca28c16.mp3', 2037, '2026-09-13 07:35:20.552069', '23382b13f596a415e0ee6a5d272fdd26320ce76978930d53fb083ed535176313', 'validated', '{"audio_key":"a6a99ee776b0173c9af2e08959699e2265b179244947384633509109fca28c16","entity_key":"d_practical_writing_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"23382b13f596a415e0ee6a5d272fdd26320ce76978930d53fb083ed535176313","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/a6a99ee776b0173c9af2e08959699e2265b179244947384633509109fca28c16.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_instructions_notices_03:3 -> audio/generated/de-DE/dialogues/a77ad39eaf5e544ba3edd20c87e03bef4cdc1627101bdfe684773d1bf5c02e54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('62caadf3-9c43-5f71-97f1-756203763f0a', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_instructions_notices_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba1ed13970cd50473c4a7140297b270ac0da7d6e72126448306d86f2d96088db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2802e0a9-8b44-5c34-aa5d-fab90c3b3059', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('62caadf3-9c43-5f71-97f1-756203763f0a', 1), 'ba1ed13970cd50473c4a7140297b270ac0da7d6e72126448306d86f2d96088db',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a77ad39eaf5e544ba3edd20c87e03bef4cdc1627101bdfe684773d1bf5c02e54.mp3', 2220, '2026-09-13 07:35:21.606479', '985e1c0f003f76cbd9a3429651653ef732f5b8b4f75dea81363b143440510fc7', 'validated', '{"audio_key":"a77ad39eaf5e544ba3edd20c87e03bef4cdc1627101bdfe684773d1bf5c02e54","entity_key":"d_instructions_notices_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"985e1c0f003f76cbd9a3429651653ef732f5b8b4f75dea81363b143440510fc7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/a77ad39eaf5e544ba3edd20c87e03bef4cdc1627101bdfe684773d1bf5c02e54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_instructions_notices_01:1 -> audio/generated/de-DE/dialogues/aadbbae5c1ff6932c62e6b210c542449c098c4cc783d580eeff0e3883d9c4230.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a1f125c2-c49d-50c8-bb27-fcfbcd5708b4', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_instructions_notices_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7543c5f783b41ff78fb7451d584bb7a71f0d4ce50d4231df92f34d1348f03dc3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13f2020c-9b89-5660-9116-07711b66acfe', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a1f125c2-c49d-50c8-bb27-fcfbcd5708b4', 1), '7543c5f783b41ff78fb7451d584bb7a71f0d4ce50d4231df92f34d1348f03dc3',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/aadbbae5c1ff6932c62e6b210c542449c098c4cc783d580eeff0e3883d9c4230.mp3', 2037, '2026-09-13 07:35:21.656797', 'f3646cc992792989a958d0f83d197d259f5d65015df244bd68d10ebd915a68ba', 'validated', '{"audio_key":"aadbbae5c1ff6932c62e6b210c542449c098c4cc783d580eeff0e3883d9c4230","entity_key":"d_instructions_notices_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"f3646cc992792989a958d0f83d197d259f5d65015df244bd68d10ebd915a68ba","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/aadbbae5c1ff6932c62e6b210c542449c098c4cc783d580eeff0e3883d9c4230.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_capstone_03:1 -> audio/generated/de-DE/dialogues/ab0e2f25bf894ca48ae18f1c10bf8df1dafee8b6ef4031770a45d82a5427c3ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8ceb2395-ce9b-5b8b-b9fc-c8c7646e7e68', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_capstone_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f703a00ba03a2fed33023089569f379c6977b71c6888eaa0b15f59ce0c805545'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('16207033-4eee-52ae-b931-7182c2380ef4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8ceb2395-ce9b-5b8b-b9fc-c8c7646e7e68', 1), 'f703a00ba03a2fed33023089569f379c6977b71c6888eaa0b15f59ce0c805545',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ab0e2f25bf894ca48ae18f1c10bf8df1dafee8b6ef4031770a45d82a5427c3ce.mp3', 2168, '2026-09-13 07:35:22.707508', '1a67cc42ef0686c98fd43ce3a6e27d2813966f05fb3a99ad98ee6b25d5cfde46', 'validated', '{"audio_key":"ab0e2f25bf894ca48ae18f1c10bf8df1dafee8b6ef4031770a45d82a5427c3ce","entity_key":"d_integrated_capstone_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1a67cc42ef0686c98fd43ce3a6e27d2813966f05fb3a99ad98ee6b25d5cfde46","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/ab0e2f25bf894ca48ae18f1c10bf8df1dafee8b6ef4031770a45d82a5427c3ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_capstone_01:3 -> audio/generated/de-DE/dialogues/ae77c0acf86ce615ada5ca31baf11d59d3df79680ef5aaa5381f48f9edb5d1a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a12dc8e8-665f-5788-a24a-d58030a7a2c0', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd755fbe225321fb5bfca6b72b72524164eaa084c61f6c6545d1fd274e37c8514'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('232f606e-9e9f-590a-a89a-33fb83f6b374', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a12dc8e8-665f-5788-a24a-d58030a7a2c0', 1), 'd755fbe225321fb5bfca6b72b72524164eaa084c61f6c6545d1fd274e37c8514',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ae77c0acf86ce615ada5ca31baf11d59d3df79680ef5aaa5381f48f9edb5d1a2.mp3', 1854, '2026-09-13 07:35:22.728992', '554e501eea4b4ca641a7c4d724c1376b0633a2b4be41dacc084fba8f4f268876', 'validated', '{"audio_key":"ae77c0acf86ce615ada5ca31baf11d59d3df79680ef5aaa5381f48f9edb5d1a2","entity_key":"d_integrated_capstone_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"554e501eea4b4ca641a7c4d724c1376b0633a2b4be41dacc084fba8f4f268876","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ae77c0acf86ce615ada5ca31baf11d59d3df79680ef5aaa5381f48f9edb5d1a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_instructions_notices_01:3 -> audio/generated/de-DE/dialogues/b799c05eff593b1f9f770339c83435f2ffc6f69fec5cb061e0e64cdf6b71f131.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('348d15aa-333a-5689-9b34-741b0776ee52', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_instructions_notices_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4676aa1e14de3ad98a192b7cd174193f53af9b6a3ccc2b846ce84af3ca4700c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a7537fa-ccd2-528e-ba56-b800827e4fd0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('348d15aa-333a-5689-9b34-741b0776ee52', 1), '4676aa1e14de3ad98a192b7cd174193f53af9b6a3ccc2b846ce84af3ca4700c3',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b799c05eff593b1f9f770339c83435f2ffc6f69fec5cb061e0e64cdf6b71f131.mp3', 4414, '2026-09-13 07:35:24.064623', '0645ba2d0d17f600d628151e6e34c7f06155d00b9a090bd9738c6ca205a9e98f', 'validated', '{"audio_key":"b799c05eff593b1f9f770339c83435f2ffc6f69fec5cb061e0e64cdf6b71f131","entity_key":"d_instructions_notices_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"0645ba2d0d17f600d628151e6e34c7f06155d00b9a090bd9738c6ca205a9e98f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/b799c05eff593b1f9f770339c83435f2ffc6f69fec5cb061e0e64cdf6b71f131.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_capstone_03:3 -> audio/generated/de-DE/dialogues/bd773eae574239c188491660b420a10482fd769adce58defb41e9af054d44a14.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bca5fdee-f654-5310-b286-e1c6160c7aa7', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_capstone_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ebe561ce9735c9bc0a560c46bed4f3408eefbc593fbd513a8d3912f8156a75a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b6bb253-3ca6-5d7f-be67-8cbaa47ffa06', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bca5fdee-f654-5310-b286-e1c6160c7aa7', 1), '9ebe561ce9735c9bc0a560c46bed4f3408eefbc593fbd513a8d3912f8156a75a',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bd773eae574239c188491660b420a10482fd769adce58defb41e9af054d44a14.mp3', 3291, '2026-09-13 07:35:23.974719', '57c63f3b54acdc50add1b1117bff6dabd411a7a9f1666af4baf620ab0b8b373e', 'validated', '{"audio_key":"bd773eae574239c188491660b420a10482fd769adce58defb41e9af054d44a14","entity_key":"d_integrated_capstone_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"57c63f3b54acdc50add1b1117bff6dabd411a7a9f1666af4baf620ab0b8b373e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/bd773eae574239c188491660b420a10482fd769adce58defb41e9af054d44a14.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_relaying_01:4 -> audio/generated/de-DE/dialogues/c048d4eea64f7a2c80499cc84a207d3e56a4d2c540411726ee9204c2309214aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4a05e9df-2ff7-543d-8724-f931670f5087', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_relaying_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2ca234f772c72172c7080983342f31984dd687ef00fbda9878ba6b48fb9005e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f413b3a-c589-5c51-92c3-1714084a75e9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4a05e9df-2ff7-543d-8724-f931670f5087', 1), '2ca234f772c72172c7080983342f31984dd687ef00fbda9878ba6b48fb9005e4',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c048d4eea64f7a2c80499cc84a207d3e56a4d2c540411726ee9204c2309214aa.mp3', 3369, '2026-09-13 07:35:25.210897', '745e33a0aa639f6d24bb9e21610b1cbaba803d7a3675642a29f2a91e3da0336f', 'validated', '{"audio_key":"c048d4eea64f7a2c80499cc84a207d3e56a4d2c540411726ee9204c2309214aa","entity_key":"d_summarizing_relaying_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"745e33a0aa639f6d24bb9e21610b1cbaba803d7a3675642a29f2a91e3da0336f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/c048d4eea64f7a2c80499cc84a207d3e56a4d2c540411726ee9204c2309214aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_instructions_notices_02:3 -> audio/generated/de-DE/dialogues/c444278259355e3bb8ba2311eb7f73dda66c56e9dfbb3a41aac49cf72824b256.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('289054a8-99b5-5c8e-81f4-2395cfb9a0eb', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_instructions_notices_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a747746db9a50f63459e7aaf66fca78f513ff1f7c7560de04eae481ca1565bfb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff61fa55-8643-5f60-886c-86ba070be6d7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('289054a8-99b5-5c8e-81f4-2395cfb9a0eb', 1), 'a747746db9a50f63459e7aaf66fca78f513ff1f7c7560de04eae481ca1565bfb',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c444278259355e3bb8ba2311eb7f73dda66c56e9dfbb3a41aac49cf72824b256.mp3', 1750, '2026-09-13 07:35:25.156684', 'bdfe7792fad979afd2f176ae8e10042e82efcf0c80583a21e9f5664f0b1dcde8', 'validated', '{"audio_key":"c444278259355e3bb8ba2311eb7f73dda66c56e9dfbb3a41aac49cf72824b256","entity_key":"d_instructions_notices_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bdfe7792fad979afd2f176ae8e10042e82efcf0c80583a21e9f5664f0b1dcde8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c444278259355e3bb8ba2311eb7f73dda66c56e9dfbb3a41aac49cf72824b256.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_capstone_02:3 -> audio/generated/de-DE/dialogues/c4f43d3bcd29f19cb09711d623a461f01fe6ea4931df710f9624937edb1ff989.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('228fdbd5-e5db-5efc-b8e4-66342416ab87', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56818b92546fd446d83a210542dbbdbde9bfbb23d733bc3e280f59da041642e9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ad2685d-5ae2-5873-a0d1-767670444778', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('228fdbd5-e5db-5efc-b8e4-66342416ab87', 1), '56818b92546fd446d83a210542dbbdbde9bfbb23d733bc3e280f59da041642e9',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c4f43d3bcd29f19cb09711d623a461f01fe6ea4931df710f9624937edb1ff989.mp3', 2220, '2026-09-13 07:35:26.303778', 'd844d5dcdf9bc8a1be63c396a666ac1a2aa1d3764b2d2466af7c43dcd88fd33f', 'validated', '{"audio_key":"c4f43d3bcd29f19cb09711d623a461f01fe6ea4931df710f9624937edb1ff989","entity_key":"d_integrated_capstone_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d844d5dcdf9bc8a1be63c396a666ac1a2aa1d3764b2d2466af7c43dcd88fd33f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/c4f43d3bcd29f19cb09711d623a461f01fe6ea4931df710f9624937edb1ff989.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_practical_writing_01:2 -> audio/generated/de-DE/dialogues/c6620ef70b57ddbe3ee6421b8bc78fe659e955ce60c519c5af02044640aa9fc9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f9ac5a45-4bfc-529c-873e-a0e0f6fbad51', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_practical_writing_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f81ae2ce4ccb2d916e44f29009d8761fb9d4c0b4bba35df262bc350d29901b95'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa4cee8d-53dc-51c7-8308-0e6630014b74', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f9ac5a45-4bfc-529c-873e-a0e0f6fbad51', 1), 'f81ae2ce4ccb2d916e44f29009d8761fb9d4c0b4bba35df262bc350d29901b95',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c6620ef70b57ddbe3ee6421b8bc78fe659e955ce60c519c5af02044640aa9fc9.mp3', 2586, '2026-09-13 07:35:26.391272', '26f24047f39bf867dc117b8351374dd325755d9be50ca421a52eaacef1f7fd5c', 'validated', '{"audio_key":"c6620ef70b57ddbe3ee6421b8bc78fe659e955ce60c519c5af02044640aa9fc9","entity_key":"d_practical_writing_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"26f24047f39bf867dc117b8351374dd325755d9be50ca421a52eaacef1f7fd5c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c6620ef70b57ddbe3ee6421b8bc78fe659e955ce60c519c5af02044640aa9fc9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_explaining_presenting_03:4 -> audio/generated/de-DE/dialogues/ce96503d1220a54d58b052f6f54468d28d774f2b5671ac506208a65c3c2c244a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5309d529-52d3-5b89-b652-441bd2b0ca0b', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_explaining_presenting_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32043acfc695c86acb0fd198a50fb9f07376c113b62f94a756638fed7d6a6cdf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('72aab9e5-6ee9-5089-9d37-eb233458aeba', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5309d529-52d3-5b89-b652-441bd2b0ca0b', 1), '32043acfc695c86acb0fd198a50fb9f07376c113b62f94a756638fed7d6a6cdf',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ce96503d1220a54d58b052f6f54468d28d774f2b5671ac506208a65c3c2c244a.mp3', 2403, '2026-09-13 07:35:27.484339', '09dfce78e24e015b503bfea8ef1ca4636519665f50bf5be69d4cac6ba0d39315', 'validated', '{"audio_key":"ce96503d1220a54d58b052f6f54468d28d774f2b5671ac506208a65c3c2c244a","entity_key":"d_explaining_presenting_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"09dfce78e24e015b503bfea8ef1ca4636519665f50bf5be69d4cac6ba0d39315","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/ce96503d1220a54d58b052f6f54468d28d774f2b5671ac506208a65c3c2c244a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_relaying_02:1 -> audio/generated/de-DE/dialogues/d808f3fcde1677ee163ab23e28338dc0d1183d9e0290ec866894925ce4c2a0c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2826ee71-965a-5f5d-ae76-13ddc07763c8', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_relaying_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2a576e88b1f4b83cde3bde41153a6ee323f3161fb787b024139280f05802086'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b82bea4-c93e-566b-b12b-5b76fbed009d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2826ee71-965a-5f5d-ae76-13ddc07763c8', 1), 'f2a576e88b1f4b83cde3bde41153a6ee323f3161fb787b024139280f05802086',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d808f3fcde1677ee163ab23e28338dc0d1183d9e0290ec866894925ce4c2a0c0.mp3', 3108, '2026-09-13 07:35:27.635491', '4ebd4391d3a4ababdb8b0b7f4e6820acaecc4ab935e9bea29baadc78313c1440', 'validated', '{"audio_key":"d808f3fcde1677ee163ab23e28338dc0d1183d9e0290ec866894925ce4c2a0c0","entity_key":"d_summarizing_relaying_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4ebd4391d3a4ababdb8b0b7f4e6820acaecc4ab935e9bea29baadc78313c1440","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d808f3fcde1677ee163ab23e28338dc0d1183d9e0290ec866894925ce4c2a0c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_summarizing_relaying_02:4 -> audio/generated/de-DE/dialogues/d9ee871a7d9e1b9a3e0b3ac1662d78d36f68599cbce5d6810c72995be8f801f6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('478118f8-3132-53d9-a486-acdedc96449c', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_summarizing_relaying_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4e3bfb6401b9f7fd9cd1851d077b133c3cba819ddd65aecaff4ae794c71396d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e29a090-73db-5a7d-a474-1ed6839979fb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('478118f8-3132-53d9-a486-acdedc96449c', 1), 'a4e3bfb6401b9f7fd9cd1851d077b133c3cba819ddd65aecaff4ae794c71396d',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d9ee871a7d9e1b9a3e0b3ac1662d78d36f68599cbce5d6810c72995be8f801f6.mp3', 2037, '2026-09-13 07:35:28.641512', '427e97e2fd03403383b8e01855a7981e7fa6405d98266ff5c312baf3434e0589', 'validated', '{"audio_key":"d9ee871a7d9e1b9a3e0b3ac1662d78d36f68599cbce5d6810c72995be8f801f6","entity_key":"d_summarizing_relaying_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"427e97e2fd03403383b8e01855a7981e7fa6405d98266ff5c312baf3434e0589","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d9ee871a7d9e1b9a3e0b3ac1662d78d36f68599cbce5d6810c72995be8f801f6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_integrated_capstone_01:2 -> audio/generated/de-DE/dialogues/df241582dba1506a64426186a0c535cef77490370b25e65d1a1e91d882204e66.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('14b4e1a4-e0d0-5477-a8bf-3f2fe94db939', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_integrated_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32655f0ab0181be0af10f0cf56020cf343c1c22d86dcd0f0c76227f6f809e407'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f91b955b-bf53-5058-a8e2-6e1a107d5962', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('14b4e1a4-e0d0-5477-a8bf-3f2fe94db939', 1), '32655f0ab0181be0af10f0cf56020cf343c1c22d86dcd0f0c76227f6f809e407',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/df241582dba1506a64426186a0c535cef77490370b25e65d1a1e91d882204e66.mp3', 4493, '2026-09-13 07:35:28.990957', '4a8d08976986bdcc0ef888e3220f5de3000bd81954de29b17d54510b99364370', 'validated', '{"audio_key":"df241582dba1506a64426186a0c535cef77490370b25e65d1a1e91d882204e66","entity_key":"d_integrated_capstone_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4a8d08976986bdcc0ef888e3220f5de3000bd81954de29b17d54510b99364370","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/df241582dba1506a64426186a0c535cef77490370b25e65d1a1e91d882204e66.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_practical_writing_02:3 -> audio/generated/de-DE/dialogues/df87f50e45cc2a9cbc253e64915520bba9e2f61362242ba787a0d0cd4ef46cbb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d729883a-9f94-57cd-b603-5fa9abd532b4', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_practical_writing_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4bf4a7078a4fc3e2ac51b11a6c004e560f4c1faddc81745b0a4d5014c63a8ebe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5223f136-cc7b-56cb-b0bf-0def5ddb2fe0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d729883a-9f94-57cd-b603-5fa9abd532b4', 1), '4bf4a7078a4fc3e2ac51b11a6c004e560f4c1faddc81745b0a4d5014c63a8ebe',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/df87f50e45cc2a9cbc253e64915520bba9e2f61362242ba787a0d0cd4ef46cbb.mp3', 2272, '2026-09-13 07:35:29.736517', '78f6bb0392435421b8d9e7db2a8aed79d01da2268a963ea210b5428558ab8546', 'validated', '{"audio_key":"df87f50e45cc2a9cbc253e64915520bba9e2f61362242ba787a0d0cd4ef46cbb","entity_key":"d_practical_writing_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"78f6bb0392435421b8d9e7db2a8aed79d01da2268a963ea210b5428558ab8546","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/df87f50e45cc2a9cbc253e64915520bba9e2f61362242ba787a0d0cd4ef46cbb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_explaining_presenting_03:1 -> audio/generated/de-DE/dialogues/e8c7b04911d36a9d83e7206108c0077239b123b07608dca4a51100248ce729c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b35f35e3-c9b6-5de9-b6d5-f2705df4198b', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_explaining_presenting_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8967861ee0d60097bab541551843e9ed472e95063937f5f1ecb93e9ab336e3e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4cfdfd6c-ae0a-5d11-b1dc-f79c8ff2540e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b35f35e3-c9b6-5de9-b6d5-f2705df4198b', 1), '8967861ee0d60097bab541551843e9ed472e95063937f5f1ecb93e9ab336e3e8',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e8c7b04911d36a9d83e7206108c0077239b123b07608dca4a51100248ce729c3.mp3', 3108, '2026-09-13 07:35:30.230182', 'e9dd6be5a219eaa351e0452b7e1fc6d9f12d5fd4fa588e5d0a7c9158c7f3f50f', 'validated', '{"audio_key":"e8c7b04911d36a9d83e7206108c0077239b123b07608dca4a51100248ce729c3","entity_key":"d_explaining_presenting_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e9dd6be5a219eaa351e0452b7e1fc6d9f12d5fd4fa588e5d0a7c9158c7f3f50f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/e8c7b04911d36a9d83e7206108c0077239b123b07608dca4a51100248ce729c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_explaining_presenting_02:2 -> audio/generated/de-DE/dialogues/ed409b79bc82e731df63d7045820417c44b7bd5efc9b67ae96ac93b898d30932.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c659b971-d283-5a17-90c3-6dd572d0c69a', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_explaining_presenting_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac63778a3e2c81117c11b7bdb6cd8c5f8533e367c21cc9e26be3d14f92269a02'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a1f92cc-c360-5005-a961-8a5bb300e82f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c659b971-d283-5a17-90c3-6dd572d0c69a', 1), 'ac63778a3e2c81117c11b7bdb6cd8c5f8533e367c21cc9e26be3d14f92269a02',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ed409b79bc82e731df63d7045820417c44b7bd5efc9b67ae96ac93b898d30932.mp3', 4310, '2026-09-13 07:35:31.044805', '1c0e4cb0ec1c4b45ea553478be114d3124f15303fcd3e15ca55ae95f28bcdae8', 'validated', '{"audio_key":"ed409b79bc82e731df63d7045820417c44b7bd5efc9b67ae96ac93b898d30932","entity_key":"d_explaining_presenting_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"1c0e4cb0ec1c4b45ea553478be114d3124f15303fcd3e15ca55ae95f28bcdae8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ed409b79bc82e731df63d7045820417c44b7bd5efc9b67ae96ac93b898d30932.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_instructions_notices_03:1 -> audio/generated/de-DE/dialogues/ef45a26c462d55d0569ee464d3c3a0c0d5c8f7cffa5f42f3170357d5416e34dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('aab1705d-afaa-5c09-ba61-c84e343f8ffa', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_instructions_notices_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5530d19233c03fad74887e6a3c7b0e05fe117dbd8b8d93ced87897f84c33007e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ddf612c-49c3-5e04-8437-bcfbf9d71fee', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('aab1705d-afaa-5c09-ba61-c84e343f8ffa', 1), '5530d19233c03fad74887e6a3c7b0e05fe117dbd8b8d93ced87897f84c33007e',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ef45a26c462d55d0569ee464d3c3a0c0d5c8f7cffa5f42f3170357d5416e34dc.mp3', 4362, '2026-09-13 07:35:31.609582', 'c9168ccd5d3141de99021cae2e62b2ba568b4da4754e97645c0a22a8dccb009b', 'validated', '{"audio_key":"ef45a26c462d55d0569ee464d3c3a0c0d5c8f7cffa5f42f3170357d5416e34dc","entity_key":"d_instructions_notices_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"c9168ccd5d3141de99021cae2e62b2ba568b4da4754e97645c0a22a8dccb009b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ef45a26c462d55d0569ee464d3c3a0c0d5c8f7cffa5f42f3170357d5416e34dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_practical_writing_02:2 -> audio/generated/de-DE/dialogues/f23488b15f89db70999852984b535e43350d9bc598413d2de6159e6c8cc7e294.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('773b465f-02b5-50e6-aac9-537b76752c89', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_practical_writing_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2fe603d2a93db27ef9146c61108b97a0f11ae9a92166e8fd7df3100fb4022ea3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75040d53-8f3b-5525-ac17-498bcaee358f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('773b465f-02b5-50e6-aac9-537b76752c89', 1), '2fe603d2a93db27ef9146c61108b97a0f11ae9a92166e8fd7df3100fb4022ea3',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f23488b15f89db70999852984b535e43350d9bc598413d2de6159e6c8cc7e294.mp3', 4310, '2026-09-13 07:35:32.363209', 'e50259ddede4e54cd186882d13a082d2d5accfb44273d4c385eec6c293e5d2a7', 'validated', '{"audio_key":"f23488b15f89db70999852984b535e43350d9bc598413d2de6159e6c8cc7e294","entity_key":"d_practical_writing_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"e50259ddede4e54cd186882d13a082d2d5accfb44273d4c385eec6c293e5d2a7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f23488b15f89db70999852984b535e43350d9bc598413d2de6159e6c8cc7e294.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_explaining_presenting_02:1 -> audio/generated/de-DE/dialogues/f33ef670b8227296b18d3e06a892c0ac29a6462fdf12e3558fe9f54f2e4d7720.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5b73768f-c606-5512-9516-486eab9cc61d', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_explaining_presenting_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb88e3896b6388143814e0a0a6b2b7dd322f19330241b2be59b9170170d61966'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec892766-3038-5eff-900d-ca6e9a84908c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5b73768f-c606-5512-9516-486eab9cc61d', 1), 'fb88e3896b6388143814e0a0a6b2b7dd322f19330241b2be59b9170170d61966',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f33ef670b8227296b18d3e06a892c0ac29a6462fdf12e3558fe9f54f2e4d7720.mp3', 2403, '2026-09-13 07:35:32.729392', '35c277e853a8ec01d2d1c83b078a274a9f4f3f019e36c8dbb842ed2a27fadb7b', 'validated', '{"audio_key":"f33ef670b8227296b18d3e06a892c0ac29a6462fdf12e3558fe9f54f2e4d7720","entity_key":"d_explaining_presenting_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"35c277e853a8ec01d2d1c83b078a274a9f4f3f019e36c8dbb842ed2a27fadb7b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f33ef670b8227296b18d3e06a892c0ac29a6462fdf12e3558fe9f54f2e4d7720.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_integrated_capstone_03 -> audio/generated/de-DE/lexical/00348eb179c842c1d1127446356dfbdcf0c7ac269e57b0ae4ba2524a22cc1c82.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8b16bf18-6dea-5b8d-870e-ea20d6e7871c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_integrated_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '417c32870739b42f850931fed153c8e0281ba42123e1a1be181492d3f24cf332'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d215e25b-4048-5043-816d-a0c0c2d2a3fb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8b16bf18-6dea-5b8d-870e-ea20d6e7871c', 1), '417c32870739b42f850931fed153c8e0281ba42123e1a1be181492d3f24cf332',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/00348eb179c842c1d1127446356dfbdcf0c7ac269e57b0ae4ba2524a22cc1c82.mp3', 1332, '2026-09-13 05:54:37.037591', 'f3d3bf42ac61a9ec05c6ac5d34439e0ca2f00cd770bcedb983b507774a0ec7fe', 'validated', '{"audio_key":"00348eb179c842c1d1127446356dfbdcf0c7ac269e57b0ae4ba2524a22cc1c82","entity_key":"lx_integrated_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f3d3bf42ac61a9ec05c6ac5d34439e0ca2f00cd770bcedb983b507774a0ec7fe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/00348eb179c842c1d1127446356dfbdcf0c7ac269e57b0ae4ba2524a22cc1c82.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_integrated_capstone_03 -> audio/generated/de-DE/lexical/00348eb179c842c1d1127446356dfbdcf0c7ac269e57b0ae4ba2524a22cc1c82.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ff8b9e87-3d22-51df-bd99-ec3586cfd43e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_integrated_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '417c32870739b42f850931fed153c8e0281ba42123e1a1be181492d3f24cf332'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86ac7c0d-e8a3-5573-b57d-eadcb058d205', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ff8b9e87-3d22-51df-bd99-ec3586cfd43e', 1), '417c32870739b42f850931fed153c8e0281ba42123e1a1be181492d3f24cf332',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/00348eb179c842c1d1127446356dfbdcf0c7ac269e57b0ae4ba2524a22cc1c82.mp3', 1332, '2026-09-13 05:54:37.037591', 'f3d3bf42ac61a9ec05c6ac5d34439e0ca2f00cd770bcedb983b507774a0ec7fe', 'validated', '{"audio_key":"00348eb179c842c1d1127446356dfbdcf0c7ac269e57b0ae4ba2524a22cc1c82","entity_key":"wf_integrated_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f3d3bf42ac61a9ec05c6ac5d34439e0ca2f00cd770bcedb983b507774a0ec7fe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/00348eb179c842c1d1127446356dfbdcf0c7ac269e57b0ae4ba2524a22cc1c82.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_explaining_presenting_06 -> audio/generated/de-DE/lexical/0ac4b269ac3719c787799813760562c1e7a81f432261939f3a09bc9ed0138ccf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6c1383da-06a1-5024-9be6-d8909657fb6d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_explaining_presenting_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2788b953aafb7ed7a715732b735f2caa219a222a98e7a796c9d96846c35217f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf5c3cad-d7fb-5f85-b483-112169d861b1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6c1383da-06a1-5024-9be6-d8909657fb6d', 1), '2788b953aafb7ed7a715732b735f2caa219a222a98e7a796c9d96846c35217f9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0ac4b269ac3719c787799813760562c1e7a81f432261939f3a09bc9ed0138ccf.mp3', 1201, '2026-09-13 06:17:26.339278', '40a5d8d277d03883e9992a88bc762cd4d63622cc609276301799ec7bb4e5402e', 'validated', '{"audio_key":"0ac4b269ac3719c787799813760562c1e7a81f432261939f3a09bc9ed0138ccf","entity_key":"lx_explaining_presenting_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"40a5d8d277d03883e9992a88bc762cd4d63622cc609276301799ec7bb4e5402e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0ac4b269ac3719c787799813760562c1e7a81f432261939f3a09bc9ed0138ccf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_explaining_presenting_06 -> audio/generated/de-DE/lexical/0ac4b269ac3719c787799813760562c1e7a81f432261939f3a09bc9ed0138ccf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b8149e62-5e6e-5dbb-8509-807258fc8765', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_explaining_presenting_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2788b953aafb7ed7a715732b735f2caa219a222a98e7a796c9d96846c35217f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8cde9b22-ff86-5966-91ac-0f2bc92e596a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b8149e62-5e6e-5dbb-8509-807258fc8765', 1), '2788b953aafb7ed7a715732b735f2caa219a222a98e7a796c9d96846c35217f9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0ac4b269ac3719c787799813760562c1e7a81f432261939f3a09bc9ed0138ccf.mp3', 1201, '2026-09-13 06:17:26.339278', '40a5d8d277d03883e9992a88bc762cd4d63622cc609276301799ec7bb4e5402e', 'validated', '{"audio_key":"0ac4b269ac3719c787799813760562c1e7a81f432261939f3a09bc9ed0138ccf","entity_key":"wf_explaining_presenting_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"40a5d8d277d03883e9992a88bc762cd4d63622cc609276301799ec7bb4e5402e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0ac4b269ac3719c787799813760562c1e7a81f432261939f3a09bc9ed0138ccf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_summarizing_relaying_02 -> audio/generated/de-DE/lexical/420ec6afc5cb8bad8cc25d09a189680c39f04315e57279812f5cf4ba3254fd3f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8719bdb0-3a54-53d4-a7e4-b4fbe45b4d0e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_summarizing_relaying_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b85992f11603b7c6b0af5c3fd3b6aa282ff537fa376cf703780e9a723d79dd6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8cae342e-9821-5375-bddd-8be8e6651925', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8719bdb0-3a54-53d4-a7e4-b4fbe45b4d0e', 1), 'b85992f11603b7c6b0af5c3fd3b6aa282ff537fa376cf703780e9a723d79dd6c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/420ec6afc5cb8bad8cc25d09a189680c39f04315e57279812f5cf4ba3254fd3f.mp3', 1436, '2026-09-13 07:35:33.432112', 'f0c23a389bff4c73c9ca875069351af24a9e617f315adf0a2bbb508013158c38', 'validated', '{"audio_key":"420ec6afc5cb8bad8cc25d09a189680c39f04315e57279812f5cf4ba3254fd3f","entity_key":"lx_summarizing_relaying_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f0c23a389bff4c73c9ca875069351af24a9e617f315adf0a2bbb508013158c38","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/420ec6afc5cb8bad8cc25d09a189680c39f04315e57279812f5cf4ba3254fd3f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_summarizing_relaying_02 -> audio/generated/de-DE/lexical/420ec6afc5cb8bad8cc25d09a189680c39f04315e57279812f5cf4ba3254fd3f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9c3e2d3a-86cf-5538-a371-6b6cbc388ad0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_summarizing_relaying_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b85992f11603b7c6b0af5c3fd3b6aa282ff537fa376cf703780e9a723d79dd6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5522ea3f-5773-5294-816d-e845bc78d3d3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9c3e2d3a-86cf-5538-a371-6b6cbc388ad0', 1), 'b85992f11603b7c6b0af5c3fd3b6aa282ff537fa376cf703780e9a723d79dd6c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/420ec6afc5cb8bad8cc25d09a189680c39f04315e57279812f5cf4ba3254fd3f.mp3', 1436, '2026-09-13 07:35:33.432112', 'f0c23a389bff4c73c9ca875069351af24a9e617f315adf0a2bbb508013158c38', 'validated', '{"audio_key":"420ec6afc5cb8bad8cc25d09a189680c39f04315e57279812f5cf4ba3254fd3f","entity_key":"wf_summarizing_relaying_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f0c23a389bff4c73c9ca875069351af24a9e617f315adf0a2bbb508013158c38","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/420ec6afc5cb8bad8cc25d09a189680c39f04315e57279812f5cf4ba3254fd3f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_instructions_notices_05 -> audio/generated/de-DE/lexical/599f7776dfa0f660ea3600b8434a5dd737feda520775867836f374681b1007ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3c7ff0b9-f569-53ea-8a29-110cf8d5f324', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_instructions_notices_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '41b8e19043ca333153446f29f84d98a18547b5496ac9e2f7097828b0a218eeaa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1bb5a12b-7cb1-54f5-b951-b943d21489e8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3c7ff0b9-f569-53ea-8a29-110cf8d5f324', 1), '41b8e19043ca333153446f29f84d98a18547b5496ac9e2f7097828b0a218eeaa',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/599f7776dfa0f660ea3600b8434a5dd737feda520775867836f374681b1007ab.mp3', 862, '2026-09-13 07:35:33.695351', '6e6722d702ed1a279664023aae4876e1d0728a1455402e6481f051f25033bb7c', 'validated', '{"audio_key":"599f7776dfa0f660ea3600b8434a5dd737feda520775867836f374681b1007ab","entity_key":"lx_instructions_notices_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e6722d702ed1a279664023aae4876e1d0728a1455402e6481f051f25033bb7c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/599f7776dfa0f660ea3600b8434a5dd737feda520775867836f374681b1007ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_instructions_notices_05 -> audio/generated/de-DE/lexical/599f7776dfa0f660ea3600b8434a5dd737feda520775867836f374681b1007ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0ab81bb5-72eb-5a2a-bfbf-c6d2b2f3e0f9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_instructions_notices_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '41b8e19043ca333153446f29f84d98a18547b5496ac9e2f7097828b0a218eeaa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b5c11c1-06b6-5df5-bfe0-93d2736d99c8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0ab81bb5-72eb-5a2a-bfbf-c6d2b2f3e0f9', 1), '41b8e19043ca333153446f29f84d98a18547b5496ac9e2f7097828b0a218eeaa',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/599f7776dfa0f660ea3600b8434a5dd737feda520775867836f374681b1007ab.mp3', 862, '2026-09-13 07:35:33.695351', '6e6722d702ed1a279664023aae4876e1d0728a1455402e6481f051f25033bb7c', 'validated', '{"audio_key":"599f7776dfa0f660ea3600b8434a5dd737feda520775867836f374681b1007ab","entity_key":"wf_instructions_notices_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e6722d702ed1a279664023aae4876e1d0728a1455402e6481f051f25033bb7c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/599f7776dfa0f660ea3600b8434a5dd737feda520775867836f374681b1007ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_integrated_capstone_01 -> audio/generated/de-DE/lexical/6adc4cea6df145eb700669672bace022e2d01fbdea84793e50daf3b7d4c1f440.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6b62d0c1-6ece-5324-8c35-0002147178e4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_integrated_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b3aeeb32a0c7c5d45b6e955370301ca1c8d271eaabafaf9125e371ef28984223'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c669a01-402d-58e3-93d7-d0412c7e3038', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6b62d0c1-6ece-5324-8c35-0002147178e4', 1), 'b3aeeb32a0c7c5d45b6e955370301ca1c8d271eaabafaf9125e371ef28984223',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6adc4cea6df145eb700669672bace022e2d01fbdea84793e50daf3b7d4c1f440.mp3', 1280, '2026-09-13 07:35:34.515823', '017ae219c45fb62762558facd1563d522aca60b7472ee68c5d64f47d8974f730', 'validated', '{"audio_key":"6adc4cea6df145eb700669672bace022e2d01fbdea84793e50daf3b7d4c1f440","entity_key":"lx_integrated_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"017ae219c45fb62762558facd1563d522aca60b7472ee68c5d64f47d8974f730","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6adc4cea6df145eb700669672bace022e2d01fbdea84793e50daf3b7d4c1f440.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_integrated_capstone_01 -> audio/generated/de-DE/lexical/6adc4cea6df145eb700669672bace022e2d01fbdea84793e50daf3b7d4c1f440.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0dca738e-cc55-5878-82ec-98c6b6530ffe', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_integrated_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b3aeeb32a0c7c5d45b6e955370301ca1c8d271eaabafaf9125e371ef28984223'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('235c3a9c-a384-58d2-8253-b5265bd33b6e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0dca738e-cc55-5878-82ec-98c6b6530ffe', 1), 'b3aeeb32a0c7c5d45b6e955370301ca1c8d271eaabafaf9125e371ef28984223',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6adc4cea6df145eb700669672bace022e2d01fbdea84793e50daf3b7d4c1f440.mp3', 1280, '2026-09-13 07:35:34.515823', '017ae219c45fb62762558facd1563d522aca60b7472ee68c5d64f47d8974f730', 'validated', '{"audio_key":"6adc4cea6df145eb700669672bace022e2d01fbdea84793e50daf3b7d4c1f440","entity_key":"wf_integrated_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"017ae219c45fb62762558facd1563d522aca60b7472ee68c5d64f47d8974f730","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6adc4cea6df145eb700669672bace022e2d01fbdea84793e50daf3b7d4c1f440.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_practical_writing_02 -> audio/generated/de-DE/lexical/6ba1e69057f07c4e33329d0568427a149392b97f568482470a98fb9fae2f4d09.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('723f88a7-858f-53db-9590-bfd5b2b21cbd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_practical_writing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69c3d16ab131598ef32ab867f0a31534476c5a9a0c8579f353360ffe6e409d38'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e7b75ee-0ae4-5b25-8251-bbb2635a8a1c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('723f88a7-858f-53db-9590-bfd5b2b21cbd', 1), '69c3d16ab131598ef32ab867f0a31534476c5a9a0c8579f353360ffe6e409d38',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6ba1e69057f07c4e33329d0568427a149392b97f568482470a98fb9fae2f4d09.mp3', 1018, '2026-09-13 07:35:34.666960', 'ec4943230eebb2cd1bb6a554abfb67cbea7691661bb2e732ff0df29035558ef8', 'validated', '{"audio_key":"6ba1e69057f07c4e33329d0568427a149392b97f568482470a98fb9fae2f4d09","entity_key":"lx_practical_writing_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ec4943230eebb2cd1bb6a554abfb67cbea7691661bb2e732ff0df29035558ef8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6ba1e69057f07c4e33329d0568427a149392b97f568482470a98fb9fae2f4d09.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_practical_writing_02 -> audio/generated/de-DE/lexical/6ba1e69057f07c4e33329d0568427a149392b97f568482470a98fb9fae2f4d09.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d62fc84d-3e85-5b74-ac56-dd37a0925f1f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_practical_writing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69c3d16ab131598ef32ab867f0a31534476c5a9a0c8579f353360ffe6e409d38'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('715cfda5-473d-59b6-be5b-4b6d179806cf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d62fc84d-3e85-5b74-ac56-dd37a0925f1f', 1), '69c3d16ab131598ef32ab867f0a31534476c5a9a0c8579f353360ffe6e409d38',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6ba1e69057f07c4e33329d0568427a149392b97f568482470a98fb9fae2f4d09.mp3', 1018, '2026-09-13 07:35:34.666960', 'ec4943230eebb2cd1bb6a554abfb67cbea7691661bb2e732ff0df29035558ef8', 'validated', '{"audio_key":"6ba1e69057f07c4e33329d0568427a149392b97f568482470a98fb9fae2f4d09","entity_key":"wf_practical_writing_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ec4943230eebb2cd1bb6a554abfb67cbea7691661bb2e732ff0df29035558ef8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6ba1e69057f07c4e33329d0568427a149392b97f568482470a98fb9fae2f4d09.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_explaining_presenting_04 -> audio/generated/de-DE/lexical/8c72123773d5aed409a9f5ee3945248d4ef1e1c08adbe81f1703c0fbabe38804.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('15e2e332-520f-59fd-a617-7339a92576dd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_explaining_presenting_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2071c7736acd16f6cea3727d3b7ecde53f4c2e97b421f3550248e19d7309c636'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6c2e123-176b-56a0-969d-5aee3af7b8a3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('15e2e332-520f-59fd-a617-7339a92576dd', 1), '2071c7736acd16f6cea3727d3b7ecde53f4c2e97b421f3550248e19d7309c636',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8c72123773d5aed409a9f5ee3945248d4ef1e1c08adbe81f1703c0fbabe38804.mp3', 1071, '2026-09-13 07:35:35.883649', '89e28eec3e2cd0225ab31f60f21d4a34bdd4dc180d9b878247516336a9d09b3a', 'validated', '{"audio_key":"8c72123773d5aed409a9f5ee3945248d4ef1e1c08adbe81f1703c0fbabe38804","entity_key":"lx_explaining_presenting_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"89e28eec3e2cd0225ab31f60f21d4a34bdd4dc180d9b878247516336a9d09b3a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8c72123773d5aed409a9f5ee3945248d4ef1e1c08adbe81f1703c0fbabe38804.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_explaining_presenting_04 -> audio/generated/de-DE/lexical/8c72123773d5aed409a9f5ee3945248d4ef1e1c08adbe81f1703c0fbabe38804.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('82d8bee2-bf17-5d42-8d82-17c9a23b1ffb', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_explaining_presenting_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2071c7736acd16f6cea3727d3b7ecde53f4c2e97b421f3550248e19d7309c636'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd66c397-44be-5fda-a05c-46ba4c68a27b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('82d8bee2-bf17-5d42-8d82-17c9a23b1ffb', 1), '2071c7736acd16f6cea3727d3b7ecde53f4c2e97b421f3550248e19d7309c636',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8c72123773d5aed409a9f5ee3945248d4ef1e1c08adbe81f1703c0fbabe38804.mp3', 1071, '2026-09-13 07:35:35.883649', '89e28eec3e2cd0225ab31f60f21d4a34bdd4dc180d9b878247516336a9d09b3a', 'validated', '{"audio_key":"8c72123773d5aed409a9f5ee3945248d4ef1e1c08adbe81f1703c0fbabe38804","entity_key":"wf_explaining_presenting_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"89e28eec3e2cd0225ab31f60f21d4a34bdd4dc180d9b878247516336a9d09b3a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8c72123773d5aed409a9f5ee3945248d4ef1e1c08adbe81f1703c0fbabe38804.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_practical_writing_03 -> audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2e7cd3c5-a119-55bf-9c37-8c6f89009e87', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_practical_writing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c7e051fdab5ce509712cf31805708e30d168c3948a737cf121ec451846715e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2abbd542-5b7a-5502-82e9-c0adec735768', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2e7cd3c5-a119-55bf-9c37-8c6f89009e87', 1), '9c7e051fdab5ce509712cf31805708e30d168c3948a737cf121ec451846715e5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3', 1201, '2026-09-13 06:59:32.737181', '4a2e63e789fdb5b5b077b384b7175cc8633ce7c11eb1fce1e531a093e8fb8040', 'validated', '{"audio_key":"a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08","entity_key":"lx_practical_writing_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a2e63e789fdb5b5b077b384b7175cc8633ce7c11eb1fce1e531a093e8fb8040","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_practical_writing_03 -> audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1a3e44c2-175c-5b89-b60a-baf6ee81657a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_practical_writing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c7e051fdab5ce509712cf31805708e30d168c3948a737cf121ec451846715e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('efe534b2-b59e-5515-b749-d604432a5654', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1a3e44c2-175c-5b89-b60a-baf6ee81657a', 1), '9c7e051fdab5ce509712cf31805708e30d168c3948a737cf121ec451846715e5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3', 1201, '2026-09-13 06:59:32.737181', '4a2e63e789fdb5b5b077b384b7175cc8633ce7c11eb1fce1e531a093e8fb8040', 'validated', '{"audio_key":"a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08","entity_key":"wf_practical_writing_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4a2e63e789fdb5b5b077b384b7175cc8633ce7c11eb1fce1e531a093e8fb8040","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a38434f79a1076cefd2fe7982cfd8a91da5c0d66612b14b3d47bb9eb4065de08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_instructions_notices_01 -> audio/generated/de-DE/lexical/a4eabe11aa66e02a0bdf9c090d3ababe33e7d86a39415665f16c90e63bd33ec6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('40806f09-768b-5b6c-9359-5e295a821705', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_instructions_notices_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e2011d96a4116985c5cfb35df7d4f59083c21b70c8a5ac927e41a1f92f89329'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('366a5f55-175c-580b-b749-30bb52a91281', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('40806f09-768b-5b6c-9359-5e295a821705', 1), '2e2011d96a4116985c5cfb35df7d4f59083c21b70c8a5ac927e41a1f92f89329',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a4eabe11aa66e02a0bdf9c090d3ababe33e7d86a39415665f16c90e63bd33ec6.mp3', 1071, '2026-09-13 07:35:35.662635', 'e50b80b6ce517ed99ea22cd7347bcd8b1359e408ab025f03c49a1f750d972033', 'validated', '{"audio_key":"a4eabe11aa66e02a0bdf9c090d3ababe33e7d86a39415665f16c90e63bd33ec6","entity_key":"lx_instructions_notices_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e50b80b6ce517ed99ea22cd7347bcd8b1359e408ab025f03c49a1f750d972033","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a4eabe11aa66e02a0bdf9c090d3ababe33e7d86a39415665f16c90e63bd33ec6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_instructions_notices_01 -> audio/generated/de-DE/lexical/a4eabe11aa66e02a0bdf9c090d3ababe33e7d86a39415665f16c90e63bd33ec6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3b34b87f-5cd7-5609-ab6e-f6bf5a1ce17c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_instructions_notices_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e2011d96a4116985c5cfb35df7d4f59083c21b70c8a5ac927e41a1f92f89329'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c8cacb17-b62b-5ac1-bdbb-8e2871d1d788', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3b34b87f-5cd7-5609-ab6e-f6bf5a1ce17c', 1), '2e2011d96a4116985c5cfb35df7d4f59083c21b70c8a5ac927e41a1f92f89329',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a4eabe11aa66e02a0bdf9c090d3ababe33e7d86a39415665f16c90e63bd33ec6.mp3', 1071, '2026-09-13 07:35:35.662635', 'e50b80b6ce517ed99ea22cd7347bcd8b1359e408ab025f03c49a1f750d972033', 'validated', '{"audio_key":"a4eabe11aa66e02a0bdf9c090d3ababe33e7d86a39415665f16c90e63bd33ec6","entity_key":"wf_instructions_notices_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e50b80b6ce517ed99ea22cd7347bcd8b1359e408ab025f03c49a1f750d972033","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a4eabe11aa66e02a0bdf9c090d3ababe33e7d86a39415665f16c90e63bd33ec6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_summarizing_relaying_05 -> audio/generated/de-DE/lexical/a4eabe11aa66e02a0bdf9c090d3ababe33e7d86a39415665f16c90e63bd33ec6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('40806f09-768b-5b6c-9359-5e295a821705', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_summarizing_relaying_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e2011d96a4116985c5cfb35df7d4f59083c21b70c8a5ac927e41a1f92f89329'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('366a5f55-175c-580b-b749-30bb52a91281', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('40806f09-768b-5b6c-9359-5e295a821705', 1), '2e2011d96a4116985c5cfb35df7d4f59083c21b70c8a5ac927e41a1f92f89329',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a4eabe11aa66e02a0bdf9c090d3ababe33e7d86a39415665f16c90e63bd33ec6.mp3', 1071, '2026-09-13 07:35:35.662635', 'e50b80b6ce517ed99ea22cd7347bcd8b1359e408ab025f03c49a1f750d972033', 'validated', '{"audio_key":"a4eabe11aa66e02a0bdf9c090d3ababe33e7d86a39415665f16c90e63bd33ec6","entity_key":"lx_summarizing_relaying_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e50b80b6ce517ed99ea22cd7347bcd8b1359e408ab025f03c49a1f750d972033","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a4eabe11aa66e02a0bdf9c090d3ababe33e7d86a39415665f16c90e63bd33ec6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_summarizing_relaying_05 -> audio/generated/de-DE/lexical/a4eabe11aa66e02a0bdf9c090d3ababe33e7d86a39415665f16c90e63bd33ec6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cba3667e-680c-5b6a-8f1b-f28509765dd0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_summarizing_relaying_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e2011d96a4116985c5cfb35df7d4f59083c21b70c8a5ac927e41a1f92f89329'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('681ed113-5787-5474-9df4-c10788d08800', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cba3667e-680c-5b6a-8f1b-f28509765dd0', 1), '2e2011d96a4116985c5cfb35df7d4f59083c21b70c8a5ac927e41a1f92f89329',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a4eabe11aa66e02a0bdf9c090d3ababe33e7d86a39415665f16c90e63bd33ec6.mp3', 1071, '2026-09-13 07:35:35.662635', 'e50b80b6ce517ed99ea22cd7347bcd8b1359e408ab025f03c49a1f750d972033', 'validated', '{"audio_key":"a4eabe11aa66e02a0bdf9c090d3ababe33e7d86a39415665f16c90e63bd33ec6","entity_key":"wf_summarizing_relaying_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e50b80b6ce517ed99ea22cd7347bcd8b1359e408ab025f03c49a1f750d972033","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a4eabe11aa66e02a0bdf9c090d3ababe33e7d86a39415665f16c90e63bd33ec6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_practical_writing_05 -> audio/generated/de-DE/lexical/a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3ce50548-042a-5f42-b76a-01eb5b0b6e2f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_practical_writing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd45be68e118b2ea08af047b95bf9043f0c6272a0ad0a97ee8ec20e5b1f0b50bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c9c26db-fda0-5cdb-9fba-200c7253ca98', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3ce50548-042a-5f42-b76a-01eb5b0b6e2f', 1), 'd45be68e118b2ea08af047b95bf9043f0c6272a0ad0a97ee8ec20e5b1f0b50bb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d.mp3', 1149, '2026-09-13 05:30:37.558598', '6a7a04c39c742b570bb538330ed4a21bbaec391a9f00ce87fd29893df8a7d494', 'validated', '{"audio_key":"a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d","entity_key":"lx_practical_writing_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6a7a04c39c742b570bb538330ed4a21bbaec391a9f00ce87fd29893df8a7d494","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_practical_writing_05 -> audio/generated/de-DE/lexical/a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('67bf6936-42de-500d-afcd-161b33eed755', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_practical_writing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd45be68e118b2ea08af047b95bf9043f0c6272a0ad0a97ee8ec20e5b1f0b50bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b63eb05-b190-5408-8ee0-f8971a8accc5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('67bf6936-42de-500d-afcd-161b33eed755', 1), 'd45be68e118b2ea08af047b95bf9043f0c6272a0ad0a97ee8ec20e5b1f0b50bb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d.mp3', 1149, '2026-09-13 05:30:37.558598', '6a7a04c39c742b570bb538330ed4a21bbaec391a9f00ce87fd29893df8a7d494', 'validated', '{"audio_key":"a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d","entity_key":"wf_practical_writing_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6a7a04c39c742b570bb538330ed4a21bbaec391a9f00ce87fd29893df8a7d494","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a7f5c73251b838664cf847a2b755be438fc9f4020c8701efdd2f9d4402018c8d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_integrated_capstone_04 -> audio/generated/de-DE/lexical/aab8586c619f78f953df79f80ac5e56cc0189ed9cf574ee08db9edf219893dfd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('46156205-45be-5962-8967-76ea701de3ce', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_integrated_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c4d44d26fe98e219b9254cd6b507c794385f26e94da5ec3550d6b09b1efbed7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e8df5be-2dce-52e4-91a3-deb6a0bbfe31', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('46156205-45be-5962-8967-76ea701de3ce', 1), '5c4d44d26fe98e219b9254cd6b507c794385f26e94da5ec3550d6b09b1efbed7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/aab8586c619f78f953df79f80ac5e56cc0189ed9cf574ee08db9edf219893dfd.mp3', 1097, '2026-09-13 07:35:36.659154', '76c9ea62c153ce961e3eb0df46fc4ce7ab65d59eb216c7934904d8b7cfebc220', 'validated', '{"audio_key":"aab8586c619f78f953df79f80ac5e56cc0189ed9cf574ee08db9edf219893dfd","entity_key":"lx_integrated_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"76c9ea62c153ce961e3eb0df46fc4ce7ab65d59eb216c7934904d8b7cfebc220","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/aab8586c619f78f953df79f80ac5e56cc0189ed9cf574ee08db9edf219893dfd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_integrated_capstone_04 -> audio/generated/de-DE/lexical/aab8586c619f78f953df79f80ac5e56cc0189ed9cf574ee08db9edf219893dfd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6ca147ae-6014-5a43-b815-4d0b254cc311', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_integrated_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c4d44d26fe98e219b9254cd6b507c794385f26e94da5ec3550d6b09b1efbed7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da176fd1-5552-5d06-acb7-499c3f0acc19', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6ca147ae-6014-5a43-b815-4d0b254cc311', 1), '5c4d44d26fe98e219b9254cd6b507c794385f26e94da5ec3550d6b09b1efbed7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/aab8586c619f78f953df79f80ac5e56cc0189ed9cf574ee08db9edf219893dfd.mp3', 1097, '2026-09-13 07:35:36.659154', '76c9ea62c153ce961e3eb0df46fc4ce7ab65d59eb216c7934904d8b7cfebc220', 'validated', '{"audio_key":"aab8586c619f78f953df79f80ac5e56cc0189ed9cf574ee08db9edf219893dfd","entity_key":"wf_integrated_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"76c9ea62c153ce961e3eb0df46fc4ce7ab65d59eb216c7934904d8b7cfebc220","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/aab8586c619f78f953df79f80ac5e56cc0189ed9cf574ee08db9edf219893dfd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_summarizing_relaying_03 -> audio/generated/de-DE/lexical/aab8586c619f78f953df79f80ac5e56cc0189ed9cf574ee08db9edf219893dfd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('46156205-45be-5962-8967-76ea701de3ce', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_summarizing_relaying_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c4d44d26fe98e219b9254cd6b507c794385f26e94da5ec3550d6b09b1efbed7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e8df5be-2dce-52e4-91a3-deb6a0bbfe31', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('46156205-45be-5962-8967-76ea701de3ce', 1), '5c4d44d26fe98e219b9254cd6b507c794385f26e94da5ec3550d6b09b1efbed7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/aab8586c619f78f953df79f80ac5e56cc0189ed9cf574ee08db9edf219893dfd.mp3', 1097, '2026-09-13 07:35:36.659154', '76c9ea62c153ce961e3eb0df46fc4ce7ab65d59eb216c7934904d8b7cfebc220', 'validated', '{"audio_key":"aab8586c619f78f953df79f80ac5e56cc0189ed9cf574ee08db9edf219893dfd","entity_key":"lx_summarizing_relaying_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"76c9ea62c153ce961e3eb0df46fc4ce7ab65d59eb216c7934904d8b7cfebc220","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/aab8586c619f78f953df79f80ac5e56cc0189ed9cf574ee08db9edf219893dfd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_summarizing_relaying_03 -> audio/generated/de-DE/lexical/aab8586c619f78f953df79f80ac5e56cc0189ed9cf574ee08db9edf219893dfd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d0cf73a7-cec5-58d3-bc96-a4965749b54b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_summarizing_relaying_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c4d44d26fe98e219b9254cd6b507c794385f26e94da5ec3550d6b09b1efbed7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('937e9306-0d57-566a-afa4-1ba1ccd2c211', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d0cf73a7-cec5-58d3-bc96-a4965749b54b', 1), '5c4d44d26fe98e219b9254cd6b507c794385f26e94da5ec3550d6b09b1efbed7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/aab8586c619f78f953df79f80ac5e56cc0189ed9cf574ee08db9edf219893dfd.mp3', 1097, '2026-09-13 07:35:36.659154', '76c9ea62c153ce961e3eb0df46fc4ce7ab65d59eb216c7934904d8b7cfebc220', 'validated', '{"audio_key":"aab8586c619f78f953df79f80ac5e56cc0189ed9cf574ee08db9edf219893dfd","entity_key":"wf_summarizing_relaying_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"76c9ea62c153ce961e3eb0df46fc4ce7ab65d59eb216c7934904d8b7cfebc220","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/aab8586c619f78f953df79f80ac5e56cc0189ed9cf574ee08db9edf219893dfd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_integrated_capstone_02 -> audio/generated/de-DE/lexical/ad5158542826bf41962f34556701c8b5add1d1c749d0cd5ce2f24ef91a71954e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e708713c-48e1-5462-8b95-09307e527540', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_integrated_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ebdaa9e34ca0e47244bc0a5bcfd34b8e739aeed92a384966c4be0c01f64a9c40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8190fc1-77f3-541f-af3f-5cf8dfa503dc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e708713c-48e1-5462-8b95-09307e527540', 1), 'ebdaa9e34ca0e47244bc0a5bcfd34b8e739aeed92a384966c4be0c01f64a9c40',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ad5158542826bf41962f34556701c8b5add1d1c749d0cd5ce2f24ef91a71954e.mp3', 1018, '2026-09-13 05:30:41.786422', 'd2cb09510dcd16450da6c824fbb287a7a481eb3a4f2917a1d02c87b7af46c9c9', 'validated', '{"audio_key":"ad5158542826bf41962f34556701c8b5add1d1c749d0cd5ce2f24ef91a71954e","entity_key":"lx_integrated_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d2cb09510dcd16450da6c824fbb287a7a481eb3a4f2917a1d02c87b7af46c9c9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ad5158542826bf41962f34556701c8b5add1d1c749d0cd5ce2f24ef91a71954e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_integrated_capstone_02 -> audio/generated/de-DE/lexical/ad5158542826bf41962f34556701c8b5add1d1c749d0cd5ce2f24ef91a71954e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('29f1a313-5dff-5023-b7e6-df120750642a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_integrated_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ebdaa9e34ca0e47244bc0a5bcfd34b8e739aeed92a384966c4be0c01f64a9c40'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('06108bef-b04d-54bb-acec-b2b7bdb5b8b1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('29f1a313-5dff-5023-b7e6-df120750642a', 1), 'ebdaa9e34ca0e47244bc0a5bcfd34b8e739aeed92a384966c4be0c01f64a9c40',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ad5158542826bf41962f34556701c8b5add1d1c749d0cd5ce2f24ef91a71954e.mp3', 1018, '2026-09-13 05:30:41.786422', 'd2cb09510dcd16450da6c824fbb287a7a481eb3a4f2917a1d02c87b7af46c9c9', 'validated', '{"audio_key":"ad5158542826bf41962f34556701c8b5add1d1c749d0cd5ce2f24ef91a71954e","entity_key":"wf_integrated_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d2cb09510dcd16450da6c824fbb287a7a481eb3a4f2917a1d02c87b7af46c9c9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ad5158542826bf41962f34556701c8b5add1d1c749d0cd5ce2f24ef91a71954e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_instructions_notices_02 -> audio/generated/de-DE/lexical/ae1ea1ec6fa5889813b0f8d7081baed4e1bde2b430acc0f28d36f8a67cc35f4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6d5e427e-0b76-5580-98a7-e2fa9777b5f2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_instructions_notices_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'efbd1c4defe41e98f00198f173e60da388844c9d799a08b78f51ac94d47b77fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2720ab4-404d-5505-a6ea-4186efc3e4fb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6d5e427e-0b76-5580-98a7-e2fa9777b5f2', 1), 'efbd1c4defe41e98f00198f173e60da388844c9d799a08b78f51ac94d47b77fa',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ae1ea1ec6fa5889813b0f8d7081baed4e1bde2b430acc0f28d36f8a67cc35f4e.mp3', 1097, '2026-09-13 07:35:36.934262', '6f96a21732b910f4dfb6a476f4d7cefb72abc3fad98f427c741f556bbc6154ce', 'validated', '{"audio_key":"ae1ea1ec6fa5889813b0f8d7081baed4e1bde2b430acc0f28d36f8a67cc35f4e","entity_key":"lx_instructions_notices_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6f96a21732b910f4dfb6a476f4d7cefb72abc3fad98f427c741f556bbc6154ce","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ae1ea1ec6fa5889813b0f8d7081baed4e1bde2b430acc0f28d36f8a67cc35f4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_instructions_notices_02 -> audio/generated/de-DE/lexical/ae1ea1ec6fa5889813b0f8d7081baed4e1bde2b430acc0f28d36f8a67cc35f4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b7e8f7b9-7e45-5882-881b-6de00a405c9e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_instructions_notices_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'efbd1c4defe41e98f00198f173e60da388844c9d799a08b78f51ac94d47b77fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('059fcda1-21f4-547b-a819-245a4f957f57', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b7e8f7b9-7e45-5882-881b-6de00a405c9e', 1), 'efbd1c4defe41e98f00198f173e60da388844c9d799a08b78f51ac94d47b77fa',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ae1ea1ec6fa5889813b0f8d7081baed4e1bde2b430acc0f28d36f8a67cc35f4e.mp3', 1097, '2026-09-13 07:35:36.934262', '6f96a21732b910f4dfb6a476f4d7cefb72abc3fad98f427c741f556bbc6154ce', 'validated', '{"audio_key":"ae1ea1ec6fa5889813b0f8d7081baed4e1bde2b430acc0f28d36f8a67cc35f4e","entity_key":"wf_instructions_notices_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6f96a21732b910f4dfb6a476f4d7cefb72abc3fad98f427c741f556bbc6154ce","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ae1ea1ec6fa5889813b0f8d7081baed4e1bde2b430acc0f28d36f8a67cc35f4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_summarizing_relaying_06 -> audio/generated/de-DE/lexical/b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2534d15b-8d91-5d1f-8c9e-10a85be492d6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_summarizing_relaying_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0378894a522e5f0776685b9689937098a0d2116d1e4b8d998554f804d9f1b9bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8e60eed-96d7-5acb-a58c-cbc6a8a661d3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2534d15b-8d91-5d1f-8c9e-10a85be492d6', 1), '0378894a522e5f0776685b9689937098a0d2116d1e4b8d998554f804d9f1b9bc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72.mp3', 1071, '2026-09-13 06:43:09.408413', '08c4db2a84bacfaabe088604a5245cfb81806346489be1355b6e255ec1e0340d', 'validated', '{"audio_key":"b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72","entity_key":"lx_summarizing_relaying_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08c4db2a84bacfaabe088604a5245cfb81806346489be1355b6e255ec1e0340d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_summarizing_relaying_06 -> audio/generated/de-DE/lexical/b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9e6027a0-8f7f-53c9-abfe-8094dc26e62a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_summarizing_relaying_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0378894a522e5f0776685b9689937098a0d2116d1e4b8d998554f804d9f1b9bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d89e532e-1081-57c5-beef-1de27d83fc68', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9e6027a0-8f7f-53c9-abfe-8094dc26e62a', 1), '0378894a522e5f0776685b9689937098a0d2116d1e4b8d998554f804d9f1b9bc',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72.mp3', 1071, '2026-09-13 06:43:09.408413', '08c4db2a84bacfaabe088604a5245cfb81806346489be1355b6e255ec1e0340d', 'validated', '{"audio_key":"b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72","entity_key":"wf_summarizing_relaying_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08c4db2a84bacfaabe088604a5245cfb81806346489be1355b6e255ec1e0340d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b61f61fb5e95343c26c072cfca3ead55f94cdd6455a06f52144b86570272cb72.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_integrated_capstone_05 -> audio/generated/de-DE/lexical/b6bd7f9e8725f2abffe90ea51e2d3d0e9f1b71686aee903a88f13d2c5dee93e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8f36ae77-cd95-5921-85c2-247aa16e1052', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_integrated_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84b5bbbb43d143e6c057d492c920a2cce5fb810899065193ba5b46fdb80a97de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b91b2c85-aeb2-5fc7-9977-cfb89a0ba76a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8f36ae77-cd95-5921-85c2-247aa16e1052', 1), '84b5bbbb43d143e6c057d492c920a2cce5fb810899065193ba5b46fdb80a97de',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b6bd7f9e8725f2abffe90ea51e2d3d0e9f1b71686aee903a88f13d2c5dee93e1.mp3', 1018, '2026-09-13 06:17:40.823775', '8c2e1aff18a67d72ba8fd668e12c1b893cdd9bba6c33a2a2d81b0d61a0b35f39', 'validated', '{"audio_key":"b6bd7f9e8725f2abffe90ea51e2d3d0e9f1b71686aee903a88f13d2c5dee93e1","entity_key":"lx_integrated_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8c2e1aff18a67d72ba8fd668e12c1b893cdd9bba6c33a2a2d81b0d61a0b35f39","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b6bd7f9e8725f2abffe90ea51e2d3d0e9f1b71686aee903a88f13d2c5dee93e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_integrated_capstone_05 -> audio/generated/de-DE/lexical/b6bd7f9e8725f2abffe90ea51e2d3d0e9f1b71686aee903a88f13d2c5dee93e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b4dc89d4-a766-5482-beb3-a4ebf6473b56', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_integrated_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84b5bbbb43d143e6c057d492c920a2cce5fb810899065193ba5b46fdb80a97de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60bcba88-d116-5285-bae1-432763cdea8a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b4dc89d4-a766-5482-beb3-a4ebf6473b56', 1), '84b5bbbb43d143e6c057d492c920a2cce5fb810899065193ba5b46fdb80a97de',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b6bd7f9e8725f2abffe90ea51e2d3d0e9f1b71686aee903a88f13d2c5dee93e1.mp3', 1018, '2026-09-13 06:17:40.823775', '8c2e1aff18a67d72ba8fd668e12c1b893cdd9bba6c33a2a2d81b0d61a0b35f39', 'validated', '{"audio_key":"b6bd7f9e8725f2abffe90ea51e2d3d0e9f1b71686aee903a88f13d2c5dee93e1","entity_key":"wf_integrated_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8c2e1aff18a67d72ba8fd668e12c1b893cdd9bba6c33a2a2d81b0d61a0b35f39","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b6bd7f9e8725f2abffe90ea51e2d3d0e9f1b71686aee903a88f13d2c5dee93e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_practical_writing_06 -> audio/generated/de-DE/lexical/b774579dada5e890b6281ce8c6346c8b570ba5249b691a3df18a0fc546d94968.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('834121a4-f261-5232-9471-638014f0f701', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_practical_writing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '790dfe7ef7d6af28fa60572bd57fdc86c88c064c1d9ed61f595637190dc36280'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('27b8e131-e3d0-5818-b26c-ddc9ba8fac57', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('834121a4-f261-5232-9471-638014f0f701', 1), '790dfe7ef7d6af28fa60572bd57fdc86c88c064c1d9ed61f595637190dc36280',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b774579dada5e890b6281ce8c6346c8b570ba5249b691a3df18a0fc546d94968.mp3', 1071, '2026-09-13 07:35:38.004826', '9f13c40537f9179447ac3dabd01c412baf7a431dc80810b717245664d1d0ae8b', 'validated', '{"audio_key":"b774579dada5e890b6281ce8c6346c8b570ba5249b691a3df18a0fc546d94968","entity_key":"lx_practical_writing_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9f13c40537f9179447ac3dabd01c412baf7a431dc80810b717245664d1d0ae8b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b774579dada5e890b6281ce8c6346c8b570ba5249b691a3df18a0fc546d94968.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_practical_writing_06 -> audio/generated/de-DE/lexical/b774579dada5e890b6281ce8c6346c8b570ba5249b691a3df18a0fc546d94968.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2b6d0038-172f-5b56-a8b7-1314bc434cd8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_practical_writing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '790dfe7ef7d6af28fa60572bd57fdc86c88c064c1d9ed61f595637190dc36280'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('509ed1ec-1f0e-55e1-8a13-cb8b87027b6b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2b6d0038-172f-5b56-a8b7-1314bc434cd8', 1), '790dfe7ef7d6af28fa60572bd57fdc86c88c064c1d9ed61f595637190dc36280',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b774579dada5e890b6281ce8c6346c8b570ba5249b691a3df18a0fc546d94968.mp3', 1071, '2026-09-13 07:35:38.004826', '9f13c40537f9179447ac3dabd01c412baf7a431dc80810b717245664d1d0ae8b', 'validated', '{"audio_key":"b774579dada5e890b6281ce8c6346c8b570ba5249b691a3df18a0fc546d94968","entity_key":"wf_practical_writing_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9f13c40537f9179447ac3dabd01c412baf7a431dc80810b717245664d1d0ae8b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b774579dada5e890b6281ce8c6346c8b570ba5249b691a3df18a0fc546d94968.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_instructions_notices_04 -> audio/generated/de-DE/lexical/bb7ff72ba8d027329c77e1d2f812b941d3a6ac1ddfa94be87134db0006ce3b26.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9c387bd2-f561-5308-8897-8750667a7853', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_instructions_notices_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cbeaf468807911402bc26f0fe0f8d1b6c70c38bac6d253c9a0d40db79d3276ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d612af5b-b050-52be-a562-8c20aee24b9f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9c387bd2-f561-5308-8897-8750667a7853', 1), 'cbeaf468807911402bc26f0fe0f8d1b6c70c38bac6d253c9a0d40db79d3276ef',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bb7ff72ba8d027329c77e1d2f812b941d3a6ac1ddfa94be87134db0006ce3b26.mp3', 1201, '2026-09-13 07:35:37.946089', 'e355152f9b4eefdcbec6da2d3bde96455b519f9a6f2059c7cb94f4a98043463b', 'validated', '{"audio_key":"bb7ff72ba8d027329c77e1d2f812b941d3a6ac1ddfa94be87134db0006ce3b26","entity_key":"lx_instructions_notices_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e355152f9b4eefdcbec6da2d3bde96455b519f9a6f2059c7cb94f4a98043463b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bb7ff72ba8d027329c77e1d2f812b941d3a6ac1ddfa94be87134db0006ce3b26.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_instructions_notices_04 -> audio/generated/de-DE/lexical/bb7ff72ba8d027329c77e1d2f812b941d3a6ac1ddfa94be87134db0006ce3b26.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8cce4c48-079b-5434-9549-5fb167f5c790', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_instructions_notices_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cbeaf468807911402bc26f0fe0f8d1b6c70c38bac6d253c9a0d40db79d3276ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d7da4a58-6095-59fb-a82a-666be1205c25', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8cce4c48-079b-5434-9549-5fb167f5c790', 1), 'cbeaf468807911402bc26f0fe0f8d1b6c70c38bac6d253c9a0d40db79d3276ef',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/bb7ff72ba8d027329c77e1d2f812b941d3a6ac1ddfa94be87134db0006ce3b26.mp3', 1201, '2026-09-13 07:35:37.946089', 'e355152f9b4eefdcbec6da2d3bde96455b519f9a6f2059c7cb94f4a98043463b', 'validated', '{"audio_key":"bb7ff72ba8d027329c77e1d2f812b941d3a6ac1ddfa94be87134db0006ce3b26","entity_key":"wf_instructions_notices_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e355152f9b4eefdcbec6da2d3bde96455b519f9a6f2059c7cb94f4a98043463b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/bb7ff72ba8d027329c77e1d2f812b941d3a6ac1ddfa94be87134db0006ce3b26.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_instructions_notices_06 -> audio/generated/de-DE/lexical/c26e6e80c01299655b78d3ed49a81eef255b42e35a430960a4f2d32c9326508a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f8fc0fa6-2c06-5c75-a9e6-ab7a6268a025', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_instructions_notices_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '87b71a8aab9d6e1dc9d85449c2c0bf2b1a9fbbdd179eaeba027a1659469b1225'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('178812cc-9105-553f-9113-ad053d034d78', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f8fc0fa6-2c06-5c75-a9e6-ab7a6268a025', 1), '87b71a8aab9d6e1dc9d85449c2c0bf2b1a9fbbdd179eaeba027a1659469b1225',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c26e6e80c01299655b78d3ed49a81eef255b42e35a430960a4f2d32c9326508a.mp3', 1018, '2026-09-13 07:35:38.943881', 'f4e57eabdce5aa241bc8e4ae13a06765d6de9fdeb7d43f664771e44583416bc3', 'validated', '{"audio_key":"c26e6e80c01299655b78d3ed49a81eef255b42e35a430960a4f2d32c9326508a","entity_key":"lx_instructions_notices_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f4e57eabdce5aa241bc8e4ae13a06765d6de9fdeb7d43f664771e44583416bc3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c26e6e80c01299655b78d3ed49a81eef255b42e35a430960a4f2d32c9326508a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_instructions_notices_06 -> audio/generated/de-DE/lexical/c26e6e80c01299655b78d3ed49a81eef255b42e35a430960a4f2d32c9326508a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4545a273-3c41-5301-820f-4b4fc98a9c8d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_instructions_notices_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '87b71a8aab9d6e1dc9d85449c2c0bf2b1a9fbbdd179eaeba027a1659469b1225'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31973305-c506-55d8-ace7-5c62e14d41be', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4545a273-3c41-5301-820f-4b4fc98a9c8d', 1), '87b71a8aab9d6e1dc9d85449c2c0bf2b1a9fbbdd179eaeba027a1659469b1225',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c26e6e80c01299655b78d3ed49a81eef255b42e35a430960a4f2d32c9326508a.mp3', 1018, '2026-09-13 07:35:38.943881', 'f4e57eabdce5aa241bc8e4ae13a06765d6de9fdeb7d43f664771e44583416bc3', 'validated', '{"audio_key":"c26e6e80c01299655b78d3ed49a81eef255b42e35a430960a4f2d32c9326508a","entity_key":"wf_instructions_notices_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f4e57eabdce5aa241bc8e4ae13a06765d6de9fdeb7d43f664771e44583416bc3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c26e6e80c01299655b78d3ed49a81eef255b42e35a430960a4f2d32c9326508a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_integrated_capstone_06 -> audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('13a4e15d-c6ea-532c-8552-ecd9cecab2e9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_integrated_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0c6eac052cca4b9a1320e01e7d1df7b9990d69eb059846ce2be8cf9e95bf295'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13a2ebf2-ace9-5fad-9a1f-2af88061d174', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('13a4e15d-c6ea-532c-8552-ecd9cecab2e9', 1), 'f0c6eac052cca4b9a1320e01e7d1df7b9990d69eb059846ce2be8cf9e95bf295',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3', 1097, '2026-09-13 05:30:52.107960', '51a1578b05eb61c498d6a8e3dd9a4d199f475f12a15020995d913e5f32c444ca', 'validated', '{"audio_key":"c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9","entity_key":"lx_integrated_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"51a1578b05eb61c498d6a8e3dd9a4d199f475f12a15020995d913e5f32c444ca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_integrated_capstone_06 -> audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d73af3f1-2b40-5762-9959-208ea7807bb0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_integrated_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0c6eac052cca4b9a1320e01e7d1df7b9990d69eb059846ce2be8cf9e95bf295'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9751144-463e-5692-9134-a1c1fa8d8562', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d73af3f1-2b40-5762-9959-208ea7807bb0', 1), 'f0c6eac052cca4b9a1320e01e7d1df7b9990d69eb059846ce2be8cf9e95bf295',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3', 1097, '2026-09-13 05:30:52.107960', '51a1578b05eb61c498d6a8e3dd9a4d199f475f12a15020995d913e5f32c444ca', 'validated', '{"audio_key":"c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9","entity_key":"wf_integrated_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"51a1578b05eb61c498d6a8e3dd9a4d199f475f12a15020995d913e5f32c444ca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_practical_writing_04 -> audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('13a4e15d-c6ea-532c-8552-ecd9cecab2e9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_practical_writing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0c6eac052cca4b9a1320e01e7d1df7b9990d69eb059846ce2be8cf9e95bf295'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13a2ebf2-ace9-5fad-9a1f-2af88061d174', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('13a4e15d-c6ea-532c-8552-ecd9cecab2e9', 1), 'f0c6eac052cca4b9a1320e01e7d1df7b9990d69eb059846ce2be8cf9e95bf295',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3', 1097, '2026-09-13 05:30:52.107960', '51a1578b05eb61c498d6a8e3dd9a4d199f475f12a15020995d913e5f32c444ca', 'validated', '{"audio_key":"c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9","entity_key":"lx_practical_writing_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"51a1578b05eb61c498d6a8e3dd9a4d199f475f12a15020995d913e5f32c444ca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_practical_writing_04 -> audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bffff65c-1cdf-56ac-aaf8-0e69e22008ac', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_practical_writing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0c6eac052cca4b9a1320e01e7d1df7b9990d69eb059846ce2be8cf9e95bf295'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3f83612-71e2-5e24-a74f-8aa62060bc84', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bffff65c-1cdf-56ac-aaf8-0e69e22008ac', 1), 'f0c6eac052cca4b9a1320e01e7d1df7b9990d69eb059846ce2be8cf9e95bf295',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3', 1097, '2026-09-13 05:30:52.107960', '51a1578b05eb61c498d6a8e3dd9a4d199f475f12a15020995d913e5f32c444ca', 'validated', '{"audio_key":"c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9","entity_key":"wf_practical_writing_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"51a1578b05eb61c498d6a8e3dd9a4d199f475f12a15020995d913e5f32c444ca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c7beea14e8096b6bbb3596f4f1b5941108f312baff697257708310b827df1da9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_summarizing_relaying_04 -> audio/generated/de-DE/lexical/cc33860e70efcd415e059bddf3e78f7bfc604f707b651e4c6539ab3410f0fe1a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('144a5cf0-d6aa-5a1f-9aba-8c069b83e217', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_summarizing_relaying_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eed72ce13e0ba6cf0263358ac70f2434f26b9c99be4c8a2a94911a0843ccd84b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e962afd-6c51-54ba-93d6-7c2a0eee2c5c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('144a5cf0-d6aa-5a1f-9aba-8c069b83e217', 1), 'eed72ce13e0ba6cf0263358ac70f2434f26b9c99be4c8a2a94911a0843ccd84b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cc33860e70efcd415e059bddf3e78f7bfc604f707b651e4c6539ab3410f0fe1a.mp3', 1018, '2026-09-13 07:35:38.977217', 'd43893ee70dd755e1b176e6e75bb25dc1fe7ded21023bc30526495adbe614853', 'validated', '{"audio_key":"cc33860e70efcd415e059bddf3e78f7bfc604f707b651e4c6539ab3410f0fe1a","entity_key":"lx_summarizing_relaying_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d43893ee70dd755e1b176e6e75bb25dc1fe7ded21023bc30526495adbe614853","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cc33860e70efcd415e059bddf3e78f7bfc604f707b651e4c6539ab3410f0fe1a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_summarizing_relaying_04 -> audio/generated/de-DE/lexical/cc33860e70efcd415e059bddf3e78f7bfc604f707b651e4c6539ab3410f0fe1a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('58212240-e877-5ef9-92a0-cc924ff46dcd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_summarizing_relaying_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eed72ce13e0ba6cf0263358ac70f2434f26b9c99be4c8a2a94911a0843ccd84b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e13cc3ad-e069-5254-a702-c3d996765a41', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('58212240-e877-5ef9-92a0-cc924ff46dcd', 1), 'eed72ce13e0ba6cf0263358ac70f2434f26b9c99be4c8a2a94911a0843ccd84b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/cc33860e70efcd415e059bddf3e78f7bfc604f707b651e4c6539ab3410f0fe1a.mp3', 1018, '2026-09-13 07:35:38.977217', 'd43893ee70dd755e1b176e6e75bb25dc1fe7ded21023bc30526495adbe614853', 'validated', '{"audio_key":"cc33860e70efcd415e059bddf3e78f7bfc604f707b651e4c6539ab3410f0fe1a","entity_key":"wf_summarizing_relaying_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d43893ee70dd755e1b176e6e75bb25dc1fe7ded21023bc30526495adbe614853","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/cc33860e70efcd415e059bddf3e78f7bfc604f707b651e4c6539ab3410f0fe1a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_explaining_presenting_01 -> audio/generated/de-DE/lexical/ceb98f646ceb3b4724aa65b135f445b33a1b0916f59ecec2e067d2d0340b6a8f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dc2a2d88-8834-5646-9450-42cc8933820d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_explaining_presenting_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '282126cc1ab395f548572767ee4e4f136f2d9b186eba34a78c4806e17e4d3155'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75d6663d-b3e7-55f7-bc5c-74870b73b274', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dc2a2d88-8834-5646-9450-42cc8933820d', 1), '282126cc1ab395f548572767ee4e4f136f2d9b186eba34a78c4806e17e4d3155',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ceb98f646ceb3b4724aa65b135f445b33a1b0916f59ecec2e067d2d0340b6a8f.mp3', 1018, '2026-09-13 07:35:39.981339', 'c6e0557de1ac499b62eef9f7326f053ee9e53e1e27ca2f3293c90a3dfac8772d', 'validated', '{"audio_key":"ceb98f646ceb3b4724aa65b135f445b33a1b0916f59ecec2e067d2d0340b6a8f","entity_key":"lx_explaining_presenting_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c6e0557de1ac499b62eef9f7326f053ee9e53e1e27ca2f3293c90a3dfac8772d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ceb98f646ceb3b4724aa65b135f445b33a1b0916f59ecec2e067d2d0340b6a8f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_explaining_presenting_01 -> audio/generated/de-DE/lexical/ceb98f646ceb3b4724aa65b135f445b33a1b0916f59ecec2e067d2d0340b6a8f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e74fdf68-ce91-5620-83e6-96afbdd839cf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_explaining_presenting_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '282126cc1ab395f548572767ee4e4f136f2d9b186eba34a78c4806e17e4d3155'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8011a1ac-e29a-58cc-bfa5-9b61cc09b799', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e74fdf68-ce91-5620-83e6-96afbdd839cf', 1), '282126cc1ab395f548572767ee4e4f136f2d9b186eba34a78c4806e17e4d3155',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ceb98f646ceb3b4724aa65b135f445b33a1b0916f59ecec2e067d2d0340b6a8f.mp3', 1018, '2026-09-13 07:35:39.981339', 'c6e0557de1ac499b62eef9f7326f053ee9e53e1e27ca2f3293c90a3dfac8772d', 'validated', '{"audio_key":"ceb98f646ceb3b4724aa65b135f445b33a1b0916f59ecec2e067d2d0340b6a8f","entity_key":"wf_explaining_presenting_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c6e0557de1ac499b62eef9f7326f053ee9e53e1e27ca2f3293c90a3dfac8772d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ceb98f646ceb3b4724aa65b135f445b33a1b0916f59ecec2e067d2d0340b6a8f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_summarizing_relaying_01 -> audio/generated/de-DE/lexical/d6657a37cf457998f4533acd9c4b7febab3020f7d95dc912af3b99dcb5f9211d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1781e9df-9c73-55b6-bea7-d7c2cb70eb66', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_summarizing_relaying_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de6f1c1dbf951be82f7bf942b78174f8b38c32f9919bfa4ad04e86282761bc6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('15dca7dd-b2c5-59a1-97fd-01838d3f4a46', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1781e9df-9c73-55b6-bea7-d7c2cb70eb66', 1), 'de6f1c1dbf951be82f7bf942b78174f8b38c32f9919bfa4ad04e86282761bc6a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d6657a37cf457998f4533acd9c4b7febab3020f7d95dc912af3b99dcb5f9211d.mp3', 1280, '2026-09-13 07:35:39.989058', '88160845e51380d53a555a4ed6c759a6ab696d8d522954aec344aa1517ca1346', 'validated', '{"audio_key":"d6657a37cf457998f4533acd9c4b7febab3020f7d95dc912af3b99dcb5f9211d","entity_key":"lx_summarizing_relaying_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"88160845e51380d53a555a4ed6c759a6ab696d8d522954aec344aa1517ca1346","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d6657a37cf457998f4533acd9c4b7febab3020f7d95dc912af3b99dcb5f9211d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_summarizing_relaying_01 -> audio/generated/de-DE/lexical/d6657a37cf457998f4533acd9c4b7febab3020f7d95dc912af3b99dcb5f9211d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('83aafcce-5395-5720-bebe-276cfa1b39aa', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_summarizing_relaying_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de6f1c1dbf951be82f7bf942b78174f8b38c32f9919bfa4ad04e86282761bc6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2deb0da1-5ae5-5d48-b228-f687ab897312', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('83aafcce-5395-5720-bebe-276cfa1b39aa', 1), 'de6f1c1dbf951be82f7bf942b78174f8b38c32f9919bfa4ad04e86282761bc6a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d6657a37cf457998f4533acd9c4b7febab3020f7d95dc912af3b99dcb5f9211d.mp3', 1280, '2026-09-13 07:35:39.989058', '88160845e51380d53a555a4ed6c759a6ab696d8d522954aec344aa1517ca1346', 'validated', '{"audio_key":"d6657a37cf457998f4533acd9c4b7febab3020f7d95dc912af3b99dcb5f9211d","entity_key":"wf_summarizing_relaying_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"88160845e51380d53a555a4ed6c759a6ab696d8d522954aec344aa1517ca1346","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d6657a37cf457998f4533acd9c4b7febab3020f7d95dc912af3b99dcb5f9211d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_explaining_presenting_02 -> audio/generated/de-DE/lexical/d6dfb3b378a6d56fa435eb5ceadbf01f8ed6f63bbe88cbaf1fc038e1ae6e57f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1dbd3098-efd3-53fd-94f5-697ba8a80580', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_explaining_presenting_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8816aa9291e019184b34b38303add84c24512ef64b601034b634534d408b594d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6cee0c44-b269-500f-98a3-adc22a55c7f2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1dbd3098-efd3-53fd-94f5-697ba8a80580', 1), '8816aa9291e019184b34b38303add84c24512ef64b601034b634534d408b594d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d6dfb3b378a6d56fa435eb5ceadbf01f8ed6f63bbe88cbaf1fc038e1ae6e57f8.mp3', 1253, '2026-09-13 07:35:40.993678', 'f0f37a4aeb6bf86af8523619cec20c3b9738eceb4968f5688649e61874394f77', 'validated', '{"audio_key":"d6dfb3b378a6d56fa435eb5ceadbf01f8ed6f63bbe88cbaf1fc038e1ae6e57f8","entity_key":"lx_explaining_presenting_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f0f37a4aeb6bf86af8523619cec20c3b9738eceb4968f5688649e61874394f77","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d6dfb3b378a6d56fa435eb5ceadbf01f8ed6f63bbe88cbaf1fc038e1ae6e57f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_explaining_presenting_02 -> audio/generated/de-DE/lexical/d6dfb3b378a6d56fa435eb5ceadbf01f8ed6f63bbe88cbaf1fc038e1ae6e57f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('58963f20-8896-51ad-a1a4-3d217e3ddb92', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_explaining_presenting_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8816aa9291e019184b34b38303add84c24512ef64b601034b634534d408b594d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3710b16f-ddca-56af-8c4d-c5660ce1a723', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('58963f20-8896-51ad-a1a4-3d217e3ddb92', 1), '8816aa9291e019184b34b38303add84c24512ef64b601034b634534d408b594d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d6dfb3b378a6d56fa435eb5ceadbf01f8ed6f63bbe88cbaf1fc038e1ae6e57f8.mp3', 1253, '2026-09-13 07:35:40.993678', 'f0f37a4aeb6bf86af8523619cec20c3b9738eceb4968f5688649e61874394f77', 'validated', '{"audio_key":"d6dfb3b378a6d56fa435eb5ceadbf01f8ed6f63bbe88cbaf1fc038e1ae6e57f8","entity_key":"wf_explaining_presenting_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f0f37a4aeb6bf86af8523619cec20c3b9738eceb4968f5688649e61874394f77","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d6dfb3b378a6d56fa435eb5ceadbf01f8ed6f63bbe88cbaf1fc038e1ae6e57f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_explaining_presenting_05 -> audio/generated/de-DE/lexical/dbd9e334dc6f39f9a170a30edea3485383d1def3affaf97f7d3bb27ea9b61723.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('86e925ea-823a-5f89-abab-c93c267a9c52', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_explaining_presenting_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9fceb737bd6b579c4848282fdc75113960203b0b720677d4891c83bd4be5719a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('97177c9e-be69-5784-96c3-8d74ba02c9f9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('86e925ea-823a-5f89-abab-c93c267a9c52', 1), '9fceb737bd6b579c4848282fdc75113960203b0b720677d4891c83bd4be5719a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/dbd9e334dc6f39f9a170a30edea3485383d1def3affaf97f7d3bb27ea9b61723.mp3', 1097, '2026-09-13 07:35:41.120132', 'ee15e3feff2a578ece58b16d89d34135eb7088616672e60000fa1a3a7eb8c556', 'validated', '{"audio_key":"dbd9e334dc6f39f9a170a30edea3485383d1def3affaf97f7d3bb27ea9b61723","entity_key":"lx_explaining_presenting_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ee15e3feff2a578ece58b16d89d34135eb7088616672e60000fa1a3a7eb8c556","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/dbd9e334dc6f39f9a170a30edea3485383d1def3affaf97f7d3bb27ea9b61723.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_explaining_presenting_05 -> audio/generated/de-DE/lexical/dbd9e334dc6f39f9a170a30edea3485383d1def3affaf97f7d3bb27ea9b61723.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7cf28a72-9129-5e5f-a149-02b6e2841eef', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_explaining_presenting_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9fceb737bd6b579c4848282fdc75113960203b0b720677d4891c83bd4be5719a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6770bdf-4a44-5e60-b62b-dd33641fd186', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7cf28a72-9129-5e5f-a149-02b6e2841eef', 1), '9fceb737bd6b579c4848282fdc75113960203b0b720677d4891c83bd4be5719a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/dbd9e334dc6f39f9a170a30edea3485383d1def3affaf97f7d3bb27ea9b61723.mp3', 1097, '2026-09-13 07:35:41.120132', 'ee15e3feff2a578ece58b16d89d34135eb7088616672e60000fa1a3a7eb8c556', 'validated', '{"audio_key":"dbd9e334dc6f39f9a170a30edea3485383d1def3affaf97f7d3bb27ea9b61723","entity_key":"wf_explaining_presenting_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ee15e3feff2a578ece58b16d89d34135eb7088616672e60000fa1a3a7eb8c556","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/dbd9e334dc6f39f9a170a30edea3485383d1def3affaf97f7d3bb27ea9b61723.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_practical_writing_01 -> audio/generated/de-DE/lexical/e41c7ca8a8994be2eb79197bc830d4096e7c514ca3765b731c481166bac8c485.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9dddb425-36d6-5769-a4cd-bdfd7688aabf', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_practical_writing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec93bf68500700accd4d21f214b9266a9ad51dc9d7e9396a205ea8a8a4689b3c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ede0e969-6214-5609-ba36-4d355eec4d6d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9dddb425-36d6-5769-a4cd-bdfd7688aabf', 1), 'ec93bf68500700accd4d21f214b9266a9ad51dc9d7e9396a205ea8a8a4689b3c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e41c7ca8a8994be2eb79197bc830d4096e7c514ca3765b731c481166bac8c485.mp3', 1018, '2026-09-13 07:35:41.987372', '930c0198eda32b50c7bb0ef89d1d20e4fa18e55d234a0e53a8a85939a4abd458', 'validated', '{"audio_key":"e41c7ca8a8994be2eb79197bc830d4096e7c514ca3765b731c481166bac8c485","entity_key":"lx_practical_writing_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"930c0198eda32b50c7bb0ef89d1d20e4fa18e55d234a0e53a8a85939a4abd458","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e41c7ca8a8994be2eb79197bc830d4096e7c514ca3765b731c481166bac8c485.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_practical_writing_01 -> audio/generated/de-DE/lexical/e41c7ca8a8994be2eb79197bc830d4096e7c514ca3765b731c481166bac8c485.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3d383072-48f9-53fb-bdc3-f70a189a9dee', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_practical_writing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec93bf68500700accd4d21f214b9266a9ad51dc9d7e9396a205ea8a8a4689b3c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a9190b7-2927-55bf-af47-8d140c4ffb83', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3d383072-48f9-53fb-bdc3-f70a189a9dee', 1), 'ec93bf68500700accd4d21f214b9266a9ad51dc9d7e9396a205ea8a8a4689b3c',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e41c7ca8a8994be2eb79197bc830d4096e7c514ca3765b731c481166bac8c485.mp3', 1018, '2026-09-13 07:35:41.987372', '930c0198eda32b50c7bb0ef89d1d20e4fa18e55d234a0e53a8a85939a4abd458', 'validated', '{"audio_key":"e41c7ca8a8994be2eb79197bc830d4096e7c514ca3765b731c481166bac8c485","entity_key":"wf_practical_writing_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"930c0198eda32b50c7bb0ef89d1d20e4fa18e55d234a0e53a8a85939a4abd458","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e41c7ca8a8994be2eb79197bc830d4096e7c514ca3765b731c481166bac8c485.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_instructions_notices_03 -> audio/generated/de-DE/lexical/eba26c61c0544131d66ac0c270b4bc9e507264a8a0db6229f4177ad246230719.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d2606831-c97a-5632-a6a0-21f1c9bf2eac', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_instructions_notices_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c023de1beef1f3ef954100a21c587cfb0bbf01a5a24c431616b5eb69770ca83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36ad821a-467d-548e-95d8-e4bf8bd4bbca', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d2606831-c97a-5632-a6a0-21f1c9bf2eac', 1), '7c023de1beef1f3ef954100a21c587cfb0bbf01a5a24c431616b5eb69770ca83',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/eba26c61c0544131d66ac0c270b4bc9e507264a8a0db6229f4177ad246230719.mp3', 1071, '2026-09-13 07:35:42.345465', 'e5d38eca224893dd4405d7394625162dba1de2259845e79d96c5899d304672cd', 'validated', '{"audio_key":"eba26c61c0544131d66ac0c270b4bc9e507264a8a0db6229f4177ad246230719","entity_key":"lx_instructions_notices_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e5d38eca224893dd4405d7394625162dba1de2259845e79d96c5899d304672cd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/eba26c61c0544131d66ac0c270b4bc9e507264a8a0db6229f4177ad246230719.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_instructions_notices_03 -> audio/generated/de-DE/lexical/eba26c61c0544131d66ac0c270b4bc9e507264a8a0db6229f4177ad246230719.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('19a5de5c-40ef-56bd-93d7-a7218bf212d4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_instructions_notices_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c023de1beef1f3ef954100a21c587cfb0bbf01a5a24c431616b5eb69770ca83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('55dd4ec3-482a-56cc-980d-b5db0fad0b28', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('19a5de5c-40ef-56bd-93d7-a7218bf212d4', 1), '7c023de1beef1f3ef954100a21c587cfb0bbf01a5a24c431616b5eb69770ca83',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/eba26c61c0544131d66ac0c270b4bc9e507264a8a0db6229f4177ad246230719.mp3', 1071, '2026-09-13 07:35:42.345465', 'e5d38eca224893dd4405d7394625162dba1de2259845e79d96c5899d304672cd', 'validated', '{"audio_key":"eba26c61c0544131d66ac0c270b4bc9e507264a8a0db6229f4177ad246230719","entity_key":"wf_instructions_notices_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e5d38eca224893dd4405d7394625162dba1de2259845e79d96c5899d304672cd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/eba26c61c0544131d66ac0c270b4bc9e507264a8a0db6229f4177ad246230719.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_explaining_presenting_03 -> audio/generated/de-DE/lexical/ec38fd346d624f4408d04c63e618fe07a9ecb632ac65eacc8b4c833ed163bdbd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7aab489c-5c0e-5716-a93c-d2d0ce720e25', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_explaining_presenting_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1411feb7760ece268d9801e2d6aa5c405c7088c5e53d4ba11511dc22d6becd05'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b64d81e4-0f63-54cd-b067-0c3802888c14', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7aab489c-5c0e-5716-a93c-d2d0ce720e25', 1), '1411feb7760ece268d9801e2d6aa5c405c7088c5e53d4ba11511dc22d6becd05',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ec38fd346d624f4408d04c63e618fe07a9ecb632ac65eacc8b4c833ed163bdbd.mp3', 1018, '2026-09-13 07:35:42.996100', 'c44130c942edd79e2e1b10f05ba1de1e05853d4a7b3b30828a9d75acf004bc23', 'validated', '{"audio_key":"ec38fd346d624f4408d04c63e618fe07a9ecb632ac65eacc8b4c833ed163bdbd","entity_key":"lx_explaining_presenting_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c44130c942edd79e2e1b10f05ba1de1e05853d4a7b3b30828a9d75acf004bc23","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ec38fd346d624f4408d04c63e618fe07a9ecb632ac65eacc8b4c833ed163bdbd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_explaining_presenting_03 -> audio/generated/de-DE/lexical/ec38fd346d624f4408d04c63e618fe07a9ecb632ac65eacc8b4c833ed163bdbd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d94ac22a-7380-5041-85f4-5d613c4545c7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_explaining_presenting_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1411feb7760ece268d9801e2d6aa5c405c7088c5e53d4ba11511dc22d6becd05'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32f20c40-3b7e-57ab-a883-18cdd05903d9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d94ac22a-7380-5041-85f4-5d613c4545c7', 1), '1411feb7760ece268d9801e2d6aa5c405c7088c5e53d4ba11511dc22d6becd05',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ec38fd346d624f4408d04c63e618fe07a9ecb632ac65eacc8b4c833ed163bdbd.mp3', 1018, '2026-09-13 07:35:42.996100', 'c44130c942edd79e2e1b10f05ba1de1e05853d4a7b3b30828a9d75acf004bc23', 'validated', '{"audio_key":"ec38fd346d624f4408d04c63e618fe07a9ecb632ac65eacc8b4c833ed163bdbd","entity_key":"wf_explaining_presenting_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c44130c942edd79e2e1b10f05ba1de1e05853d4a7b3b30828a9d75acf004bc23","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ec38fd346d624f4408d04c63e618fe07a9ecb632ac65eacc8b4c833ed163bdbd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_practical_writing_06 -> audio/generated/de-DE/utterances/067a7d71208653b98247f4d33c1ff8ccf6291c5ba8d2f3254d66c7360c0452b9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a7a1553f-4b4a-5f40-8341-131d32dfd69d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_practical_writing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a2012563ee7ef7ce413096f78502e0fec03336784e1a5f10fc80e3e48ac92d4b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b44370a-4096-5882-b364-28de5fda8633', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a7a1553f-4b4a-5f40-8341-131d32dfd69d', 1), 'a2012563ee7ef7ce413096f78502e0fec03336784e1a5f10fc80e3e48ac92d4b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/067a7d71208653b98247f4d33c1ff8ccf6291c5ba8d2f3254d66c7360c0452b9.mp3', 4493, '2026-09-13 07:35:43.703767', '431715e075ddb86ee24c46b968a6b1e1cf204001454c46a9346ffe413053b3d0', 'validated', '{"audio_key":"067a7d71208653b98247f4d33c1ff8ccf6291c5ba8d2f3254d66c7360c0452b9","entity_key":"u_practical_writing_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"431715e075ddb86ee24c46b968a6b1e1cf204001454c46a9346ffe413053b3d0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/067a7d71208653b98247f4d33c1ff8ccf6291c5ba8d2f3254d66c7360c0452b9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_integrated_capstone_02 -> audio/generated/de-DE/utterances/0c0a981de5359860d4ab8a03c3aa7b75a28a9958927c40abeba342e7e0da2861.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4884dbf1-4066-5e4f-84be-df3706fe04a3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_integrated_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0e2f54be3c7715b645c0dd05cd53840f3e848a0b80286de1a1fe303d9ad7e856'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('82ac5460-eae0-5ca3-b466-4be900cb40a5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4884dbf1-4066-5e4f-84be-df3706fe04a3', 1), '0e2f54be3c7715b645c0dd05cd53840f3e848a0b80286de1a1fe303d9ad7e856',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0c0a981de5359860d4ab8a03c3aa7b75a28a9958927c40abeba342e7e0da2861.mp3', 4858, '2026-09-13 07:35:44.425995', 'b8a5980dd41bb578329a0d49b915c23e69eb96e35076a31e9c372452e4580288', 'validated', '{"audio_key":"0c0a981de5359860d4ab8a03c3aa7b75a28a9958927c40abeba342e7e0da2861","entity_key":"u_integrated_capstone_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b8a5980dd41bb578329a0d49b915c23e69eb96e35076a31e9c372452e4580288","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0c0a981de5359860d4ab8a03c3aa7b75a28a9958927c40abeba342e7e0da2861.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_instructions_notices_01 -> audio/generated/de-DE/utterances/0e0f66183c4d781a8b015078b28dbd6b333da4f845634db3cd2b31abd731315f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('807f5869-ebd1-5de2-9a23-882b824bf0aa', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_instructions_notices_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '607d82403e7855902dd575247361c2089aff286da9243633d03f4b5f5b9d34e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c3ce3e3-9f6c-57ae-89c6-ec14083066bc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('807f5869-ebd1-5de2-9a23-882b824bf0aa', 1), '607d82403e7855902dd575247361c2089aff286da9243633d03f4b5f5b9d34e0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0e0f66183c4d781a8b015078b28dbd6b333da4f845634db3cd2b31abd731315f.mp3', 3291, '2026-09-13 07:35:44.964721', '57da4fb477d3e123459cc3d0c5a477fc6a4d6eaea0ddb9c4015ab03e03b7fcfc', 'validated', '{"audio_key":"0e0f66183c4d781a8b015078b28dbd6b333da4f845634db3cd2b31abd731315f","entity_key":"u_instructions_notices_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"57da4fb477d3e123459cc3d0c5a477fc6a4d6eaea0ddb9c4015ab03e03b7fcfc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0e0f66183c4d781a8b015078b28dbd6b333da4f845634db3cd2b31abd731315f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_instructions_notices_01_listen -> audio/generated/de-DE/utterances/0e0f66183c4d781a8b015078b28dbd6b333da4f845634db3cd2b31abd731315f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6e7acb77-08b2-5dd4-b47d-04105791f971', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_instructions_notices_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '607d82403e7855902dd575247361c2089aff286da9243633d03f4b5f5b9d34e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('41ee137c-124b-5729-b1f8-8067efe0a3a1', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6e7acb77-08b2-5dd4-b47d-04105791f971', 1), '607d82403e7855902dd575247361c2089aff286da9243633d03f4b5f5b9d34e0',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0e0f66183c4d781a8b015078b28dbd6b333da4f845634db3cd2b31abd731315f.mp3', 3291, '2026-09-13 07:35:44.964721', '57da4fb477d3e123459cc3d0c5a477fc6a4d6eaea0ddb9c4015ab03e03b7fcfc', 'validated', '{"audio_key":"0e0f66183c4d781a8b015078b28dbd6b333da4f845634db3cd2b31abd731315f","entity_key":"ex_instructions_notices_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"57da4fb477d3e123459cc3d0c5a477fc6a4d6eaea0ddb9c4015ab03e03b7fcfc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0e0f66183c4d781a8b015078b28dbd6b333da4f845634db3cd2b31abd731315f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_summarizing_relaying_01 -> audio/generated/de-DE/utterances/1a50a5e5034b8953eead328d90852e2f42d87a9718db7388fae2bd63a3fbcb79.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b56e4042-d769-5f20-a783-2111325fcf5a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_summarizing_relaying_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c6495935e4e8d95bae3f13606ac0ff397bd38dce1a48c6b1e19645399ea1ca7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60a461ff-f337-5e69-a32a-f429fbca685b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b56e4042-d769-5f20-a783-2111325fcf5a', 1), '5c6495935e4e8d95bae3f13606ac0ff397bd38dce1a48c6b1e19645399ea1ca7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1a50a5e5034b8953eead328d90852e2f42d87a9718db7388fae2bd63a3fbcb79.mp3', 3474, '2026-09-13 07:35:45.715811', '9f6d50c73d285da23f5b973c67523e87f74d8f3be4894132e5e31fcd7d090f14', 'validated', '{"audio_key":"1a50a5e5034b8953eead328d90852e2f42d87a9718db7388fae2bd63a3fbcb79","entity_key":"u_summarizing_relaying_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9f6d50c73d285da23f5b973c67523e87f74d8f3be4894132e5e31fcd7d090f14","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1a50a5e5034b8953eead328d90852e2f42d87a9718db7388fae2bd63a3fbcb79.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_summarizing_relaying_01_listen -> audio/generated/de-DE/utterances/1a50a5e5034b8953eead328d90852e2f42d87a9718db7388fae2bd63a3fbcb79.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4f924398-e8af-53d2-b8f8-313291ddb37a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_summarizing_relaying_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c6495935e4e8d95bae3f13606ac0ff397bd38dce1a48c6b1e19645399ea1ca7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57261359-a29e-54e6-b238-38031520b76d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4f924398-e8af-53d2-b8f8-313291ddb37a', 1), '5c6495935e4e8d95bae3f13606ac0ff397bd38dce1a48c6b1e19645399ea1ca7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1a50a5e5034b8953eead328d90852e2f42d87a9718db7388fae2bd63a3fbcb79.mp3', 3474, '2026-09-13 07:35:45.715811', '9f6d50c73d285da23f5b973c67523e87f74d8f3be4894132e5e31fcd7d090f14', 'validated', '{"audio_key":"1a50a5e5034b8953eead328d90852e2f42d87a9718db7388fae2bd63a3fbcb79","entity_key":"ex_summarizing_relaying_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9f6d50c73d285da23f5b973c67523e87f74d8f3be4894132e5e31fcd7d090f14","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1a50a5e5034b8953eead328d90852e2f42d87a9718db7388fae2bd63a3fbcb79.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_instructions_notices_04 -> audio/generated/de-DE/utterances/1a63553562a22f6ac39b669aec296d47d5e1caf5ccd4e6915da25742ba9160f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('720ed8e2-cb0d-57c2-abbe-6619cd34570e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_instructions_notices_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd58f6a6c603582a7a19b73208603f7b4f841e49f3a4a95700c7e3314c87cf548'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('71858e1b-1dba-5568-82cb-32d94c82a9d7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('720ed8e2-cb0d-57c2-abbe-6619cd34570e', 1), 'd58f6a6c603582a7a19b73208603f7b4f841e49f3a4a95700c7e3314c87cf548',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1a63553562a22f6ac39b669aec296d47d5e1caf5ccd4e6915da25742ba9160f2.mp3', 4075, '2026-09-13 07:35:46.255970', 'fac7140057a9a24808e956082fb3a407a1ee4e3780712808a900a06243852c54', 'validated', '{"audio_key":"1a63553562a22f6ac39b669aec296d47d5e1caf5ccd4e6915da25742ba9160f2","entity_key":"u_instructions_notices_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fac7140057a9a24808e956082fb3a407a1ee4e3780712808a900a06243852c54","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1a63553562a22f6ac39b669aec296d47d5e1caf5ccd4e6915da25742ba9160f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_summarizing_relaying_05 -> audio/generated/de-DE/utterances/3fe1ae490f117e3b5e6b493398bfccbdc7f1c5dc82de37fe2eb043abd21e3607.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('24bcbe19-ed01-5f7e-a53e-0695e8d87b36', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_summarizing_relaying_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4877d4eb62f9a662fed5095597bfb57441e1c8172d62db4e68e9343b4d8437a2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c90aba7-5058-56d4-928f-938ed5d6813a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('24bcbe19-ed01-5f7e-a53e-0695e8d87b36', 1), '4877d4eb62f9a662fed5095597bfb57441e1c8172d62db4e68e9343b4d8437a2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3fe1ae490f117e3b5e6b493398bfccbdc7f1c5dc82de37fe2eb043abd21e3607.mp3', 4780, '2026-09-13 07:35:47.485886', '48f02555aadf4894d17a986e98664a9fc64744e0960c52364f9337e9505ac1f6', 'validated', '{"audio_key":"3fe1ae490f117e3b5e6b493398bfccbdc7f1c5dc82de37fe2eb043abd21e3607","entity_key":"u_summarizing_relaying_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"48f02555aadf4894d17a986e98664a9fc64744e0960c52364f9337e9505ac1f6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3fe1ae490f117e3b5e6b493398bfccbdc7f1c5dc82de37fe2eb043abd21e3607.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_summarizing_relaying_03_listen -> audio/generated/de-DE/utterances/3fe1ae490f117e3b5e6b493398bfccbdc7f1c5dc82de37fe2eb043abd21e3607.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ace58775-84f1-56c2-abdb-eae672ee4ad1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_summarizing_relaying_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4877d4eb62f9a662fed5095597bfb57441e1c8172d62db4e68e9343b4d8437a2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bf220d2-9242-58dd-a8dc-4f52ef26bf21', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ace58775-84f1-56c2-abdb-eae672ee4ad1', 1), '4877d4eb62f9a662fed5095597bfb57441e1c8172d62db4e68e9343b4d8437a2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3fe1ae490f117e3b5e6b493398bfccbdc7f1c5dc82de37fe2eb043abd21e3607.mp3', 4780, '2026-09-13 07:35:47.485886', '48f02555aadf4894d17a986e98664a9fc64744e0960c52364f9337e9505ac1f6', 'validated', '{"audio_key":"3fe1ae490f117e3b5e6b493398bfccbdc7f1c5dc82de37fe2eb043abd21e3607","entity_key":"ex_summarizing_relaying_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"48f02555aadf4894d17a986e98664a9fc64744e0960c52364f9337e9505ac1f6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3fe1ae490f117e3b5e6b493398bfccbdc7f1c5dc82de37fe2eb043abd21e3607.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_explaining_presenting_05 -> audio/generated/de-DE/utterances/4bc7142cdb3a589b74e5a57ad90f92c8300c21e1849dec44223a82eb41ef2858.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a602232d-d458-5898-aa0e-ab5dc84c70fb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_explaining_presenting_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2177ee52cec3795e853b01f848281b77a6fea28d2267a7ef55da259ccb3c4d97'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c3cc0bb-0a59-5b81-8597-92b63d02fe3c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a602232d-d458-5898-aa0e-ab5dc84c70fb', 1), '2177ee52cec3795e853b01f848281b77a6fea28d2267a7ef55da259ccb3c4d97',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4bc7142cdb3a589b74e5a57ad90f92c8300c21e1849dec44223a82eb41ef2858.mp3', 4022, '2026-09-13 07:35:47.570359', 'cc11382571894ff03df8ffedd770841d95505ba6ba9214d831f1bc8c754c3736', 'validated', '{"audio_key":"4bc7142cdb3a589b74e5a57ad90f92c8300c21e1849dec44223a82eb41ef2858","entity_key":"u_explaining_presenting_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cc11382571894ff03df8ffedd770841d95505ba6ba9214d831f1bc8c754c3736","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4bc7142cdb3a589b74e5a57ad90f92c8300c21e1849dec44223a82eb41ef2858.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_explaining_presenting_03_listen -> audio/generated/de-DE/utterances/4bc7142cdb3a589b74e5a57ad90f92c8300c21e1849dec44223a82eb41ef2858.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7a295f71-46c0-5882-94bd-d3b336f85fbf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_explaining_presenting_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2177ee52cec3795e853b01f848281b77a6fea28d2267a7ef55da259ccb3c4d97'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1c934bd-f6c0-563a-beba-0436df9d4ae5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7a295f71-46c0-5882-94bd-d3b336f85fbf', 1), '2177ee52cec3795e853b01f848281b77a6fea28d2267a7ef55da259ccb3c4d97',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4bc7142cdb3a589b74e5a57ad90f92c8300c21e1849dec44223a82eb41ef2858.mp3', 4022, '2026-09-13 07:35:47.570359', 'cc11382571894ff03df8ffedd770841d95505ba6ba9214d831f1bc8c754c3736', 'validated', '{"audio_key":"4bc7142cdb3a589b74e5a57ad90f92c8300c21e1849dec44223a82eb41ef2858","entity_key":"ex_explaining_presenting_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cc11382571894ff03df8ffedd770841d95505ba6ba9214d831f1bc8c754c3736","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4bc7142cdb3a589b74e5a57ad90f92c8300c21e1849dec44223a82eb41ef2858.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_integrated_capstone_01 -> audio/generated/de-DE/utterances/59c80adeedbdb5d1f97db29f6b458d8908d51cb7b7f546b331ffeb3acc76d573.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ba61335a-6e94-5c30-b6c7-1023c16b1784', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_integrated_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd9b40878b7a73532e3c953420c98137c19a125a219139420292d1602c404a695'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e8aafb7-bd22-51eb-9daa-961549f2e77f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ba61335a-6e94-5c30-b6c7-1023c16b1784', 1), 'd9b40878b7a73532e3c953420c98137c19a125a219139420292d1602c404a695',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/59c80adeedbdb5d1f97db29f6b458d8908d51cb7b7f546b331ffeb3acc76d573.mp3', 3892, '2026-09-13 07:35:48.810216', 'f13145fd9f5957a0bf229e00ab9b8b3390f7235a75f4fe40924f57281b936ec6', 'validated', '{"audio_key":"59c80adeedbdb5d1f97db29f6b458d8908d51cb7b7f546b331ffeb3acc76d573","entity_key":"u_integrated_capstone_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f13145fd9f5957a0bf229e00ab9b8b3390f7235a75f4fe40924f57281b936ec6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/59c80adeedbdb5d1f97db29f6b458d8908d51cb7b7f546b331ffeb3acc76d573.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_integrated_capstone_01_listen -> audio/generated/de-DE/utterances/59c80adeedbdb5d1f97db29f6b458d8908d51cb7b7f546b331ffeb3acc76d573.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2b19358e-99b3-5a63-bfd0-a9ec2d96c7c9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_integrated_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd9b40878b7a73532e3c953420c98137c19a125a219139420292d1602c404a695'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58e145c5-b885-524c-980d-8dad566cfeef', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2b19358e-99b3-5a63-bfd0-a9ec2d96c7c9', 1), 'd9b40878b7a73532e3c953420c98137c19a125a219139420292d1602c404a695',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/59c80adeedbdb5d1f97db29f6b458d8908d51cb7b7f546b331ffeb3acc76d573.mp3', 3892, '2026-09-13 07:35:48.810216', 'f13145fd9f5957a0bf229e00ab9b8b3390f7235a75f4fe40924f57281b936ec6', 'validated', '{"audio_key":"59c80adeedbdb5d1f97db29f6b458d8908d51cb7b7f546b331ffeb3acc76d573","entity_key":"ex_integrated_capstone_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f13145fd9f5957a0bf229e00ab9b8b3390f7235a75f4fe40924f57281b936ec6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/59c80adeedbdb5d1f97db29f6b458d8908d51cb7b7f546b331ffeb3acc76d573.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_integrated_capstone_03 -> audio/generated/de-DE/utterances/65fe5962bb5e13f8141313da861a667a992cba8bb644caa595cf147852ffc14c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('51b4c887-1f8f-5b56-94b1-dd7d71fccadb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_integrated_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '86e6f3f47e3d40356cc1bb228cd289117b67e20f1e6d77e87547b2b5d0b7a356'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ed65a5c-3356-5e1b-89ed-1e75329a8432', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('51b4c887-1f8f-5b56-94b1-dd7d71fccadb', 1), '86e6f3f47e3d40356cc1bb228cd289117b67e20f1e6d77e87547b2b5d0b7a356',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/65fe5962bb5e13f8141313da861a667a992cba8bb644caa595cf147852ffc14c.mp3', 4963, '2026-09-13 07:35:49.023098', 'f43a6c5476bc914b6a33fc5aba21b5d64d1783028d030edfea5d9c5f4d42401d', 'validated', '{"audio_key":"65fe5962bb5e13f8141313da861a667a992cba8bb644caa595cf147852ffc14c","entity_key":"u_integrated_capstone_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f43a6c5476bc914b6a33fc5aba21b5d64d1783028d030edfea5d9c5f4d42401d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/65fe5962bb5e13f8141313da861a667a992cba8bb644caa595cf147852ffc14c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_integrated_capstone_02_listen -> audio/generated/de-DE/utterances/65fe5962bb5e13f8141313da861a667a992cba8bb644caa595cf147852ffc14c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('cb3134b0-80f0-5783-9f7e-1081034db2a2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_integrated_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '86e6f3f47e3d40356cc1bb228cd289117b67e20f1e6d77e87547b2b5d0b7a356'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d0a4f63-c165-5ff8-bd99-ab5022b72af9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('cb3134b0-80f0-5783-9f7e-1081034db2a2', 1), '86e6f3f47e3d40356cc1bb228cd289117b67e20f1e6d77e87547b2b5d0b7a356',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/65fe5962bb5e13f8141313da861a667a992cba8bb644caa595cf147852ffc14c.mp3', 4963, '2026-09-13 07:35:49.023098', 'f43a6c5476bc914b6a33fc5aba21b5d64d1783028d030edfea5d9c5f4d42401d', 'validated', '{"audio_key":"65fe5962bb5e13f8141313da861a667a992cba8bb644caa595cf147852ffc14c","entity_key":"ex_integrated_capstone_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f43a6c5476bc914b6a33fc5aba21b5d64d1783028d030edfea5d9c5f4d42401d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/65fe5962bb5e13f8141313da861a667a992cba8bb644caa595cf147852ffc14c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_practical_writing_03 -> audio/generated/de-DE/utterances/67503a3ddbec51484eda2a1236711cfe0a4d6385577112c1906c9aacd161b094.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('abee62ec-45aa-55b2-8b2b-833614aa3b20', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_practical_writing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee329671c9f6464e57c1245a1be868538b3cc6ffc008b8b2bc0dcb832f645a22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7dc75ece-4fca-5653-8310-390a8d3f7f9e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('abee62ec-45aa-55b2-8b2b-833614aa3b20', 1), 'ee329671c9f6464e57c1245a1be868538b3cc6ffc008b8b2bc0dcb832f645a22',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/67503a3ddbec51484eda2a1236711cfe0a4d6385577112c1906c9aacd161b094.mp3', 3291, '2026-09-13 07:35:50.110124', '7de336a3f08dbab6c77b9b75fcdb9754ba46e43eed5af4c43830a5791372b60e', 'validated', '{"audio_key":"67503a3ddbec51484eda2a1236711cfe0a4d6385577112c1906c9aacd161b094","entity_key":"u_practical_writing_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7de336a3f08dbab6c77b9b75fcdb9754ba46e43eed5af4c43830a5791372b60e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/67503a3ddbec51484eda2a1236711cfe0a4d6385577112c1906c9aacd161b094.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_practical_writing_02_listen -> audio/generated/de-DE/utterances/67503a3ddbec51484eda2a1236711cfe0a4d6385577112c1906c9aacd161b094.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8e715e55-caf5-521a-b833-110a58b73fbe', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_practical_writing_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee329671c9f6464e57c1245a1be868538b3cc6ffc008b8b2bc0dcb832f645a22'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae6206d3-86e6-5a2b-9d76-84678a22b5dc', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8e715e55-caf5-521a-b833-110a58b73fbe', 1), 'ee329671c9f6464e57c1245a1be868538b3cc6ffc008b8b2bc0dcb832f645a22',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/67503a3ddbec51484eda2a1236711cfe0a4d6385577112c1906c9aacd161b094.mp3', 3291, '2026-09-13 07:35:50.110124', '7de336a3f08dbab6c77b9b75fcdb9754ba46e43eed5af4c43830a5791372b60e', 'validated', '{"audio_key":"67503a3ddbec51484eda2a1236711cfe0a4d6385577112c1906c9aacd161b094","entity_key":"ex_practical_writing_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7de336a3f08dbab6c77b9b75fcdb9754ba46e43eed5af4c43830a5791372b60e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/67503a3ddbec51484eda2a1236711cfe0a4d6385577112c1906c9aacd161b094.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_explaining_presenting_04 -> audio/generated/de-DE/utterances/6bc04a5de0a4eff64b8c9fbb8642b6a735a2e937bfd69421f3b5dd52a5b819d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fab675c7-f5fc-5608-880e-affb6c7390cf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_explaining_presenting_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '362c89adf9bfdf6ce55524787e9b488c1b0dd4d90032aba0020b762f19aaf740'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d8044f5-07f9-54cb-8ca6-2b56e0131b64', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fab675c7-f5fc-5608-880e-affb6c7390cf', 1), '362c89adf9bfdf6ce55524787e9b488c1b0dd4d90032aba0020b762f19aaf740',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6bc04a5de0a4eff64b8c9fbb8642b6a735a2e937bfd69421f3b5dd52a5b819d9.mp3', 3291, '2026-09-13 07:35:50.258052', 'd98a15202e6217074c6eaf487dc8f374d9124159bcfd4866493ad0cd6632c368', 'validated', '{"audio_key":"6bc04a5de0a4eff64b8c9fbb8642b6a735a2e937bfd69421f3b5dd52a5b819d9","entity_key":"u_explaining_presenting_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d98a15202e6217074c6eaf487dc8f374d9124159bcfd4866493ad0cd6632c368","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6bc04a5de0a4eff64b8c9fbb8642b6a735a2e937bfd69421f3b5dd52a5b819d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_instructions_notices_02 -> audio/generated/de-DE/utterances/715a8a3ceb4cc40db2db275dbec4d9c29455bc6020c18dc96e191f8cb4100d3c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('55a561ed-1811-54e5-b00e-0592e4d37662', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_instructions_notices_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2adca0eeedc9ed0ff820cd01020f142755293d50fcbb675fec369e37213af794'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1376198-4f64-555d-a6e9-b494950c84f2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('55a561ed-1811-54e5-b00e-0592e4d37662', 1), '2adca0eeedc9ed0ff820cd01020f142755293d50fcbb675fec369e37213af794',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/715a8a3ceb4cc40db2db275dbec4d9c29455bc6020c18dc96e191f8cb4100d3c.mp3', 3604, '2026-09-13 07:35:51.396256', '08f4d70123d3bf10f7d06e4a1f8c0d02f9ca7df1e4e89b6c54e5159a4a53cab7', 'validated', '{"audio_key":"715a8a3ceb4cc40db2db275dbec4d9c29455bc6020c18dc96e191f8cb4100d3c","entity_key":"u_instructions_notices_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08f4d70123d3bf10f7d06e4a1f8c0d02f9ca7df1e4e89b6c54e5159a4a53cab7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/715a8a3ceb4cc40db2db275dbec4d9c29455bc6020c18dc96e191f8cb4100d3c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_instructions_notices_03 -> audio/generated/de-DE/utterances/8185ab4a57e70329d92a3edb9bc95da5da8f4b390cd21862572bca6067c7d04a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('00b71514-8080-589f-bba9-998431097975', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_instructions_notices_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c34ddc7c33616d011ab3d5089559d0b0a3253fbea461d1af487783c69b856420'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7edb119c-e845-5eba-bb20-8d575272b9e6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('00b71514-8080-589f-bba9-998431097975', 1), 'c34ddc7c33616d011ab3d5089559d0b0a3253fbea461d1af487783c69b856420',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8185ab4a57e70329d92a3edb9bc95da5da8f4b390cd21862572bca6067c7d04a.mp3', 4493, '2026-09-13 07:35:51.603446', '0a249d0c8ab802851743fc87ac6545f89dbc0e153a530afdf1162fac2f0e0874', 'validated', '{"audio_key":"8185ab4a57e70329d92a3edb9bc95da5da8f4b390cd21862572bca6067c7d04a","entity_key":"u_instructions_notices_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0a249d0c8ab802851743fc87ac6545f89dbc0e153a530afdf1162fac2f0e0874","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8185ab4a57e70329d92a3edb9bc95da5da8f4b390cd21862572bca6067c7d04a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_instructions_notices_02_listen -> audio/generated/de-DE/utterances/8185ab4a57e70329d92a3edb9bc95da5da8f4b390cd21862572bca6067c7d04a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c438e800-60c3-5bfc-9096-ebd255397ddb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_instructions_notices_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c34ddc7c33616d011ab3d5089559d0b0a3253fbea461d1af487783c69b856420'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d25e7b0-8ce4-577e-b3a7-a7a299b70fbc', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c438e800-60c3-5bfc-9096-ebd255397ddb', 1), 'c34ddc7c33616d011ab3d5089559d0b0a3253fbea461d1af487783c69b856420',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8185ab4a57e70329d92a3edb9bc95da5da8f4b390cd21862572bca6067c7d04a.mp3', 4493, '2026-09-13 07:35:51.603446', '0a249d0c8ab802851743fc87ac6545f89dbc0e153a530afdf1162fac2f0e0874', 'validated', '{"audio_key":"8185ab4a57e70329d92a3edb9bc95da5da8f4b390cd21862572bca6067c7d04a","entity_key":"ex_instructions_notices_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0a249d0c8ab802851743fc87ac6545f89dbc0e153a530afdf1162fac2f0e0874","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8185ab4a57e70329d92a3edb9bc95da5da8f4b390cd21862572bca6067c7d04a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_instructions_notices_06 -> audio/generated/de-DE/utterances/85c0f14149698da499f6b13d598d06a9053fe0facfeb238999836207a18eab15.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1742edc5-3370-5114-a294-464e104129fd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_instructions_notices_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '71a5a53e428d87136cbecbf8035b5ba722402008abafb8505238362123b0825a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb78c956-9d7f-57ff-8caf-4d135e5341bc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1742edc5-3370-5114-a294-464e104129fd', 1), '71a5a53e428d87136cbecbf8035b5ba722402008abafb8505238362123b0825a',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/85c0f14149698da499f6b13d598d06a9053fe0facfeb238999836207a18eab15.mp3', 5041, '2026-09-13 07:35:52.856936', '4af5d7678091a8061a7bc132563ce1ecc94e5bead12fff28fec24ebda0a1defa', 'validated', '{"audio_key":"85c0f14149698da499f6b13d598d06a9053fe0facfeb238999836207a18eab15","entity_key":"u_instructions_notices_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4af5d7678091a8061a7bc132563ce1ecc94e5bead12fff28fec24ebda0a1defa","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/85c0f14149698da499f6b13d598d06a9053fe0facfeb238999836207a18eab15.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_integrated_capstone_05 -> audio/generated/de-DE/utterances/88ddeea45faa23b54b47bd2fd1d4767eba93808f428cca189a5f476ef9183814.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('040a6d51-643d-57d8-9d0f-e1676afdeb48', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_integrated_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3255f2ab29679d87f417b618e537379f729ae35bbe9a541241e31674c4aaeabd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('499acaf9-065b-5ea5-8ce2-6037b341a53b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('040a6d51-643d-57d8-9d0f-e1676afdeb48', 1), '3255f2ab29679d87f417b618e537379f729ae35bbe9a541241e31674c4aaeabd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/88ddeea45faa23b54b47bd2fd1d4767eba93808f428cca189a5f476ef9183814.mp3', 4597, '2026-09-13 07:35:53.020569', '88f4e753619ff57de1f76eee024f4f2a147f5327012978985cc83fe5fa3ce917', 'validated', '{"audio_key":"88ddeea45faa23b54b47bd2fd1d4767eba93808f428cca189a5f476ef9183814","entity_key":"u_integrated_capstone_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"88f4e753619ff57de1f76eee024f4f2a147f5327012978985cc83fe5fa3ce917","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/88ddeea45faa23b54b47bd2fd1d4767eba93808f428cca189a5f476ef9183814.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_integrated_capstone_03_listen -> audio/generated/de-DE/utterances/88ddeea45faa23b54b47bd2fd1d4767eba93808f428cca189a5f476ef9183814.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('309899c1-3295-5350-bbbe-957fa7a84803', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_integrated_capstone_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3255f2ab29679d87f417b618e537379f729ae35bbe9a541241e31674c4aaeabd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2885057-4676-5811-9c60-37af6f94a35d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('309899c1-3295-5350-bbbe-957fa7a84803', 1), '3255f2ab29679d87f417b618e537379f729ae35bbe9a541241e31674c4aaeabd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/88ddeea45faa23b54b47bd2fd1d4767eba93808f428cca189a5f476ef9183814.mp3', 4597, '2026-09-13 07:35:53.020569', '88f4e753619ff57de1f76eee024f4f2a147f5327012978985cc83fe5fa3ce917', 'validated', '{"audio_key":"88ddeea45faa23b54b47bd2fd1d4767eba93808f428cca189a5f476ef9183814","entity_key":"ex_integrated_capstone_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"88f4e753619ff57de1f76eee024f4f2a147f5327012978985cc83fe5fa3ce917","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/88ddeea45faa23b54b47bd2fd1d4767eba93808f428cca189a5f476ef9183814.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_explaining_presenting_06 -> audio/generated/de-DE/utterances/9f335576dfe8f2c4378c36abd53358c0b67cc029f59687384ac4768353cfbe8b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('99f2e9af-28af-5147-9896-590702a9b562', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_explaining_presenting_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d9bdafc91a76bcfedfa6b22db4741c1045b204c439a4e0432d9509c701b8eed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ef4d78e-500d-5e52-8935-99eb846fbbbe', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('99f2e9af-28af-5147-9896-590702a9b562', 1), '6d9bdafc91a76bcfedfa6b22db4741c1045b204c439a4e0432d9509c701b8eed',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9f335576dfe8f2c4378c36abd53358c0b67cc029f59687384ac4768353cfbe8b.mp3', 4493, '2026-09-13 07:35:54.218120', '01c02c0eeec7559c92f9f1bc17ad127b991bad2b05afc2dff66cc3fa5733d28a', 'validated', '{"audio_key":"9f335576dfe8f2c4378c36abd53358c0b67cc029f59687384ac4768353cfbe8b","entity_key":"u_explaining_presenting_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"01c02c0eeec7559c92f9f1bc17ad127b991bad2b05afc2dff66cc3fa5733d28a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9f335576dfe8f2c4378c36abd53358c0b67cc029f59687384ac4768353cfbe8b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_practical_writing_05 -> audio/generated/de-DE/utterances/9f61ee5faa5a54c7c374ebad7a4811197323c54b2e507b5e76e6bec0a32f672b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('58ec0cc5-a4f2-5151-849e-93b832d7bdf2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_practical_writing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d04b3d366bff838dda592ae485752088312ee1bfbc8c8297f0fe88634a14daf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9af71b09-71c5-5b83-87ff-9548bc6c246b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('58ec0cc5-a4f2-5151-849e-93b832d7bdf2', 1), '1d04b3d366bff838dda592ae485752088312ee1bfbc8c8297f0fe88634a14daf',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9f61ee5faa5a54c7c374ebad7a4811197323c54b2e507b5e76e6bec0a32f672b.mp3', 3657, '2026-09-13 07:35:54.278673', '727b0cdefcefa06e92752873d0bf7bc01b9192e90842c571dbd6fea48e7d6621', 'validated', '{"audio_key":"9f61ee5faa5a54c7c374ebad7a4811197323c54b2e507b5e76e6bec0a32f672b","entity_key":"u_practical_writing_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"727b0cdefcefa06e92752873d0bf7bc01b9192e90842c571dbd6fea48e7d6621","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9f61ee5faa5a54c7c374ebad7a4811197323c54b2e507b5e76e6bec0a32f672b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_practical_writing_03_listen -> audio/generated/de-DE/utterances/9f61ee5faa5a54c7c374ebad7a4811197323c54b2e507b5e76e6bec0a32f672b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b61cea72-d6dc-58a1-b39e-b932ca668619', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_practical_writing_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d04b3d366bff838dda592ae485752088312ee1bfbc8c8297f0fe88634a14daf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('752cf340-c1ab-5b71-b82b-5999de236bb9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b61cea72-d6dc-58a1-b39e-b932ca668619', 1), '1d04b3d366bff838dda592ae485752088312ee1bfbc8c8297f0fe88634a14daf',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9f61ee5faa5a54c7c374ebad7a4811197323c54b2e507b5e76e6bec0a32f672b.mp3', 3657, '2026-09-13 07:35:54.278673', '727b0cdefcefa06e92752873d0bf7bc01b9192e90842c571dbd6fea48e7d6621', 'validated', '{"audio_key":"9f61ee5faa5a54c7c374ebad7a4811197323c54b2e507b5e76e6bec0a32f672b","entity_key":"ex_practical_writing_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"727b0cdefcefa06e92752873d0bf7bc01b9192e90842c571dbd6fea48e7d6621","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9f61ee5faa5a54c7c374ebad7a4811197323c54b2e507b5e76e6bec0a32f672b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_practical_writing_01 -> audio/generated/de-DE/utterances/a4c3e01b9ea837bf0d6d0a7b75802d31d6c320f657ec73ee5b2819dd39853737.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('005d1eb6-10c9-54dd-bd47-6b569178f244', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_practical_writing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7e3529e5ec0424e090c10caa30d36e76539545f1899ef3511626041ffae8df54'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('17cf29d8-6f77-5e0a-beee-60557e534343', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('005d1eb6-10c9-54dd-bd47-6b569178f244', 1), '7e3529e5ec0424e090c10caa30d36e76539545f1899ef3511626041ffae8df54',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a4c3e01b9ea837bf0d6d0a7b75802d31d6c320f657ec73ee5b2819dd39853737.mp3', 3108, '2026-09-13 07:35:55.534238', 'de98b5c6af3020056e25e3a952dc3bfa1d47ac8e7a9acdde07ad64511cec817b', 'validated', '{"audio_key":"a4c3e01b9ea837bf0d6d0a7b75802d31d6c320f657ec73ee5b2819dd39853737","entity_key":"u_practical_writing_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"de98b5c6af3020056e25e3a952dc3bfa1d47ac8e7a9acdde07ad64511cec817b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a4c3e01b9ea837bf0d6d0a7b75802d31d6c320f657ec73ee5b2819dd39853737.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_practical_writing_01_listen -> audio/generated/de-DE/utterances/a4c3e01b9ea837bf0d6d0a7b75802d31d6c320f657ec73ee5b2819dd39853737.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a53c33f1-2b99-5a52-9fb4-be27cb30ca47', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_practical_writing_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7e3529e5ec0424e090c10caa30d36e76539545f1899ef3511626041ffae8df54'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1b02fbc-4aac-5a41-8ff0-c1efa1d1d863', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a53c33f1-2b99-5a52-9fb4-be27cb30ca47', 1), '7e3529e5ec0424e090c10caa30d36e76539545f1899ef3511626041ffae8df54',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a4c3e01b9ea837bf0d6d0a7b75802d31d6c320f657ec73ee5b2819dd39853737.mp3', 3108, '2026-09-13 07:35:55.534238', 'de98b5c6af3020056e25e3a952dc3bfa1d47ac8e7a9acdde07ad64511cec817b', 'validated', '{"audio_key":"a4c3e01b9ea837bf0d6d0a7b75802d31d6c320f657ec73ee5b2819dd39853737","entity_key":"ex_practical_writing_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"de98b5c6af3020056e25e3a952dc3bfa1d47ac8e7a9acdde07ad64511cec817b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a4c3e01b9ea837bf0d6d0a7b75802d31d6c320f657ec73ee5b2819dd39853737.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_summarizing_relaying_04 -> audio/generated/de-DE/utterances/af462f0c884007953554f29fb41d6410572399f9a23674efb21abc5a21ce9ce7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c94e5502-197f-5506-b403-2663a7029afa', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_summarizing_relaying_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c3222689ce5eb577a0d369a812ea50c001fdde7d90a8fb15d4e01119cdea926'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31c4618e-4dc2-53c6-94a4-32bf84948f96', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c94e5502-197f-5506-b403-2663a7029afa', 1), '7c3222689ce5eb577a0d369a812ea50c001fdde7d90a8fb15d4e01119cdea926',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/af462f0c884007953554f29fb41d6410572399f9a23674efb21abc5a21ce9ce7.mp3', 3761, '2026-09-13 07:35:55.583146', 'cdc9badfe212008794183fabc5fa10c2d53beeb5cf3bce64157b7024b9068661', 'validated', '{"audio_key":"af462f0c884007953554f29fb41d6410572399f9a23674efb21abc5a21ce9ce7","entity_key":"u_summarizing_relaying_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cdc9badfe212008794183fabc5fa10c2d53beeb5cf3bce64157b7024b9068661","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/af462f0c884007953554f29fb41d6410572399f9a23674efb21abc5a21ce9ce7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_integrated_capstone_06 -> audio/generated/de-DE/utterances/b4f5f905a78f3c4f5d811d1daee40b4066f10e241a87d0a94eca9dcf608d6817.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('89932516-8a25-5f46-8aa4-2947cb9453a2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_integrated_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f03540e18f5df7380afc699911c99ca4e4018006e57a0949861c1a4f01003d4c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14c3773f-f295-5453-93ca-3bf88af7fd4c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('89932516-8a25-5f46-8aa4-2947cb9453a2', 1), 'f03540e18f5df7380afc699911c99ca4e4018006e57a0949861c1a4f01003d4c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b4f5f905a78f3c4f5d811d1daee40b4066f10e241a87d0a94eca9dcf608d6817.mp3', 4545, '2026-09-13 07:35:57.027410', '9071138e30ac1cf67e6b9428a0faec333a7b5825163a3ee8b053916187865a85', 'validated', '{"audio_key":"b4f5f905a78f3c4f5d811d1daee40b4066f10e241a87d0a94eca9dcf608d6817","entity_key":"u_integrated_capstone_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9071138e30ac1cf67e6b9428a0faec333a7b5825163a3ee8b053916187865a85","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b4f5f905a78f3c4f5d811d1daee40b4066f10e241a87d0a94eca9dcf608d6817.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_summarizing_relaying_06 -> audio/generated/de-DE/utterances/b5d785317a0b60b10827d7475f4d9179201f511f8c85c711978e05caa5155a8b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4db0c07e-f5f6-5a2a-9c54-84c1efad00be', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_summarizing_relaying_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b25250a35787d4b3724b9be53a8778227b0a9a6082691d21d794c269482e013f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b86d761a-00f2-5880-9388-ff333770d70b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4db0c07e-f5f6-5a2a-9c54-84c1efad00be', 1), 'b25250a35787d4b3724b9be53a8778227b0a9a6082691d21d794c269482e013f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b5d785317a0b60b10827d7475f4d9179201f511f8c85c711978e05caa5155a8b.mp3', 2925, '2026-09-13 07:35:56.803757', '2a22affd0c796e6d5c0e8cb5d59ee204d7803687a4eea55db9e36f85edb9ef83', 'validated', '{"audio_key":"b5d785317a0b60b10827d7475f4d9179201f511f8c85c711978e05caa5155a8b","entity_key":"u_summarizing_relaying_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2a22affd0c796e6d5c0e8cb5d59ee204d7803687a4eea55db9e36f85edb9ef83","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b5d785317a0b60b10827d7475f4d9179201f511f8c85c711978e05caa5155a8b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_explaining_presenting_01 -> audio/generated/de-DE/utterances/b761a449b4795f1099da8041c977d551b59564237f31bf643b6295e7f8e56c54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('08343578-de71-54d2-9d8a-49ba2eae222e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_explaining_presenting_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1436201de04186a069b681d2cf05c75048cd31d8f79b6094a813095e1ae4a3af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1777a408-d137-556a-b87b-fe9a6a81d9fe', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('08343578-de71-54d2-9d8a-49ba2eae222e', 1), '1436201de04186a069b681d2cf05c75048cd31d8f79b6094a813095e1ae4a3af',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b761a449b4795f1099da8041c977d551b59564237f31bf643b6295e7f8e56c54.mp3', 4310, '2026-09-13 07:35:58.421178', '05b21b4daa8c8187f774e9520cf78ebbc6cd0b612ea0de01b0a82964f81aeaab', 'validated', '{"audio_key":"b761a449b4795f1099da8041c977d551b59564237f31bf643b6295e7f8e56c54","entity_key":"u_explaining_presenting_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"05b21b4daa8c8187f774e9520cf78ebbc6cd0b612ea0de01b0a82964f81aeaab","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b761a449b4795f1099da8041c977d551b59564237f31bf643b6295e7f8e56c54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_explaining_presenting_01_listen -> audio/generated/de-DE/utterances/b761a449b4795f1099da8041c977d551b59564237f31bf643b6295e7f8e56c54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c9fa2f56-1bc1-5cb9-80e1-f5c58d72aa6b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_explaining_presenting_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1436201de04186a069b681d2cf05c75048cd31d8f79b6094a813095e1ae4a3af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6382e759-f4cd-5f2c-a27d-1b4014fd303b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c9fa2f56-1bc1-5cb9-80e1-f5c58d72aa6b', 1), '1436201de04186a069b681d2cf05c75048cd31d8f79b6094a813095e1ae4a3af',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b761a449b4795f1099da8041c977d551b59564237f31bf643b6295e7f8e56c54.mp3', 4310, '2026-09-13 07:35:58.421178', '05b21b4daa8c8187f774e9520cf78ebbc6cd0b612ea0de01b0a82964f81aeaab', 'validated', '{"audio_key":"b761a449b4795f1099da8041c977d551b59564237f31bf643b6295e7f8e56c54","entity_key":"ex_explaining_presenting_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"05b21b4daa8c8187f774e9520cf78ebbc6cd0b612ea0de01b0a82964f81aeaab","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b761a449b4795f1099da8041c977d551b59564237f31bf643b6295e7f8e56c54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_instructions_notices_05 -> audio/generated/de-DE/utterances/b8e59956591124471a9016d082dc38e88f2067b771e22e093bc57f54b6b8feb5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e73392c6-c693-5e97-a831-ceeb61bb6ca8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_instructions_notices_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b5ac240abbb34ee1d7acfe6fce48420767526afbc551787c194cb244f35ae83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef27f515-fb63-5122-bc3b-4bfddce7aac3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e73392c6-c693-5e97-a831-ceeb61bb6ca8', 1), '8b5ac240abbb34ee1d7acfe6fce48420767526afbc551787c194cb244f35ae83',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b8e59956591124471a9016d082dc38e88f2067b771e22e093bc57f54b6b8feb5.mp3', 4545, '2026-09-13 07:35:58.478792', '93727336963f42e457c5d3ee74d3b07f5cb761e6ba2c570952f76ac4ef5754f9', 'validated', '{"audio_key":"b8e59956591124471a9016d082dc38e88f2067b771e22e093bc57f54b6b8feb5","entity_key":"u_instructions_notices_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"93727336963f42e457c5d3ee74d3b07f5cb761e6ba2c570952f76ac4ef5754f9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b8e59956591124471a9016d082dc38e88f2067b771e22e093bc57f54b6b8feb5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_instructions_notices_03_listen -> audio/generated/de-DE/utterances/b8e59956591124471a9016d082dc38e88f2067b771e22e093bc57f54b6b8feb5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6ef4bfb0-6947-563a-b7ad-ca712495d653', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_instructions_notices_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b5ac240abbb34ee1d7acfe6fce48420767526afbc551787c194cb244f35ae83'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eac90ff5-c7f3-5351-b019-40be52b60212', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6ef4bfb0-6947-563a-b7ad-ca712495d653', 1), '8b5ac240abbb34ee1d7acfe6fce48420767526afbc551787c194cb244f35ae83',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b8e59956591124471a9016d082dc38e88f2067b771e22e093bc57f54b6b8feb5.mp3', 4545, '2026-09-13 07:35:58.478792', '93727336963f42e457c5d3ee74d3b07f5cb761e6ba2c570952f76ac4ef5754f9', 'validated', '{"audio_key":"b8e59956591124471a9016d082dc38e88f2067b771e22e093bc57f54b6b8feb5","entity_key":"ex_instructions_notices_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"93727336963f42e457c5d3ee74d3b07f5cb761e6ba2c570952f76ac4ef5754f9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b8e59956591124471a9016d082dc38e88f2067b771e22e093bc57f54b6b8feb5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_integrated_capstone_04 -> audio/generated/de-DE/utterances/cf3307a396f06ade681ba1bcc239176d1392a1c35c64d753da81f196f0c367d8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6d3ad23a-911c-556d-8359-7e1d215e4809', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_integrated_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5daf50d6bcf59c162d76479e2cc76f78e082b49ea8365fd2f7f8c84a4856a551'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8fbd0c3-0cd5-5002-8b01-0c18cc8a3602', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6d3ad23a-911c-556d-8359-7e1d215e4809', 1), '5daf50d6bcf59c162d76479e2cc76f78e082b49ea8365fd2f7f8c84a4856a551',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cf3307a396f06ade681ba1bcc239176d1392a1c35c64d753da81f196f0c367d8.mp3', 4858, '2026-09-13 07:35:59.866896', '45c3d3dfd73db196bacb36c8e1e75a349678b900a28ad2f9636177b86861bf54', 'validated', '{"audio_key":"cf3307a396f06ade681ba1bcc239176d1392a1c35c64d753da81f196f0c367d8","entity_key":"u_integrated_capstone_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"45c3d3dfd73db196bacb36c8e1e75a349678b900a28ad2f9636177b86861bf54","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cf3307a396f06ade681ba1bcc239176d1392a1c35c64d753da81f196f0c367d8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_explaining_presenting_03 -> audio/generated/de-DE/utterances/d3ea4424a36981a7bbe4fe9238a31bec4138387484d42a7bae01b8196100a7c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('88cdcfaf-ffa6-5213-81d4-55c53b9e4aef', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_explaining_presenting_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '451818de22d7403fac7683c613e7c942be70f29bafed6b4a95cdebc9551dd4eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f3f9d4d-4e47-5e45-88d4-92b5775d6c83', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('88cdcfaf-ffa6-5213-81d4-55c53b9e4aef', 1), '451818de22d7403fac7683c613e7c942be70f29bafed6b4a95cdebc9551dd4eb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d3ea4424a36981a7bbe4fe9238a31bec4138387484d42a7bae01b8196100a7c8.mp3', 3291, '2026-09-13 07:35:59.770325', '076c59d156ef7ad29a4d20ac9e4a9a963aba86ff160bf7768ba7114755c14264', 'validated', '{"audio_key":"d3ea4424a36981a7bbe4fe9238a31bec4138387484d42a7bae01b8196100a7c8","entity_key":"u_explaining_presenting_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"076c59d156ef7ad29a4d20ac9e4a9a963aba86ff160bf7768ba7114755c14264","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d3ea4424a36981a7bbe4fe9238a31bec4138387484d42a7bae01b8196100a7c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_explaining_presenting_02_listen -> audio/generated/de-DE/utterances/d3ea4424a36981a7bbe4fe9238a31bec4138387484d42a7bae01b8196100a7c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('219e3c5a-06b2-5452-b70b-6c90aafbdc99', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_explaining_presenting_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '451818de22d7403fac7683c613e7c942be70f29bafed6b4a95cdebc9551dd4eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('940ccccd-1e0a-5985-964f-6f6fdd75f84c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('219e3c5a-06b2-5452-b70b-6c90aafbdc99', 1), '451818de22d7403fac7683c613e7c942be70f29bafed6b4a95cdebc9551dd4eb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d3ea4424a36981a7bbe4fe9238a31bec4138387484d42a7bae01b8196100a7c8.mp3', 3291, '2026-09-13 07:35:59.770325', '076c59d156ef7ad29a4d20ac9e4a9a963aba86ff160bf7768ba7114755c14264', 'validated', '{"audio_key":"d3ea4424a36981a7bbe4fe9238a31bec4138387484d42a7bae01b8196100a7c8","entity_key":"ex_explaining_presenting_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"076c59d156ef7ad29a4d20ac9e4a9a963aba86ff160bf7768ba7114755c14264","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d3ea4424a36981a7bbe4fe9238a31bec4138387484d42a7bae01b8196100a7c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_explaining_presenting_02 -> audio/generated/de-DE/utterances/d985050c5fd4ebc2da0cc73711e7dc3a93b142049eae617b5238ee8f6af8a0e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('babf3c76-66d9-579d-bd4d-aca13e26d26d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_explaining_presenting_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0cace0b0ae7d675728b4cf2cdcc437058c3f72bb6c97f8b4f679b4300cbcb444'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac41ea9c-fc4e-57fa-b961-dbfebbefd482', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('babf3c76-66d9-579d-bd4d-aca13e26d26d', 1), '0cace0b0ae7d675728b4cf2cdcc437058c3f72bb6c97f8b4f679b4300cbcb444',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d985050c5fd4ebc2da0cc73711e7dc3a93b142049eae617b5238ee8f6af8a0e1.mp3', 4362, '2026-09-13 07:36:01.137530', '2cae781273b9196b3dd0799cde620f6d270a9718c5ec1facb41d47a4ac8628aa', 'validated', '{"audio_key":"d985050c5fd4ebc2da0cc73711e7dc3a93b142049eae617b5238ee8f6af8a0e1","entity_key":"u_explaining_presenting_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2cae781273b9196b3dd0799cde620f6d270a9718c5ec1facb41d47a4ac8628aa","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d985050c5fd4ebc2da0cc73711e7dc3a93b142049eae617b5238ee8f6af8a0e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_summarizing_relaying_03 -> audio/generated/de-DE/utterances/e00cec1ceb21bd8fb4a4bc8176009cb102b2ff32a2f5448aa67c7f55738745e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a6772ff3-2cf5-52a7-a33d-a87bfa4508c6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_summarizing_relaying_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f1b5550a507b4d24d76953574649a343c4ffc00d47942a77e9ccb2dea1698d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1ffc277-1b20-5677-a083-26ade9039fcb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a6772ff3-2cf5-52a7-a33d-a87bfa4508c6', 1), '6f1b5550a507b4d24d76953574649a343c4ffc00d47942a77e9ccb2dea1698d5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e00cec1ceb21bd8fb4a4bc8176009cb102b2ff32a2f5448aa67c7f55738745e4.mp3', 3944, '2026-09-13 07:36:01.256241', 'abd66463558794876fc41297ae6a172c142236f47af5625b6a969585fb695dc8', 'validated', '{"audio_key":"e00cec1ceb21bd8fb4a4bc8176009cb102b2ff32a2f5448aa67c7f55738745e4","entity_key":"u_summarizing_relaying_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"abd66463558794876fc41297ae6a172c142236f47af5625b6a969585fb695dc8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e00cec1ceb21bd8fb4a4bc8176009cb102b2ff32a2f5448aa67c7f55738745e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_summarizing_relaying_02_listen -> audio/generated/de-DE/utterances/e00cec1ceb21bd8fb4a4bc8176009cb102b2ff32a2f5448aa67c7f55738745e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('383945d4-f6c3-550f-b0ac-a75c06188595', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_summarizing_relaying_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f1b5550a507b4d24d76953574649a343c4ffc00d47942a77e9ccb2dea1698d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83b14b8c-3f44-5ed2-bdaf-80eaf750a92a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('383945d4-f6c3-550f-b0ac-a75c06188595', 1), '6f1b5550a507b4d24d76953574649a343c4ffc00d47942a77e9ccb2dea1698d5',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e00cec1ceb21bd8fb4a4bc8176009cb102b2ff32a2f5448aa67c7f55738745e4.mp3', 3944, '2026-09-13 07:36:01.256241', 'abd66463558794876fc41297ae6a172c142236f47af5625b6a969585fb695dc8', 'validated', '{"audio_key":"e00cec1ceb21bd8fb4a4bc8176009cb102b2ff32a2f5448aa67c7f55738745e4","entity_key":"ex_summarizing_relaying_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"abd66463558794876fc41297ae6a172c142236f47af5625b6a969585fb695dc8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e00cec1ceb21bd8fb4a4bc8176009cb102b2ff32a2f5448aa67c7f55738745e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_practical_writing_04 -> audio/generated/de-DE/utterances/eff61f35acb1ee78d71cfa0cba7adb4df91f0c4352db5ef36349882587beb734.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4f067709-7003-51ff-83dc-16e56b9dd0df', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_practical_writing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5daafbc398f6f137910439c3ceb4480cb384f62b5e64bf21c380a8c99499f1ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2872cf12-584a-586e-8f9e-6c605c9c4db7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4f067709-7003-51ff-83dc-16e56b9dd0df', 1), '5daafbc398f6f137910439c3ceb4480cb384f62b5e64bf21c380a8c99499f1ff',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/eff61f35acb1ee78d71cfa0cba7adb4df91f0c4352db5ef36349882587beb734.mp3', 3944, '2026-09-13 07:36:02.512151', '3baab6dcde0d2da8cc3b76838d81981852b00c03679b080d6c6558892f2df01f', 'validated', '{"audio_key":"eff61f35acb1ee78d71cfa0cba7adb4df91f0c4352db5ef36349882587beb734","entity_key":"u_practical_writing_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3baab6dcde0d2da8cc3b76838d81981852b00c03679b080d6c6558892f2df01f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/eff61f35acb1ee78d71cfa0cba7adb4df91f0c4352db5ef36349882587beb734.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_summarizing_relaying_02 -> audio/generated/de-DE/utterances/f5fec51b3a74ee551f822ced8fc3624591afbf74b02301a571ce17985b5c2d4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('99d483a2-63d8-57af-882b-e8f4b5c77588', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_summarizing_relaying_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3718e57be34cf3199ce102bd771bbcb9789d5a7847656a3ca417139105117bb1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1939a85c-bd66-536c-b783-0d9a17f4b95b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('99d483a2-63d8-57af-882b-e8f4b5c77588', 1), '3718e57be34cf3199ce102bd771bbcb9789d5a7847656a3ca417139105117bb1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f5fec51b3a74ee551f822ced8fc3624591afbf74b02301a571ce17985b5c2d4e.mp3', 4179, '2026-09-13 07:36:02.660960', 'f3dc9071f644c487a3fce4c33a1f35edfdca0264d5a4a85d36205d4b9feebdb6', 'validated', '{"audio_key":"f5fec51b3a74ee551f822ced8fc3624591afbf74b02301a571ce17985b5c2d4e","entity_key":"u_summarizing_relaying_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f3dc9071f644c487a3fce4c33a1f35edfdca0264d5a4a85d36205d4b9feebdb6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f5fec51b3a74ee551f822ced8fc3624591afbf74b02301a571ce17985b5c2d4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_practical_writing_02 -> audio/generated/de-DE/utterances/fed275e2a1ed10aeb632d8e2991e5e1572039e9856ad89f013463b6bd4ac8dff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a61d4305-3b2a-51ca-8551-39d8083444f2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_practical_writing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3086f428bbcd9e90b978d7dfba72118f04fae5150bc306938415917b97d42bef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3235b483-65f1-5128-bb73-fe1e1280a00a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a61d4305-3b2a-51ca-8551-39d8083444f2', 1), '3086f428bbcd9e90b978d7dfba72118f04fae5150bc306938415917b97d42bef',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/fed275e2a1ed10aeb632d8e2991e5e1572039e9856ad89f013463b6bd4ac8dff.mp3', 4493, '2026-09-13 07:36:03.876663', '56b3c43ddcd466370548426270f11483c194e5e24973336a1ccbf51c35b13d22', 'validated', '{"audio_key":"fed275e2a1ed10aeb632d8e2991e5e1572039e9856ad89f013463b6bd4ac8dff","entity_key":"u_practical_writing_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"56b3c43ddcd466370548426270f11483c194e5e24973336a1ccbf51c35b13d22","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/fed275e2a1ed10aeb632d8e2991e5e1572039e9856ad89f013463b6bd4ac8dff.mp3"}'
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

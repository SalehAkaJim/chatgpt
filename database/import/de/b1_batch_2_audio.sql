-- Generated audio link import for de-DE B1
-- Source manifest: audio/manifests/de/B1-batch-2.json
-- Generated rows: 330
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'de' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'de-DE' LIMIT 1);
START TRANSACTION;

-- d_money_budget_03:3 -> audio/generated/de-DE/dialogues/068681b87589ecf2f770b6bbdb9803853f512db4d093c257472225729a4acadb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('02aa1df6-25ad-52fe-a7ec-3ab71a65e6d1', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_money_budget_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'daecd5e00fe76d1ba0f3fe97896c3674886902b7bb49537101b9738d6d35e37a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02417335-f766-5158-a12e-f5c2a1e4822c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('02aa1df6-25ad-52fe-a7ec-3ab71a65e6d1', 1), 'daecd5e00fe76d1ba0f3fe97896c3674886902b7bb49537101b9738d6d35e37a',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/068681b87589ecf2f770b6bbdb9803853f512db4d093c257472225729a4acadb.mp3', 2272, '2026-09-13 06:16:16.827453', 'b5d57a33abca4974058c9e208ffa1173d624f9c20a5ce36c00cb0dad26ee648c', 'validated', '{"audio_key":"068681b87589ecf2f770b6bbdb9803853f512db4d093c257472225729a4acadb","entity_key":"d_money_budget_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b5d57a33abca4974058c9e208ffa1173d624f9c20a5ce36c00cb0dad26ee648c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/068681b87589ecf2f770b6bbdb9803853f512db4d093c257472225729a4acadb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_decisions_consequences_03:3 -> audio/generated/de-DE/dialogues/0ab55edf7079183141fa6ed602c9afb6bbe78beeea5e2a351b97482c4004cee2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('269306be-29f1-5ce1-8233-dfa0ce6ad260', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_decisions_consequences_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e1a64e258a46c2f211960acd9a4ac0a79afc972775bf9e4c79655c96c51c511'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9e10f8b-06f2-58b4-8988-bb469a7930fa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('269306be-29f1-5ce1-8233-dfa0ce6ad260', 1), '2e1a64e258a46c2f211960acd9a4ac0a79afc972775bf9e4c79655c96c51c511',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0ab55edf7079183141fa6ed602c9afb6bbe78beeea5e2a351b97482c4004cee2.mp3', 1985, '2026-09-13 06:16:16.776668', '391935e52c0b0533a1a4cba63e6215f46f419dd442a6b086849ef8b2cef64514', 'validated', '{"audio_key":"0ab55edf7079183141fa6ed602c9afb6bbe78beeea5e2a351b97482c4004cee2","entity_key":"d_decisions_consequences_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"391935e52c0b0533a1a4cba63e6215f46f419dd442a6b086849ef8b2cef64514","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0ab55edf7079183141fa6ed602c9afb6bbe78beeea5e2a351b97482c4004cee2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_culture_events_02:1 -> audio/generated/de-DE/dialogues/0d19efdea404f971df82c832f2e94df905eb1687f433714f775ac813fc6a1466.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cf9437c2-292d-5e04-aec8-dc53bc277cb3', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_culture_events_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d00675a1c3a377fcef2c20e50902e22b6c2bef7f0e0cd758b64de178c928752'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bfe2b64a-7285-5b2e-9ef6-24947be67698', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cf9437c2-292d-5e04-aec8-dc53bc277cb3', 1), '6d00675a1c3a377fcef2c20e50902e22b6c2bef7f0e0cd758b64de178c928752',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0d19efdea404f971df82c832f2e94df905eb1687f433714f775ac813fc6a1466.mp3', 1515, '2026-09-13 06:16:17.906891', '9cb465be6c3736ad06193429a238165dda3759314c8bb31f622e00290bae791c', 'validated', '{"audio_key":"0d19efdea404f971df82c832f2e94df905eb1687f433714f775ac813fc6a1466","entity_key":"d_culture_events_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9cb465be6c3736ad06193429a238165dda3759314c8bb31f622e00290bae791c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/0d19efdea404f971df82c832f2e94df905eb1687f433714f775ac813fc6a1466.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complaints_returns_01:2 -> audio/generated/de-DE/dialogues/0ed53d16124863dc26ad3ecfb5a8d938f42f5e4146395b8e8c47b0115cf79b85.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('364c0508-d25c-5457-b50b-d9a89310950c', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complaints_returns_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6acb7465b3e1a68a0ab5f8202190b343196c7cd0d711fafbfe5acc39efffbd11'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b2b7bd66-bcf4-5ac7-92ff-663ab072d03f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('364c0508-d25c-5457-b50b-d9a89310950c', 1), '6acb7465b3e1a68a0ab5f8202190b343196c7cd0d711fafbfe5acc39efffbd11',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/0ed53d16124863dc26ad3ecfb5a8d938f42f5e4146395b8e8c47b0115cf79b85.mp3', 1436, '2026-09-13 06:16:17.884876', '4d642a2420ab72fd7222aec9486a4760eaf7996bbc3debd33cc43c80966c1807', 'validated', '{"audio_key":"0ed53d16124863dc26ad3ecfb5a8d938f42f5e4146395b8e8c47b0115cf79b85","entity_key":"d_complaints_returns_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"4d642a2420ab72fd7222aec9486a4760eaf7996bbc3debd33cc43c80966c1807","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/0ed53d16124863dc26ad3ecfb5a8d938f42f5e4146395b8e8c47b0115cf79b85.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_housing_renting_03:1 -> audio/generated/de-DE/dialogues/114c5dfc7f7173d991397b3f3a87d7ca10b8d93c658dd3b73ed8e3de634e143d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0c531218-2bd9-5271-a6c8-42cab03d0b92', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_housing_renting_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de5ef913f725170f909fd0a52ea11c5ab544e2b22434fe8637504b482f64eb8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('82c63c7a-397a-583d-b65d-5dc6a2a6ea42', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0c531218-2bd9-5271-a6c8-42cab03d0b92', 1), 'de5ef913f725170f909fd0a52ea11c5ab544e2b22434fe8637504b482f64eb8b',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/114c5dfc7f7173d991397b3f3a87d7ca10b8d93c658dd3b73ed8e3de634e143d.mp3', 2220, '2026-09-13 06:16:18.962172', 'b16c6168e65b13570d062122bb2f7bb74a4305170d22c93ddcbdd203f9d5c158', 'validated', '{"audio_key":"114c5dfc7f7173d991397b3f3a87d7ca10b8d93c658dd3b73ed8e3de634e143d","entity_key":"d_housing_renting_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b16c6168e65b13570d062122bb2f7bb74a4305170d22c93ddcbdd203f9d5c158","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/114c5dfc7f7173d991397b3f3a87d7ca10b8d93c658dd3b73ed8e3de634e143d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_courses_learning_02:3 -> audio/generated/de-DE/dialogues/12095b85b0ab5584acf67d1b348e23764e0ad0bbc08d58e34e4974d74d2114be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ab68465a-09ec-5b58-968a-c83af91666c4', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_courses_learning_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4b65de8aaa18146541d3a4891834f0e4306675efd041160266675e991fd2103'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('111163f7-9556-5cc9-892a-9ea50d41e0c1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ab68465a-09ec-5b58-968a-c83af91666c4', 1), 'b4b65de8aaa18146541d3a4891834f0e4306675efd041160266675e991fd2103',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/12095b85b0ab5584acf67d1b348e23764e0ad0bbc08d58e34e4974d74d2114be.mp3', 1697, '2026-09-13 06:16:18.927081', '542f6cfd0fe2c0fd8774bf05456601a3df0ccf515f046dde21ffcc13a555de9a', 'validated', '{"audio_key":"12095b85b0ab5584acf67d1b348e23764e0ad0bbc08d58e34e4974d74d2114be","entity_key":"d_courses_learning_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"542f6cfd0fe2c0fd8774bf05456601a3df0ccf515f046dde21ffcc13a555de9a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/12095b85b0ab5584acf67d1b348e23764e0ad0bbc08d58e34e4974d74d2114be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_decisions_consequences_01:4 -> audio/generated/de-DE/dialogues/15af061f2153dc77749749f326fa84db82f1b63eb2a7b1b954c683d7eb53c91d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2e45b204-62cf-5d90-8c66-9027df8bab6e', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_decisions_consequences_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a78bf15bec511b4e19c58bd3bf40dcbab4b5c4b4b9b5c18c8ed465f1c971a5c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bee2890b-7424-57b8-a74e-9a21063b9ba3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2e45b204-62cf-5d90-8c66-9027df8bab6e', 1), 'a78bf15bec511b4e19c58bd3bf40dcbab4b5c4b4b9b5c18c8ed465f1c971a5c9',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/15af061f2153dc77749749f326fa84db82f1b63eb2a7b1b954c683d7eb53c91d.mp3', 3239, '2026-09-13 06:16:20.108159', 'bd5b0340a56d8325a2f514444f414cb21665e27b5d8d86b5ae07e367184a4e64', 'validated', '{"audio_key":"15af061f2153dc77749749f326fa84db82f1b63eb2a7b1b954c683d7eb53c91d","entity_key":"d_decisions_consequences_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"bd5b0340a56d8325a2f514444f414cb21665e27b5d8d86b5ae07e367184a4e64","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/15af061f2153dc77749749f326fa84db82f1b63eb2a7b1b954c683d7eb53c91d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_job_applications_01:3 -> audio/generated/de-DE/dialogues/161de8e0e61b47748c610868f24c15c4c48b21a3c295a516ea4ddd6878bd8e0d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('98556e4a-387b-5709-95d8-3b62c31a0ff0', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_job_applications_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bacf4fe0e2b5797e975fa04573e74552f56cb4faa4a8d2d716132f4883c19811'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1aa9d062-77fe-5409-aef7-d19fa19f5443', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('98556e4a-387b-5709-95d8-3b62c31a0ff0', 1), 'bacf4fe0e2b5797e975fa04573e74552f56cb4faa4a8d2d716132f4883c19811',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/161de8e0e61b47748c610868f24c15c4c48b21a3c295a516ea4ddd6878bd8e0d.mp3', 2272, '2026-09-13 06:16:20.081774', '34266175b3126c94a8ce16f65cf962e8ee92b94ec01bc1cebd2b5298f03583c9', 'validated', '{"audio_key":"161de8e0e61b47748c610868f24c15c4c48b21a3c295a516ea4ddd6878bd8e0d","entity_key":"d_job_applications_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"34266175b3126c94a8ce16f65cf962e8ee92b94ec01bc1cebd2b5298f03583c9","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/161de8e0e61b47748c610868f24c15c4c48b21a3c295a516ea4ddd6878bd8e0d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_workplace_communication_02:4 -> audio/generated/de-DE/dialogues/165de4f3d1132a621b5dcc66e9daec73bb0f8c80a4ef8f3ffb12428a5bf774a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fbc9126f-07c5-5c4f-a01c-04f63c56b8d3', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_workplace_communication_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c726b023673781f51ceeff025402d42af8fc6279425f35ee5705a1aacdeaac5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c81cfe28-e4ae-595f-a801-8644820b85d7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fbc9126f-07c5-5c4f-a01c-04f63c56b8d3', 1), '2c726b023673781f51ceeff025402d42af8fc6279425f35ee5705a1aacdeaac5',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/165de4f3d1132a621b5dcc66e9daec73bb0f8c80a4ef8f3ffb12428a5bf774a2.mp3', 2351, '2026-09-13 06:16:21.302655', '8ec38798771ed60c81c266cea83a31bb369c436c9138aedf543ff0671d079638', 'validated', '{"audio_key":"165de4f3d1132a621b5dcc66e9daec73bb0f8c80a4ef8f3ffb12428a5bf774a2","entity_key":"d_workplace_communication_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"8ec38798771ed60c81c266cea83a31bb369c436c9138aedf543ff0671d079638","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/165de4f3d1132a621b5dcc66e9daec73bb0f8c80a4ef8f3ffb12428a5bf774a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_environment_recycling_02:1 -> audio/generated/de-DE/dialogues/16e75f70434d2a5b6f0de195787acdcdc0f1dd19919fa28e28139c21c8677cd0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('19558c09-77c7-508a-8ec2-7f2347114183', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_environment_recycling_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '25e0f54ad1c6ccc9d6711260a0f58489d06bf214951a7bc4287f61afcc8c2fed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a355cb3-9499-55a4-9e40-45498f6fe41f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('19558c09-77c7-508a-8ec2-7f2347114183', 1), '25e0f54ad1c6ccc9d6711260a0f58489d06bf214951a7bc4287f61afcc8c2fed',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/16e75f70434d2a5b6f0de195787acdcdc0f1dd19919fa28e28139c21c8677cd0.mp3', 2324, '2026-09-13 06:16:21.300749', 'b783c57595cbd1eb72a8db31909c1b9e423cf26f7cb5f2dd15eabb717ec3f84f', 'validated', '{"audio_key":"16e75f70434d2a5b6f0de195787acdcdc0f1dd19919fa28e28139c21c8677cd0","entity_key":"d_environment_recycling_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b783c57595cbd1eb72a8db31909c1b9e423cf26f7cb5f2dd15eabb717ec3f84f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/16e75f70434d2a5b6f0de195787acdcdc0f1dd19919fa28e28139c21c8677cd0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_courses_learning_01:2 -> audio/generated/de-DE/dialogues/172ca6a2bedef8ced9f7e21a1518af8cf8067a3515ec5ad3197b81646bcb9d8c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1929994d-2531-590a-9b00-8335b8f21b1d', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_courses_learning_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bb0fa44eec5fd84682a6e995c7ab9eaba4603b4c789674398d61384e7d4902f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('229a66f0-da62-5e87-b2fc-960af96fb2af', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1929994d-2531-590a-9b00-8335b8f21b1d', 1), 'bb0fa44eec5fd84682a6e995c7ab9eaba4603b4c789674398d61384e7d4902f9',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/172ca6a2bedef8ced9f7e21a1518af8cf8067a3515ec5ad3197b81646bcb9d8c.mp3', 2507, '2026-09-13 06:16:22.437626', '7a30005b48ca0a070deea815944cd007509babb9dfe9a13272fd103233bf8f3b', 'validated', '{"audio_key":"172ca6a2bedef8ced9f7e21a1518af8cf8067a3515ec5ad3197b81646bcb9d8c","entity_key":"d_courses_learning_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"7a30005b48ca0a070deea815944cd007509babb9dfe9a13272fd103233bf8f3b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/172ca6a2bedef8ced9f7e21a1518af8cf8067a3515ec5ad3197b81646bcb9d8c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_courses_learning_03:2 -> audio/generated/de-DE/dialogues/1b81bb51c4430cc5ac9ba6b125de703738347fc3a7752d51848ddea42925fd57.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('adb63680-e089-5570-9871-02f929269558', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_courses_learning_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e000c1cc18ff4d15237016bc19beb1ee005b81c2404938cbbf8db62c9ad8287'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f439cce-e357-5f7a-844f-2bb72f52b401', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('adb63680-e089-5570-9871-02f929269558', 1), '5e000c1cc18ff4d15237016bc19beb1ee005b81c2404938cbbf8db62c9ad8287',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/1b81bb51c4430cc5ac9ba6b125de703738347fc3a7752d51848ddea42925fd57.mp3', 2638, '2026-09-13 06:16:22.437491', 'e9ab60d9d9b49285c06bcb7b908c01bd63010a8b927773a27a88f183b822a4a9', 'validated', '{"audio_key":"1b81bb51c4430cc5ac9ba6b125de703738347fc3a7752d51848ddea42925fd57","entity_key":"d_courses_learning_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"e9ab60d9d9b49285c06bcb7b908c01bd63010a8b927773a27a88f183b822a4a9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/1b81bb51c4430cc5ac9ba6b125de703738347fc3a7752d51848ddea42925fd57.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relationships_conflict_01:1 -> audio/generated/de-DE/dialogues/2028405ed3544d4eee91927e41f35887f7b7fe91b22f8a95801e08700cd46a79.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('02f1fa80-71c3-5c07-9fe4-20631faca0df', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relationships_conflict_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff51a7cd0d0046d802007c76699be924fa694e440d9eab84a4a05bf05a991a70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d1477fe-6d15-58c0-8c38-2dd3b770d948', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('02f1fa80-71c3-5c07-9fe4-20631faca0df', 1), 'ff51a7cd0d0046d802007c76699be924fa694e440d9eab84a4a05bf05a991a70',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2028405ed3544d4eee91927e41f35887f7b7fe91b22f8a95801e08700cd46a79.mp3', 3657, '2026-09-13 06:16:23.812365', 'be64682128782140d46aeb5ab3057d504a54fd246ed8cea9f69c8d917920ea50', 'validated', '{"audio_key":"2028405ed3544d4eee91927e41f35887f7b7fe91b22f8a95801e08700cd46a79","entity_key":"d_relationships_conflict_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"be64682128782140d46aeb5ab3057d504a54fd246ed8cea9f69c8d917920ea50","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/2028405ed3544d4eee91927e41f35887f7b7fe91b22f8a95801e08700cd46a79.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relationships_conflict_01:2 -> audio/generated/de-DE/dialogues/203027c8b070b179d6ee1ac0aee5223df12e55be8e620fb0b82df34d6a8faff3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a6ab2c65-a880-5a91-b4e6-fcde8bdc8b0e', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relationships_conflict_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '709c9d90845570aadd04758b4d7446f633f12de8b9d5289f35c192db478f89e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd0952ee-c473-5bd2-bed6-901172851706', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a6ab2c65-a880-5a91-b4e6-fcde8bdc8b0e', 1), '709c9d90845570aadd04758b4d7446f633f12de8b9d5289f35c192db478f89e0',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/203027c8b070b179d6ee1ac0aee5223df12e55be8e620fb0b82df34d6a8faff3.mp3', 3761, '2026-09-13 06:16:23.771634', '7c5455ea016197b85e70022371dab6dc91ae332225b7ff425823f326306f0ea1', 'validated', '{"audio_key":"203027c8b070b179d6ee1ac0aee5223df12e55be8e620fb0b82df34d6a8faff3","entity_key":"d_relationships_conflict_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"7c5455ea016197b85e70022371dab6dc91ae332225b7ff425823f326306f0ea1","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/203027c8b070b179d6ee1ac0aee5223df12e55be8e620fb0b82df34d6a8faff3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_environment_recycling_03:1 -> audio/generated/de-DE/dialogues/20e1ecd4f3b27d987ffe5c58b68859ae5d9f85813035c27f5f4f1a5a4eee6646.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('50da2637-2ea4-5fb4-ad72-2f936f901727', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_environment_recycling_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '034815095bcb0a73db01ab9f72a470477f0f46b55c81a28f32d26cc9c624f549'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('10789282-e511-5b5d-b442-3d46dd1e8d99', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('50da2637-2ea4-5fb4-ad72-2f936f901727', 1), '034815095bcb0a73db01ab9f72a470477f0f46b55c81a28f32d26cc9c624f549',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/20e1ecd4f3b27d987ffe5c58b68859ae5d9f85813035c27f5f4f1a5a4eee6646.mp3', 2742, '2026-09-13 06:16:24.895866', 'da37e0269c199df32fad0e43a58d241edb37abcb6dbbd64a079ccf3ce71fd412', 'validated', '{"audio_key":"20e1ecd4f3b27d987ffe5c58b68859ae5d9f85813035c27f5f4f1a5a4eee6646","entity_key":"d_environment_recycling_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"da37e0269c199df32fad0e43a58d241edb37abcb6dbbd64a079ccf3ce71fd412","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/20e1ecd4f3b27d987ffe5c58b68859ae5d9f85813035c27f5f4f1a5a4eee6646.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_courses_learning_02:1 -> audio/generated/de-DE/dialogues/22cf0c5f07f73d7f09370312404bf7791568263dace0ffb68be17b116b47ab13.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4d1a2d0b-fd16-5712-917b-947d38a8abb7', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_courses_learning_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '37a36f6d32943a7a386c4768084640fd5085808aab4220763ea85765c73c7c81'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('887ab8a5-35a9-505d-9c7f-40b77524bdff', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4d1a2d0b-fd16-5712-917b-947d38a8abb7', 1), '37a36f6d32943a7a386c4768084640fd5085808aab4220763ea85765c73c7c81',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/22cf0c5f07f73d7f09370312404bf7791568263dace0ffb68be17b116b47ab13.mp3', 2403, '2026-09-13 06:16:24.873621', 'e94bdc2ad1e34dad2dd6b885529fb021ba2f07637fa5b45336217c917ac1106a', 'validated', '{"audio_key":"22cf0c5f07f73d7f09370312404bf7791568263dace0ffb68be17b116b47ab13","entity_key":"d_courses_learning_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e94bdc2ad1e34dad2dd6b885529fb021ba2f07637fa5b45336217c917ac1106a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/22cf0c5f07f73d7f09370312404bf7791568263dace0ffb68be17b116b47ab13.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_courses_learning_03:4 -> audio/generated/de-DE/dialogues/27341589d0d27e61244072e647ddabec29b842987681a22690f4608737116f19.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fb3b9a68-2331-5446-a973-893ef3944e70', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_courses_learning_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '59d3ddb78f390dfd90292f9e9a6d1447773579212a2297110f00ce130b3b807a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94b9f858-163d-5525-b515-0481911024f6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fb3b9a68-2331-5446-a973-893ef3944e70', 1), '59d3ddb78f390dfd90292f9e9a6d1447773579212a2297110f00ce130b3b807a',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/27341589d0d27e61244072e647ddabec29b842987681a22690f4608737116f19.mp3', 3996, '2026-09-13 06:16:26.177961', '4618b25c770169ce821bd9a32a7f517c7770468445c74f7d01d50bfa7c3af8f6', 'validated', '{"audio_key":"27341589d0d27e61244072e647ddabec29b842987681a22690f4608737116f19","entity_key":"d_courses_learning_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"4618b25c770169ce821bd9a32a7f517c7770468445c74f7d01d50bfa7c3af8f6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/27341589d0d27e61244072e647ddabec29b842987681a22690f4608737116f19.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_environment_recycling_02:2 -> audio/generated/de-DE/dialogues/2752263e89d1b576ac8d0304bc5974ce920be665cd864982b784c909a2d29083.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('868c5de4-c694-5308-87c7-da014cb5c542', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_environment_recycling_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '027de215e619eb572a44d6e5f4acf21336c04d2c8826d4f81de1143c99d75df3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96648a33-9dfd-5ac6-a8d3-d326c049c67c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('868c5de4-c694-5308-87c7-da014cb5c542', 1), '027de215e619eb572a44d6e5f4acf21336c04d2c8826d4f81de1143c99d75df3',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2752263e89d1b576ac8d0304bc5974ce920be665cd864982b784c909a2d29083.mp3', 3239, '2026-09-13 06:16:26.110685', '2ea8979597143c6cecc5e01f2d9520b40c21cfd78d29748c1fb5b65b683d9aa9', 'validated', '{"audio_key":"2752263e89d1b576ac8d0304bc5974ce920be665cd864982b784c909a2d29083","entity_key":"d_environment_recycling_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"2ea8979597143c6cecc5e01f2d9520b40c21cfd78d29748c1fb5b65b683d9aa9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/2752263e89d1b576ac8d0304bc5974ce920be665cd864982b784c909a2d29083.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_culture_events_01:1 -> audio/generated/de-DE/dialogues/2a65cc479d62d1668d5b73b51f4b0bb35aca133b5e84d6607542ab045a44ff7b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1ffeb6b6-5681-5a52-8b94-bf2ea95b5cf0', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_culture_events_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b0bc47b3d89087029273ebfa6a0ea45ebdfeb5fea50fa8b1b7ad0fee0879e46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('010e8a00-3b12-50ff-91ed-b445e79af4a1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1ffeb6b6-5681-5a52-8b94-bf2ea95b5cf0', 1), '5b0bc47b3d89087029273ebfa6a0ea45ebdfeb5fea50fa8b1b7ad0fee0879e46',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2a65cc479d62d1668d5b73b51f4b0bb35aca133b5e84d6607542ab045a44ff7b.mp3', 2351, '2026-09-13 06:16:27.321801', 'a9adbd3bbcbf4c5a38abee1348b0bba0db1ac87262f450281b40075471afc316', 'validated', '{"audio_key":"2a65cc479d62d1668d5b73b51f4b0bb35aca133b5e84d6607542ab045a44ff7b","entity_key":"d_culture_events_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a9adbd3bbcbf4c5a38abee1348b0bba0db1ac87262f450281b40075471afc316","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2a65cc479d62d1668d5b73b51f4b0bb35aca133b5e84d6607542ab045a44ff7b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_money_budget_02:3 -> audio/generated/de-DE/dialogues/2af6201458cb965c715b8d1cf7e1cbc7baeb178c9206a19e4f32c65e3e2f0717.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9ec48b62-4bfb-5a41-a0d9-b31cfc32e70c', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_money_budget_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae958042f856b426bde4e960c7b1232225d065ea6ea87fae6c513460d14e60d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01e639d8-fb04-5d40-8534-8ab892bf9871', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9ec48b62-4bfb-5a41-a0d9-b31cfc32e70c', 1), 'ae958042f856b426bde4e960c7b1232225d065ea6ea87fae6c513460d14e60d0',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2af6201458cb965c715b8d1cf7e1cbc7baeb178c9206a19e4f32c65e3e2f0717.mp3', 4075, '2026-09-13 06:16:27.492931', 'be0033794d1640000c0736c630ed9f65f8d1a9328a1ad2fe2f1796c46fd46b91', 'validated', '{"audio_key":"2af6201458cb965c715b8d1cf7e1cbc7baeb178c9206a19e4f32c65e3e2f0717","entity_key":"d_money_budget_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"be0033794d1640000c0736c630ed9f65f8d1a9328a1ad2fe2f1796c46fd46b91","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/2af6201458cb965c715b8d1cf7e1cbc7baeb178c9206a19e4f32c65e3e2f0717.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_decisions_consequences_02:3 -> audio/generated/de-DE/dialogues/2c512cfe1dd005795fa75f2618da593cb180256dc43d0c2b2c1501c69acbbf9b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('00e3a33c-efcb-51bf-93a7-dcd34a0510a5', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_decisions_consequences_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b04e99c26d3854eaefa84d0290841e2b47e1a21033802859e00de1fb740d93b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f6905622-066e-57a4-9894-4a5707b4dd1d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('00e3a33c-efcb-51bf-93a7-dcd34a0510a5', 1), 'b04e99c26d3854eaefa84d0290841e2b47e1a21033802859e00de1fb740d93b2',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2c512cfe1dd005795fa75f2618da593cb180256dc43d0c2b2c1501c69acbbf9b.mp3', 2115, '2026-09-13 06:16:28.350827', '0d07c85dab9879dc06fa88d00ca40ff74e4688977fafc822ce1dd52f45b595ef', 'validated', '{"audio_key":"2c512cfe1dd005795fa75f2618da593cb180256dc43d0c2b2c1501c69acbbf9b","entity_key":"d_decisions_consequences_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0d07c85dab9879dc06fa88d00ca40ff74e4688977fafc822ce1dd52f45b595ef","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2c512cfe1dd005795fa75f2618da593cb180256dc43d0c2b2c1501c69acbbf9b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_workplace_communication_01:3 -> audio/generated/de-DE/dialogues/2c5f1c11fe29886eb4a78b3c65f2141b82e80393216c6855312a9bc1f1e9dfe4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('254f6731-3546-51df-a9fc-afe38f67250f', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_workplace_communication_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc9ad72ecafa895189e9054a93240fba01866f5667d144ae98e82aed6d082634'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47d1f36c-863c-5576-ad3c-620ecd3d142f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('254f6731-3546-51df-a9fc-afe38f67250f', 1), 'cc9ad72ecafa895189e9054a93240fba01866f5667d144ae98e82aed6d082634',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2c5f1c11fe29886eb4a78b3c65f2141b82e80393216c6855312a9bc1f1e9dfe4.mp3', 2690, '2026-09-13 06:16:28.661964', 'ce5ef21c4d31d7283468bd2b3f84382a062f85ebf772c4ec9b5bc5ba78b7d6b2', 'validated', '{"audio_key":"2c5f1c11fe29886eb4a78b3c65f2141b82e80393216c6855312a9bc1f1e9dfe4","entity_key":"d_workplace_communication_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ce5ef21c4d31d7283468bd2b3f84382a062f85ebf772c4ec9b5bc5ba78b7d6b2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2c5f1c11fe29886eb4a78b3c65f2141b82e80393216c6855312a9bc1f1e9dfe4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relationships_conflict_02:1 -> audio/generated/de-DE/dialogues/2c73a5f93435a9cb663da5054bc52aa1319da9864159e410053d39948f8ed7d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6c98fd21-dfd2-5f15-aa32-80b97ec49fea', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relationships_conflict_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ae7f4efb675178ea066dafe7dc19414558bdd42a19ddf86b2b06c9519b4c4b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68600d87-91f3-5f80-9810-73cc151fdb2a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6c98fd21-dfd2-5f15-aa32-80b97ec49fea', 1), '1ae7f4efb675178ea066dafe7dc19414558bdd42a19ddf86b2b06c9519b4c4b4',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2c73a5f93435a9cb663da5054bc52aa1319da9864159e410053d39948f8ed7d2.mp3', 3369, '2026-09-13 06:16:29.546038', '34f6e23d088ce456ecafd2a0af73e212039a2e1a7ac8e5cc84be29559332f6ac', 'validated', '{"audio_key":"2c73a5f93435a9cb663da5054bc52aa1319da9864159e410053d39948f8ed7d2","entity_key":"d_relationships_conflict_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"34f6e23d088ce456ecafd2a0af73e212039a2e1a7ac8e5cc84be29559332f6ac","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2c73a5f93435a9cb663da5054bc52aa1319da9864159e410053d39948f8ed7d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_money_budget_02:1 -> audio/generated/de-DE/dialogues/2dead2a7448cbf3684dae7a52e29f6ce0bdd0b9f7a386eb03082684eb7bd7144.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e7b70a00-af6b-5b8f-9712-955ce4c0a308', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_money_budget_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1495c405be5656ba83221d47d6ed4a6d06ee685ed02a0deeb4970dbc5ac63ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6559e02c-3334-5fc3-a680-eb3f6e86c86b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e7b70a00-af6b-5b8f-9712-955ce4c0a308', 1), 'a1495c405be5656ba83221d47d6ed4a6d06ee685ed02a0deeb4970dbc5ac63ec',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2dead2a7448cbf3684dae7a52e29f6ce0bdd0b9f7a386eb03082684eb7bd7144.mp3', 2821, '2026-09-13 06:16:29.793038', 'b4765a6f067dfb2d92b1e7ab107c10bd5b9259ab83999d614232d57b02ff5242', 'validated', '{"audio_key":"2dead2a7448cbf3684dae7a52e29f6ce0bdd0b9f7a386eb03082684eb7bd7144","entity_key":"d_money_budget_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b4765a6f067dfb2d92b1e7ab107c10bd5b9259ab83999d614232d57b02ff5242","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/2dead2a7448cbf3684dae7a52e29f6ce0bdd0b9f7a386eb03082684eb7bd7144.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relationships_conflict_02:4 -> audio/generated/de-DE/dialogues/2feddf93ac2655493d366ff38c77f9b0501c0afa9e6b11d0f8d5f256aa2cb402.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('07e8f89c-a91a-540c-addd-5df531818245', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relationships_conflict_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc8f3bbe6e759e6babf20682d60760d42ff92891e68539ab259384f2a257ca89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c96f29bb-fea1-58cb-acf3-6b364226e6d9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('07e8f89c-a91a-540c-addd-5df531818245', 1), 'bc8f3bbe6e759e6babf20682d60760d42ff92891e68539ab259384f2a257ca89',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/2feddf93ac2655493d366ff38c77f9b0501c0afa9e6b11d0f8d5f256aa2cb402.mp3', 2821, '2026-09-13 06:16:30.677757', '795e342f1df0d7896e9bf3b6821caaba9b517a245cf3dbb823a960b0a6ae3288', 'validated', '{"audio_key":"2feddf93ac2655493d366ff38c77f9b0501c0afa9e6b11d0f8d5f256aa2cb402","entity_key":"d_relationships_conflict_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"795e342f1df0d7896e9bf3b6821caaba9b517a245cf3dbb823a960b0a6ae3288","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/2feddf93ac2655493d366ff38c77f9b0501c0afa9e6b11d0f8d5f256aa2cb402.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_housing_renting_03:2 -> audio/generated/de-DE/dialogues/30f888c54a06b21da0a9f444ce634f2cb32c5a5a1e8678b339a2927ffafe1cd8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4b232ac2-1b18-5715-85cd-786ca7c8ae36', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_housing_renting_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f0faac22fcf71c1dafaa2c1a0aca8e2ff9ac3fd67fe1fd2b3361dddf17186bb0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('15903548-b3b3-5a93-acbf-d05503de763e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4b232ac2-1b18-5715-85cd-786ca7c8ae36', 1), 'f0faac22fcf71c1dafaa2c1a0aca8e2ff9ac3fd67fe1fd2b3361dddf17186bb0',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/30f888c54a06b21da0a9f444ce634f2cb32c5a5a1e8678b339a2927ffafe1cd8.mp3', 2690, '2026-09-13 06:16:30.923297', '3faa64e6d487dbabe267fb2ae8851234acc94cb1c207bd7a6bc660ba1a2b4d57', 'validated', '{"audio_key":"30f888c54a06b21da0a9f444ce634f2cb32c5a5a1e8678b339a2927ffafe1cd8","entity_key":"d_housing_renting_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3faa64e6d487dbabe267fb2ae8851234acc94cb1c207bd7a6bc660ba1a2b4d57","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/30f888c54a06b21da0a9f444ce634f2cb32c5a5a1e8678b339a2927ffafe1cd8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_job_applications_01:1 -> audio/generated/de-DE/dialogues/33e6d96d717460d93412787f339a8a7ef6d96db26b84cfe7c8ec71eeeb1a69b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('95eb5643-4489-5127-b0e6-1cc24982bd0b', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_job_applications_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9925916e33ce11365f6dbb0d580e5f66b1ddd51e2dfa7370d12809404ac01b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2cf8bb0a-bd4b-5436-b077-128fc7e479ba', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('95eb5643-4489-5127-b0e6-1cc24982bd0b', 1), 'b9925916e33ce11365f6dbb0d580e5f66b1ddd51e2dfa7370d12809404ac01b7',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/33e6d96d717460d93412787f339a8a7ef6d96db26b84cfe7c8ec71eeeb1a69b0.mp3', 1933, '2026-09-13 06:16:31.923497', '2bf0ba81509b7587d353c175d2322ec438c82409f9d0427d7287e83f67801e01', 'validated', '{"audio_key":"33e6d96d717460d93412787f339a8a7ef6d96db26b84cfe7c8ec71eeeb1a69b0","entity_key":"d_job_applications_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"2bf0ba81509b7587d353c175d2322ec438c82409f9d0427d7287e83f67801e01","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/33e6d96d717460d93412787f339a8a7ef6d96db26b84cfe7c8ec71eeeb1a69b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_decisions_consequences_03:4 -> audio/generated/de-DE/dialogues/390159f59d27bcb2e1e5de8c904203952a62a9be6ce5edea11681f6d15335e20.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cb70db7d-7c2a-53d4-8dc4-a4dcf37eeb0f', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_decisions_consequences_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb40c86d5f824c0f5fe81144b0f91ee7374c8a8b76dce690a835579da9983b78'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('973f1738-872b-5cf0-8e59-8afc66639e3a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cb70db7d-7c2a-53d4-8dc4-a4dcf37eeb0f', 1), 'cb40c86d5f824c0f5fe81144b0f91ee7374c8a8b76dce690a835579da9983b78',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/390159f59d27bcb2e1e5de8c904203952a62a9be6ce5edea11681f6d15335e20.mp3', 2821, '2026-09-13 06:16:32.092032', 'e19dce6273024ba459969a634ed7a4cd0c0e946a940f2a96616ac947ec9cd277', 'validated', '{"audio_key":"390159f59d27bcb2e1e5de8c904203952a62a9be6ce5edea11681f6d15335e20","entity_key":"d_decisions_consequences_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"e19dce6273024ba459969a634ed7a4cd0c0e946a940f2a96616ac947ec9cd277","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/390159f59d27bcb2e1e5de8c904203952a62a9be6ce5edea11681f6d15335e20.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_environment_recycling_01:3 -> audio/generated/de-DE/dialogues/3b40e4004b14ee99890334b6408719cf9edb40d8ec86a7e62b8bf7b0f031243e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('267075d4-1105-597e-bcb8-495b57eecc06', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_environment_recycling_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd37c325c1c5723de8b2b85ac617d1231f6d7b51a5b458ca468936e0a6943c4be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('69d0e0ea-b152-5cdb-a3b7-5799cdbf5257', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('267075d4-1105-597e-bcb8-495b57eecc06', 1), 'd37c325c1c5723de8b2b85ac617d1231f6d7b51a5b458ca468936e0a6943c4be',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3b40e4004b14ee99890334b6408719cf9edb40d8ec86a7e62b8bf7b0f031243e.mp3', 3343, '2026-09-13 06:16:33.142049', '6dd0d219e07075282bb2942e799645d0ce97dbd39f4aed21d49425a27241873c', 'validated', '{"audio_key":"3b40e4004b14ee99890334b6408719cf9edb40d8ec86a7e62b8bf7b0f031243e","entity_key":"d_environment_recycling_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6dd0d219e07075282bb2942e799645d0ce97dbd39f4aed21d49425a27241873c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3b40e4004b14ee99890334b6408719cf9edb40d8ec86a7e62b8bf7b0f031243e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_job_applications_03:2 -> audio/generated/de-DE/dialogues/3f5a6077abd49fa0e05e9bdb2aa8a9745f46d63467e695131365a4ff03bd26ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('30bb55e1-b9fd-50f8-be39-a30a048af4fa', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_job_applications_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd1f6417eb12361f389fd482bff3dd4750da480583ac42c420b638c09cdaf9ea7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14765a66-452d-54e0-be3f-88e206eeb2ac', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('30bb55e1-b9fd-50f8-be39-a30a048af4fa', 1), 'd1f6417eb12361f389fd482bff3dd4750da480583ac42c420b638c09cdaf9ea7',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3f5a6077abd49fa0e05e9bdb2aa8a9745f46d63467e695131365a4ff03bd26ff.mp3', 3840, '2026-09-13 06:16:33.488838', 'c70992e2cdd398faede1788b1cee55979ef99d098cfd6b1021290881f60f2ba3', 'validated', '{"audio_key":"3f5a6077abd49fa0e05e9bdb2aa8a9745f46d63467e695131365a4ff03bd26ff","entity_key":"d_job_applications_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"c70992e2cdd398faede1788b1cee55979ef99d098cfd6b1021290881f60f2ba3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/3f5a6077abd49fa0e05e9bdb2aa8a9745f46d63467e695131365a4ff03bd26ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_environment_recycling_01:4 -> audio/generated/de-DE/dialogues/3fd9009d820ada7c67b22f5c5053cf17299457b525cfbe5e1ed310d47ef13a26.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9c6d01f1-156c-5358-b793-2c90449439ec', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_environment_recycling_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '908817f87e574f7e3baf1acfaf3f45a173c15f46acd6938bb71e892dfa00f2f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('44e29c77-2a85-5927-aa99-dc1abb5a488a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9c6d01f1-156c-5358-b793-2c90449439ec', 1), '908817f87e574f7e3baf1acfaf3f45a173c15f46acd6938bb71e892dfa00f2f5',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/3fd9009d820ada7c67b22f5c5053cf17299457b525cfbe5e1ed310d47ef13a26.mp3', 3239, '2026-09-13 06:16:34.361202', '4415153a0f66a02508c639f5ac3dacdc565104f4782c1fc48c6c7eb2dccf1847', 'validated', '{"audio_key":"3fd9009d820ada7c67b22f5c5053cf17299457b525cfbe5e1ed310d47ef13a26","entity_key":"d_environment_recycling_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4415153a0f66a02508c639f5ac3dacdc565104f4782c1fc48c6c7eb2dccf1847","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/3fd9009d820ada7c67b22f5c5053cf17299457b525cfbe5e1ed310d47ef13a26.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complaints_returns_03:4 -> audio/generated/de-DE/dialogues/41e4856721278c8a81655c9a9f39e49f3510c55033b2998edc4c6a90bf61dcce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d23d4c6c-67fb-5e29-991a-1631cda18c5d', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complaints_returns_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a7c8634a7ac9675f275a0ca43d7e92eccfdf135f1b002d99a22777c6cf5fe789'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('107c120d-8297-543f-80aa-26289a45dc34', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d23d4c6c-67fb-5e29-991a-1631cda18c5d', 1), 'a7c8634a7ac9675f275a0ca43d7e92eccfdf135f1b002d99a22777c6cf5fe789',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/41e4856721278c8a81655c9a9f39e49f3510c55033b2998edc4c6a90bf61dcce.mp3', 2507, '2026-09-13 06:16:34.642142', '9d436ec9b831a4bf487a9e42f09011f570a367e885c930af1f8bd7fca4cfb26b', 'validated', '{"audio_key":"41e4856721278c8a81655c9a9f39e49f3510c55033b2998edc4c6a90bf61dcce","entity_key":"d_complaints_returns_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"9d436ec9b831a4bf487a9e42f09011f570a367e885c930af1f8bd7fca4cfb26b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/41e4856721278c8a81655c9a9f39e49f3510c55033b2998edc4c6a90bf61dcce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_courses_learning_01:1 -> audio/generated/de-DE/dialogues/429a66ceb68f257c00d886af3a8a85eab8474f682010eedb5003a86263190b00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('40afb7ad-4db0-5717-bb9b-f00c4777981d', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_courses_learning_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd22596638f1fb7d6e3ced7e0a0f20fc3bb4d7fb74ee23c61722b63eed1cb2b3a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11c90c58-7f8b-5f4e-8259-5d58c7c7e648', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('40afb7ad-4db0-5717-bb9b-f00c4777981d', 1), 'd22596638f1fb7d6e3ced7e0a0f20fc3bb4d7fb74ee23c61722b63eed1cb2b3a',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/429a66ceb68f257c00d886af3a8a85eab8474f682010eedb5003a86263190b00.mp3', 3186, '2026-09-13 06:16:35.506641', '944f91df7d2e29379e24446d68359155d2e5625efcf6a1b9ff1ca7d6e1114fb1', 'validated', '{"audio_key":"429a66ceb68f257c00d886af3a8a85eab8474f682010eedb5003a86263190b00","entity_key":"d_courses_learning_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"944f91df7d2e29379e24446d68359155d2e5625efcf6a1b9ff1ca7d6e1114fb1","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/429a66ceb68f257c00d886af3a8a85eab8474f682010eedb5003a86263190b00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_decisions_consequences_02:2 -> audio/generated/de-DE/dialogues/454503dcf06bf2367542d2103682fed0902cb76fc50f4d6fda4f57864f6e6505.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c810cbc4-f4f9-57f5-97dc-b6127bc053ed', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_decisions_consequences_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8a17e530d2a5e5e31f7da79e0c2f51cf77fe172a208946dc5d7b1225ad6604f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4148c06d-692e-5b20-be7a-bedf306f2c5e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c810cbc4-f4f9-57f5-97dc-b6127bc053ed', 1), '8a17e530d2a5e5e31f7da79e0c2f51cf77fe172a208946dc5d7b1225ad6604f5',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/454503dcf06bf2367542d2103682fed0902cb76fc50f4d6fda4f57864f6e6505.mp3', 2925, '2026-09-13 06:16:35.860871', '754b835bffe1881d8e35254a64bfd329940c93cb7f275657541f3831a94f516f', 'validated', '{"audio_key":"454503dcf06bf2367542d2103682fed0902cb76fc50f4d6fda4f57864f6e6505","entity_key":"d_decisions_consequences_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"754b835bffe1881d8e35254a64bfd329940c93cb7f275657541f3831a94f516f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/454503dcf06bf2367542d2103682fed0902cb76fc50f4d6fda4f57864f6e6505.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_culture_events_01:2 -> audio/generated/de-DE/dialogues/46ae3b46701b094cbef61ca00eadf2b79376513cf02118764fb77772101fe966.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3cba90e3-e8a1-5590-b9a4-e12ab49c1541', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_culture_events_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f7bbcfa80cdbbb8ff9518b91fb957eb6f0d69b772c8449180bad37c32508436'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3741be99-d5aa-5dab-9e72-fe8994bad679', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3cba90e3-e8a1-5590-b9a4-e12ab49c1541', 1), '5f7bbcfa80cdbbb8ff9518b91fb957eb6f0d69b772c8449180bad37c32508436',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/46ae3b46701b094cbef61ca00eadf2b79376513cf02118764fb77772101fe966.mp3', 2115, '2026-09-13 06:16:36.547857', 'c2831b2f4edc2c9f84fe30ece3165a54d798c40df5f801b0cfaa3f4578fd7f15', 'validated', '{"audio_key":"46ae3b46701b094cbef61ca00eadf2b79376513cf02118764fb77772101fe966","entity_key":"d_culture_events_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c2831b2f4edc2c9f84fe30ece3165a54d798c40df5f801b0cfaa3f4578fd7f15","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/46ae3b46701b094cbef61ca00eadf2b79376513cf02118764fb77772101fe966.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_housing_renting_03:4 -> audio/generated/de-DE/dialogues/478889e4364350722be7d88941db22ed155c45f81b20d90f64ffc5b178ca84e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5ecab4c2-063a-5d92-8d67-e952be7d487c', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_housing_renting_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eca986e43e0b3c3a12736ab40ad4d1a4beac287225d2df6ac1d5912e55439590'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22bc4252-5881-5fe7-9f2b-fbb0aabf4edd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5ecab4c2-063a-5d92-8d67-e952be7d487c', 1), 'eca986e43e0b3c3a12736ab40ad4d1a4beac287225d2df6ac1d5912e55439590',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/478889e4364350722be7d88941db22ed155c45f81b20d90f64ffc5b178ca84e3.mp3', 2821, '2026-09-13 06:16:37.032719', '09c522ba7318edb31a6d7fa8674920d6adf2923b3f7bd37943e7ba5584106f29', 'validated', '{"audio_key":"478889e4364350722be7d88941db22ed155c45f81b20d90f64ffc5b178ca84e3","entity_key":"d_housing_renting_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"09c522ba7318edb31a6d7fa8674920d6adf2923b3f7bd37943e7ba5584106f29","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/478889e4364350722be7d88941db22ed155c45f81b20d90f64ffc5b178ca84e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_workplace_communication_02:2 -> audio/generated/de-DE/dialogues/4909c6cdc511c02e7d89b6f51910f7b5bb9e3c2d3b7d97a83199aeb7abef1234.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9a74c16b-afd2-5eb4-ab05-1f06f07d8d4c', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_workplace_communication_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97e7f41430fadf1018b12e753c2c558f933907a8b3727a8f1939118ec830aa62'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5eb6ec44-4773-5ee2-95c3-096772c98a73', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9a74c16b-afd2-5eb4-ab05-1f06f07d8d4c', 1), '97e7f41430fadf1018b12e753c2c558f933907a8b3727a8f1939118ec830aa62',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4909c6cdc511c02e7d89b6f51910f7b5bb9e3c2d3b7d97a83199aeb7abef1234.mp3', 3474, '2026-09-13 06:16:37.734608', 'ce98071cc9dce6b434021306fc41ebeebb5cad58151772c9fb688002d18d0c45', 'validated', '{"audio_key":"4909c6cdc511c02e7d89b6f51910f7b5bb9e3c2d3b7d97a83199aeb7abef1234","entity_key":"d_workplace_communication_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"ce98071cc9dce6b434021306fc41ebeebb5cad58151772c9fb688002d18d0c45","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/4909c6cdc511c02e7d89b6f51910f7b5bb9e3c2d3b7d97a83199aeb7abef1234.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_workplace_communication_03:2 -> audio/generated/de-DE/dialogues/4ce1dd7179065d0171f437802334859821a30d578e187637a81ce7d5b3bf605c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8b501bb0-e2ef-5cbc-b32d-0b167dd0628a', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_workplace_communication_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2bcfc41e1c0df7e4975b616a697a3712865e24710a9c7dd6a088ea6a1cca6aa4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c468dba-e9c5-5782-8d65-af7f3f397976', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8b501bb0-e2ef-5cbc-b32d-0b167dd0628a', 1), '2bcfc41e1c0df7e4975b616a697a3712865e24710a9c7dd6a088ea6a1cca6aa4',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4ce1dd7179065d0171f437802334859821a30d578e187637a81ce7d5b3bf605c.mp3', 3369, '2026-09-13 06:16:38.265726', '9f1b9eb6317a1eb9f299fc06f1e5850884cb931929737f0408e5dcca4cbc9711', 'validated', '{"audio_key":"4ce1dd7179065d0171f437802334859821a30d578e187637a81ce7d5b3bf605c","entity_key":"d_workplace_communication_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9f1b9eb6317a1eb9f299fc06f1e5850884cb931929737f0408e5dcca4cbc9711","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/4ce1dd7179065d0171f437802334859821a30d578e187637a81ce7d5b3bf605c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_culture_events_01:3 -> audio/generated/de-DE/dialogues/4dc886e30afb1c366db6c42bd6a812bb759da9042648757b3b510b37c2ba094a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7ce6f079-a399-504e-b0d6-3a0d182cbd8b', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_culture_events_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f1e4aca8c8f31085fe9c0ab77c4aabd67408663b2d94066c98e6c7644c16c5c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b67e824a-a470-5476-a6f9-69dd6ec5b84d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7ce6f079-a399-504e-b0d6-3a0d182cbd8b', 1), '2f1e4aca8c8f31085fe9c0ab77c4aabd67408663b2d94066c98e6c7644c16c5c',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/4dc886e30afb1c366db6c42bd6a812bb759da9042648757b3b510b37c2ba094a.mp3', 3004, '2026-09-13 06:16:38.928625', '97758425e00b6d1a6a27d4e21cb4a777b5f1a6534d9de9bce422deb4496b4f01', 'validated', '{"audio_key":"4dc886e30afb1c366db6c42bd6a812bb759da9042648757b3b510b37c2ba094a","entity_key":"d_culture_events_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"97758425e00b6d1a6a27d4e21cb4a777b5f1a6534d9de9bce422deb4496b4f01","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/4dc886e30afb1c366db6c42bd6a812bb759da9042648757b3b510b37c2ba094a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_workplace_communication_01:2 -> audio/generated/de-DE/dialogues/55f1b323be3a81518557a3f0431e10615aabb4ed82d5509a50aca1ead25ea05b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ea396429-8b42-53f5-9c72-2751da45b018', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_workplace_communication_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c27e3a6837f0b5240ec309abfde24131030ce1d5da98cd62204c9e55cb1838d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a429b11a-76fb-5372-8fe3-3e97a20fd41f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ea396429-8b42-53f5-9c72-2751da45b018', 1), 'c27e3a6837f0b5240ec309abfde24131030ce1d5da98cd62204c9e55cb1838d1',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/55f1b323be3a81518557a3f0431e10615aabb4ed82d5509a50aca1ead25ea05b.mp3', 1671, '2026-09-13 06:16:39.275466', 'e2fef76a4fbac30c345649690f9dff73d1cee25e7b92c26aec2469f8ee5fa914', 'validated', '{"audio_key":"55f1b323be3a81518557a3f0431e10615aabb4ed82d5509a50aca1ead25ea05b","entity_key":"d_workplace_communication_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e2fef76a4fbac30c345649690f9dff73d1cee25e7b92c26aec2469f8ee5fa914","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/55f1b323be3a81518557a3f0431e10615aabb4ed82d5509a50aca1ead25ea05b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relationships_conflict_03:3 -> audio/generated/de-DE/dialogues/579ecaf639791b71b29099daf9eeb11e2b19222aeea80b54a972674137bd5935.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b20a8312-eff6-5810-a335-b0d605d0875b', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relationships_conflict_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a6cd096cd4f7f2a08d04481d9549f66f770e7563274564f99fa3fea85db50f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('075eb399-62ca-5063-ae08-4291f6868e27', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b20a8312-eff6-5810-a335-b0d605d0875b', 1), '7a6cd096cd4f7f2a08d04481d9549f66f770e7563274564f99fa3fea85db50f2',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/579ecaf639791b71b29099daf9eeb11e2b19222aeea80b54a972674137bd5935.mp3', 3004, '2026-09-13 06:16:40.066210', '270571344340b28fe06cb83623e1f616116fa1a6bc49453cdb47ffc430e76bd1', 'validated', '{"audio_key":"579ecaf639791b71b29099daf9eeb11e2b19222aeea80b54a972674137bd5935","entity_key":"d_relationships_conflict_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"270571344340b28fe06cb83623e1f616116fa1a6bc49453cdb47ffc430e76bd1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/579ecaf639791b71b29099daf9eeb11e2b19222aeea80b54a972674137bd5935.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_money_budget_01:1 -> audio/generated/de-DE/dialogues/582ddfb2442592f5dfbaf54c700314062117f56b55ae0b7c023e93f866495ea1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3556c6de-6536-5c71-b784-14a978a2c443', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_money_budget_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'daa23b75d6563336cd471f4e2bc3cccd437b73536ca1c52a9048aa4000a80562'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f7f4489-261b-551b-a479-8b01ad12d0d3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3556c6de-6536-5c71-b784-14a978a2c443', 1), 'daa23b75d6563336cd471f4e2bc3cccd437b73536ca1c52a9048aa4000a80562',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/582ddfb2442592f5dfbaf54c700314062117f56b55ae0b7c023e93f866495ea1.mp3', 2873, '2026-09-13 06:16:40.566485', 'd6cc2d4634726ef0606d00515197ccc92f80939bcebfbae703f77972e60c7266', 'validated', '{"audio_key":"582ddfb2442592f5dfbaf54c700314062117f56b55ae0b7c023e93f866495ea1","entity_key":"d_money_budget_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d6cc2d4634726ef0606d00515197ccc92f80939bcebfbae703f77972e60c7266","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/582ddfb2442592f5dfbaf54c700314062117f56b55ae0b7c023e93f866495ea1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_money_budget_02:2 -> audio/generated/de-DE/dialogues/58fa1b1a1ff868153fdafc98c5680a8becd3d11d5d0506c5061811d5249bb31c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fd1dce9a-2193-5aa5-a09e-c66db80f0fe8', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_money_budget_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2712d7bb0a715f151352ceb8c05fd9f4d46534306abde6df8d79fc0329e46a59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68d8fcb5-443d-5761-be15-1f88418bbdd1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fd1dce9a-2193-5aa5-a09e-c66db80f0fe8', 1), '2712d7bb0a715f151352ceb8c05fd9f4d46534306abde6df8d79fc0329e46a59',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/58fa1b1a1ff868153fdafc98c5680a8becd3d11d5d0506c5061811d5249bb31c.mp3', 3840, '2026-09-13 06:16:41.311310', 'be1cb94c2c98ad46a5cc21e24957338818fb7076adca12e1e623d735be35eac6', 'validated', '{"audio_key":"58fa1b1a1ff868153fdafc98c5680a8becd3d11d5d0506c5061811d5249bb31c","entity_key":"d_money_budget_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"be1cb94c2c98ad46a5cc21e24957338818fb7076adca12e1e623d735be35eac6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/58fa1b1a1ff868153fdafc98c5680a8becd3d11d5d0506c5061811d5249bb31c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_workplace_communication_03:3 -> audio/generated/de-DE/dialogues/5be878a71d9b252a948a455d5665288817b174f236b94c9ee5a52cc8ac2e4ec0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1b8b4de8-58d1-592b-9ba3-6db46248657b', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_workplace_communication_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '193a14388ed50e7be97fa1aacd552098d873cbd461c79539a8b00c35ce9cde35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07fc3d5f-5879-51c6-b3b9-62245352fd36', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1b8b4de8-58d1-592b-9ba3-6db46248657b', 1), '193a14388ed50e7be97fa1aacd552098d873cbd461c79539a8b00c35ce9cde35',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5be878a71d9b252a948a455d5665288817b174f236b94c9ee5a52cc8ac2e4ec0.mp3', 2768, '2026-09-13 06:16:41.686507', '642cfc15dd60e500b1c5a7a280a8f69eb80b6e0df712278c8e45a1b3dfaf8d27', 'validated', '{"audio_key":"5be878a71d9b252a948a455d5665288817b174f236b94c9ee5a52cc8ac2e4ec0","entity_key":"d_workplace_communication_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"642cfc15dd60e500b1c5a7a280a8f69eb80b6e0df712278c8e45a1b3dfaf8d27","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/5be878a71d9b252a948a455d5665288817b174f236b94c9ee5a52cc8ac2e4ec0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_courses_learning_01:4 -> audio/generated/de-DE/dialogues/5f55a6110772384e908d3cd823f4d2452ec578fbe86bd33a04aff3e0fcb6e4ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('199879e1-c511-5f14-923c-f5499a67f932', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_courses_learning_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bef6d3d7430e59227d571dbb6ed3fa23cd026aca3d58b06f8bd78ef70422439b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6a335a1-df6e-5334-9e86-698445f2fb7f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('199879e1-c511-5f14-923c-f5499a67f932', 1), 'bef6d3d7430e59227d571dbb6ed3fa23cd026aca3d58b06f8bd78ef70422439b',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/5f55a6110772384e908d3cd823f4d2452ec578fbe86bd33a04aff3e0fcb6e4ea.mp3', 2272, '2026-09-13 06:16:42.379496', 'f86eb622c13df187f19bb302c0e0cdfaad75ec205f137ab178216a6a187e8885', 'validated', '{"audio_key":"5f55a6110772384e908d3cd823f4d2452ec578fbe86bd33a04aff3e0fcb6e4ea","entity_key":"d_courses_learning_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"f86eb622c13df187f19bb302c0e0cdfaad75ec205f137ab178216a6a187e8885","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/5f55a6110772384e908d3cd823f4d2452ec578fbe86bd33a04aff3e0fcb6e4ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relationships_conflict_01:4 -> audio/generated/de-DE/dialogues/608866753533b54380311e82f673b8b571cb7195215ca68020d0253c00b317be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('64bac0cf-e992-5c16-bbbd-5d8c685cfd57', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relationships_conflict_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '037cfcf60eb3fff250bd15b8c77797669a76a56a6a347afac81f76eada3c60e3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dcbec236-2899-5c89-be3a-8931b2fbcc3a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('64bac0cf-e992-5c16-bbbd-5d8c685cfd57', 1), '037cfcf60eb3fff250bd15b8c77797669a76a56a6a347afac81f76eada3c60e3',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/608866753533b54380311e82f673b8b571cb7195215ca68020d0253c00b317be.mp3', 2690, '2026-09-13 06:16:42.799817', '1bf5cb0cdbc59b8d431daad80bfc6680b31981080a36bab1935d0c5cc8035e2a', 'validated', '{"audio_key":"608866753533b54380311e82f673b8b571cb7195215ca68020d0253c00b317be","entity_key":"d_relationships_conflict_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"1bf5cb0cdbc59b8d431daad80bfc6680b31981080a36bab1935d0c5cc8035e2a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/608866753533b54380311e82f673b8b571cb7195215ca68020d0253c00b317be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_courses_learning_02:2 -> audio/generated/de-DE/dialogues/6447a99397df5e111f1c4bac104ca32d6abf594a95772328b8bd0731cda696c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4936ac31-3e86-501b-b208-e2cbe6088f61', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_courses_learning_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90ac751b0ba672a295fc335ef56292c6f63f60d91e4eafe60f4a8ef9f047b6cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86fde04f-440b-5260-b278-ea3b1799559c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4936ac31-3e86-501b-b208-e2cbe6088f61', 1), '90ac751b0ba672a295fc335ef56292c6f63f60d91e4eafe60f4a8ef9f047b6cd',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6447a99397df5e111f1c4bac104ca32d6abf594a95772328b8bd0731cda696c0.mp3', 2168, '2026-09-13 06:16:43.426081', '404972d413ceec6cf37c4c82a9675e27490638db70c0b59ff0bd8ba4a286601d', 'validated', '{"audio_key":"6447a99397df5e111f1c4bac104ca32d6abf594a95772328b8bd0731cda696c0","entity_key":"d_courses_learning_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"404972d413ceec6cf37c4c82a9675e27490638db70c0b59ff0bd8ba4a286601d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/6447a99397df5e111f1c4bac104ca32d6abf594a95772328b8bd0731cda696c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_workplace_communication_03:4 -> audio/generated/de-DE/dialogues/6a71a2da2cc8bca464bb8ab640ce3f23eadb8c306ae807e230c687a6302dbe58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fa82e8c7-4398-587f-8641-80f16719ab89', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_workplace_communication_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '514cb9ea23a1776e4c18b7c8b4c8c47068712308629aff4e6c8a5773cb6d0e6e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ffde1c8-2a18-57c9-9711-c4c16e16338c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fa82e8c7-4398-587f-8641-80f16719ab89', 1), '514cb9ea23a1776e4c18b7c8b4c8c47068712308629aff4e6c8a5773cb6d0e6e',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6a71a2da2cc8bca464bb8ab640ce3f23eadb8c306ae807e230c687a6302dbe58.mp3', 3004, '2026-09-13 06:16:43.961241', '8db24ba159cdbd0947640348d1cb04e113cf3366393579f0cec56275f49935ec', 'validated', '{"audio_key":"6a71a2da2cc8bca464bb8ab640ce3f23eadb8c306ae807e230c687a6302dbe58","entity_key":"d_workplace_communication_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8db24ba159cdbd0947640348d1cb04e113cf3366393579f0cec56275f49935ec","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/6a71a2da2cc8bca464bb8ab640ce3f23eadb8c306ae807e230c687a6302dbe58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_money_budget_03:2 -> audio/generated/de-DE/dialogues/6d585feb846e74195e501b7c0335922bdec3b3fb4e19d9ec18cd1dd98461d301.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('894541d0-936a-50a9-9a96-df142be37a03', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_money_budget_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '663a7c8d8f86914975a42f5ddd83370640908903360a8555a6b4e30b8596875d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3fe66db9-545a-500b-9765-14cc11e1d1bd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('894541d0-936a-50a9-9a96-df142be37a03', 1), '663a7c8d8f86914975a42f5ddd83370640908903360a8555a6b4e30b8596875d',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6d585feb846e74195e501b7c0335922bdec3b3fb4e19d9ec18cd1dd98461d301.mp3', 2220, '2026-09-13 06:16:44.638928', '7a56dbba2b33c391e57f5a6dad7ff97690f6e8297d4e5e16ce9a4264827faec9', 'validated', '{"audio_key":"6d585feb846e74195e501b7c0335922bdec3b3fb4e19d9ec18cd1dd98461d301","entity_key":"d_money_budget_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7a56dbba2b33c391e57f5a6dad7ff97690f6e8297d4e5e16ce9a4264827faec9","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/6d585feb846e74195e501b7c0335922bdec3b3fb4e19d9ec18cd1dd98461d301.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_courses_learning_03:1 -> audio/generated/de-DE/dialogues/6eba7d9bd0e98f9f7b872fa2ab2742d7c4b502ad3388693367135c72140d0771.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bb65d14b-1053-55d0-a24d-15a87ba6ad94', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_courses_learning_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '66ad13911e6eb9e21c430f3f5fb527ecae787d87d4183d1c67c7b998a5af6ea2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29f356b4-a42b-53d9-8a76-d3a893eef533', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bb65d14b-1053-55d0-a24d-15a87ba6ad94', 1), '66ad13911e6eb9e21c430f3f5fb527ecae787d87d4183d1c67c7b998a5af6ea2',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/6eba7d9bd0e98f9f7b872fa2ab2742d7c4b502ad3388693367135c72140d0771.mp3', 1906, '2026-09-13 06:16:44.993751', 'c2da0e6fe278b17319374febd143a8cfd89756c193b52e82d6b04c7eca830169', 'validated', '{"audio_key":"6eba7d9bd0e98f9f7b872fa2ab2742d7c4b502ad3388693367135c72140d0771","entity_key":"d_courses_learning_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"c2da0e6fe278b17319374febd143a8cfd89756c193b52e82d6b04c7eca830169","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/6eba7d9bd0e98f9f7b872fa2ab2742d7c4b502ad3388693367135c72140d0771.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relationships_conflict_03:2 -> audio/generated/de-DE/dialogues/7077678601b3471417e6ecc2f29a28b21130623860f1734c2e9eb6e42fdd09c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('163491c4-b2ac-5b91-a629-f549f22422c3', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relationships_conflict_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec3e3f4fe6047b16c74782d2154834af1732535b35042cebd45259a0fb1cf462'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d28e5849-3c72-56ad-b49a-d6fb16d5f17f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('163491c4-b2ac-5b91-a629-f549f22422c3', 1), 'ec3e3f4fe6047b16c74782d2154834af1732535b35042cebd45259a0fb1cf462',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7077678601b3471417e6ecc2f29a28b21130623860f1734c2e9eb6e42fdd09c8.mp3', 3996, '2026-09-13 06:16:45.924976', '41386f98c6015001cf103042634f94f53f08c7175a92586936ef29aad86ab40c', 'validated', '{"audio_key":"7077678601b3471417e6ecc2f29a28b21130623860f1734c2e9eb6e42fdd09c8","entity_key":"d_relationships_conflict_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"41386f98c6015001cf103042634f94f53f08c7175a92586936ef29aad86ab40c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7077678601b3471417e6ecc2f29a28b21130623860f1734c2e9eb6e42fdd09c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_workplace_communication_03:1 -> audio/generated/de-DE/dialogues/7205774592047a096ee2996934a3d8a894ab3e21dfacb616a0fa848f24553f7c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2f8b8de7-d3cd-519f-bfc1-12b0cf3df559', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_workplace_communication_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f623f1c205c69c92b73d92d79aa57c0b7cfe67b6bf76deb9107b63e6676c0f50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7733960-9d36-5238-8597-8c1350829934', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2f8b8de7-d3cd-519f-bfc1-12b0cf3df559', 1), 'f623f1c205c69c92b73d92d79aa57c0b7cfe67b6bf76deb9107b63e6676c0f50',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7205774592047a096ee2996934a3d8a894ab3e21dfacb616a0fa848f24553f7c.mp3', 2324, '2026-09-13 06:16:46.067541', '5dda9f82b76c0b564db6108c90b050dc6f9d998e7e5f4235c6ab2f9e98a0a339', 'validated', '{"audio_key":"7205774592047a096ee2996934a3d8a894ab3e21dfacb616a0fa848f24553f7c","entity_key":"d_workplace_communication_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"5dda9f82b76c0b564db6108c90b050dc6f9d998e7e5f4235c6ab2f9e98a0a339","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/7205774592047a096ee2996934a3d8a894ab3e21dfacb616a0fa848f24553f7c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relationships_conflict_03:1 -> audio/generated/de-DE/dialogues/725be61b11e4234da407a8ccb7d3267e2c32d728d02edd7c12ab041372d85a0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('863de231-dae1-560e-b680-1415845f7e46', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relationships_conflict_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '664e08380e6ccb9a9330905327bde229b03b794f55d2f718b668fb02c196389a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63d0601b-a7bb-593c-b992-4b4da28ea922', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('863de231-dae1-560e-b680-1415845f7e46', 1), '664e08380e6ccb9a9330905327bde229b03b794f55d2f718b668fb02c196389a',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/725be61b11e4234da407a8ccb7d3267e2c32d728d02edd7c12ab041372d85a0b.mp3', 3186, '2026-09-13 06:16:47.033086', '1b439cc3f4e727eab786795cefa717ace6dd6769d9cd441de839a604786520b2', 'validated', '{"audio_key":"725be61b11e4234da407a8ccb7d3267e2c32d728d02edd7c12ab041372d85a0b","entity_key":"d_relationships_conflict_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"1b439cc3f4e727eab786795cefa717ace6dd6769d9cd441de839a604786520b2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/725be61b11e4234da407a8ccb7d3267e2c32d728d02edd7c12ab041372d85a0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_workplace_communication_02:3 -> audio/generated/de-DE/dialogues/728dcadf1a9bcb50f4659c8d9ac2b24bf6a221a2eeb3ce3dd90fec344dbc3ad5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3f488e6e-8fe7-5b6f-8606-02344da895d1', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_workplace_communication_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd7d0bd87478db4414ff0972b809d6fc0f88f5996fe65d7b80855d0d7838ed3c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('efeb0f89-3450-5728-b26c-905b99c1e2f6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3f488e6e-8fe7-5b6f-8606-02344da895d1', 1), 'd7d0bd87478db4414ff0972b809d6fc0f88f5996fe65d7b80855d0d7838ed3c0',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/728dcadf1a9bcb50f4659c8d9ac2b24bf6a221a2eeb3ce3dd90fec344dbc3ad5.mp3', 3369, '2026-09-13 06:16:47.199895', 'a621f68e11a3475407b007755bab7894ebf696aeefb93e05876900097c9356e2', 'validated', '{"audio_key":"728dcadf1a9bcb50f4659c8d9ac2b24bf6a221a2eeb3ce3dd90fec344dbc3ad5","entity_key":"d_workplace_communication_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a621f68e11a3475407b007755bab7894ebf696aeefb93e05876900097c9356e2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/728dcadf1a9bcb50f4659c8d9ac2b24bf6a221a2eeb3ce3dd90fec344dbc3ad5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complaints_returns_02:4 -> audio/generated/de-DE/dialogues/75a6dfa006b1e69be4426fce85144c311c1c1bf7788baf6cce8aa6c8d16933ab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b0baf868-312a-5952-9df0-1f1476419e83', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complaints_returns_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4f4f07adf4d8d90366ed919d8da9bbb6f7bd03c8d876d1f8201bc6fc880dd9f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57c1e46e-1e99-51ca-91c1-06a44ae882c0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b0baf868-312a-5952-9df0-1f1476419e83', 1), 'a4f4f07adf4d8d90366ed919d8da9bbb6f7bd03c8d876d1f8201bc6fc880dd9f',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/75a6dfa006b1e69be4426fce85144c311c1c1bf7788baf6cce8aa6c8d16933ab.mp3', 2168, '2026-09-13 06:16:48.086139', '7730c8d4703bf567a7b5c3481e5600c3b061e107f317f19d92228be9f63f6059', 'validated', '{"audio_key":"75a6dfa006b1e69be4426fce85144c311c1c1bf7788baf6cce8aa6c8d16933ab","entity_key":"d_complaints_returns_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"7730c8d4703bf567a7b5c3481e5600c3b061e107f317f19d92228be9f63f6059","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/75a6dfa006b1e69be4426fce85144c311c1c1bf7788baf6cce8aa6c8d16933ab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_culture_events_03:2 -> audio/generated/de-DE/dialogues/75ea63ece67ba2cc449507e159bdb339b0e44d0e478c9550d7b6f6804d6ec6b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f35fa1d0-f9af-58e9-bd96-ed4d87a19b6e', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_culture_events_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56c0adf5a163cb03e938ebec9485173bdeaf6c818ca96a960552321d5f7fc522'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5b2518f6-294d-5886-8290-afbd0c831f24', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f35fa1d0-f9af-58e9-bd96-ed4d87a19b6e', 1), '56c0adf5a163cb03e938ebec9485173bdeaf6c818ca96a960552321d5f7fc522',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/75ea63ece67ba2cc449507e159bdb339b0e44d0e478c9550d7b6f6804d6ec6b3.mp3', 1567, '2026-09-13 06:16:48.377314', '4271c9b54e7f54dbc90abd698b55df5dfa28d0e1ad2bbcae381972636f42190f', 'validated', '{"audio_key":"75ea63ece67ba2cc449507e159bdb339b0e44d0e478c9550d7b6f6804d6ec6b3","entity_key":"d_culture_events_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4271c9b54e7f54dbc90abd698b55df5dfa28d0e1ad2bbcae381972636f42190f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/75ea63ece67ba2cc449507e159bdb339b0e44d0e478c9550d7b6f6804d6ec6b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_money_budget_01:4 -> audio/generated/de-DE/dialogues/76de1aa92c7e5952464582bb87cfeb9d7c36263c69827793d95ab884144a0321.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('070eb016-1b42-55fe-82ff-49f7bd0476b8', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_money_budget_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd7e1f73cffbd777a8c795f66424922a82792cbfae8a1219f58b093e6b11b175f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('615f4c20-fc88-5dcc-95eb-47f5d6998701', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('070eb016-1b42-55fe-82ff-49f7bd0476b8', 1), 'd7e1f73cffbd777a8c795f66424922a82792cbfae8a1219f58b093e6b11b175f',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/76de1aa92c7e5952464582bb87cfeb9d7c36263c69827793d95ab884144a0321.mp3', 2533, '2026-09-13 06:16:49.171905', 'a80c592d6dea8f9fd4cd620c81f5a898995cec83e5e81a96dc80bb68ab76306c', 'validated', '{"audio_key":"76de1aa92c7e5952464582bb87cfeb9d7c36263c69827793d95ab884144a0321","entity_key":"d_money_budget_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a80c592d6dea8f9fd4cd620c81f5a898995cec83e5e81a96dc80bb68ab76306c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/76de1aa92c7e5952464582bb87cfeb9d7c36263c69827793d95ab884144a0321.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_job_applications_03:1 -> audio/generated/de-DE/dialogues/7a2d81e0c74e2102f1786d335d73b745d5e505d18e36c3f5322f94a9f5d0cd71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bd517c08-c14a-53b5-a024-8161e6c29d21', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_job_applications_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3585abded35f980599cbbd5611bb567f9b705e145e9d8c698b25b8e4eda4586'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('daf70cfe-e800-547c-8618-d72b2544ba3f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bd517c08-c14a-53b5-a024-8161e6c29d21', 1), 'f3585abded35f980599cbbd5611bb567f9b705e145e9d8c698b25b8e4eda4586',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7a2d81e0c74e2102f1786d335d73b745d5e505d18e36c3f5322f94a9f5d0cd71.mp3', 3056, '2026-09-13 06:16:49.598880', '0541efb6bc40982f84acb8832c6b499bdd30a538fd79752c790cebf8fb66b9f6', 'validated', '{"audio_key":"7a2d81e0c74e2102f1786d335d73b745d5e505d18e36c3f5322f94a9f5d0cd71","entity_key":"d_job_applications_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"0541efb6bc40982f84acb8832c6b499bdd30a538fd79752c790cebf8fb66b9f6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7a2d81e0c74e2102f1786d335d73b745d5e505d18e36c3f5322f94a9f5d0cd71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_environment_recycling_02:3 -> audio/generated/de-DE/dialogues/7b51ca2b7ab896dd4b81eaf4da5e59de23a1f8013f557d8b132aab3934da929d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e619d7bb-b41e-5f62-8551-342960ecd71e', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_environment_recycling_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76d767df9db09f091b6139b632f7c5f9e3f456b7f09d48c59825d2c5421a1475'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2e52146-b035-5f53-9e66-f7db09f67e01', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e619d7bb-b41e-5f62-8551-342960ecd71e', 1), '76d767df9db09f091b6139b632f7c5f9e3f456b7f09d48c59825d2c5421a1475',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7b51ca2b7ab896dd4b81eaf4da5e59de23a1f8013f557d8b132aab3934da929d.mp3', 2272, '2026-09-13 06:16:50.264069', 'df166813c6b12ee7e2a529bf308b0e4365809d8b8826a9c40183eef66efe4496', 'validated', '{"audio_key":"7b51ca2b7ab896dd4b81eaf4da5e59de23a1f8013f557d8b132aab3934da929d","entity_key":"d_environment_recycling_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"df166813c6b12ee7e2a529bf308b0e4365809d8b8826a9c40183eef66efe4496","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7b51ca2b7ab896dd4b81eaf4da5e59de23a1f8013f557d8b132aab3934da929d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complaints_returns_03:1 -> audio/generated/de-DE/dialogues/7e55f378178c91f7bf41f95bf836caa9ba3aceddac8c570d072230025f3b866c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e09e9b33-531e-5851-bb21-bbdc79dbd6c6', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complaints_returns_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '002b1b2bb8a2431d927560e8773a354690ec3b09c8298a54d0faec36ff52fd1e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('106143a2-b4a8-55e9-a2d9-279ae768ef9b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e09e9b33-531e-5851-bb21-bbdc79dbd6c6', 1), '002b1b2bb8a2431d927560e8773a354690ec3b09c8298a54d0faec36ff52fd1e',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/7e55f378178c91f7bf41f95bf836caa9ba3aceddac8c570d072230025f3b866c.mp3', 3004, '2026-09-13 06:16:50.706440', 'e1460a20585512f65ace09cf79700fd2800545749de8f3cc1fbcc8866057643b', 'validated', '{"audio_key":"7e55f378178c91f7bf41f95bf836caa9ba3aceddac8c570d072230025f3b866c","entity_key":"d_complaints_returns_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"e1460a20585512f65ace09cf79700fd2800545749de8f3cc1fbcc8866057643b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/7e55f378178c91f7bf41f95bf836caa9ba3aceddac8c570d072230025f3b866c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_housing_renting_01:3 -> audio/generated/de-DE/dialogues/819ce52d79fe426e2d6464fbc4691cb490ef25bdcfe559aae8bd857f367c0d00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4745f395-cb4f-5d65-ac20-060244cb0dcb', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_housing_renting_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15932b2939d483160febdec0b8108c96766df8a88ffcdfbe4398632e25d127af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('518c3641-1470-5a74-b08b-2d5322458ef7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4745f395-cb4f-5d65-ac20-060244cb0dcb', 1), '15932b2939d483160febdec0b8108c96766df8a88ffcdfbe4398632e25d127af',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/819ce52d79fe426e2d6464fbc4691cb490ef25bdcfe559aae8bd857f367c0d00.mp3', 2272, '2026-09-13 06:16:51.340684', 'a5e1fc637153e588cbb4f345d271539af56921e668962c38f5ecc50d1d63dfbd', 'validated', '{"audio_key":"819ce52d79fe426e2d6464fbc4691cb490ef25bdcfe559aae8bd857f367c0d00","entity_key":"d_housing_renting_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a5e1fc637153e588cbb4f345d271539af56921e668962c38f5ecc50d1d63dfbd","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/819ce52d79fe426e2d6464fbc4691cb490ef25bdcfe559aae8bd857f367c0d00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complaints_returns_03:3 -> audio/generated/de-DE/dialogues/83d480e61e5a11a482b11756c647fdab2dbb6260ed792d17b464400445f45249.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('91bc3270-d1c8-5b47-9153-1cd8717e4861', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complaints_returns_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '962a2599d9c3a42b9e485c303ff95952c8090491eb0bb24362df889d4ce7f320'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('64839a89-7bf9-587a-be8b-e00a39eed9a5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('91bc3270-d1c8-5b47-9153-1cd8717e4861', 1), '962a2599d9c3a42b9e485c303ff95952c8090491eb0bb24362df889d4ce7f320',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/83d480e61e5a11a482b11756c647fdab2dbb6260ed792d17b464400445f45249.mp3', 3108, '2026-09-13 06:16:52.232508', '8e32b3ede77a530ff096b2ed2e08d105f0c717223c661226cf3d31097895c607', 'validated', '{"audio_key":"83d480e61e5a11a482b11756c647fdab2dbb6260ed792d17b464400445f45249","entity_key":"d_complaints_returns_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"8e32b3ede77a530ff096b2ed2e08d105f0c717223c661226cf3d31097895c607","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/83d480e61e5a11a482b11756c647fdab2dbb6260ed792d17b464400445f45249.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_job_applications_03:3 -> audio/generated/de-DE/dialogues/844212a0c0816a40a2f144c60bd1fcddf06a204db8284913c3f33dd11935b63b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dc767a6b-9210-5d62-94c4-f8a7758a73d8', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_job_applications_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c0f70c61f7cabe85f57173f45f1ed4991dc52841bf161590334704390b99cde8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d59a2050-5114-59b7-a588-6ef49f675c99', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dc767a6b-9210-5d62-94c4-f8a7758a73d8', 1), 'c0f70c61f7cabe85f57173f45f1ed4991dc52841bf161590334704390b99cde8',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/844212a0c0816a40a2f144c60bd1fcddf06a204db8284913c3f33dd11935b63b.mp3', 2507, '2026-09-13 06:16:52.436509', '23a7ef34c0cc5b0ac8ba88dd6fc3b2eed1d7ecb8597ebe8da45bf53dfce6f531', 'validated', '{"audio_key":"844212a0c0816a40a2f144c60bd1fcddf06a204db8284913c3f33dd11935b63b","entity_key":"d_job_applications_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"23a7ef34c0cc5b0ac8ba88dd6fc3b2eed1d7ecb8597ebe8da45bf53dfce6f531","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/844212a0c0816a40a2f144c60bd1fcddf06a204db8284913c3f33dd11935b63b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_money_budget_01:3 -> audio/generated/de-DE/dialogues/85043ac9e584988b012ba27d6fba7457c945472715fc45e708b1b4bca828e97a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c3dc6f93-cfc0-59fd-8e4d-40818bda8203', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_money_budget_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea23871da212d46464edf7d9f74cc1bcd01081fa669982b4df7246827e3f8116'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b8d0d1b9-d123-5306-8a1a-ea4a987c5985', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c3dc6f93-cfc0-59fd-8e4d-40818bda8203', 1), 'ea23871da212d46464edf7d9f74cc1bcd01081fa669982b4df7246827e3f8116',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/85043ac9e584988b012ba27d6fba7457c945472715fc45e708b1b4bca828e97a.mp3', 3108, '2026-09-13 06:16:53.442552', '26b8f2cac3eebbdbd6551020d62d98385acb5e4229294b84269c71a0cfdb6514', 'validated', '{"audio_key":"85043ac9e584988b012ba27d6fba7457c945472715fc45e708b1b4bca828e97a","entity_key":"d_money_budget_01:3","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"26b8f2cac3eebbdbd6551020d62d98385acb5e4229294b84269c71a0cfdb6514","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/85043ac9e584988b012ba27d6fba7457c945472715fc45e708b1b4bca828e97a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relationships_conflict_01:3 -> audio/generated/de-DE/dialogues/87044a5b4846f77458197d3930dd77e97c84a4cd3cb6b3804daf8a60258fa2cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f22d38f3-b6ed-5e50-a866-d19d7463d269', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relationships_conflict_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43d38b2ed58c2e639c7bc2da3dc76951a339ee13124c90a1b3e9c6de4a8716b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12cc9803-2bd1-52d7-bf8d-03acabcf8935', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f22d38f3-b6ed-5e50-a866-d19d7463d269', 1), '43d38b2ed58c2e639c7bc2da3dc76951a339ee13124c90a1b3e9c6de4a8716b5',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/87044a5b4846f77458197d3930dd77e97c84a4cd3cb6b3804daf8a60258fa2cc.mp3', 2272, '2026-09-13 06:16:53.539644', '3f15b27e7e010539e08d563a6f91df736e4ca8d096884864e0d2e3e4e4636839', 'validated', '{"audio_key":"87044a5b4846f77458197d3930dd77e97c84a4cd3cb6b3804daf8a60258fa2cc","entity_key":"d_relationships_conflict_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"3f15b27e7e010539e08d563a6f91df736e4ca8d096884864e0d2e3e4e4636839","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/87044a5b4846f77458197d3930dd77e97c84a4cd3cb6b3804daf8a60258fa2cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_job_applications_02:1 -> audio/generated/de-DE/dialogues/89f5fd0e8212fa6313fb3730f78ed5a03e44fa4556c45d348b8dbc6f8dacab13.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f953ef28-291e-5166-9dd2-a347d274b4ad', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_job_applications_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd218e61d49926ec2259b8800651d9d787e538688ca3eeae0712ecf5b438f0398'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f89ee7b-c6c2-5427-b9c1-7d16c84ce8b6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f953ef28-291e-5166-9dd2-a347d274b4ad', 1), 'd218e61d49926ec2259b8800651d9d787e538688ca3eeae0712ecf5b438f0398',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/89f5fd0e8212fa6313fb3730f78ed5a03e44fa4556c45d348b8dbc6f8dacab13.mp3', 3343, '2026-09-13 06:16:54.650937', 'dd7f6020a6cbf7fd721c37dd1bbedc319f7a0f8def783d9c6ab9ec7682c0c140', 'validated', '{"audio_key":"89f5fd0e8212fa6313fb3730f78ed5a03e44fa4556c45d348b8dbc6f8dacab13","entity_key":"d_job_applications_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"dd7f6020a6cbf7fd721c37dd1bbedc319f7a0f8def783d9c6ab9ec7682c0c140","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/89f5fd0e8212fa6313fb3730f78ed5a03e44fa4556c45d348b8dbc6f8dacab13.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_courses_learning_02:4 -> audio/generated/de-DE/dialogues/909069ee3c8c9c328e103a6e6eb48b1f88b62987a4c8d63ba61259af124ca154.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5fe6e91e-030b-59d7-8a3f-5066706e49c3', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_courses_learning_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '20dc0ba601772de574d0743dac6327a412779578896b5fc3fb4fd6d282947c8f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c432c6df-9507-5018-9398-e6bc9471ae88', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5fe6e91e-030b-59d7-8a3f-5066706e49c3', 1), '20dc0ba601772de574d0743dac6327a412779578896b5fc3fb4fd6d282947c8f',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/909069ee3c8c9c328e103a6e6eb48b1f88b62987a4c8d63ba61259af124ca154.mp3', 3761, '2026-09-13 06:16:54.738154', '223206b4a257f9712ab0d2dee55b85d2e1be654f27f00eb04cb10062466e2163', 'validated', '{"audio_key":"909069ee3c8c9c328e103a6e6eb48b1f88b62987a4c8d63ba61259af124ca154","entity_key":"d_courses_learning_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"223206b4a257f9712ab0d2dee55b85d2e1be654f27f00eb04cb10062466e2163","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/909069ee3c8c9c328e103a6e6eb48b1f88b62987a4c8d63ba61259af124ca154.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_decisions_consequences_02:1 -> audio/generated/de-DE/dialogues/917a1d4c32830f65c179d046c9ddeae4c91fd7759a7eab26ec40fe2985b8a740.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c958d909-16df-5082-b5c9-616214474a21', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_decisions_consequences_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'adf72309a665532d8921a5b6f3fbbc1dcae4b5856941326b01171f4361de9f3f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c90c8de0-7cc6-5fb0-8c39-3c7e241d6690', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c958d909-16df-5082-b5c9-616214474a21', 1), 'adf72309a665532d8921a5b6f3fbbc1dcae4b5856941326b01171f4361de9f3f',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/917a1d4c32830f65c179d046c9ddeae4c91fd7759a7eab26ec40fe2985b8a740.mp3', 1985, '2026-09-13 06:16:55.693849', '3b0b4cebf1c85eb187067b4b65bdf8dea20518d96819c95fb40e53ed92e1f53a', 'validated', '{"audio_key":"917a1d4c32830f65c179d046c9ddeae4c91fd7759a7eab26ec40fe2985b8a740","entity_key":"d_decisions_consequences_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3b0b4cebf1c85eb187067b4b65bdf8dea20518d96819c95fb40e53ed92e1f53a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/917a1d4c32830f65c179d046c9ddeae4c91fd7759a7eab26ec40fe2985b8a740.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complaints_returns_01:1 -> audio/generated/de-DE/dialogues/9688d44dd9c5f0c5acb50cd4a5a5072c744833c05e4779990c000e6fed7b9dd4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5b87af75-d584-5c09-9a87-c85db383e48d', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complaints_returns_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b2de891f9ca20370307ced9c30f8aebbdcca1aa15d7078476788c9569b3367d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86c02114-67fe-551e-b794-9d0fc318efd1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5b87af75-d584-5c09-9a87-c85db383e48d', 1), '1b2de891f9ca20370307ced9c30f8aebbdcca1aa15d7078476788c9569b3367d',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9688d44dd9c5f0c5acb50cd4a5a5072c744833c05e4779990c000e6fed7b9dd4.mp3', 3004, '2026-09-13 06:16:55.859744', 'd8e5fb807c4263ef571c2b0c79f0d69109bb2d8aaddb28ef3612874c148bee77', 'validated', '{"audio_key":"9688d44dd9c5f0c5acb50cd4a5a5072c744833c05e4779990c000e6fed7b9dd4","entity_key":"d_complaints_returns_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d8e5fb807c4263ef571c2b0c79f0d69109bb2d8aaddb28ef3612874c148bee77","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/9688d44dd9c5f0c5acb50cd4a5a5072c744833c05e4779990c000e6fed7b9dd4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_environment_recycling_02:4 -> audio/generated/de-DE/dialogues/98811ed41e0d413f59831ce2531da7b4abed2cba4cda898e1b1d660737834a7a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2f9bab8c-c40c-5534-9ded-26e73f33f4a6', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_environment_recycling_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4916b26b539117fcf283200ac3ba3a9bcb81bfd3145b8e1f59d6547a317d4379'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d3dd311-ac07-5726-b00f-8ac6c268a8da', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2f9bab8c-c40c-5534-9ded-26e73f33f4a6', 1), '4916b26b539117fcf283200ac3ba3a9bcb81bfd3145b8e1f59d6547a317d4379',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/98811ed41e0d413f59831ce2531da7b4abed2cba4cda898e1b1d660737834a7a.mp3', 4257, '2026-09-13 06:16:56.995509', '4761cf5e8bad6d1adc31ca41e517014744b2bc26ef6aa25d25353ba108a82bde', 'validated', '{"audio_key":"98811ed41e0d413f59831ce2531da7b4abed2cba4cda898e1b1d660737834a7a","entity_key":"d_environment_recycling_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"4761cf5e8bad6d1adc31ca41e517014744b2bc26ef6aa25d25353ba108a82bde","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/98811ed41e0d413f59831ce2531da7b4abed2cba4cda898e1b1d660737834a7a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_culture_events_03:3 -> audio/generated/de-DE/dialogues/993ef5eee198a3022b56370d818c1525a86d09d8061788d049ff8a284ddb7e32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d913a97e-5f99-5d2e-a278-e8260051127f', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_culture_events_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '06dade4fe8421f809a622273e675c64c7c19294baf0aca05e0e40eaea36ae998'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c12802f-7518-553a-95ed-452d5dc563c9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d913a97e-5f99-5d2e-a278-e8260051127f', 1), '06dade4fe8421f809a622273e675c64c7c19294baf0aca05e0e40eaea36ae998',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/993ef5eee198a3022b56370d818c1525a86d09d8061788d049ff8a284ddb7e32.mp3', 2403, '2026-09-13 06:16:56.963169', '3a7f42909fcd20c7d7ba15459778948e8124459c13fe16a0b8859144257b24cd', 'validated', '{"audio_key":"993ef5eee198a3022b56370d818c1525a86d09d8061788d049ff8a284ddb7e32","entity_key":"d_culture_events_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3a7f42909fcd20c7d7ba15459778948e8124459c13fe16a0b8859144257b24cd","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/993ef5eee198a3022b56370d818c1525a86d09d8061788d049ff8a284ddb7e32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_culture_events_02:2 -> audio/generated/de-DE/dialogues/99b62e34e083482c600b7636e5ebda4962a5932d36706cff2dfb41380741209d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b3de9c33-f7da-5c34-b5f6-d2d28ab9f567', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_culture_events_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '495d76841353da75026bc28859fd18d2a59eed8841305b8884aa0c75d2d5a4bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4358f313-75a8-5f83-9ba7-5003c62a1c39', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b3de9c33-f7da-5c34-b5f6-d2d28ab9f567', 1), '495d76841353da75026bc28859fd18d2a59eed8841305b8884aa0c75d2d5a4bf',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/99b62e34e083482c600b7636e5ebda4962a5932d36706cff2dfb41380741209d.mp3', 4257, '2026-09-13 06:16:58.236528', '072fb21a5f0d2ab428644465a9ab7e6ac31186813c44ae2808b0ac0b8d834de6', 'validated', '{"audio_key":"99b62e34e083482c600b7636e5ebda4962a5932d36706cff2dfb41380741209d","entity_key":"d_culture_events_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"072fb21a5f0d2ab428644465a9ab7e6ac31186813c44ae2808b0ac0b8d834de6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/99b62e34e083482c600b7636e5ebda4962a5932d36706cff2dfb41380741209d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_decisions_consequences_02:4 -> audio/generated/de-DE/dialogues/9cc99efcc06813edaf2479e57bad2eaf66f14c749e55067970b1cb51674e703e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('46b6a8f7-93fb-582f-af7c-9fff6dfdd85a', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_decisions_consequences_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '401a14581aeccc37db6c9b4cef14c985c7d84eda2ef180b01c3282016f9cd87b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd46e8d8-ba02-5b68-a43c-7e0e77fbf436', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('46b6a8f7-93fb-582f-af7c-9fff6dfdd85a', 1), '401a14581aeccc37db6c9b4cef14c985c7d84eda2ef180b01c3282016f9cd87b',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9cc99efcc06813edaf2479e57bad2eaf66f14c749e55067970b1cb51674e703e.mp3', 2925, '2026-09-13 06:16:58.152388', 'ff7bc0c0f712cd59df805f6987c945c63abe5a18d82e91703e9b8f4ee5057607', 'validated', '{"audio_key":"9cc99efcc06813edaf2479e57bad2eaf66f14c749e55067970b1cb51674e703e","entity_key":"d_decisions_consequences_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"ff7bc0c0f712cd59df805f6987c945c63abe5a18d82e91703e9b8f4ee5057607","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/9cc99efcc06813edaf2479e57bad2eaf66f14c749e55067970b1cb51674e703e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_job_applications_03:4 -> audio/generated/de-DE/dialogues/9cd1d876e9aa01b10a12410252283c95b5d1f9e9bd958ee0f781e004d77abac2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('df0ecaac-4451-5964-b5cd-34df1b0687cf', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_job_applications_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '51340fe0a747e76385825ec650bbcf558f5fbb354d7ea8d58761be61d983ae25'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3268a6ec-7d1c-56b8-8de1-84647bc67bc4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('df0ecaac-4451-5964-b5cd-34df1b0687cf', 1), '51340fe0a747e76385825ec650bbcf558f5fbb354d7ea8d58761be61d983ae25',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9cd1d876e9aa01b10a12410252283c95b5d1f9e9bd958ee0f781e004d77abac2.mp3', 3657, '2026-09-13 06:16:59.382052', '7bf2c1aedf687a4a4ed58442bb30e3b996afcdb7cf73f83547886d35a6a19849', 'validated', '{"audio_key":"9cd1d876e9aa01b10a12410252283c95b5d1f9e9bd958ee0f781e004d77abac2","entity_key":"d_job_applications_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"7bf2c1aedf687a4a4ed58442bb30e3b996afcdb7cf73f83547886d35a6a19849","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/9cd1d876e9aa01b10a12410252283c95b5d1f9e9bd958ee0f781e004d77abac2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_money_budget_02:4 -> audio/generated/de-DE/dialogues/9df514b748b13976518506c879ceec70940ed39ebee7797a0ca242e429760ba9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dbc584c9-f6f9-54f2-882d-26c20aa6990a', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_money_budget_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '95948c3900fc710df42cfd0c158ab9997a75317ae8ef12626a62233df8e62b18'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94f678da-9172-5f87-a460-7a8f006e764e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dbc584c9-f6f9-54f2-882d-26c20aa6990a', 1), '95948c3900fc710df42cfd0c158ab9997a75317ae8ef12626a62233df8e62b18',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9df514b748b13976518506c879ceec70940ed39ebee7797a0ca242e429760ba9.mp3', 3291, '2026-09-13 06:16:59.436947', '2538a6baab06cc85bcee6a9015a0d208a92f72156de8225326102d9b9c413f08', 'validated', '{"audio_key":"9df514b748b13976518506c879ceec70940ed39ebee7797a0ca242e429760ba9","entity_key":"d_money_budget_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"2538a6baab06cc85bcee6a9015a0d208a92f72156de8225326102d9b9c413f08","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/9df514b748b13976518506c879ceec70940ed39ebee7797a0ca242e429760ba9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_culture_events_03:4 -> audio/generated/de-DE/dialogues/9f49cabcf1010d7ffa1deb4ffc8940878f544960f4856467038fd07114f52570.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('532c49dc-54c7-5317-aabf-944b09aa6439', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_culture_events_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b829b95175930095c2faa9210936744d8d6fdc4e701108bf973748f6e06b80a4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8bed4626-0192-5d5e-8782-ac2d86f73759', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('532c49dc-54c7-5317-aabf-944b09aa6439', 1), 'b829b95175930095c2faa9210936744d8d6fdc4e701108bf973748f6e06b80a4',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/9f49cabcf1010d7ffa1deb4ffc8940878f544960f4856467038fd07114f52570.mp3', 2115, '2026-09-13 06:17:00.461002', '91075d20390bc84275471b398b2c61995800e85fbd208dcf2ad5311218ca0532', 'validated', '{"audio_key":"9f49cabcf1010d7ffa1deb4ffc8940878f544960f4856467038fd07114f52570","entity_key":"d_culture_events_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"91075d20390bc84275471b398b2c61995800e85fbd208dcf2ad5311218ca0532","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/9f49cabcf1010d7ffa1deb4ffc8940878f544960f4856467038fd07114f52570.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_job_applications_02:3 -> audio/generated/de-DE/dialogues/a3be9fbf2f8355db51be8e7ca5c54b274b31ca4a3fdddf06acba2350ddf5760a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e08fdaef-a2eb-5378-9781-3516034379ba', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_job_applications_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '23bf7ba91a787d478462d4ec8afa4c3f9dcff1cb8fea63a73aaa576d9a3ab08d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('702f3c47-082a-5f2e-978f-f5f31d18cf9f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e08fdaef-a2eb-5378-9781-3516034379ba', 1), '23bf7ba91a787d478462d4ec8afa4c3f9dcff1cb8fea63a73aaa576d9a3ab08d',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a3be9fbf2f8355db51be8e7ca5c54b274b31ca4a3fdddf06acba2350ddf5760a.mp3', 2455, '2026-09-13 06:17:00.527984', '9f56e3ccba5f0192e81023e52d27e6e1d12db6941ddd63e9fd1e3ca49efdcbad', 'validated', '{"audio_key":"a3be9fbf2f8355db51be8e7ca5c54b274b31ca4a3fdddf06acba2350ddf5760a","entity_key":"d_job_applications_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9f56e3ccba5f0192e81023e52d27e6e1d12db6941ddd63e9fd1e3ca49efdcbad","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/a3be9fbf2f8355db51be8e7ca5c54b274b31ca4a3fdddf06acba2350ddf5760a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_job_applications_01:4 -> audio/generated/de-DE/dialogues/a85c5b955b809cf6e15a088b347780f5a47b7b69e163c92ca13c6d006765a995.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d23db9ef-39fd-5d75-af87-d6daf52d8d85', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_job_applications_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '970ae3e436830c5e08debf5c106565f8c58f9a8ac24958783a05ca4ec41dacda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4d78280-76e1-56da-a306-5c17dff7ef1f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d23db9ef-39fd-5d75-af87-d6daf52d8d85', 1), '970ae3e436830c5e08debf5c106565f8c58f9a8ac24958783a05ca4ec41dacda',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/a85c5b955b809cf6e15a088b347780f5a47b7b69e163c92ca13c6d006765a995.mp3', 3761, '2026-09-13 06:17:01.696310', 'ccfb6c98399427d1f115362d7ab7e724bb4434b7d52f2d8d6b65eb0e6289af20', 'validated', '{"audio_key":"a85c5b955b809cf6e15a088b347780f5a47b7b69e163c92ca13c6d006765a995","entity_key":"d_job_applications_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"ccfb6c98399427d1f115362d7ab7e724bb4434b7d52f2d8d6b65eb0e6289af20","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/a85c5b955b809cf6e15a088b347780f5a47b7b69e163c92ca13c6d006765a995.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_culture_events_02:4 -> audio/generated/de-DE/dialogues/ae6775b1bf60cd49b8158e92ad209f40720305f947057385ee471bb80f8a66ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('03f4fb52-a0ac-56c2-bbf4-f91ef146169a', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_culture_events_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5cf011500e43fa65f9b04766efdfd1f83f032d411c5f8756d25835678a4b9257'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce0a0e24-4619-5ce1-800d-bcf507c16af2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('03f4fb52-a0ac-56c2-bbf4-f91ef146169a', 1), '5cf011500e43fa65f9b04766efdfd1f83f032d411c5f8756d25835678a4b9257',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ae6775b1bf60cd49b8158e92ad209f40720305f947057385ee471bb80f8a66ae.mp3', 3996, '2026-09-13 06:17:01.817412', 'eb4464ce93e7cdf574e2e65cb68392f78ab87b33b23b0e5b0d33aec9cf095379', 'validated', '{"audio_key":"ae6775b1bf60cd49b8158e92ad209f40720305f947057385ee471bb80f8a66ae","entity_key":"d_culture_events_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"eb4464ce93e7cdf574e2e65cb68392f78ab87b33b23b0e5b0d33aec9cf095379","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/ae6775b1bf60cd49b8158e92ad209f40720305f947057385ee471bb80f8a66ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complaints_returns_01:3 -> audio/generated/de-DE/dialogues/b214234289d07629c17f75518c01a59f9bba0c3268ce7cd104991f8a66b3835f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('38524b76-6089-53e2-8c1d-df1b3c92cdea', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complaints_returns_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '31c6e686b4f3b36e26d47c29f910310954d92d96ab0cf1747f2392a6c794f28a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4187911-1d57-53d3-83ec-1277f32fd4b5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('38524b76-6089-53e2-8c1d-df1b3c92cdea', 1), '31c6e686b4f3b36e26d47c29f910310954d92d96ab0cf1747f2392a6c794f28a',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b214234289d07629c17f75518c01a59f9bba0c3268ce7cd104991f8a66b3835f.mp3', 3004, '2026-09-13 06:17:03.040761', 'd26707760f5696d82be53767f8677c7aa770d5b7a75b011054df4558b86baa31', 'validated', '{"audio_key":"b214234289d07629c17f75518c01a59f9bba0c3268ce7cd104991f8a66b3835f","entity_key":"d_complaints_returns_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d26707760f5696d82be53767f8677c7aa770d5b7a75b011054df4558b86baa31","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/b214234289d07629c17f75518c01a59f9bba0c3268ce7cd104991f8a66b3835f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_workplace_communication_01:1 -> audio/generated/de-DE/dialogues/b23f85c18704a36e236417946d0a4a74745221f338c4d34454c26ffb93ce5642.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4aecab18-f106-53cc-a73d-1d9806c60689', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_workplace_communication_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '615289c198eb983287a762e1e9300224ad0441fb51e65be04fb7f1a7bbd8b079'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ecbd3043-9dd3-5230-8014-72b7d52eebf9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4aecab18-f106-53cc-a73d-1d9806c60689', 1), '615289c198eb983287a762e1e9300224ad0441fb51e65be04fb7f1a7bbd8b079',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b23f85c18704a36e236417946d0a4a74745221f338c4d34454c26ffb93ce5642.mp3', 2455, '2026-09-13 06:17:02.926832', '1d0ec8b73d01dc39f63d432453e00898ddc5554aadc67ae3b02c91186d027d24', 'validated', '{"audio_key":"b23f85c18704a36e236417946d0a4a74745221f338c4d34454c26ffb93ce5642","entity_key":"d_workplace_communication_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1d0ec8b73d01dc39f63d432453e00898ddc5554aadc67ae3b02c91186d027d24","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/b23f85c18704a36e236417946d0a4a74745221f338c4d34454c26ffb93ce5642.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complaints_returns_01:4 -> audio/generated/de-DE/dialogues/b78b77cd635c1790a1b72091464434aebebebf3f4cb1afdefb73e3d49243cb6c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dc3d983f-3b62-5e57-ad6a-e38fe1bec97f', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complaints_returns_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd66e734259ff2a1543818182a55151514f99dcd8b8c17e7c162de750afa75ed1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e03e9a64-9ff6-5bf2-927e-855833fbc6dc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dc3d983f-3b62-5e57-ad6a-e38fe1bec97f', 1), 'd66e734259ff2a1543818182a55151514f99dcd8b8c17e7c162de750afa75ed1',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/b78b77cd635c1790a1b72091464434aebebebf3f4cb1afdefb73e3d49243cb6c.mp3', 1436, '2026-09-13 06:17:03.903956', '57db6f6bfa821397afe18ede8aaf8b5676d7a0aedec87a05d0bbb3bd984f0d7e', 'validated', '{"audio_key":"b78b77cd635c1790a1b72091464434aebebebf3f4cb1afdefb73e3d49243cb6c","entity_key":"d_complaints_returns_01:4","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"57db6f6bfa821397afe18ede8aaf8b5676d7a0aedec87a05d0bbb3bd984f0d7e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/b78b77cd635c1790a1b72091464434aebebebf3f4cb1afdefb73e3d49243cb6c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_money_budget_01:2 -> audio/generated/de-DE/dialogues/ba1ac1878ee29acae20b838946b389c21f40dba377b9a9c458aa03f06d8a9b78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e4666b51-e699-570f-8070-b9477128b51c', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_money_budget_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac5a9c58cd054c3f577ed309729430969434a5441511e8b5d6b796ce5c8834d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('377fcef7-1047-5ce7-ab3f-b3636f15ba45', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e4666b51-e699-570f-8070-b9477128b51c', 1), 'ac5a9c58cd054c3f577ed309729430969434a5441511e8b5d6b796ce5c8834d2',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ba1ac1878ee29acae20b838946b389c21f40dba377b9a9c458aa03f06d8a9b78.mp3', 2089, '2026-09-13 06:17:04.110398', '13d9eefff30be6416798b156a930e37225c9909afc6d931231a396ff953130f8', 'validated', '{"audio_key":"ba1ac1878ee29acae20b838946b389c21f40dba377b9a9c458aa03f06d8a9b78","entity_key":"d_money_budget_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"13d9eefff30be6416798b156a930e37225c9909afc6d931231a396ff953130f8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ba1ac1878ee29acae20b838946b389c21f40dba377b9a9c458aa03f06d8a9b78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relationships_conflict_02:2 -> audio/generated/de-DE/dialogues/ba20996bffadb1339d3a41f0ca3c3f0a365392db7bf59f2ce1430dc46ca6ed2f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ab9f604f-cc13-50c0-a4ee-ae5d4072c0ea', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relationships_conflict_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10f62456b6bda79d9b33b333249a38f6719bc0099d628c84a667c302818aeae2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1c78358-915a-563b-8179-be5b9fa2a53d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ab9f604f-cc13-50c0-a4ee-ae5d4072c0ea', 1), '10f62456b6bda79d9b33b333249a38f6719bc0099d628c84a667c302818aeae2',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/ba20996bffadb1339d3a41f0ca3c3f0a365392db7bf59f2ce1430dc46ca6ed2f.mp3', 4414, '2026-09-13 06:17:05.229894', '0bf14df85871b7846375636a2ee9af751e78acd9a73341e93eb61e004debc875', 'validated', '{"audio_key":"ba20996bffadb1339d3a41f0ca3c3f0a365392db7bf59f2ce1430dc46ca6ed2f","entity_key":"d_relationships_conflict_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"0bf14df85871b7846375636a2ee9af751e78acd9a73341e93eb61e004debc875","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/ba20996bffadb1339d3a41f0ca3c3f0a365392db7bf59f2ce1430dc46ca6ed2f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_job_applications_01:2 -> audio/generated/de-DE/dialogues/bd27724bf31497870ca0afc8ae1c63b55ebec964e433ac5dc859d745ea8b3970.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7e929d40-e900-5c52-acb7-db01d06a3572', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_job_applications_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '595a44f36c88fddac85b2db6e0f865856fcc2bbc060ee0afdb902370fe0bf05c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e44347ac-1d8f-5191-8197-c1626f9c9a49', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7e929d40-e900-5c52-acb7-db01d06a3572', 1), '595a44f36c88fddac85b2db6e0f865856fcc2bbc060ee0afdb902370fe0bf05c',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bd27724bf31497870ca0afc8ae1c63b55ebec964e433ac5dc859d745ea8b3970.mp3', 3291, '2026-09-13 06:17:05.294517', '6842960685ec143aaa7ae7e0193506401ac50cdc418a312edb80b833e7c0ecd3', 'validated', '{"audio_key":"bd27724bf31497870ca0afc8ae1c63b55ebec964e433ac5dc859d745ea8b3970","entity_key":"d_job_applications_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"6842960685ec143aaa7ae7e0193506401ac50cdc418a312edb80b833e7c0ecd3","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/bd27724bf31497870ca0afc8ae1c63b55ebec964e433ac5dc859d745ea8b3970.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_decisions_consequences_03:1 -> audio/generated/de-DE/dialogues/bd463c4a1c17700798b85bfd39ea170108887034a863a7bbd07adc627ad10d6a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('19ff9c76-a7df-5133-87f1-7a9f12c7f509', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_decisions_consequences_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77448511a958e8f65c73a5c945be31e7368d648c431d9db0057b02360f6121ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2189fd28-2012-5bf9-a4ab-0e3101247993', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('19ff9c76-a7df-5133-87f1-7a9f12c7f509', 1), '77448511a958e8f65c73a5c945be31e7368d648c431d9db0057b02360f6121ba',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/bd463c4a1c17700798b85bfd39ea170108887034a863a7bbd07adc627ad10d6a.mp3', 1933, '2026-09-13 06:17:06.249411', '7f41d492f8e2789f461ffb87ca274ef460e92144f47d8fe78b055e089ca1f4f1', 'validated', '{"audio_key":"bd463c4a1c17700798b85bfd39ea170108887034a863a7bbd07adc627ad10d6a","entity_key":"d_decisions_consequences_03:1","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"7f41d492f8e2789f461ffb87ca274ef460e92144f47d8fe78b055e089ca1f4f1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/bd463c4a1c17700798b85bfd39ea170108887034a863a7bbd07adc627ad10d6a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_job_applications_02:4 -> audio/generated/de-DE/dialogues/c3f7f8512430e8af2354f3bd6af046bd924b0d0c4b06862ecd2cce8b90b10aeb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3948715e-26d8-5cd1-8e9e-dde898d743fd', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_job_applications_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b0309c70546132b1b0d67e56ed5208864dfd5fa6ee2de52e1deea51d5a63f7b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ff8a8d4-894a-512b-8252-83d17998c64d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3948715e-26d8-5cd1-8e9e-dde898d743fd', 1), '7b0309c70546132b1b0d67e56ed5208864dfd5fa6ee2de52e1deea51d5a63f7b',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c3f7f8512430e8af2354f3bd6af046bd924b0d0c4b06862ecd2cce8b90b10aeb.mp3', 3291, '2026-09-13 06:17:06.447752', '6dda2e64612941d54bc29f54c48efed57f49c2dea6645ed22987e8d86ac7e5e0', 'validated', '{"audio_key":"c3f7f8512430e8af2354f3bd6af046bd924b0d0c4b06862ecd2cce8b90b10aeb","entity_key":"d_job_applications_02:4","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"6dda2e64612941d54bc29f54c48efed57f49c2dea6645ed22987e8d86ac7e5e0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/c3f7f8512430e8af2354f3bd6af046bd924b0d0c4b06862ecd2cce8b90b10aeb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_workplace_communication_02:1 -> audio/generated/de-DE/dialogues/c72abdc4fb6fbf944337261e1afa109231cf0e2482cfccc46fca7c0240658f6a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('140d7e2b-5875-5edc-87e9-a2a2fa7ea1d9', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_workplace_communication_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '37036023f1076b6d5cdc699fa2c6d27063d797b88cf886a1ebbf9f02235d4904'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf89f3d5-b20b-52f9-9711-ebcfef534cf7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('140d7e2b-5875-5edc-87e9-a2a2fa7ea1d9', 1), '37036023f1076b6d5cdc699fa2c6d27063d797b88cf886a1ebbf9f02235d4904',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c72abdc4fb6fbf944337261e1afa109231cf0e2482cfccc46fca7c0240658f6a.mp3', 2089, '2026-09-13 06:17:07.313553', 'f7e6259d8100095607c3436b75f15833d74930a1e8a2d5a88e081302c9f872b7', 'validated', '{"audio_key":"c72abdc4fb6fbf944337261e1afa109231cf0e2482cfccc46fca7c0240658f6a","entity_key":"d_workplace_communication_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f7e6259d8100095607c3436b75f15833d74930a1e8a2d5a88e081302c9f872b7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/c72abdc4fb6fbf944337261e1afa109231cf0e2482cfccc46fca7c0240658f6a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_decisions_consequences_01:2 -> audio/generated/de-DE/dialogues/c9ec53d3fe7ae998662bac692af0e7e12aad18f83b5dd3c1c18e4435f783b883.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('479c4349-63b6-5ac9-9d6d-67c6ce81b59c', 1)
  AND voice_key = 'character:noah:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_decisions_consequences_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f40347192ca3b1a95e81e579e1f847b3128e53788a46aa9b50b7612afae9fde'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50eba626-e12d-5c1a-ba03-77963baedd55', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('479c4349-63b6-5ac9-9d6d-67c6ce81b59c', 1), '3f40347192ca3b1a95e81e579e1f847b3128e53788a46aa9b50b7612afae9fde',
  'character:noah:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/c9ec53d3fe7ae998662bac692af0e7e12aad18f83b5dd3c1c18e4435f783b883.mp3', 2925, '2026-09-13 06:17:07.551466', 'b3a82f563d16858f5f5d5c92690741ad1ed46851de48b2e300c94bc9394bd578', 'validated', '{"audio_key":"c9ec53d3fe7ae998662bac692af0e7e12aad18f83b5dd3c1c18e4435f783b883","entity_key":"d_decisions_consequences_01:2","voice_id":"MbbPUteESkJWr4IAaW35","voice_name":"Felix - Direct and Clear","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"b3a82f563d16858f5f5d5c92690741ad1ed46851de48b2e300c94bc9394bd578","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/c9ec53d3fe7ae998662bac692af0e7e12aad18f83b5dd3c1c18e4435f783b883.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_decisions_consequences_01:3 -> audio/generated/de-DE/dialogues/cab1d8daa67b4d2dfc8b7aba650ad166094b26a27e1b60965597631c5be7c548.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('75bfdf9d-e727-5441-9c8b-b8f690d95943', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_decisions_consequences_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '07def66e6a103cd7c1c0366654b33fbed908a1aa10989dc098813f0e777b71ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2ebada0-ada1-5990-adc3-d96a1d6bf98e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('75bfdf9d-e727-5441-9c8b-b8f690d95943', 1), '07def66e6a103cd7c1c0366654b33fbed908a1aa10989dc098813f0e777b71ad',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cab1d8daa67b4d2dfc8b7aba650ad166094b26a27e1b60965597631c5be7c548.mp3', 3004, '2026-09-13 06:17:08.436821', '95b120e3c16f5da123461f79e0461f0931ec573c9fcb2cd4edc48e14cec4c92c', 'validated', '{"audio_key":"cab1d8daa67b4d2dfc8b7aba650ad166094b26a27e1b60965597631c5be7c548","entity_key":"d_decisions_consequences_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"95b120e3c16f5da123461f79e0461f0931ec573c9fcb2cd4edc48e14cec4c92c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/cab1d8daa67b4d2dfc8b7aba650ad166094b26a27e1b60965597631c5be7c548.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_housing_renting_03:3 -> audio/generated/de-DE/dialogues/cae9f6332e07266a4682fd5b7ff68d223e25e5fb52f915d33d2c4c4f6d10c7b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('49f5b2d3-b1c8-5860-a2be-41870efe031a', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_housing_renting_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ab213e9235b54cff5d89da196256dba266e24e034604a9895d0abfc91fd7c620'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a19304f1-9f08-5731-8b69-66c62ffc7554', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('49f5b2d3-b1c8-5860-a2be-41870efe031a', 1), 'ab213e9235b54cff5d89da196256dba266e24e034604a9895d0abfc91fd7c620',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cae9f6332e07266a4682fd5b7ff68d223e25e5fb52f915d33d2c4c4f6d10c7b3.mp3', 2873, '2026-09-13 06:17:08.674152', 'd0c39381e510d68374e09b9e11d5ec7636ff142b2e79eb98a59680e985f3306a', 'validated', '{"audio_key":"cae9f6332e07266a4682fd5b7ff68d223e25e5fb52f915d33d2c4c4f6d10c7b3","entity_key":"d_housing_renting_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d0c39381e510d68374e09b9e11d5ec7636ff142b2e79eb98a59680e985f3306a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/cae9f6332e07266a4682fd5b7ff68d223e25e5fb52f915d33d2c4c4f6d10c7b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_job_applications_02:2 -> audio/generated/de-DE/dialogues/cc9aa0ea1565b456b4fd50899b4e8572af3d2bdefe2ac13faa46105bb30aa4e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5b761770-3e05-5177-816a-13f81bf42340', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_job_applications_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b7cf58f95288e5d8c80ed9737d40af053af708ecb01484be22eff77af7876d29'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36eacb06-8fae-5d9d-b88b-2002d721d001', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5b761770-3e05-5177-816a-13f81bf42340', 1), 'b7cf58f95288e5d8c80ed9737d40af053af708ecb01484be22eff77af7876d29',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cc9aa0ea1565b456b4fd50899b4e8572af3d2bdefe2ac13faa46105bb30aa4e9.mp3', 2690, '2026-09-13 06:17:09.585130', 'b32d40c5758e5ff39f255f74aa508765fcee6f14058d6af411c734d3e68511e5', 'validated', '{"audio_key":"cc9aa0ea1565b456b4fd50899b4e8572af3d2bdefe2ac13faa46105bb30aa4e9","entity_key":"d_job_applications_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"b32d40c5758e5ff39f255f74aa508765fcee6f14058d6af411c734d3e68511e5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/cc9aa0ea1565b456b4fd50899b4e8572af3d2bdefe2ac13faa46105bb30aa4e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_environment_recycling_03:2 -> audio/generated/de-DE/dialogues/cfd2cb34b5beb3173d1864d018b0556e7b025fff861115144ee45896cb86b3f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('38e9d768-1f2f-5aac-b554-c3f12d681f68', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_environment_recycling_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '260d0a9c1fae70743a409ab27a8a970e6357d73e3c43f5605de17f0eed884773'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7b9aee8-1c9f-595b-933c-b03ddb09c572', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('38e9d768-1f2f-5aac-b554-c3f12d681f68', 1), '260d0a9c1fae70743a409ab27a8a970e6357d73e3c43f5605de17f0eed884773',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/cfd2cb34b5beb3173d1864d018b0556e7b025fff861115144ee45896cb86b3f8.mp3', 3004, '2026-09-13 06:17:09.817068', '7c0c2ae1ddd056d1b605e37e238543a7ca579936a3e78fc4fad51ed23d1e6e97', 'validated', '{"audio_key":"cfd2cb34b5beb3173d1864d018b0556e7b025fff861115144ee45896cb86b3f8","entity_key":"d_environment_recycling_03:2","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7c0c2ae1ddd056d1b605e37e238543a7ca579936a3e78fc4fad51ed23d1e6e97","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/cfd2cb34b5beb3173d1864d018b0556e7b025fff861115144ee45896cb86b3f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complaints_returns_02:3 -> audio/generated/de-DE/dialogues/d1f94eb3be3973156a9d799568f2980e813ddd0ba1892be2cf5c0c0c71a0b633.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f847e2af-54dd-52ca-b259-a719d4fdd59b', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complaints_returns_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f31274984de8e0c1ea061d50716a31f221ff4d90fd60a11618c070b46b570ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('faf04797-0de8-57a9-9a76-4c9e6eb83781', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f847e2af-54dd-52ca-b259-a719d4fdd59b', 1), '2f31274984de8e0c1ea061d50716a31f221ff4d90fd60a11618c070b46b570ab',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d1f94eb3be3973156a9d799568f2980e813ddd0ba1892be2cf5c0c0c71a0b633.mp3', 3160, '2026-09-13 06:17:10.763753', 'ea348e45206eed639d426d7160e53aefc4609876a5598b740a10f16a1f016ca0', 'validated', '{"audio_key":"d1f94eb3be3973156a9d799568f2980e813ddd0ba1892be2cf5c0c0c71a0b633","entity_key":"d_complaints_returns_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ea348e45206eed639d426d7160e53aefc4609876a5598b740a10f16a1f016ca0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d1f94eb3be3973156a9d799568f2980e813ddd0ba1892be2cf5c0c0c71a0b633.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_courses_learning_01:3 -> audio/generated/de-DE/dialogues/d21fdb9d2a2495316940e4f4f9668d688ebdc2c68db92c0ef604abe7dc5bfe64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d28ada27-b1d6-5742-8e0c-bf1386969dfc', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_courses_learning_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b0df93c363fce9a470d3fb5aa7b2f054f07458fe22bbbec23648111c166eb21'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4853ff1-e3b5-55d9-a421-2b7f699f7ae9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d28ada27-b1d6-5742-8e0c-bf1386969dfc', 1), '8b0df93c363fce9a470d3fb5aa7b2f054f07458fe22bbbec23648111c166eb21',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d21fdb9d2a2495316940e4f4f9668d688ebdc2c68db92c0ef604abe7dc5bfe64.mp3', 2951, '2026-09-13 06:17:10.949529', '1dbc4581b371cbfb47b55116e3121ff1f8ba75700a1b3eef016391615a18b67c', 'validated', '{"audio_key":"d21fdb9d2a2495316940e4f4f9668d688ebdc2c68db92c0ef604abe7dc5bfe64","entity_key":"d_courses_learning_01:3","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"1dbc4581b371cbfb47b55116e3121ff1f8ba75700a1b3eef016391615a18b67c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/d21fdb9d2a2495316940e4f4f9668d688ebdc2c68db92c0ef604abe7dc5bfe64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_housing_renting_02:3 -> audio/generated/de-DE/dialogues/d36d8d0fdb907938c9f5a40bd74e206ee981a93409db4cc5c6f49f7a2bd9fb56.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cbce30ce-0d7f-585c-90ad-c6ecc7d66d83', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_housing_renting_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0f5b04146f7d95fb72f982af1b3004d32e77025d289379633cccc5cb2a46f5d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('380abd1e-68b4-5c69-8c70-36a65b753c54', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cbce30ce-0d7f-585c-90ad-c6ecc7d66d83', 1), '0f5b04146f7d95fb72f982af1b3004d32e77025d289379633cccc5cb2a46f5d3',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d36d8d0fdb907938c9f5a40bd74e206ee981a93409db4cc5c6f49f7a2bd9fb56.mp3', 2455, '2026-09-13 06:17:11.834450', '33f4336c3ea7c39ce67330fb61115e1545067bfdfdef272616a008383b0b865c', 'validated', '{"audio_key":"d36d8d0fdb907938c9f5a40bd74e206ee981a93409db4cc5c6f49f7a2bd9fb56","entity_key":"d_housing_renting_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"33f4336c3ea7c39ce67330fb61115e1545067bfdfdef272616a008383b0b865c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d36d8d0fdb907938c9f5a40bd74e206ee981a93409db4cc5c6f49f7a2bd9fb56.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relationships_conflict_03:4 -> audio/generated/de-DE/dialogues/d3db6ff9e19d9c8405f7c49f743c2bc5fc28cae1736dae5591ec180ec7e3bfec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5d57b32e-3717-5f9a-bde8-10bacdbaa4b8', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relationships_conflict_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93a7283c510be30939430222e745dd41ff173b8f8d89fa55d2db2a58666363bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f00e220f-8882-57ae-8bfe-953eb9fd49c1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5d57b32e-3717-5f9a-bde8-10bacdbaa4b8', 1), '93a7283c510be30939430222e745dd41ff173b8f8d89fa55d2db2a58666363bb',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d3db6ff9e19d9c8405f7c49f743c2bc5fc28cae1736dae5591ec180ec7e3bfec.mp3', 1515, '2026-09-13 06:17:11.922170', 'd5ad39115671c6becda5671c018424696912fc4cf947e35996fcc1ab9de4f214', 'validated', '{"audio_key":"d3db6ff9e19d9c8405f7c49f743c2bc5fc28cae1736dae5591ec180ec7e3bfec","entity_key":"d_relationships_conflict_03:4","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"d5ad39115671c6becda5671c018424696912fc4cf947e35996fcc1ab9de4f214","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/d3db6ff9e19d9c8405f7c49f743c2bc5fc28cae1736dae5591ec180ec7e3bfec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_housing_renting_01:4 -> audio/generated/de-DE/dialogues/d480d6e472543edb4fc36cf7e37ba60f58aa8ad10f6beac5c8a06a9e28813fa1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('43efa6bb-e884-577a-9475-a77c89295455', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_housing_renting_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54e668cb30ff137d400305dbcc0378d8486b28dd6b416944148a0c316e449067'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('56d65042-d1c6-59a6-a676-1bfb9f5ef8f7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('43efa6bb-e884-577a-9475-a77c89295455', 1), '54e668cb30ff137d400305dbcc0378d8486b28dd6b416944148a0c316e449067',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d480d6e472543edb4fc36cf7e37ba60f58aa8ad10f6beac5c8a06a9e28813fa1.mp3', 3369, '2026-09-13 06:17:13.013460', '81bc139fc904306fe8b50c3f43b3c371ff3171ba190374f4328ebb272961882f', 'validated', '{"audio_key":"d480d6e472543edb4fc36cf7e37ba60f58aa8ad10f6beac5c8a06a9e28813fa1","entity_key":"d_housing_renting_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"81bc139fc904306fe8b50c3f43b3c371ff3171ba190374f4328ebb272961882f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d480d6e472543edb4fc36cf7e37ba60f58aa8ad10f6beac5c8a06a9e28813fa1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_housing_renting_01:1 -> audio/generated/de-DE/dialogues/d7524c065eb9d39adf33fb65161f9df2d4fe5c6db511db5cf16bb4a92c4c2739.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5a786a37-d755-5d66-8b9d-7a5c565b3e16', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_housing_renting_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e75849680061b96f6aab693e34dde5e12fa27c5cee873580d05368488b54d991'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b2938c9c-2131-5af6-af57-d172ae8e610a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5a786a37-d755-5d66-8b9d-7a5c565b3e16', 1), 'e75849680061b96f6aab693e34dde5e12fa27c5cee873580d05368488b54d991',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d7524c065eb9d39adf33fb65161f9df2d4fe5c6db511db5cf16bb4a92c4c2739.mp3', 1933, '2026-09-13 06:17:12.955038', '765ce3f1658e60116d64c931cb53bf7595ceec198a3e142f3a6ae6ad6047fec0', 'validated', '{"audio_key":"d7524c065eb9d39adf33fb65161f9df2d4fe5c6db511db5cf16bb4a92c4c2739","entity_key":"d_housing_renting_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"765ce3f1658e60116d64c931cb53bf7595ceec198a3e142f3a6ae6ad6047fec0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d7524c065eb9d39adf33fb65161f9df2d4fe5c6db511db5cf16bb4a92c4c2739.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complaints_returns_02:2 -> audio/generated/de-DE/dialogues/d874faf642d1afb88e6967a22144a0eb34c9f35a5a548246b4c700c1f095d2d5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e6ace980-c53e-5260-a7b9-6d80a2704c9b', 1)
  AND voice_key = 'character:max:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complaints_returns_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65ae2f9ac96f547154e88b40bbf131abb365e41af9cdeb65f638536b15634384'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e422db08-1607-5889-80db-e647abe6bac2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e6ace980-c53e-5260-a7b9-6d80a2704c9b', 1), '65ae2f9ac96f547154e88b40bbf131abb365e41af9cdeb65f638536b15634384',
  'character:max:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d874faf642d1afb88e6967a22144a0eb34c9f35a5a548246b4c700c1f095d2d5.mp3', 2220, '2026-09-13 06:17:14.054999', '625410b22ad75ab6cbb8057ea431afe0ae149aa4694b8b142d2174f7fff72f62', 'validated', '{"audio_key":"d874faf642d1afb88e6967a22144a0eb34c9f35a5a548246b4c700c1f095d2d5","entity_key":"d_complaints_returns_02:2","voice_id":"z1EhmmPwF0ENGYE8dBE6","voice_name":"Christian Plasa - Soft and Mild","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":""},"output_format":"mp3_44100_192","file_sha256":"625410b22ad75ab6cbb8057ea431afe0ae149aa4694b8b142d2174f7fff72f62","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/d874faf642d1afb88e6967a22144a0eb34c9f35a5a548246b4c700c1f095d2d5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_decisions_consequences_01:1 -> audio/generated/de-DE/dialogues/d9e3d9da1e7b855e716c7226a46f7150873f357fac714e5ee3a6c6c18a051a15.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('864edf2c-0106-5445-b4ca-2be4f237c84e', 1)
  AND voice_key = 'character:sofia:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_decisions_consequences_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '615f482444457e9b1c35c62ea4c1b4204b1eaaedf7d696dffaa893f8b51257fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1371f7f3-f32f-57d1-b3a3-7b4a999d17ef', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('864edf2c-0106-5445-b4ca-2be4f237c84e', 1), '615f482444457e9b1c35c62ea4c1b4204b1eaaedf7d696dffaa893f8b51257fd',
  'character:sofia:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/d9e3d9da1e7b855e716c7226a46f7150873f357fac714e5ee3a6c6c18a051a15.mp3', 2768, '2026-09-13 06:17:14.167242', '6e3fd4fc070a3b95847659ccf5ebbb2cc075ef2afa32cc20aee07552f427e897', 'validated', '{"audio_key":"d9e3d9da1e7b855e716c7226a46f7150873f357fac714e5ee3a6c6c18a051a15","entity_key":"d_decisions_consequences_01:1","voice_id":"MTTjXkEpZepLTqO0xH0f","voice_name":"Marlena Lark – Warm German Narrator","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"6e3fd4fc070a3b95847659ccf5ebbb2cc075ef2afa32cc20aee07552f427e897","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/de-DE/dialogues/d9e3d9da1e7b855e716c7226a46f7150873f357fac714e5ee3a6c6c18a051a15.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_money_budget_03:4 -> audio/generated/de-DE/dialogues/da6f85c11e6ae5cc50cb584654895fcb0faef2b0d1a63609a1bf466edf367481.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('df528300-172b-5bdf-b5c0-54e7fb8c7378', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_money_budget_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '999f170d1eb6ef816430fd03cc9d1645a0ca92b36db6a686cb298fe5e4e99095'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('476c0ba0-b238-5151-b3ed-3c2a2fd0f555', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('df528300-172b-5bdf-b5c0-54e7fb8c7378', 1), '999f170d1eb6ef816430fd03cc9d1645a0ca92b36db6a686cb298fe5e4e99095',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/da6f85c11e6ae5cc50cb584654895fcb0faef2b0d1a63609a1bf466edf367481.mp3', 3004, '2026-09-13 06:17:15.180888', '5aa8dd46add6ba4ea6eca76bd41da86faeac2225593dd75d61d3c31dab0f93a0', 'validated', '{"audio_key":"da6f85c11e6ae5cc50cb584654895fcb0faef2b0d1a63609a1bf466edf367481","entity_key":"d_money_budget_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"5aa8dd46add6ba4ea6eca76bd41da86faeac2225593dd75d61d3c31dab0f93a0","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/da6f85c11e6ae5cc50cb584654895fcb0faef2b0d1a63609a1bf466edf367481.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_housing_renting_02:1 -> audio/generated/de-DE/dialogues/db796936765215b3f3e4d9bdd877a53ad09e0acf4919885e566d3d9c41730955.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('246e46a1-1df6-52bb-b629-f4b89c252a7f', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_housing_renting_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a197b24e7d3a26947dc337d52c286df917ae99af048faff8ab511767a6ffc17b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e03560e-4c3b-559d-830f-e82cc594758c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('246e46a1-1df6-52bb-b629-f4b89c252a7f', 1), 'a197b24e7d3a26947dc337d52c286df917ae99af048faff8ab511767a6ffc17b',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/db796936765215b3f3e4d9bdd877a53ad09e0acf4919885e566d3d9c41730955.mp3', 3369, '2026-09-13 06:17:15.355528', '90a35f793321226f7a1f9a6cc0294b9e4ffbd4e4721e123548f3fbe375fd5489', 'validated', '{"audio_key":"db796936765215b3f3e4d9bdd877a53ad09e0acf4919885e566d3d9c41730955","entity_key":"d_housing_renting_02:1","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"90a35f793321226f7a1f9a6cc0294b9e4ffbd4e4721e123548f3fbe375fd5489","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/db796936765215b3f3e4d9bdd877a53ad09e0acf4919885e566d3d9c41730955.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_housing_renting_02:2 -> audio/generated/de-DE/dialogues/dc1fd6bef59935aa3a0a8c18a8211ea7e93ed09d5ba65bfffbb68a6d6dfa58a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0e9a11a4-9634-5a33-900c-6f5230e2336c', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_housing_renting_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bb28d84fdbe85c35113ed98c1904781f77a0118467f258a427b72c875d059a09'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0682835d-7ffa-52d9-89a6-6a1ae17d067c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0e9a11a4-9634-5a33-900c-6f5230e2336c', 1), 'bb28d84fdbe85c35113ed98c1904781f77a0118467f258a427b72c875d059a09',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/dc1fd6bef59935aa3a0a8c18a8211ea7e93ed09d5ba65bfffbb68a6d6dfa58a0.mp3', 3604, '2026-09-13 06:17:16.425568', '1d7c0a9ee2df214b13400f4e08999cbd0206ffca3e8a1b742b67d484ba6c45e6', 'validated', '{"audio_key":"dc1fd6bef59935aa3a0a8c18a8211ea7e93ed09d5ba65bfffbb68a6d6dfa58a0","entity_key":"d_housing_renting_02:2","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"1d7c0a9ee2df214b13400f4e08999cbd0206ffca3e8a1b742b67d484ba6c45e6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/dc1fd6bef59935aa3a0a8c18a8211ea7e93ed09d5ba65bfffbb68a6d6dfa58a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_environment_recycling_01:1 -> audio/generated/de-DE/dialogues/df53b1a04f801b85b534ac7e91795f0611c21f5a1fecc514aa73e7e1924fbe41.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('175b846a-4041-519f-89e2-5256da13af5e', 1)
  AND voice_key = 'character:anna:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_environment_recycling_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8c4aa42d8903e94af5a8af36d0d0ac595acdb3c4ea5617251850eb1d3fc7013'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('637ef8a8-29f6-54fa-b2e7-555c8a06e0fb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('175b846a-4041-519f-89e2-5256da13af5e', 1), 'c8c4aa42d8903e94af5a8af36d0d0ac595acdb3c4ea5617251850eb1d3fc7013',
  'character:anna:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/df53b1a04f801b85b534ac7e91795f0611c21f5a1fecc514aa73e7e1924fbe41.mp3', 2507, '2026-09-13 06:17:16.411324', '0a6ca9ae8a11b0eca8a24834a24a739028bdc6f0d63a0cc282ae807716ae8ba8', 'validated', '{"audio_key":"df53b1a04f801b85b534ac7e91795f0611c21f5a1fecc514aa73e7e1924fbe41","entity_key":"d_environment_recycling_01:1","voice_id":"ssAtxnrElSw3BUSLNszL","voice_name":"Nellie - Expressive, Kind, Engaging","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0a6ca9ae8a11b0eca8a24834a24a739028bdc6f0d63a0cc282ae807716ae8ba8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/df53b1a04f801b85b534ac7e91795f0611c21f5a1fecc514aa73e7e1924fbe41.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_relationships_conflict_02:3 -> audio/generated/de-DE/dialogues/e3afa996207e1ba59ef4d95f76690b3651c97777d5cd8c32c456db30b1087a25.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('62bff503-b0f0-543b-923d-a828e5f129d9', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_relationships_conflict_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4759e82c96eb0273de073b16c38b070b1215b7b8adee8af70f17040f3da4efb2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd3da776-3afd-5b4b-a561-50b8ed408550', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('62bff503-b0f0-543b-923d-a828e5f129d9', 1), '4759e82c96eb0273de073b16c38b070b1215b7b8adee8af70f17040f3da4efb2',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e3afa996207e1ba59ef4d95f76690b3651c97777d5cd8c32c456db30b1087a25.mp3', 1436, '2026-09-13 06:17:17.522957', 'fa1f5e081497620849ac76ac4ad80d8f18b11733d1aa183d14dbab4cde371e2d', 'validated', '{"audio_key":"e3afa996207e1ba59ef4d95f76690b3651c97777d5cd8c32c456db30b1087a25","entity_key":"d_relationships_conflict_02:3","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fa1f5e081497620849ac76ac4ad80d8f18b11733d1aa183d14dbab4cde371e2d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/e3afa996207e1ba59ef4d95f76690b3651c97777d5cd8c32c456db30b1087a25.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_environment_recycling_01:2 -> audio/generated/de-DE/dialogues/e624c37bb2a357da563f1d8ca0d68e7bfa47c9674f47a8cc21ccf81b530e2608.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('147a59c5-72b2-5c1b-b1ec-b9051493170a', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_environment_recycling_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be19b3783c2b6bf6535f1be4162d72574fd64de2f7ca0a83c4fb11db1752f87c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d2a0a1c-7d21-52a6-8be3-0f017d77adb1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('147a59c5-72b2-5c1b-b1ec-b9051493170a', 1), 'be19b3783c2b6bf6535f1be4162d72574fd64de2f7ca0a83c4fb11db1752f87c',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e624c37bb2a357da563f1d8ca0d68e7bfa47c9674f47a8cc21ccf81b530e2608.mp3', 2324, '2026-09-13 06:17:17.567747', '9e950409e57318ea7c1edea1a39bad5ece7132fb7eccc87c67e284fd7689ead2', 'validated', '{"audio_key":"e624c37bb2a357da563f1d8ca0d68e7bfa47c9674f47a8cc21ccf81b530e2608","entity_key":"d_environment_recycling_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9e950409e57318ea7c1edea1a39bad5ece7132fb7eccc87c67e284fd7689ead2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/e624c37bb2a357da563f1d8ca0d68e7bfa47c9674f47a8cc21ccf81b530e2608.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_housing_renting_02:4 -> audio/generated/de-DE/dialogues/e8ffe17eca7412d3093e39c5a0ded3e8d8f3f9268dd404d1c692c98195f0254f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0b92771f-75c9-5f3f-99da-3e95afd6908f', 1)
  AND voice_key = 'character:jonas:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_housing_renting_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd274e9f6c7f8b222069c1eaefdafe152f0cc164482a50f9ca1234e146f23fb9c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c1f47f3-2ff3-5240-bd28-74a47848234f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0b92771f-75c9-5f3f-99da-3e95afd6908f', 1), 'd274e9f6c7f8b222069c1eaefdafe152f0cc164482a50f9ca1234e146f23fb9c',
  'character:jonas:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/e8ffe17eca7412d3093e39c5a0ded3e8d8f3f9268dd404d1c692c98195f0254f.mp3', 2324, '2026-09-13 06:17:18.568941', '40d22df8fa0567f6307343f64e37621699a854a3aa604eed1b755b755f703515', 'validated', '{"audio_key":"e8ffe17eca7412d3093e39c5a0ded3e8d8f3f9268dd404d1c692c98195f0254f","entity_key":"d_housing_renting_02:4","voice_id":"K5ZVtkkBnuPY6YqXs70E","voice_name":"Simon - Relatable and Normal","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"chill"},"output_format":"mp3_44100_192","file_sha256":"40d22df8fa0567f6307343f64e37621699a854a3aa604eed1b755b755f703515","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/e8ffe17eca7412d3093e39c5a0ded3e8d8f3f9268dd404d1c692c98195f0254f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_environment_recycling_03:4 -> audio/generated/de-DE/dialogues/effa155ca7d9b4ed075bf66fbc9f7d3b6c923d9230f1dc66f1fccbe3465f76a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c269303e-3ecd-52cb-80d7-668128ac89f0', 1)
  AND voice_key = 'character:emil:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_environment_recycling_03:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '011c3bb8646e83cd1cd6366e4f9c67e593ac6415570aef6c59aba1e1820663e3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33790057-e1c4-5248-afdc-057ab149376b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c269303e-3ecd-52cb-80d7-668128ac89f0', 1), '011c3bb8646e83cd1cd6366e4f9c67e593ac6415570aef6c59aba1e1820663e3',
  'character:emil:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/effa155ca7d9b4ed075bf66fbc9f7d3b6c923d9230f1dc66f1fccbe3465f76a9.mp3', 2742, '2026-09-13 06:17:18.691726', 'fa80d920c87b40683a091be0bfd337ec2fcb3f8d06930d93676a6a208c783704', 'validated', '{"audio_key":"effa155ca7d9b4ed075bf66fbc9f7d3b6c923d9230f1dc66f1fccbe3465f76a9","entity_key":"d_environment_recycling_03:4","voice_id":"MMwckqU477oQxnAk1SgA","voice_name":"Ben - Conversational Voice","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fa80d920c87b40683a091be0bfd337ec2fcb3f8d06930d93676a6a208c783704","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/effa155ca7d9b4ed075bf66fbc9f7d3b6c923d9230f1dc66f1fccbe3465f76a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_culture_events_02:3 -> audio/generated/de-DE/dialogues/f26537a89d9b4224c8879eb5af1b8666ad79e6ea93961a84d56342c2d0fd064d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('91d6ae18-ec6b-5454-b65b-7f383feec21a', 1)
  AND voice_key = 'character:mia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_culture_events_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '093b359a30bf82346861fb75f278f06c4d97809e17214864297f7dc8df60a938'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e1ed5b5-8d6c-5e91-8bf6-b8fff529ee20', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('91d6ae18-ec6b-5454-b65b-7f383feec21a', 1), '093b359a30bf82346861fb75f278f06c4d97809e17214864297f7dc8df60a938',
  'character:mia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f26537a89d9b4224c8879eb5af1b8666ad79e6ea93961a84d56342c2d0fd064d.mp3', 2351, '2026-09-13 06:17:19.628336', '584bbe4c014d6ac7b533430b195ffa9dc3c254bc58f77f6afa4aa3e5ebd87084', 'validated', '{"audio_key":"f26537a89d9b4224c8879eb5af1b8666ad79e6ea93961a84d56342c2d0fd064d","entity_key":"d_culture_events_02:3","voice_id":"NE7AIW5DoJ7lUosXV2KR","voice_name":"Ela - Cheerful and Happy","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"584bbe4c014d6ac7b533430b195ffa9dc3c254bc58f77f6afa4aa3e5ebd87084","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f26537a89d9b4224c8879eb5af1b8666ad79e6ea93961a84d56342c2d0fd064d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_courses_learning_03:3 -> audio/generated/de-DE/dialogues/f2c3f43c7bd02abbd0933310fb48ce968b6ea61135e67ca7c9abd0d9e86d091c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('01c11624-264e-5cce-adbf-125b35f68edf', 1)
  AND voice_key = 'character:clara:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_courses_learning_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d1b58cc9c0f32592ef2232dc9689a9665f9ae528507b12d350f15eabbd6100c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dce61513-870b-5acc-80e2-b008d9eaffed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('01c11624-264e-5cce-adbf-125b35f68edf', 1), '8d1b58cc9c0f32592ef2232dc9689a9665f9ae528507b12d350f15eabbd6100c',
  'character:clara:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f2c3f43c7bd02abbd0933310fb48ce968b6ea61135e67ca7c9abd0d9e86d091c.mp3', 3709, '2026-09-13 06:17:19.899346', '8f2caba3af7d3862814635a43515d1fd8bfc5c949c52145d109291a3d0047f16', 'validated', '{"audio_key":"f2c3f43c7bd02abbd0933310fb48ce968b6ea61135e67ca7c9abd0d9e86d091c","entity_key":"d_courses_learning_03:3","voice_id":"SiMvlSW9cKKHDYT4BzOp","voice_name":"Lola - Fresh & Dynamic","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"8f2caba3af7d3862814635a43515d1fd8bfc5c949c52145d109291a3d0047f16","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f2c3f43c7bd02abbd0933310fb48ce968b6ea61135e67ca7c9abd0d9e86d091c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_housing_renting_01:2 -> audio/generated/de-DE/dialogues/f4614d95e19ec241444fcbffadcc41eafdedd7bd7f8d159d9e06eae39e16de0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('96a70ce7-9e1f-5055-9ac3-0c934ab927a4', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_housing_renting_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '75606275774113b75736a39144cd25a5dd670d5e3d8572cffa94dae41b234a03'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ccdcae5-5335-5ba3-9496-79ef02b896ca', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('96a70ce7-9e1f-5055-9ac3-0c934ab927a4', 1), '75606275774113b75736a39144cd25a5dd670d5e3d8572cffa94dae41b234a03',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f4614d95e19ec241444fcbffadcc41eafdedd7bd7f8d159d9e06eae39e16de0b.mp3', 2533, '2026-09-13 06:17:20.733714', '449a1bbcb8c105012fe37b950f71fba80459160b9b3ea1b39da6526048fa5305', 'validated', '{"audio_key":"f4614d95e19ec241444fcbffadcc41eafdedd7bd7f8d159d9e06eae39e16de0b","entity_key":"d_housing_renting_01:2","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"449a1bbcb8c105012fe37b950f71fba80459160b9b3ea1b39da6526048fa5305","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f4614d95e19ec241444fcbffadcc41eafdedd7bd7f8d159d9e06eae39e16de0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_money_budget_03:1 -> audio/generated/de-DE/dialogues/f50db3bdd34c9597c97f94dbdbfbd536bed3186a11f435a67f42d0b437bfa3b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('842cdf6c-e366-5088-8b15-eff554a8ecbd', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_money_budget_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01028e7462d4da961cdf8dbaec680f20bcdce6c0f04179b207ba7026fe6918db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eca3b40c-29c0-54c9-a0c0-8316bcd258f7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('842cdf6c-e366-5088-8b15-eff554a8ecbd', 1), '01028e7462d4da961cdf8dbaec680f20bcdce6c0f04179b207ba7026fe6918db',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f50db3bdd34c9597c97f94dbdbfbd536bed3186a11f435a67f42d0b437bfa3b3.mp3', 2403, '2026-09-13 06:17:21.029051', '945efe4475dd99ca692692808a63763bbc1d7a142f7aa17c58794e02b6b83776', 'validated', '{"audio_key":"f50db3bdd34c9597c97f94dbdbfbd536bed3186a11f435a67f42d0b437bfa3b3","entity_key":"d_money_budget_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"945efe4475dd99ca692692808a63763bbc1d7a142f7aa17c58794e02b6b83776","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/f50db3bdd34c9597c97f94dbdbfbd536bed3186a11f435a67f42d0b437bfa3b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_culture_events_01:4 -> audio/generated/de-DE/dialogues/f85bf9be7f408f9147c3ebdb9dcee341ba49b09d06065a933d5f7900fa2be5c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5759aca2-2314-5c16-ba78-b0eba24c51cf', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_culture_events_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4d2ed6f402d1e561dfe71f5d6ebb6fb2ef7026c396054d37cc0286a4d7690305'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49a47a41-a3d7-5e27-8920-07382dde3638', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5759aca2-2314-5c16-ba78-b0eba24c51cf', 1), '4d2ed6f402d1e561dfe71f5d6ebb6fb2ef7026c396054d37cc0286a4d7690305',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f85bf9be7f408f9147c3ebdb9dcee341ba49b09d06065a933d5f7900fa2be5c2.mp3', 2742, '2026-09-13 06:17:21.807912', '696e3130a1c6bff2d030d572729085e9b49f1b2bbed4af1fcc6916e29c166ea3', 'validated', '{"audio_key":"f85bf9be7f408f9147c3ebdb9dcee341ba49b09d06065a933d5f7900fa2be5c2","entity_key":"d_culture_events_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"696e3130a1c6bff2d030d572729085e9b49f1b2bbed4af1fcc6916e29c166ea3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/f85bf9be7f408f9147c3ebdb9dcee341ba49b09d06065a933d5f7900fa2be5c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_decisions_consequences_03:2 -> audio/generated/de-DE/dialogues/f89cd7fbec3cd3af710c9e28ae681b32e0ce778498308fef15cce60ba1c2f15a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ab194359-27f9-52c0-afe1-f511a0917b37', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_decisions_consequences_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '39c6b170638594752acac4ea539541b43f15753158a763dc3234ecc3f40f7328'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('903e2e00-c965-540b-932d-3f9a3bd7fdc4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ab194359-27f9-52c0-afe1-f511a0917b37', 1), '39c6b170638594752acac4ea539541b43f15753158a763dc3234ecc3f40f7328',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f89cd7fbec3cd3af710c9e28ae681b32e0ce778498308fef15cce60ba1c2f15a.mp3', 3526, '2026-09-13 06:17:22.254656', '42bee19ed512320c9b0c83161a93ad13875161f0e8bc28cade0923348691d8ce', 'validated', '{"audio_key":"f89cd7fbec3cd3af710c9e28ae681b32e0ce778498308fef15cce60ba1c2f15a","entity_key":"d_decisions_consequences_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"42bee19ed512320c9b0c83161a93ad13875161f0e8bc28cade0923348691d8ce","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f89cd7fbec3cd3af710c9e28ae681b32e0ce778498308fef15cce60ba1c2f15a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complaints_returns_03:2 -> audio/generated/de-DE/dialogues/f8a9e3138cc7b543350a66453631ec0b6ec2d43b120b93b9a0a03eae0f9c5fd2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('76bea0cd-bf44-55b9-8a3d-762ed7df0e01', 1)
  AND voice_key = 'character:leon:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complaints_returns_03:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e1bc4758c2358852a285b2ab9d050ed511f7e7670847e72bb7f8e197a0c8e88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee8d558a-1192-56dd-9bca-3fbc66f45891', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('76bea0cd-bf44-55b9-8a3d-762ed7df0e01', 1), '9e1bc4758c2358852a285b2ab9d050ed511f7e7670847e72bb7f8e197a0c8e88',
  'character:leon:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f8a9e3138cc7b543350a66453631ec0b6ec2d43b120b93b9a0a03eae0f9c5fd2.mp3', 2768, '2026-09-13 06:17:23.006401', '7e2fa840ced4f1f5fdd87643ab9827e3d80d7bd0bf21d593a492fc577489f24b', 'validated', '{"audio_key":"f8a9e3138cc7b543350a66453631ec0b6ec2d43b120b93b9a0a03eae0f9c5fd2","entity_key":"d_complaints_returns_03:2","voice_id":"HLL5Lh99l3pwG8HZW1N5","voice_name":"Pascal R – Warm Medical Customer Care Agent","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"professional"},"output_format":"mp3_44100_192","file_sha256":"7e2fa840ced4f1f5fdd87643ab9827e3d80d7bd0bf21d593a492fc577489f24b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/de-DE/dialogues/f8a9e3138cc7b543350a66453631ec0b6ec2d43b120b93b9a0a03eae0f9c5fd2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_culture_events_03:1 -> audio/generated/de-DE/dialogues/f9bbc15def7f8fc1fd10452ee888e6bf94a1c0dbcade8af2f677197777244829.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('be252173-fe05-5805-8685-73f7ae101c0f', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_culture_events_03:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77d1e6b50ca04a560b56af0ec651ae0b7ec83de710b1dc3484a6d5fd052ccb91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('559078b4-ac3e-5cdf-9ea9-bf7c3d0ef2d1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('be252173-fe05-5805-8685-73f7ae101c0f', 1), '77d1e6b50ca04a560b56af0ec651ae0b7ec83de710b1dc3484a6d5fd052ccb91',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f9bbc15def7f8fc1fd10452ee888e6bf94a1c0dbcade8af2f677197777244829.mp3', 2638, '2026-09-13 06:17:23.347781', '30766ad5b78db601d8c5467109e70865fb51172369d8ed38b3eb4ec4408b3dc4', 'validated', '{"audio_key":"f9bbc15def7f8fc1fd10452ee888e6bf94a1c0dbcade8af2f677197777244829","entity_key":"d_culture_events_03:1","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"30766ad5b78db601d8c5467109e70865fb51172369d8ed38b3eb4ec4408b3dc4","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/f9bbc15def7f8fc1fd10452ee888e6bf94a1c0dbcade8af2f677197777244829.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_environment_recycling_03:3 -> audio/generated/de-DE/dialogues/f9fe823c132fbdfbfdcdcfd58ce9967674412b447f1248ee1fcbba10fde103f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bfb1610c-c2cf-539d-b6ca-61e4fec1086d', 1)
  AND voice_key = 'character:lea:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_environment_recycling_03:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2108a3c410a73e0a15b80d32cb3fde26e9472e2cbd3aae3dcddf5431502bef8c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca88ad04-aeeb-54b5-86ed-3330fb913967', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bfb1610c-c2cf-539d-b6ca-61e4fec1086d', 1), '2108a3c410a73e0a15b80d32cb3fde26e9472e2cbd3aae3dcddf5431502bef8c',
  'character:lea:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/f9fe823c132fbdfbfdcdcfd58ce9967674412b447f1248ee1fcbba10fde103f5.mp3', 3343, '2026-09-13 06:17:24.221175', '6cbaa16fa8675f581dda9de8c8181a5cf5fbad20002034d8059b3538c07378aa', 'validated', '{"audio_key":"f9fe823c132fbdfbfdcdcfd58ce9967674412b447f1248ee1fcbba10fde103f5","entity_key":"d_environment_recycling_03:3","voice_id":"SJJe86Va82zRzg6zi2dX","voice_name":"Ela - Empathetic & Warm","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6cbaa16fa8675f581dda9de8c8181a5cf5fbad20002034d8059b3538c07378aa","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/dialogues/f9fe823c132fbdfbfdcdcfd58ce9967674412b447f1248ee1fcbba10fde103f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_complaints_returns_02:1 -> audio/generated/de-DE/dialogues/fdcb603fbb4b20857da401c08c17c158e5b06c8ac2210cae7c3cafcdf8f81712.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('59e4a3be-1c19-5c39-9a91-78f4dff754e2', 1)
  AND voice_key = 'character:nina:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_complaints_returns_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54511dd9a51c695aab7faab94cfc0889717669231bdf709eb4b747e715dd7f48'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6bf19e16-36f7-5516-8f43-1a6ee97b9744', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('59e4a3be-1c19-5c39-9a91-78f4dff754e2', 1), '54511dd9a51c695aab7faab94cfc0889717669231bdf709eb4b747e715dd7f48',
  'character:nina:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fdcb603fbb4b20857da401c08c17c158e5b06c8ac2210cae7c3cafcdf8f81712.mp3', 2403, '2026-09-13 06:17:24.443289', '66dad58d1571f42e6a400d5ee0f32dc1bdc9978b9dbe6a6a822cd1d8bd94882c', 'validated', '{"audio_key":"fdcb603fbb4b20857da401c08c17c158e5b06c8ac2210cae7c3cafcdf8f81712","entity_key":"d_complaints_returns_02:1","voice_id":"NkMe1eztMQReztnhYfeX","voice_name":"Irene - Friendly and Approachable","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"66dad58d1571f42e6a400d5ee0f32dc1bdc9978b9dbe6a6a822cd1d8bd94882c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/fdcb603fbb4b20857da401c08c17c158e5b06c8ac2210cae7c3cafcdf8f81712.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_workplace_communication_01:4 -> audio/generated/de-DE/dialogues/fdfc8d397295f20504dcb99344d5b2ad630ef3c5ef09260d71c2c38a8ec5e4bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('58cb7356-86c0-56a0-8923-5a7fb57ea593', 1)
  AND voice_key = 'character:lukas:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_workplace_communication_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b53613472fd977e802abd72b4e1bbf5da1f735155105faf7365487720019d57'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d452713-6ebc-58a4-9425-82ed8fc33b37', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('58cb7356-86c0-56a0-8923-5a7fb57ea593', 1), '4b53613472fd977e802abd72b4e1bbf5da1f735155105faf7365487720019d57',
  'character:lukas:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/dialogues/fdfc8d397295f20504dcb99344d5b2ad630ef3c5ef09260d71c2c38a8ec5e4bf.mp3', 2925, '2026-09-13 06:17:25.349844', '90c2a6076178eb42f54cb84dbafd4a8370230d8c251cb2be0a7130ece6419d60', 'validated', '{"audio_key":"fdfc8d397295f20504dcb99344d5b2ad630ef3c5ef09260d71c2c38a8ec5e4bf","entity_key":"d_workplace_communication_01:4","voice_id":"fmj9wTxZg3ta4xR75kgB","voice_name":"Peter Stern – Friendly Agent","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"90c2a6076178eb42f54cb84dbafd4a8370230d8c251cb2be0a7130ece6419d60","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/de-DE/dialogues/fdfc8d397295f20504dcb99344d5b2ad630ef3c5ef09260d71c2c38a8ec5e4bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_housing_renting_01 -> audio/generated/de-DE/lexical/0abe9ebd3c91e5bca88d0db118493415182ecb5f4a607e3c73f2ff316016e32f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('81e21b1b-1811-5e90-808f-b734f533c10a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_housing_renting_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8cdd0dda52de2e1ed4cdc324ca8c29b69d8c8e26db455cd99fe854cd17c3fb16'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8fe3f909-5ca1-560a-80e1-7fbd337a099d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('81e21b1b-1811-5e90-808f-b734f533c10a', 1), '8cdd0dda52de2e1ed4cdc324ca8c29b69d8c8e26db455cd99fe854cd17c3fb16',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0abe9ebd3c91e5bca88d0db118493415182ecb5f4a607e3c73f2ff316016e32f.mp3', 1071, '2026-09-13 06:17:25.398994', '0cfa29da2eaeec1652df05a0b786cf8c6243845a0cf28dcf8f4b5ad03ea49d7a', 'validated', '{"audio_key":"0abe9ebd3c91e5bca88d0db118493415182ecb5f4a607e3c73f2ff316016e32f","entity_key":"lx_housing_renting_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0cfa29da2eaeec1652df05a0b786cf8c6243845a0cf28dcf8f4b5ad03ea49d7a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0abe9ebd3c91e5bca88d0db118493415182ecb5f4a607e3c73f2ff316016e32f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_housing_renting_01 -> audio/generated/de-DE/lexical/0abe9ebd3c91e5bca88d0db118493415182ecb5f4a607e3c73f2ff316016e32f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7bd983d7-68ee-5371-8bf9-450e8c7a1f9f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_housing_renting_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8cdd0dda52de2e1ed4cdc324ca8c29b69d8c8e26db455cd99fe854cd17c3fb16'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ddabca7d-d72b-5891-8acd-b4cbe410a79d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7bd983d7-68ee-5371-8bf9-450e8c7a1f9f', 1), '8cdd0dda52de2e1ed4cdc324ca8c29b69d8c8e26db455cd99fe854cd17c3fb16',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0abe9ebd3c91e5bca88d0db118493415182ecb5f4a607e3c73f2ff316016e32f.mp3', 1071, '2026-09-13 06:17:25.398994', '0cfa29da2eaeec1652df05a0b786cf8c6243845a0cf28dcf8f4b5ad03ea49d7a', 'validated', '{"audio_key":"0abe9ebd3c91e5bca88d0db118493415182ecb5f4a607e3c73f2ff316016e32f","entity_key":"wf_housing_renting_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0cfa29da2eaeec1652df05a0b786cf8c6243845a0cf28dcf8f4b5ad03ea49d7a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0abe9ebd3c91e5bca88d0db118493415182ecb5f4a607e3c73f2ff316016e32f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_workplace_communication_02 -> audio/generated/de-DE/lexical/0ac4b269ac3719c787799813760562c1e7a81f432261939f3a09bc9ed0138ccf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6c1383da-06a1-5024-9be6-d8909657fb6d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_workplace_communication_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2788b953aafb7ed7a715732b735f2caa219a222a98e7a796c9d96846c35217f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf5c3cad-d7fb-5f85-b483-112169d861b1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6c1383da-06a1-5024-9be6-d8909657fb6d', 1), '2788b953aafb7ed7a715732b735f2caa219a222a98e7a796c9d96846c35217f9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0ac4b269ac3719c787799813760562c1e7a81f432261939f3a09bc9ed0138ccf.mp3', 1201, '2026-09-13 06:17:26.339278', '40a5d8d277d03883e9992a88bc762cd4d63622cc609276301799ec7bb4e5402e', 'validated', '{"audio_key":"0ac4b269ac3719c787799813760562c1e7a81f432261939f3a09bc9ed0138ccf","entity_key":"lx_workplace_communication_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"40a5d8d277d03883e9992a88bc762cd4d63622cc609276301799ec7bb4e5402e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0ac4b269ac3719c787799813760562c1e7a81f432261939f3a09bc9ed0138ccf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_workplace_communication_02 -> audio/generated/de-DE/lexical/0ac4b269ac3719c787799813760562c1e7a81f432261939f3a09bc9ed0138ccf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c87a2b83-e598-5e0e-a3dd-966827016647', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_workplace_communication_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2788b953aafb7ed7a715732b735f2caa219a222a98e7a796c9d96846c35217f9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ce2e5c3-0eee-502f-88d2-a922dce8355c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c87a2b83-e598-5e0e-a3dd-966827016647', 1), '2788b953aafb7ed7a715732b735f2caa219a222a98e7a796c9d96846c35217f9',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/0ac4b269ac3719c787799813760562c1e7a81f432261939f3a09bc9ed0138ccf.mp3', 1201, '2026-09-13 06:17:26.339278', '40a5d8d277d03883e9992a88bc762cd4d63622cc609276301799ec7bb4e5402e', 'validated', '{"audio_key":"0ac4b269ac3719c787799813760562c1e7a81f432261939f3a09bc9ed0138ccf","entity_key":"wf_workplace_communication_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"40a5d8d277d03883e9992a88bc762cd4d63622cc609276301799ec7bb4e5402e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/0ac4b269ac3719c787799813760562c1e7a81f432261939f3a09bc9ed0138ccf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_housing_renting_05 -> audio/generated/de-DE/lexical/1e474f17e437e37f47aa0abd90d31ab595b66f961a51cdb7894f0db695dad10d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1ca1fd56-7622-5f04-b21b-86f11ac5dcb0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_housing_renting_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f5279569295753c3c3ec64a8a9e0dfed337e0cfa645d7b66da91c7f0b4eb62f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c39b922-bc0c-595a-a327-9a2c6417b803', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1ca1fd56-7622-5f04-b21b-86f11ac5dcb0', 1), '4f5279569295753c3c3ec64a8a9e0dfed337e0cfa645d7b66da91c7f0b4eb62f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1e474f17e437e37f47aa0abd90d31ab595b66f961a51cdb7894f0db695dad10d.mp3', 1097, '2026-09-13 06:17:26.385412', 'def869d91fb460cf1499e638792fea6ae5cce20ebc93b39669543084ba4c8592', 'validated', '{"audio_key":"1e474f17e437e37f47aa0abd90d31ab595b66f961a51cdb7894f0db695dad10d","entity_key":"lx_housing_renting_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"def869d91fb460cf1499e638792fea6ae5cce20ebc93b39669543084ba4c8592","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1e474f17e437e37f47aa0abd90d31ab595b66f961a51cdb7894f0db695dad10d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_housing_renting_05 -> audio/generated/de-DE/lexical/1e474f17e437e37f47aa0abd90d31ab595b66f961a51cdb7894f0db695dad10d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('81db3e27-165a-5b58-abf2-1a520134362e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_housing_renting_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f5279569295753c3c3ec64a8a9e0dfed337e0cfa645d7b66da91c7f0b4eb62f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4816409-6641-50b6-aba3-3a9e080b815e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('81db3e27-165a-5b58-abf2-1a520134362e', 1), '4f5279569295753c3c3ec64a8a9e0dfed337e0cfa645d7b66da91c7f0b4eb62f',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/1e474f17e437e37f47aa0abd90d31ab595b66f961a51cdb7894f0db695dad10d.mp3', 1097, '2026-09-13 06:17:26.385412', 'def869d91fb460cf1499e638792fea6ae5cce20ebc93b39669543084ba4c8592', 'validated', '{"audio_key":"1e474f17e437e37f47aa0abd90d31ab595b66f961a51cdb7894f0db695dad10d","entity_key":"wf_housing_renting_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"def869d91fb460cf1499e638792fea6ae5cce20ebc93b39669543084ba4c8592","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/1e474f17e437e37f47aa0abd90d31ab595b66f961a51cdb7894f0db695dad10d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_housing_renting_03 -> audio/generated/de-DE/lexical/2636df0edbb4db3c9a83dfeaba205a6aed418097922190010393d6af8f7da8d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2fb83e65-7e14-523a-8afd-b158f4aabe8e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_housing_renting_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4de3ef19eb28c09024888a5fdd4b594644668b9a413df369775ea05d45c2c4f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa2de93f-fe50-5741-9f39-0d0998db7fb7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2fb83e65-7e14-523a-8afd-b158f4aabe8e', 1), '4de3ef19eb28c09024888a5fdd4b594644668b9a413df369775ea05d45c2c4f1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2636df0edbb4db3c9a83dfeaba205a6aed418097922190010393d6af8f7da8d7.mp3', 1201, '2026-09-13 06:17:27.297627', '522137f0fd6da0c358059ec201d1dd39c85b07e7ada25084675905895e2bcf74', 'validated', '{"audio_key":"2636df0edbb4db3c9a83dfeaba205a6aed418097922190010393d6af8f7da8d7","entity_key":"lx_housing_renting_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"522137f0fd6da0c358059ec201d1dd39c85b07e7ada25084675905895e2bcf74","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2636df0edbb4db3c9a83dfeaba205a6aed418097922190010393d6af8f7da8d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_housing_renting_03 -> audio/generated/de-DE/lexical/2636df0edbb4db3c9a83dfeaba205a6aed418097922190010393d6af8f7da8d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a730e9f2-10a6-529c-8b1d-eda594114a61', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_housing_renting_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4de3ef19eb28c09024888a5fdd4b594644668b9a413df369775ea05d45c2c4f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2aee2787-69ce-52ff-8f97-37a055f6d69b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a730e9f2-10a6-529c-8b1d-eda594114a61', 1), '4de3ef19eb28c09024888a5fdd4b594644668b9a413df369775ea05d45c2c4f1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2636df0edbb4db3c9a83dfeaba205a6aed418097922190010393d6af8f7da8d7.mp3', 1201, '2026-09-13 06:17:27.297627', '522137f0fd6da0c358059ec201d1dd39c85b07e7ada25084675905895e2bcf74', 'validated', '{"audio_key":"2636df0edbb4db3c9a83dfeaba205a6aed418097922190010393d6af8f7da8d7","entity_key":"wf_housing_renting_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"522137f0fd6da0c358059ec201d1dd39c85b07e7ada25084675905895e2bcf74","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2636df0edbb4db3c9a83dfeaba205a6aed418097922190010393d6af8f7da8d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_workplace_communication_06 -> audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('317173ca-6386-5581-a58d-583220af74a6', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_workplace_communication_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '787e02f4cc6510e0c0cd1ffad687ecc0dd2dc3a02ab0fecb5ace2702f6d45761'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('923f1fdb-70d8-5641-99b9-78a606b22dbc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('317173ca-6386-5581-a58d-583220af74a6', 1), '787e02f4cc6510e0c0cd1ffad687ecc0dd2dc3a02ab0fecb5ace2702f6d45761',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3', 1201, '2026-09-13 06:17:27.328979', '2f55fe85b08ee050c371c3b08358263aef270bd2b2f3d183b5a2ef95b2a81944', 'validated', '{"audio_key":"2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b","entity_key":"lx_workplace_communication_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2f55fe85b08ee050c371c3b08358263aef270bd2b2f3d183b5a2ef95b2a81944","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_workplace_communication_06 -> audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bd574e38-3297-58a4-a60f-047edad3cbb9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_workplace_communication_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '787e02f4cc6510e0c0cd1ffad687ecc0dd2dc3a02ab0fecb5ace2702f6d45761'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aae99f3b-3eeb-542d-bd7a-2b94aece2d85', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bd574e38-3297-58a4-a60f-047edad3cbb9', 1), '787e02f4cc6510e0c0cd1ffad687ecc0dd2dc3a02ab0fecb5ace2702f6d45761',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3', 1201, '2026-09-13 06:17:27.328979', '2f55fe85b08ee050c371c3b08358263aef270bd2b2f3d183b5a2ef95b2a81944', 'validated', '{"audio_key":"2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b","entity_key":"wf_workplace_communication_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2f55fe85b08ee050c371c3b08358263aef270bd2b2f3d183b5a2ef95b2a81944","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2bab6d92470f73b70c10479c44c9bc01fa3dfbaa897e27baf6c5be0b4e1b610b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_environment_recycling_02 -> audio/generated/de-DE/lexical/2cebea77b1b21527d78043965e54a8887a2f04ec65ee4da8320905478126edc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0cdffa1d-5333-5552-be47-44ddd648f7b1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_environment_recycling_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6c4b1df29e0b1e664b98eee8c0a22db04c6cf71e1292e453338bf39e199439d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e2d05ba-c503-5939-8e0b-9d3fb9ce04e4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0cdffa1d-5333-5552-be47-44ddd648f7b1', 1), 'd6c4b1df29e0b1e664b98eee8c0a22db04c6cf71e1292e453338bf39e199439d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2cebea77b1b21527d78043965e54a8887a2f04ec65ee4da8320905478126edc8.mp3', 1149, '2026-09-13 06:17:28.282571', 'c573f2de4573bf8779dceaa69e7e9d6855b97d5cd9017e0bed4952a2c0e86f8d', 'validated', '{"audio_key":"2cebea77b1b21527d78043965e54a8887a2f04ec65ee4da8320905478126edc8","entity_key":"lx_environment_recycling_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c573f2de4573bf8779dceaa69e7e9d6855b97d5cd9017e0bed4952a2c0e86f8d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2cebea77b1b21527d78043965e54a8887a2f04ec65ee4da8320905478126edc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_environment_recycling_02 -> audio/generated/de-DE/lexical/2cebea77b1b21527d78043965e54a8887a2f04ec65ee4da8320905478126edc8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d24b659a-3b8c-5a21-87dc-ba759c736bc0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_environment_recycling_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6c4b1df29e0b1e664b98eee8c0a22db04c6cf71e1292e453338bf39e199439d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4250b109-9359-5025-810c-a6a5da160056', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d24b659a-3b8c-5a21-87dc-ba759c736bc0', 1), 'd6c4b1df29e0b1e664b98eee8c0a22db04c6cf71e1292e453338bf39e199439d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/2cebea77b1b21527d78043965e54a8887a2f04ec65ee4da8320905478126edc8.mp3', 1149, '2026-09-13 06:17:28.282571', 'c573f2de4573bf8779dceaa69e7e9d6855b97d5cd9017e0bed4952a2c0e86f8d', 'validated', '{"audio_key":"2cebea77b1b21527d78043965e54a8887a2f04ec65ee4da8320905478126edc8","entity_key":"wf_environment_recycling_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c573f2de4573bf8779dceaa69e7e9d6855b97d5cd9017e0bed4952a2c0e86f8d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/2cebea77b1b21527d78043965e54a8887a2f04ec65ee4da8320905478126edc8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_money_budget_01 -> audio/generated/de-DE/lexical/3075b71020d1041cbf6ae494322ebfd7f3bc7c61d17b612990d4c02e616aa0fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a6f28174-c252-58d9-a6fd-2db1ec71717a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_money_budget_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c6225ec7092ad2f4a4acd79f8fc6854aa10653763fb053a6cf2bb2d2a4148ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d157b89-e6c3-567c-8e88-6346bff1aa2e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a6f28174-c252-58d9-a6fd-2db1ec71717a', 1), '1c6225ec7092ad2f4a4acd79f8fc6854aa10653763fb053a6cf2bb2d2a4148ab',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3075b71020d1041cbf6ae494322ebfd7f3bc7c61d17b612990d4c02e616aa0fe.mp3', 1097, '2026-09-13 05:29:49.885612', '3ab59a1f255f89afc8e621f72e82858257b013b9b30dd134c6294d2e283a4c47', 'validated', '{"audio_key":"3075b71020d1041cbf6ae494322ebfd7f3bc7c61d17b612990d4c02e616aa0fe","entity_key":"lx_money_budget_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3ab59a1f255f89afc8e621f72e82858257b013b9b30dd134c6294d2e283a4c47","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3075b71020d1041cbf6ae494322ebfd7f3bc7c61d17b612990d4c02e616aa0fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_money_budget_01 -> audio/generated/de-DE/lexical/3075b71020d1041cbf6ae494322ebfd7f3bc7c61d17b612990d4c02e616aa0fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e50d577b-4c8f-546a-afe3-b4b7eeccb22a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_money_budget_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c6225ec7092ad2f4a4acd79f8fc6854aa10653763fb053a6cf2bb2d2a4148ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09445acd-b29b-54ef-b9bb-9df8169efc4a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e50d577b-4c8f-546a-afe3-b4b7eeccb22a', 1), '1c6225ec7092ad2f4a4acd79f8fc6854aa10653763fb053a6cf2bb2d2a4148ab',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3075b71020d1041cbf6ae494322ebfd7f3bc7c61d17b612990d4c02e616aa0fe.mp3', 1097, '2026-09-13 05:29:49.885612', '3ab59a1f255f89afc8e621f72e82858257b013b9b30dd134c6294d2e283a4c47', 'validated', '{"audio_key":"3075b71020d1041cbf6ae494322ebfd7f3bc7c61d17b612990d4c02e616aa0fe","entity_key":"wf_money_budget_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3ab59a1f255f89afc8e621f72e82858257b013b9b30dd134c6294d2e283a4c47","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3075b71020d1041cbf6ae494322ebfd7f3bc7c61d17b612990d4c02e616aa0fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_workplace_communication_05 -> audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3c514f1f-b453-5083-9348-9f380ef9bcf4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_workplace_communication_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2d60bfee4e0bf9758844238187ad9b464df6d6fbbe1dfc6a2119c1756549625'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30ac9b86-d70b-58c5-bd3b-2809e05ad52d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3c514f1f-b453-5083-9348-9f380ef9bcf4', 1), 'c2d60bfee4e0bf9758844238187ad9b464df6d6fbbe1dfc6a2119c1756549625',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3', 1071, '2026-09-13 05:29:50.936834', '435da135045905215c59f66844f1fa29232f29d8d377de71668b3705b451be1c', 'validated', '{"audio_key":"31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6","entity_key":"lx_workplace_communication_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"435da135045905215c59f66844f1fa29232f29d8d377de71668b3705b451be1c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_workplace_communication_05 -> audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6d40696b-869c-563c-ba97-960d6f21d7bc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_workplace_communication_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2d60bfee4e0bf9758844238187ad9b464df6d6fbbe1dfc6a2119c1756549625'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('838dbafd-9faa-5618-ad69-1aa1457eaedb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6d40696b-869c-563c-ba97-960d6f21d7bc', 1), 'c2d60bfee4e0bf9758844238187ad9b464df6d6fbbe1dfc6a2119c1756549625',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3', 1071, '2026-09-13 05:29:50.936834', '435da135045905215c59f66844f1fa29232f29d8d377de71668b3705b451be1c', 'validated', '{"audio_key":"31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6","entity_key":"wf_workplace_communication_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"435da135045905215c59f66844f1fa29232f29d8d377de71668b3705b451be1c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/31b53187674ece29272f1bf22a87401947655723de94c8bbe0ea714ae7f83ea6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_environment_recycling_01 -> audio/generated/de-DE/lexical/3344238bcf83e0ff421b1b2a7e1cee0f5209d7698293adc87a43188af314edf1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('550eb7e8-bced-5eb3-83de-e4f1b31fab01', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_environment_recycling_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0e619044cb55872f613decc788975c119450b10ef4fea56956a8165a465b5f17'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc5bef4b-3a69-5620-a521-ab14de9f967d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('550eb7e8-bced-5eb3-83de-e4f1b31fab01', 1), '0e619044cb55872f613decc788975c119450b10ef4fea56956a8165a465b5f17',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3344238bcf83e0ff421b1b2a7e1cee0f5209d7698293adc87a43188af314edf1.mp3', 914, '2026-09-13 06:17:28.276886', '91c5dfc82dc742ef8e8d2861f2ff971f6c47cdeedd559f66d6bec30eca8d6e69', 'validated', '{"audio_key":"3344238bcf83e0ff421b1b2a7e1cee0f5209d7698293adc87a43188af314edf1","entity_key":"lx_environment_recycling_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"91c5dfc82dc742ef8e8d2861f2ff971f6c47cdeedd559f66d6bec30eca8d6e69","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3344238bcf83e0ff421b1b2a7e1cee0f5209d7698293adc87a43188af314edf1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_environment_recycling_01 -> audio/generated/de-DE/lexical/3344238bcf83e0ff421b1b2a7e1cee0f5209d7698293adc87a43188af314edf1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7aefa926-9569-5e50-8052-29a752871e99', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_environment_recycling_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0e619044cb55872f613decc788975c119450b10ef4fea56956a8165a465b5f17'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3e9ec7f-17a9-5087-a521-0b0e184937ec', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7aefa926-9569-5e50-8052-29a752871e99', 1), '0e619044cb55872f613decc788975c119450b10ef4fea56956a8165a465b5f17',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3344238bcf83e0ff421b1b2a7e1cee0f5209d7698293adc87a43188af314edf1.mp3', 914, '2026-09-13 06:17:28.276886', '91c5dfc82dc742ef8e8d2861f2ff971f6c47cdeedd559f66d6bec30eca8d6e69', 'validated', '{"audio_key":"3344238bcf83e0ff421b1b2a7e1cee0f5209d7698293adc87a43188af314edf1","entity_key":"wf_environment_recycling_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"91c5dfc82dc742ef8e8d2861f2ff971f6c47cdeedd559f66d6bec30eca8d6e69","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3344238bcf83e0ff421b1b2a7e1cee0f5209d7698293adc87a43188af314edf1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_money_budget_05 -> audio/generated/de-DE/lexical/34954fc68929d9159c39386b9ba6f1371988d72332552c50fb69e3a06ff57d3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('96f12a1e-e259-5227-9c5d-887d6f0a0d71', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_money_budget_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10b3776b12c3accd55b19ebc0d70d31b6740b27d57d4177b6de9ec8c6d2ec4a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('032624b2-f2c2-5d29-b345-785b3dfd768c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('96f12a1e-e259-5227-9c5d-887d6f0a0d71', 1), '10b3776b12c3accd55b19ebc0d70d31b6740b27d57d4177b6de9ec8c6d2ec4a8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/34954fc68929d9159c39386b9ba6f1371988d72332552c50fb69e3a06ff57d3b.mp3', 862, '2026-09-13 06:17:29.258752', '488183927ba2f0e3287f06a8672f90c9d2c18c9b2c8612bfcd95c180117619c0', 'validated', '{"audio_key":"34954fc68929d9159c39386b9ba6f1371988d72332552c50fb69e3a06ff57d3b","entity_key":"lx_money_budget_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"488183927ba2f0e3287f06a8672f90c9d2c18c9b2c8612bfcd95c180117619c0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/34954fc68929d9159c39386b9ba6f1371988d72332552c50fb69e3a06ff57d3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_money_budget_05 -> audio/generated/de-DE/lexical/34954fc68929d9159c39386b9ba6f1371988d72332552c50fb69e3a06ff57d3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3d09a07c-84ad-5da7-b428-f844215d65ba', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_money_budget_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10b3776b12c3accd55b19ebc0d70d31b6740b27d57d4177b6de9ec8c6d2ec4a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('231c896d-c8a0-56c0-95b7-29eee485b23b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3d09a07c-84ad-5da7-b428-f844215d65ba', 1), '10b3776b12c3accd55b19ebc0d70d31b6740b27d57d4177b6de9ec8c6d2ec4a8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/34954fc68929d9159c39386b9ba6f1371988d72332552c50fb69e3a06ff57d3b.mp3', 862, '2026-09-13 06:17:29.258752', '488183927ba2f0e3287f06a8672f90c9d2c18c9b2c8612bfcd95c180117619c0', 'validated', '{"audio_key":"34954fc68929d9159c39386b9ba6f1371988d72332552c50fb69e3a06ff57d3b","entity_key":"wf_money_budget_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"488183927ba2f0e3287f06a8672f90c9d2c18c9b2c8612bfcd95c180117619c0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/34954fc68929d9159c39386b9ba6f1371988d72332552c50fb69e3a06ff57d3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_housing_renting_02 -> audio/generated/de-DE/lexical/3962bf135aa2ae32f3da9fbd62b6f60811e84b1262b7536bac72be95348d210d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6aa1dde9-84eb-5019-95ea-47c4675c501c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_housing_renting_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e23d8b281b7378ecd57d6cf95aedd8ed8f08159c05156bc1ae55eb7ec443a0ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('42c00f5a-e9c6-5680-b8df-036bce18e90b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6aa1dde9-84eb-5019-95ea-47c4675c501c', 1), 'e23d8b281b7378ecd57d6cf95aedd8ed8f08159c05156bc1ae55eb7ec443a0ea',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3962bf135aa2ae32f3da9fbd62b6f60811e84b1262b7536bac72be95348d210d.mp3', 1253, '2026-09-13 06:17:29.239154', '092c973bf7ec5d3122b949b660ab77dec0852447f2f01a54ec262cbe1b1810ee', 'validated', '{"audio_key":"3962bf135aa2ae32f3da9fbd62b6f60811e84b1262b7536bac72be95348d210d","entity_key":"lx_housing_renting_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"092c973bf7ec5d3122b949b660ab77dec0852447f2f01a54ec262cbe1b1810ee","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3962bf135aa2ae32f3da9fbd62b6f60811e84b1262b7536bac72be95348d210d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_housing_renting_02 -> audio/generated/de-DE/lexical/3962bf135aa2ae32f3da9fbd62b6f60811e84b1262b7536bac72be95348d210d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a83d81b0-bd03-5373-a63e-ab37e957314b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_housing_renting_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e23d8b281b7378ecd57d6cf95aedd8ed8f08159c05156bc1ae55eb7ec443a0ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('93e96dc9-b735-54eb-ae54-d901ede4f65f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a83d81b0-bd03-5373-a63e-ab37e957314b', 1), 'e23d8b281b7378ecd57d6cf95aedd8ed8f08159c05156bc1ae55eb7ec443a0ea',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3962bf135aa2ae32f3da9fbd62b6f60811e84b1262b7536bac72be95348d210d.mp3', 1253, '2026-09-13 06:17:29.239154', '092c973bf7ec5d3122b949b660ab77dec0852447f2f01a54ec262cbe1b1810ee', 'validated', '{"audio_key":"3962bf135aa2ae32f3da9fbd62b6f60811e84b1262b7536bac72be95348d210d","entity_key":"wf_housing_renting_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"092c973bf7ec5d3122b949b660ab77dec0852447f2f01a54ec262cbe1b1810ee","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3962bf135aa2ae32f3da9fbd62b6f60811e84b1262b7536bac72be95348d210d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_housing_renting_04 -> audio/generated/de-DE/lexical/3cd68b7991ad528556eb1b7810fd37ea754a6de9ef6b52591d85391cc0f83c58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('de26dd74-f554-51d7-b238-56d8cd7c697a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_housing_renting_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '53fb7705d2cf97c766f4c19665b26e2433c7b062085b9a94a2b543b5b9931a74'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('699418c9-faf3-5a82-9fea-75e3ac422833', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('de26dd74-f554-51d7-b238-56d8cd7c697a', 1), '53fb7705d2cf97c766f4c19665b26e2433c7b062085b9a94a2b543b5b9931a74',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3cd68b7991ad528556eb1b7810fd37ea754a6de9ef6b52591d85391cc0f83c58.mp3', 1201, '2026-09-13 06:17:30.205455', '73a05ec4ec0feacb2b3fe4e575c7bce387bd3e5b96b726bcadbb638a26d08cb5', 'validated', '{"audio_key":"3cd68b7991ad528556eb1b7810fd37ea754a6de9ef6b52591d85391cc0f83c58","entity_key":"lx_housing_renting_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73a05ec4ec0feacb2b3fe4e575c7bce387bd3e5b96b726bcadbb638a26d08cb5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3cd68b7991ad528556eb1b7810fd37ea754a6de9ef6b52591d85391cc0f83c58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_housing_renting_04 -> audio/generated/de-DE/lexical/3cd68b7991ad528556eb1b7810fd37ea754a6de9ef6b52591d85391cc0f83c58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('72a52520-1501-562a-b2f7-5160c16e6404', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_housing_renting_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '53fb7705d2cf97c766f4c19665b26e2433c7b062085b9a94a2b543b5b9931a74'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02ed8e62-a32f-57c6-8c36-639c826c39d4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('72a52520-1501-562a-b2f7-5160c16e6404', 1), '53fb7705d2cf97c766f4c19665b26e2433c7b062085b9a94a2b543b5b9931a74',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/3cd68b7991ad528556eb1b7810fd37ea754a6de9ef6b52591d85391cc0f83c58.mp3', 1201, '2026-09-13 06:17:30.205455', '73a05ec4ec0feacb2b3fe4e575c7bce387bd3e5b96b726bcadbb638a26d08cb5', 'validated', '{"audio_key":"3cd68b7991ad528556eb1b7810fd37ea754a6de9ef6b52591d85391cc0f83c58","entity_key":"wf_housing_renting_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73a05ec4ec0feacb2b3fe4e575c7bce387bd3e5b96b726bcadbb638a26d08cb5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/3cd68b7991ad528556eb1b7810fd37ea754a6de9ef6b52591d85391cc0f83c58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_relationships_conflict_02 -> audio/generated/de-DE/lexical/4089f58a594835830e7360f954a6f9dc1664f60dac820381710d3b73a98f9756.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2bdf181a-0852-52bc-b4ba-e4dc63e8693e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_relationships_conflict_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '126f5795aa47e45b3eb1a35574ce87d12d024bfe33119381d68153066634b1b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7475e30-3abc-504a-a21f-69dd49f9b03b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2bdf181a-0852-52bc-b4ba-e4dc63e8693e', 1), '126f5795aa47e45b3eb1a35574ce87d12d024bfe33119381d68153066634b1b4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4089f58a594835830e7360f954a6f9dc1664f60dac820381710d3b73a98f9756.mp3', 1071, '2026-09-13 06:17:30.197904', 'df7dc43c57e05f02aaf6195f8ecf93a01ed1bffa88e541377407894f5047d3ed', 'validated', '{"audio_key":"4089f58a594835830e7360f954a6f9dc1664f60dac820381710d3b73a98f9756","entity_key":"lx_relationships_conflict_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"df7dc43c57e05f02aaf6195f8ecf93a01ed1bffa88e541377407894f5047d3ed","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4089f58a594835830e7360f954a6f9dc1664f60dac820381710d3b73a98f9756.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_relationships_conflict_02 -> audio/generated/de-DE/lexical/4089f58a594835830e7360f954a6f9dc1664f60dac820381710d3b73a98f9756.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('66bd3785-5efc-5dac-899b-b26a386da22b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_relationships_conflict_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '126f5795aa47e45b3eb1a35574ce87d12d024bfe33119381d68153066634b1b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0fb1d80-3196-59d0-9af9-297a289c322d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('66bd3785-5efc-5dac-899b-b26a386da22b', 1), '126f5795aa47e45b3eb1a35574ce87d12d024bfe33119381d68153066634b1b4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4089f58a594835830e7360f954a6f9dc1664f60dac820381710d3b73a98f9756.mp3', 1071, '2026-09-13 06:17:30.197904', 'df7dc43c57e05f02aaf6195f8ecf93a01ed1bffa88e541377407894f5047d3ed', 'validated', '{"audio_key":"4089f58a594835830e7360f954a6f9dc1664f60dac820381710d3b73a98f9756","entity_key":"wf_relationships_conflict_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"df7dc43c57e05f02aaf6195f8ecf93a01ed1bffa88e541377407894f5047d3ed","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4089f58a594835830e7360f954a6f9dc1664f60dac820381710d3b73a98f9756.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_workplace_communication_04 -> audio/generated/de-DE/lexical/4536fc8e4218249d56eed386e11ce31bf893ced82b7a54f24307d1e9d82f186b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('235668c1-897d-57d6-90ec-b5f48abdbc4d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_workplace_communication_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '467931af1da8bbb21f1dde1cfe2be64a5669f9d74ea00a8afe3b38cfc2b92ca6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c6602182-6aa2-5d2c-8a88-e633730cf45c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('235668c1-897d-57d6-90ec-b5f48abdbc4d', 1), '467931af1da8bbb21f1dde1cfe2be64a5669f9d74ea00a8afe3b38cfc2b92ca6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4536fc8e4218249d56eed386e11ce31bf893ced82b7a54f24307d1e9d82f186b.mp3', 1097, '2026-09-13 06:17:31.166967', '4bbc9329d7832a9ebaf4cde69800c19a5c28743d7e6d18a70468048a01fec653', 'validated', '{"audio_key":"4536fc8e4218249d56eed386e11ce31bf893ced82b7a54f24307d1e9d82f186b","entity_key":"lx_workplace_communication_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4bbc9329d7832a9ebaf4cde69800c19a5c28743d7e6d18a70468048a01fec653","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4536fc8e4218249d56eed386e11ce31bf893ced82b7a54f24307d1e9d82f186b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_workplace_communication_04 -> audio/generated/de-DE/lexical/4536fc8e4218249d56eed386e11ce31bf893ced82b7a54f24307d1e9d82f186b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('380b50ea-1da9-51ae-b72b-0632097d57dc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_workplace_communication_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '467931af1da8bbb21f1dde1cfe2be64a5669f9d74ea00a8afe3b38cfc2b92ca6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ec6e5e1-9317-56cc-980c-d297fad4c033', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('380b50ea-1da9-51ae-b72b-0632097d57dc', 1), '467931af1da8bbb21f1dde1cfe2be64a5669f9d74ea00a8afe3b38cfc2b92ca6',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4536fc8e4218249d56eed386e11ce31bf893ced82b7a54f24307d1e9d82f186b.mp3', 1097, '2026-09-13 06:17:31.166967', '4bbc9329d7832a9ebaf4cde69800c19a5c28743d7e6d18a70468048a01fec653', 'validated', '{"audio_key":"4536fc8e4218249d56eed386e11ce31bf893ced82b7a54f24307d1e9d82f186b","entity_key":"wf_workplace_communication_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4bbc9329d7832a9ebaf4cde69800c19a5c28743d7e6d18a70468048a01fec653","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4536fc8e4218249d56eed386e11ce31bf893ced82b7a54f24307d1e9d82f186b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_decisions_consequences_04 -> audio/generated/de-DE/lexical/495c9ce63a423bf28b492e74be7e35645d572fc42be64e3b4ec3fcc2951f907f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('57084849-58fa-522d-80f8-658ce1c6f89c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_decisions_consequences_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7becb001cd7071dff5ec114209ec6b6f3041895610ce643cd614d056c9e05dce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b8bf70b8-62ae-58c2-ba91-04a444158cb8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('57084849-58fa-522d-80f8-658ce1c6f89c', 1), '7becb001cd7071dff5ec114209ec6b6f3041895610ce643cd614d056c9e05dce',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/495c9ce63a423bf28b492e74be7e35645d572fc42be64e3b4ec3fcc2951f907f.mp3', 1097, '2026-09-13 06:17:31.146695', '9ddbca122e45892a70dab5d88e30e1fc219207d2813d390d420c531fe613cbd2', 'validated', '{"audio_key":"495c9ce63a423bf28b492e74be7e35645d572fc42be64e3b4ec3fcc2951f907f","entity_key":"lx_decisions_consequences_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9ddbca122e45892a70dab5d88e30e1fc219207d2813d390d420c531fe613cbd2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/495c9ce63a423bf28b492e74be7e35645d572fc42be64e3b4ec3fcc2951f907f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_decisions_consequences_04 -> audio/generated/de-DE/lexical/495c9ce63a423bf28b492e74be7e35645d572fc42be64e3b4ec3fcc2951f907f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5c9b0c8b-9caa-5531-9211-b17f305ddd93', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_decisions_consequences_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7becb001cd7071dff5ec114209ec6b6f3041895610ce643cd614d056c9e05dce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a49aa497-e57e-5ca1-90cf-db041f69db4b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5c9b0c8b-9caa-5531-9211-b17f305ddd93', 1), '7becb001cd7071dff5ec114209ec6b6f3041895610ce643cd614d056c9e05dce',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/495c9ce63a423bf28b492e74be7e35645d572fc42be64e3b4ec3fcc2951f907f.mp3', 1097, '2026-09-13 06:17:31.146695', '9ddbca122e45892a70dab5d88e30e1fc219207d2813d390d420c531fe613cbd2', 'validated', '{"audio_key":"495c9ce63a423bf28b492e74be7e35645d572fc42be64e3b4ec3fcc2951f907f","entity_key":"wf_decisions_consequences_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9ddbca122e45892a70dab5d88e30e1fc219207d2813d390d420c531fe613cbd2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/495c9ce63a423bf28b492e74be7e35645d572fc42be64e3b4ec3fcc2951f907f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_complaints_returns_06 -> audio/generated/de-DE/lexical/4dc91cd0fe6246cdde308b3e6a8304f22814d563f06bc43a592b5558edb136fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9da839b5-ca55-5711-9ebf-c5bdd5bc4dd5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_complaints_returns_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '45e0988ab689cb72973558e1978690ba42ac2745e628c2ec59a39abe4275a589'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('815f8139-094e-5b3e-8c44-81b0f242fdd0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9da839b5-ca55-5711-9ebf-c5bdd5bc4dd5', 1), '45e0988ab689cb72973558e1978690ba42ac2745e628c2ec59a39abe4275a589',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4dc91cd0fe6246cdde308b3e6a8304f22814d563f06bc43a592b5558edb136fb.mp3', 1201, '2026-09-13 06:17:32.092684', '42843bbe94379929ae424deeed1bb8be5490abc7217d04f07de19d34874b91e2', 'validated', '{"audio_key":"4dc91cd0fe6246cdde308b3e6a8304f22814d563f06bc43a592b5558edb136fb","entity_key":"lx_complaints_returns_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"42843bbe94379929ae424deeed1bb8be5490abc7217d04f07de19d34874b91e2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4dc91cd0fe6246cdde308b3e6a8304f22814d563f06bc43a592b5558edb136fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_complaints_returns_06 -> audio/generated/de-DE/lexical/4dc91cd0fe6246cdde308b3e6a8304f22814d563f06bc43a592b5558edb136fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5f83a1ce-ce07-5664-9eaf-6b71fde77e7c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_complaints_returns_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '45e0988ab689cb72973558e1978690ba42ac2745e628c2ec59a39abe4275a589'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa863b1a-1a31-5428-854c-f2ea08da60cf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5f83a1ce-ce07-5664-9eaf-6b71fde77e7c', 1), '45e0988ab689cb72973558e1978690ba42ac2745e628c2ec59a39abe4275a589',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/4dc91cd0fe6246cdde308b3e6a8304f22814d563f06bc43a592b5558edb136fb.mp3', 1201, '2026-09-13 06:17:32.092684', '42843bbe94379929ae424deeed1bb8be5490abc7217d04f07de19d34874b91e2', 'validated', '{"audio_key":"4dc91cd0fe6246cdde308b3e6a8304f22814d563f06bc43a592b5558edb136fb","entity_key":"wf_complaints_returns_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"42843bbe94379929ae424deeed1bb8be5490abc7217d04f07de19d34874b91e2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/4dc91cd0fe6246cdde308b3e6a8304f22814d563f06bc43a592b5558edb136fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_complaints_returns_02 -> audio/generated/de-DE/lexical/6150bd75515d7dd0225b084433d6d0dfdc7b8e7c2c9456afd9bfb88aab76c70d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f7e7968a-6b20-56cd-b213-964abaab2857', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_complaints_returns_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e568c375be2edd62fa2218ed4d1a2f06fd579bc1ec1eaba145984e1cf41b7bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dcd396b5-1026-5616-8949-cfcc71c1ce4e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f7e7968a-6b20-56cd-b213-964abaab2857', 1), '5e568c375be2edd62fa2218ed4d1a2f06fd579bc1ec1eaba145984e1cf41b7bd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6150bd75515d7dd0225b084433d6d0dfdc7b8e7c2c9456afd9bfb88aab76c70d.mp3', 1018, '2026-09-13 06:17:32.133302', '304fd63be96c3a3f31c33805f0070206da15419f6aced1c089300491d55d3e4a', 'validated', '{"audio_key":"6150bd75515d7dd0225b084433d6d0dfdc7b8e7c2c9456afd9bfb88aab76c70d","entity_key":"lx_complaints_returns_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"304fd63be96c3a3f31c33805f0070206da15419f6aced1c089300491d55d3e4a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6150bd75515d7dd0225b084433d6d0dfdc7b8e7c2c9456afd9bfb88aab76c70d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_complaints_returns_02 -> audio/generated/de-DE/lexical/6150bd75515d7dd0225b084433d6d0dfdc7b8e7c2c9456afd9bfb88aab76c70d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c064d9c2-b0de-531e-81a5-d9a35ee724fd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_complaints_returns_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e568c375be2edd62fa2218ed4d1a2f06fd579bc1ec1eaba145984e1cf41b7bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f88a5241-85a6-520b-8a93-f325a347a9a9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c064d9c2-b0de-531e-81a5-d9a35ee724fd', 1), '5e568c375be2edd62fa2218ed4d1a2f06fd579bc1ec1eaba145984e1cf41b7bd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/6150bd75515d7dd0225b084433d6d0dfdc7b8e7c2c9456afd9bfb88aab76c70d.mp3', 1018, '2026-09-13 06:17:32.133302', '304fd63be96c3a3f31c33805f0070206da15419f6aced1c089300491d55d3e4a', 'validated', '{"audio_key":"6150bd75515d7dd0225b084433d6d0dfdc7b8e7c2c9456afd9bfb88aab76c70d","entity_key":"wf_complaints_returns_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"304fd63be96c3a3f31c33805f0070206da15419f6aced1c089300491d55d3e4a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/6150bd75515d7dd0225b084433d6d0dfdc7b8e7c2c9456afd9bfb88aab76c70d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_workplace_communication_03 -> audio/generated/de-DE/lexical/62538f538c93344a0d6866c30cddc28b8ae04d3bf6ffdc550200d6cfeae07f44.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('35480c51-ea54-5121-be07-03ccc8773827', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_workplace_communication_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'adb450f3fb71b053dc5d39e9a210e65efa46844980a5e1615019d9ce8ee11efd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef42fea8-c4fa-56e0-bb4a-8b64226a56b0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('35480c51-ea54-5121-be07-03ccc8773827', 1), 'adb450f3fb71b053dc5d39e9a210e65efa46844980a5e1615019d9ce8ee11efd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/62538f538c93344a0d6866c30cddc28b8ae04d3bf6ffdc550200d6cfeae07f44.mp3', 1253, '2026-09-13 05:30:10.605223', 'b179742818fc853f3937fc9524232514d050d16b1305470480b27018a8215cad', 'validated', '{"audio_key":"62538f538c93344a0d6866c30cddc28b8ae04d3bf6ffdc550200d6cfeae07f44","entity_key":"lx_workplace_communication_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b179742818fc853f3937fc9524232514d050d16b1305470480b27018a8215cad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/62538f538c93344a0d6866c30cddc28b8ae04d3bf6ffdc550200d6cfeae07f44.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_workplace_communication_03 -> audio/generated/de-DE/lexical/62538f538c93344a0d6866c30cddc28b8ae04d3bf6ffdc550200d6cfeae07f44.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('03912e36-e502-56b3-9db7-5e12f5f1ad5c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_workplace_communication_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'adb450f3fb71b053dc5d39e9a210e65efa46844980a5e1615019d9ce8ee11efd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('74392dcb-0290-53b4-b42d-f310bafd3387', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('03912e36-e502-56b3-9db7-5e12f5f1ad5c', 1), 'adb450f3fb71b053dc5d39e9a210e65efa46844980a5e1615019d9ce8ee11efd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/62538f538c93344a0d6866c30cddc28b8ae04d3bf6ffdc550200d6cfeae07f44.mp3', 1253, '2026-09-13 05:30:10.605223', 'b179742818fc853f3937fc9524232514d050d16b1305470480b27018a8215cad', 'validated', '{"audio_key":"62538f538c93344a0d6866c30cddc28b8ae04d3bf6ffdc550200d6cfeae07f44","entity_key":"wf_workplace_communication_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b179742818fc853f3937fc9524232514d050d16b1305470480b27018a8215cad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/62538f538c93344a0d6866c30cddc28b8ae04d3bf6ffdc550200d6cfeae07f44.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_decisions_consequences_02 -> audio/generated/de-DE/lexical/652b3933fed58db95a5964be54dfae8f71cc1772308018f99a3c5ffd2086bf48.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5ed52a15-843d-5f26-9112-cb44a16e9c76', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_decisions_consequences_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b6f77d0435f3c219f1e54dd01a215eccf6de79a54f329283e064ae8d46b29cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5dfacdf1-8013-5fe4-b425-e926d994790f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5ed52a15-843d-5f26-9112-cb44a16e9c76', 1), '0b6f77d0435f3c219f1e54dd01a215eccf6de79a54f329283e064ae8d46b29cf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/652b3933fed58db95a5964be54dfae8f71cc1772308018f99a3c5ffd2086bf48.mp3', 1201, '2026-09-13 06:17:33.075958', '0b4ed12dca36dfdff2e7ae84ae293efea7372bb9954c74bd223cf13d83b52091', 'validated', '{"audio_key":"652b3933fed58db95a5964be54dfae8f71cc1772308018f99a3c5ffd2086bf48","entity_key":"lx_decisions_consequences_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b4ed12dca36dfdff2e7ae84ae293efea7372bb9954c74bd223cf13d83b52091","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/652b3933fed58db95a5964be54dfae8f71cc1772308018f99a3c5ffd2086bf48.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_decisions_consequences_02 -> audio/generated/de-DE/lexical/652b3933fed58db95a5964be54dfae8f71cc1772308018f99a3c5ffd2086bf48.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('eb92400a-b6f3-5441-817b-69ff83f95ea5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_decisions_consequences_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b6f77d0435f3c219f1e54dd01a215eccf6de79a54f329283e064ae8d46b29cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6d48b83-1a24-5c20-89ad-5828db9b97dd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('eb92400a-b6f3-5441-817b-69ff83f95ea5', 1), '0b6f77d0435f3c219f1e54dd01a215eccf6de79a54f329283e064ae8d46b29cf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/652b3933fed58db95a5964be54dfae8f71cc1772308018f99a3c5ffd2086bf48.mp3', 1201, '2026-09-13 06:17:33.075958', '0b4ed12dca36dfdff2e7ae84ae293efea7372bb9954c74bd223cf13d83b52091', 'validated', '{"audio_key":"652b3933fed58db95a5964be54dfae8f71cc1772308018f99a3c5ffd2086bf48","entity_key":"wf_decisions_consequences_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b4ed12dca36dfdff2e7ae84ae293efea7372bb9954c74bd223cf13d83b52091","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/652b3933fed58db95a5964be54dfae8f71cc1772308018f99a3c5ffd2086bf48.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_complaints_returns_04 -> audio/generated/de-DE/lexical/747b2968e88f51c04db48645b4a458e495f76068d30e72d1e8bfd59cc527091c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2b1597db-33c5-50ae-90f3-103f8dbd8ba8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_complaints_returns_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d1fd08af105bb5bd0c12e1f01bf4866bde1a024a49a13998c30c82b56ac82a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8fadc0a-6710-5b62-8684-27c50e284184', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2b1597db-33c5-50ae-90f3-103f8dbd8ba8', 1), '2d1fd08af105bb5bd0c12e1f01bf4866bde1a024a49a13998c30c82b56ac82a1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/747b2968e88f51c04db48645b4a458e495f76068d30e72d1e8bfd59cc527091c.mp3', 1097, '2026-09-13 06:17:33.089600', 'b01b257201c6e9a4e2c1b7f30f9f39c56084efa37910cd8df7d0b85ac0075012', 'validated', '{"audio_key":"747b2968e88f51c04db48645b4a458e495f76068d30e72d1e8bfd59cc527091c","entity_key":"lx_complaints_returns_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b01b257201c6e9a4e2c1b7f30f9f39c56084efa37910cd8df7d0b85ac0075012","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/747b2968e88f51c04db48645b4a458e495f76068d30e72d1e8bfd59cc527091c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_complaints_returns_04 -> audio/generated/de-DE/lexical/747b2968e88f51c04db48645b4a458e495f76068d30e72d1e8bfd59cc527091c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5b1a3ff3-d145-50d6-95d3-7e9149fe8fe5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_complaints_returns_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d1fd08af105bb5bd0c12e1f01bf4866bde1a024a49a13998c30c82b56ac82a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5433065-dcdf-5536-9ff8-409fbb43d493', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5b1a3ff3-d145-50d6-95d3-7e9149fe8fe5', 1), '2d1fd08af105bb5bd0c12e1f01bf4866bde1a024a49a13998c30c82b56ac82a1',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/747b2968e88f51c04db48645b4a458e495f76068d30e72d1e8bfd59cc527091c.mp3', 1097, '2026-09-13 06:17:33.089600', 'b01b257201c6e9a4e2c1b7f30f9f39c56084efa37910cd8df7d0b85ac0075012', 'validated', '{"audio_key":"747b2968e88f51c04db48645b4a458e495f76068d30e72d1e8bfd59cc527091c","entity_key":"wf_complaints_returns_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b01b257201c6e9a4e2c1b7f30f9f39c56084efa37910cd8df7d0b85ac0075012","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/747b2968e88f51c04db48645b4a458e495f76068d30e72d1e8bfd59cc527091c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_courses_learning_04 -> audio/generated/de-DE/lexical/78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d594bc7c-1960-5e15-b13b-9a781d7e87ed', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_courses_learning_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e36845a0e5de45ca0595a7128e093ff68358ac8242b45c1561b2a4fe176c5058'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b814f5b-0250-59a8-9b52-6d6d8564ad5e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d594bc7c-1960-5e15-b13b-9a781d7e87ed', 1), 'e36845a0e5de45ca0595a7128e093ff68358ac8242b45c1561b2a4fe176c5058',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8.mp3', 1071, '2026-09-13 05:30:17.876240', '84a480d41a8670c416756d5aa9f9fdc3591f635026462cebee352c1dd3cdd6d1', 'validated', '{"audio_key":"78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8","entity_key":"lx_courses_learning_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"84a480d41a8670c416756d5aa9f9fdc3591f635026462cebee352c1dd3cdd6d1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_courses_learning_04 -> audio/generated/de-DE/lexical/78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1c6c89e7-4f82-5c76-ba23-da9c07f03c68', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_courses_learning_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e36845a0e5de45ca0595a7128e093ff68358ac8242b45c1561b2a4fe176c5058'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d4cb251-e059-5791-a78a-1f490234bbe9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1c6c89e7-4f82-5c76-ba23-da9c07f03c68', 1), 'e36845a0e5de45ca0595a7128e093ff68358ac8242b45c1561b2a4fe176c5058',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8.mp3', 1071, '2026-09-13 05:30:17.876240', '84a480d41a8670c416756d5aa9f9fdc3591f635026462cebee352c1dd3cdd6d1', 'validated', '{"audio_key":"78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8","entity_key":"wf_courses_learning_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"84a480d41a8670c416756d5aa9f9fdc3591f635026462cebee352c1dd3cdd6d1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/78375a54811ee17a9ac92fc7a355ce11f981e278863c9aa376bfff5e3949c7c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_courses_learning_02 -> audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('02119228-1f23-5439-916d-bb17852aab55', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_courses_learning_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8136e613-5df0-527b-ae0c-229f283a4409', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('02119228-1f23-5439-916d-bb17852aab55', 1), '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3', 1332, '2026-09-13 06:17:34.057551', '6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67', 'validated', '{"audio_key":"7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a","entity_key":"lx_courses_learning_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_courses_learning_02 -> audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('95a9bcee-a8f5-51c8-8447-253b1569e491', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_courses_learning_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e58969a8-a86c-5d6b-8e79-c88aa19d7f97', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('95a9bcee-a8f5-51c8-8447-253b1569e491', 1), '88f1b9555864d6b30b444277c2905aa5ee68a812cfa1937ccd718e094336d68b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3', 1332, '2026-09-13 06:17:34.057551', '6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67', 'validated', '{"audio_key":"7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a","entity_key":"wf_courses_learning_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6241bc03d1f54abf4eec43d5e817a4f57f4c05a907442bcf8950c2b6a8c12c67","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7b29ffc2b8806b581bee84168d75b420cc890a1968ba571520ddd183f35c0c0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_courses_learning_01 -> audio/generated/de-DE/lexical/7ca5ab5acbc563e3da24712d5c07b0a47b8cbce0baece73dd6b28e9bdb71dac3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4655ffb5-2871-5bdb-ac23-e86ab66d60ce', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_courses_learning_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b16b01f5592f7592db8e8137d7f4c81920c5ca8ac50220278129231eddb36d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c88efeb-7747-53d7-86fe-50edbeb2c09c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4655ffb5-2871-5bdb-ac23-e86ab66d60ce', 1), '6b16b01f5592f7592db8e8137d7f4c81920c5ca8ac50220278129231eddb36d4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7ca5ab5acbc563e3da24712d5c07b0a47b8cbce0baece73dd6b28e9bdb71dac3.mp3', 1149, '2026-09-13 06:17:34.040425', 'c2b266afd4a3aa1f3face9fae96392dba53362e4ef34ce4f52c874c7b52828a4', 'validated', '{"audio_key":"7ca5ab5acbc563e3da24712d5c07b0a47b8cbce0baece73dd6b28e9bdb71dac3","entity_key":"lx_courses_learning_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c2b266afd4a3aa1f3face9fae96392dba53362e4ef34ce4f52c874c7b52828a4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7ca5ab5acbc563e3da24712d5c07b0a47b8cbce0baece73dd6b28e9bdb71dac3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_courses_learning_01 -> audio/generated/de-DE/lexical/7ca5ab5acbc563e3da24712d5c07b0a47b8cbce0baece73dd6b28e9bdb71dac3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9124995c-39f6-56b4-9c42-878b0ef2d6c9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_courses_learning_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b16b01f5592f7592db8e8137d7f4c81920c5ca8ac50220278129231eddb36d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('256e9a26-6fbb-5e48-9a56-676a4266730c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9124995c-39f6-56b4-9c42-878b0ef2d6c9', 1), '6b16b01f5592f7592db8e8137d7f4c81920c5ca8ac50220278129231eddb36d4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/7ca5ab5acbc563e3da24712d5c07b0a47b8cbce0baece73dd6b28e9bdb71dac3.mp3', 1149, '2026-09-13 06:17:34.040425', 'c2b266afd4a3aa1f3face9fae96392dba53362e4ef34ce4f52c874c7b52828a4', 'validated', '{"audio_key":"7ca5ab5acbc563e3da24712d5c07b0a47b8cbce0baece73dd6b28e9bdb71dac3","entity_key":"wf_courses_learning_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c2b266afd4a3aa1f3face9fae96392dba53362e4ef34ce4f52c874c7b52828a4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/7ca5ab5acbc563e3da24712d5c07b0a47b8cbce0baece73dd6b28e9bdb71dac3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_money_budget_02 -> audio/generated/de-DE/lexical/8beb9d31f365da53cb1702b391876cf72ffa30c8f31b49b82f766b61eb7609c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8941d018-2490-5217-b85f-25ad2cd15d5d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_money_budget_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2044d31dfac71ec7b3c4e44b8278c17d3b594108c739211a424104fe4e2f8573'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f85ba671-87ed-59b1-baa2-b1a115558478', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8941d018-2490-5217-b85f-25ad2cd15d5d', 1), '2044d31dfac71ec7b3c4e44b8278c17d3b594108c739211a424104fe4e2f8573',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8beb9d31f365da53cb1702b391876cf72ffa30c8f31b49b82f766b61eb7609c9.mp3', 1149, '2026-09-13 06:17:35.013856', '35a567aea4d4d4d31a7118606a4e24e980576da37fefc6a0253ad92f7ed5f764', 'validated', '{"audio_key":"8beb9d31f365da53cb1702b391876cf72ffa30c8f31b49b82f766b61eb7609c9","entity_key":"lx_money_budget_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"35a567aea4d4d4d31a7118606a4e24e980576da37fefc6a0253ad92f7ed5f764","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8beb9d31f365da53cb1702b391876cf72ffa30c8f31b49b82f766b61eb7609c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_money_budget_02 -> audio/generated/de-DE/lexical/8beb9d31f365da53cb1702b391876cf72ffa30c8f31b49b82f766b61eb7609c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('862db78c-f368-53ec-b99e-721ed2c4ed7a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_money_budget_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2044d31dfac71ec7b3c4e44b8278c17d3b594108c739211a424104fe4e2f8573'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc15c9ee-ac42-5cab-b94a-52b81b232506', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('862db78c-f368-53ec-b99e-721ed2c4ed7a', 1), '2044d31dfac71ec7b3c4e44b8278c17d3b594108c739211a424104fe4e2f8573',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8beb9d31f365da53cb1702b391876cf72ffa30c8f31b49b82f766b61eb7609c9.mp3', 1149, '2026-09-13 06:17:35.013856', '35a567aea4d4d4d31a7118606a4e24e980576da37fefc6a0253ad92f7ed5f764', 'validated', '{"audio_key":"8beb9d31f365da53cb1702b391876cf72ffa30c8f31b49b82f766b61eb7609c9","entity_key":"wf_money_budget_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"35a567aea4d4d4d31a7118606a4e24e980576da37fefc6a0253ad92f7ed5f764","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8beb9d31f365da53cb1702b391876cf72ffa30c8f31b49b82f766b61eb7609c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_complaints_returns_01 -> audio/generated/de-DE/lexical/8d3555e6e9b587f2f978826803d48d13c796084dc0e65a3a035e72cc9f9f0b0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('71e6162f-60c0-5563-863c-ab587da88449', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_complaints_returns_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7869b39446e99ce4373e2ebf59251d7e002f8a878cdc73bd6b3617b4a96414f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c997fde8-1a68-5104-9540-0227639a1c52', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('71e6162f-60c0-5563-863c-ab587da88449', 1), '7869b39446e99ce4373e2ebf59251d7e002f8a878cdc73bd6b3617b4a96414f5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8d3555e6e9b587f2f978826803d48d13c796084dc0e65a3a035e72cc9f9f0b0a.mp3', 1253, '2026-09-13 06:17:35.072898', 'd9fc9294e2b97b9f6b195446eb641a34f5331dbf908c96c0d83b8f81ee964b0c', 'validated', '{"audio_key":"8d3555e6e9b587f2f978826803d48d13c796084dc0e65a3a035e72cc9f9f0b0a","entity_key":"lx_complaints_returns_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d9fc9294e2b97b9f6b195446eb641a34f5331dbf908c96c0d83b8f81ee964b0c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8d3555e6e9b587f2f978826803d48d13c796084dc0e65a3a035e72cc9f9f0b0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_complaints_returns_01 -> audio/generated/de-DE/lexical/8d3555e6e9b587f2f978826803d48d13c796084dc0e65a3a035e72cc9f9f0b0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7f65a2c7-34ca-5909-a985-3c9a2e85a395', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_complaints_returns_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7869b39446e99ce4373e2ebf59251d7e002f8a878cdc73bd6b3617b4a96414f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26ff4854-9fa2-54ff-aa93-c36116d59ad6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7f65a2c7-34ca-5909-a985-3c9a2e85a395', 1), '7869b39446e99ce4373e2ebf59251d7e002f8a878cdc73bd6b3617b4a96414f5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8d3555e6e9b587f2f978826803d48d13c796084dc0e65a3a035e72cc9f9f0b0a.mp3', 1253, '2026-09-13 06:17:35.072898', 'd9fc9294e2b97b9f6b195446eb641a34f5331dbf908c96c0d83b8f81ee964b0c', 'validated', '{"audio_key":"8d3555e6e9b587f2f978826803d48d13c796084dc0e65a3a035e72cc9f9f0b0a","entity_key":"wf_complaints_returns_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d9fc9294e2b97b9f6b195446eb641a34f5331dbf908c96c0d83b8f81ee964b0c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8d3555e6e9b587f2f978826803d48d13c796084dc0e65a3a035e72cc9f9f0b0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_job_applications_04 -> audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('70f090d2-10a2-5302-9810-32c581c47e96', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_job_applications_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fea069c544d4740afca081a3a85363692570a0e03e6d7afd4d14c9c7617cd6b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af5f358d-6d3c-5a25-9f12-7781dffa8963', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('70f090d2-10a2-5302-9810-32c581c47e96', 1), 'fea069c544d4740afca081a3a85363692570a0e03e6d7afd4d14c9c7617cd6b4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3', 1253, '2026-09-13 05:30:27.625044', 'e7ae853fe08d5d24b104b444285626342b07879d2571cd3ceaa49b6501594f85', 'validated', '{"audio_key":"8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4","entity_key":"lx_job_applications_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e7ae853fe08d5d24b104b444285626342b07879d2571cd3ceaa49b6501594f85","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_job_applications_04 -> audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cafc0d9c-06f7-5378-8d6b-667227203318', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_job_applications_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fea069c544d4740afca081a3a85363692570a0e03e6d7afd4d14c9c7617cd6b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d139ea7-abca-58ab-9f90-b6503c51d3ac', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cafc0d9c-06f7-5378-8d6b-667227203318', 1), 'fea069c544d4740afca081a3a85363692570a0e03e6d7afd4d14c9c7617cd6b4',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3', 1253, '2026-09-13 05:30:27.625044', 'e7ae853fe08d5d24b104b444285626342b07879d2571cd3ceaa49b6501594f85', 'validated', '{"audio_key":"8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4","entity_key":"wf_job_applications_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e7ae853fe08d5d24b104b444285626342b07879d2571cd3ceaa49b6501594f85","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/8d5dcdb038e79eba129b92cad8b94c9ba0a4d74d3fcaa3a10ec83a65b218c7f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_environment_recycling_04 -> audio/generated/de-DE/lexical/9049d391bf65f267ecb044b25e295848cd74dea5859ccf9a03bb4b2a61efa33c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6d4f06cd-b493-5d7b-8f09-71b0a24f35b9', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_environment_recycling_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65f773c91c16d466d6e1675c03801f4013f18f49167f8729da87ee93842273bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('184c12a7-ba6f-5654-9684-4d07d894d911', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6d4f06cd-b493-5d7b-8f09-71b0a24f35b9', 1), '65f773c91c16d466d6e1675c03801f4013f18f49167f8729da87ee93842273bf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9049d391bf65f267ecb044b25e295848cd74dea5859ccf9a03bb4b2a61efa33c.mp3', 1097, '2026-09-13 05:54:43.749291', 'd9d3b0772c13a008f5169b5ff7fd3c91ea3bb1e81db50a8146ebd63f6b156168', 'validated', '{"audio_key":"9049d391bf65f267ecb044b25e295848cd74dea5859ccf9a03bb4b2a61efa33c","entity_key":"lx_environment_recycling_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d9d3b0772c13a008f5169b5ff7fd3c91ea3bb1e81db50a8146ebd63f6b156168","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9049d391bf65f267ecb044b25e295848cd74dea5859ccf9a03bb4b2a61efa33c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_environment_recycling_04 -> audio/generated/de-DE/lexical/9049d391bf65f267ecb044b25e295848cd74dea5859ccf9a03bb4b2a61efa33c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1270af2f-cc33-52f0-b836-314ef6e3d1f1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_environment_recycling_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65f773c91c16d466d6e1675c03801f4013f18f49167f8729da87ee93842273bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a49da4ca-24e6-5d2f-bc35-d8fd4200c450', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1270af2f-cc33-52f0-b836-314ef6e3d1f1', 1), '65f773c91c16d466d6e1675c03801f4013f18f49167f8729da87ee93842273bf',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9049d391bf65f267ecb044b25e295848cd74dea5859ccf9a03bb4b2a61efa33c.mp3', 1097, '2026-09-13 05:54:43.749291', 'd9d3b0772c13a008f5169b5ff7fd3c91ea3bb1e81db50a8146ebd63f6b156168', 'validated', '{"audio_key":"9049d391bf65f267ecb044b25e295848cd74dea5859ccf9a03bb4b2a61efa33c","entity_key":"wf_environment_recycling_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d9d3b0772c13a008f5169b5ff7fd3c91ea3bb1e81db50a8146ebd63f6b156168","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9049d391bf65f267ecb044b25e295848cd74dea5859ccf9a03bb4b2a61efa33c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_decisions_consequences_06 -> audio/generated/de-DE/lexical/91791346b3d844827125f1af020a19280ae95cd792832e247746cde12626ade8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('83d2b84d-94e8-59a2-a637-ae512b9465ba', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_decisions_consequences_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '382df64052a9fe141482400518ba3d27d9eb5d31d3a97a45ed0de8f587f50b21'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62b8d0c5-68f4-5e58-a391-e8eda5ec69b9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('83d2b84d-94e8-59a2-a637-ae512b9465ba', 1), '382df64052a9fe141482400518ba3d27d9eb5d31d3a97a45ed0de8f587f50b21',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/91791346b3d844827125f1af020a19280ae95cd792832e247746cde12626ade8.mp3', 1280, '2026-09-13 06:17:35.982769', '4ad0eebc7823bb9c78ef73584bcb98ab2a7fcf45f380dee69548548d0d06e25d', 'validated', '{"audio_key":"91791346b3d844827125f1af020a19280ae95cd792832e247746cde12626ade8","entity_key":"lx_decisions_consequences_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4ad0eebc7823bb9c78ef73584bcb98ab2a7fcf45f380dee69548548d0d06e25d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/91791346b3d844827125f1af020a19280ae95cd792832e247746cde12626ade8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_decisions_consequences_06 -> audio/generated/de-DE/lexical/91791346b3d844827125f1af020a19280ae95cd792832e247746cde12626ade8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c2e51c87-b03b-53c5-bf60-95c1dd9b8165', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_decisions_consequences_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '382df64052a9fe141482400518ba3d27d9eb5d31d3a97a45ed0de8f587f50b21'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59ae6220-66dc-55b0-92de-2eb3831c8bd6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c2e51c87-b03b-53c5-bf60-95c1dd9b8165', 1), '382df64052a9fe141482400518ba3d27d9eb5d31d3a97a45ed0de8f587f50b21',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/91791346b3d844827125f1af020a19280ae95cd792832e247746cde12626ade8.mp3', 1280, '2026-09-13 06:17:35.982769', '4ad0eebc7823bb9c78ef73584bcb98ab2a7fcf45f380dee69548548d0d06e25d', 'validated', '{"audio_key":"91791346b3d844827125f1af020a19280ae95cd792832e247746cde12626ade8","entity_key":"wf_decisions_consequences_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4ad0eebc7823bb9c78ef73584bcb98ab2a7fcf45f380dee69548548d0d06e25d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/91791346b3d844827125f1af020a19280ae95cd792832e247746cde12626ade8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_money_budget_03 -> audio/generated/de-DE/lexical/969e80922a79c1fd864c2f399e1227ca9597d17f7f96a559110f1f3ff8a8af00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('75c31257-d363-5e9c-be99-66fabc1ed2fc', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_money_budget_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64960be519d2e237d6701d0d65b608aacb6d7e9dee51b1e35c08a1204712eb01'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a42a0420-81a2-57f7-a5a6-88e2f6d7352b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('75c31257-d363-5e9c-be99-66fabc1ed2fc', 1), '64960be519d2e237d6701d0d65b608aacb6d7e9dee51b1e35c08a1204712eb01',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/969e80922a79c1fd864c2f399e1227ca9597d17f7f96a559110f1f3ff8a8af00.mp3', 1071, '2026-09-13 05:30:32.149855', '579196a307b80ba67ed1dab9f88a35a8cd71ae28a30e808978ae5dfbb87e9095', 'validated', '{"audio_key":"969e80922a79c1fd864c2f399e1227ca9597d17f7f96a559110f1f3ff8a8af00","entity_key":"lx_money_budget_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"579196a307b80ba67ed1dab9f88a35a8cd71ae28a30e808978ae5dfbb87e9095","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/969e80922a79c1fd864c2f399e1227ca9597d17f7f96a559110f1f3ff8a8af00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_money_budget_03 -> audio/generated/de-DE/lexical/969e80922a79c1fd864c2f399e1227ca9597d17f7f96a559110f1f3ff8a8af00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1076a937-bc93-5828-ae52-440b31c2329d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_money_budget_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64960be519d2e237d6701d0d65b608aacb6d7e9dee51b1e35c08a1204712eb01'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f545d362-12e0-5c5e-b8b4-9bb9e31c33d7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1076a937-bc93-5828-ae52-440b31c2329d', 1), '64960be519d2e237d6701d0d65b608aacb6d7e9dee51b1e35c08a1204712eb01',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/969e80922a79c1fd864c2f399e1227ca9597d17f7f96a559110f1f3ff8a8af00.mp3', 1071, '2026-09-13 05:30:32.149855', '579196a307b80ba67ed1dab9f88a35a8cd71ae28a30e808978ae5dfbb87e9095', 'validated', '{"audio_key":"969e80922a79c1fd864c2f399e1227ca9597d17f7f96a559110f1f3ff8a8af00","entity_key":"wf_money_budget_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"579196a307b80ba67ed1dab9f88a35a8cd71ae28a30e808978ae5dfbb87e9095","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/969e80922a79c1fd864c2f399e1227ca9597d17f7f96a559110f1f3ff8a8af00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_job_applications_03 -> audio/generated/de-DE/lexical/97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3410c23a-9336-5bbd-8ae9-bc11fc52de2d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_job_applications_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dfe794929179b37c8cf6f4d9951c38c157d5401dafd6650d66f8290bca2a1ad8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3e35bd6-a2cd-5ad2-af02-b411d9185bd7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3410c23a-9336-5bbd-8ae9-bc11fc52de2d', 1), 'dfe794929179b37c8cf6f4d9951c38c157d5401dafd6650d66f8290bca2a1ad8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020.mp3', 1018, '2026-09-13 05:30:32.330679', '8a8001fe4b2db8bd0fe4c7e0a82314f13f53b09e22dd829826873e55bf7ffc14', 'validated', '{"audio_key":"97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020","entity_key":"lx_job_applications_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8a8001fe4b2db8bd0fe4c7e0a82314f13f53b09e22dd829826873e55bf7ffc14","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_job_applications_03 -> audio/generated/de-DE/lexical/97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d675243c-4648-5fa9-a164-cd4a9a934066', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_job_applications_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dfe794929179b37c8cf6f4d9951c38c157d5401dafd6650d66f8290bca2a1ad8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ec2ae64-b6eb-5511-a7d1-42547e9dae3d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d675243c-4648-5fa9-a164-cd4a9a934066', 1), 'dfe794929179b37c8cf6f4d9951c38c157d5401dafd6650d66f8290bca2a1ad8',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020.mp3', 1018, '2026-09-13 05:30:32.330679', '8a8001fe4b2db8bd0fe4c7e0a82314f13f53b09e22dd829826873e55bf7ffc14', 'validated', '{"audio_key":"97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020","entity_key":"wf_job_applications_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8a8001fe4b2db8bd0fe4c7e0a82314f13f53b09e22dd829826873e55bf7ffc14","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/97f441376b577495199bbd4ef17d659e297d0685b74568ee2d0b00832057b020.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_money_budget_06 -> audio/generated/de-DE/lexical/996947d90451bfa135378a8257130be42b066e5cf7ebfafdc8ee93f39bef4642.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9a5a6b6c-7966-57b2-8066-1b666176f233', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_money_budget_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eaac470e444720e70c5333aaefdf022c463e570d347f626cb6203aa0899a60cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca2e6f44-3b28-5a23-8ee3-3a383c5bbee9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9a5a6b6c-7966-57b2-8066-1b666176f233', 1), 'eaac470e444720e70c5333aaefdf022c463e570d347f626cb6203aa0899a60cb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/996947d90451bfa135378a8257130be42b066e5cf7ebfafdc8ee93f39bef4642.mp3', 1018, '2026-09-13 06:17:36.006596', '7025d5d877deb9068ac81a86537e1c35c96ca47dab7bd70ca8a9e71ad8797aed', 'validated', '{"audio_key":"996947d90451bfa135378a8257130be42b066e5cf7ebfafdc8ee93f39bef4642","entity_key":"lx_money_budget_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7025d5d877deb9068ac81a86537e1c35c96ca47dab7bd70ca8a9e71ad8797aed","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/996947d90451bfa135378a8257130be42b066e5cf7ebfafdc8ee93f39bef4642.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_money_budget_06 -> audio/generated/de-DE/lexical/996947d90451bfa135378a8257130be42b066e5cf7ebfafdc8ee93f39bef4642.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ed11c289-61af-50bd-96a0-07f002778c14', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_money_budget_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eaac470e444720e70c5333aaefdf022c463e570d347f626cb6203aa0899a60cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('40d9ddb2-2380-5ee8-9ad9-4befbc55cce6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ed11c289-61af-50bd-96a0-07f002778c14', 1), 'eaac470e444720e70c5333aaefdf022c463e570d347f626cb6203aa0899a60cb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/996947d90451bfa135378a8257130be42b066e5cf7ebfafdc8ee93f39bef4642.mp3', 1018, '2026-09-13 06:17:36.006596', '7025d5d877deb9068ac81a86537e1c35c96ca47dab7bd70ca8a9e71ad8797aed', 'validated', '{"audio_key":"996947d90451bfa135378a8257130be42b066e5cf7ebfafdc8ee93f39bef4642","entity_key":"wf_money_budget_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7025d5d877deb9068ac81a86537e1c35c96ca47dab7bd70ca8a9e71ad8797aed","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/996947d90451bfa135378a8257130be42b066e5cf7ebfafdc8ee93f39bef4642.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_environment_recycling_06 -> audio/generated/de-DE/lexical/9c83770a11e34e8c1725e2d53de1ebc752d858ed6c0acc3addd0547b81a8ba6d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5009010c-5605-5c64-bea4-ae402b3164ed', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_environment_recycling_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '37053d8ecd8ce97d7f3ce37710094a2a16017b2fde0ddda258d3f281b6c4748d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc9217c8-53cc-5785-b479-e10d47421c42', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5009010c-5605-5c64-bea4-ae402b3164ed', 1), '37053d8ecd8ce97d7f3ce37710094a2a16017b2fde0ddda258d3f281b6c4748d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9c83770a11e34e8c1725e2d53de1ebc752d858ed6c0acc3addd0547b81a8ba6d.mp3', 1201, '2026-09-13 06:17:36.987782', 'b706cac216683e167dcb4a3c52bebd81642d3e64173aeac0e71278c9c7d547ce', 'validated', '{"audio_key":"9c83770a11e34e8c1725e2d53de1ebc752d858ed6c0acc3addd0547b81a8ba6d","entity_key":"lx_environment_recycling_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b706cac216683e167dcb4a3c52bebd81642d3e64173aeac0e71278c9c7d547ce","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9c83770a11e34e8c1725e2d53de1ebc752d858ed6c0acc3addd0547b81a8ba6d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_environment_recycling_06 -> audio/generated/de-DE/lexical/9c83770a11e34e8c1725e2d53de1ebc752d858ed6c0acc3addd0547b81a8ba6d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bbda87d4-116f-5d36-bcb1-03d62b88209c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_environment_recycling_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '37053d8ecd8ce97d7f3ce37710094a2a16017b2fde0ddda258d3f281b6c4748d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b2fa53f-2b51-56d4-b9d6-deab3f79b9c4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bbda87d4-116f-5d36-bcb1-03d62b88209c', 1), '37053d8ecd8ce97d7f3ce37710094a2a16017b2fde0ddda258d3f281b6c4748d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9c83770a11e34e8c1725e2d53de1ebc752d858ed6c0acc3addd0547b81a8ba6d.mp3', 1201, '2026-09-13 06:17:36.987782', 'b706cac216683e167dcb4a3c52bebd81642d3e64173aeac0e71278c9c7d547ce', 'validated', '{"audio_key":"9c83770a11e34e8c1725e2d53de1ebc752d858ed6c0acc3addd0547b81a8ba6d","entity_key":"wf_environment_recycling_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b706cac216683e167dcb4a3c52bebd81642d3e64173aeac0e71278c9c7d547ce","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9c83770a11e34e8c1725e2d53de1ebc752d858ed6c0acc3addd0547b81a8ba6d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_housing_renting_06 -> audio/generated/de-DE/lexical/9eccdff2b9c289d691c38aa54f48fc90cd63d5847e5f4f391ff99fd255f8860d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('96c2dc0a-6a85-55ee-9272-5d9c394d9a8f', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_housing_renting_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f4c1c372006245610f18cc3054b86ff7a700b68d4abcedd24bfb55176a031947'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31aaed62-4915-5d59-a75a-e05b731efdcf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('96c2dc0a-6a85-55ee-9272-5d9c394d9a8f', 1), 'f4c1c372006245610f18cc3054b86ff7a700b68d4abcedd24bfb55176a031947',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9eccdff2b9c289d691c38aa54f48fc90cd63d5847e5f4f391ff99fd255f8860d.mp3', 1071, '2026-09-13 06:17:36.943336', '36de138ee7f84702d02d19c56192de90bbd5fb9c18126d4d140556344295a605', 'validated', '{"audio_key":"9eccdff2b9c289d691c38aa54f48fc90cd63d5847e5f4f391ff99fd255f8860d","entity_key":"lx_housing_renting_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"36de138ee7f84702d02d19c56192de90bbd5fb9c18126d4d140556344295a605","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9eccdff2b9c289d691c38aa54f48fc90cd63d5847e5f4f391ff99fd255f8860d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_housing_renting_06 -> audio/generated/de-DE/lexical/9eccdff2b9c289d691c38aa54f48fc90cd63d5847e5f4f391ff99fd255f8860d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3e23b091-86f6-555c-ad48-8b09396e38d0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_housing_renting_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f4c1c372006245610f18cc3054b86ff7a700b68d4abcedd24bfb55176a031947'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36363ee0-4607-5226-9893-188c5dcfe0aa', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3e23b091-86f6-555c-ad48-8b09396e38d0', 1), 'f4c1c372006245610f18cc3054b86ff7a700b68d4abcedd24bfb55176a031947',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/9eccdff2b9c289d691c38aa54f48fc90cd63d5847e5f4f391ff99fd255f8860d.mp3', 1071, '2026-09-13 06:17:36.943336', '36de138ee7f84702d02d19c56192de90bbd5fb9c18126d4d140556344295a605', 'validated', '{"audio_key":"9eccdff2b9c289d691c38aa54f48fc90cd63d5847e5f4f391ff99fd255f8860d","entity_key":"wf_housing_renting_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"36de138ee7f84702d02d19c56192de90bbd5fb9c18126d4d140556344295a605","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/9eccdff2b9c289d691c38aa54f48fc90cd63d5847e5f4f391ff99fd255f8860d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_relationships_conflict_03 -> audio/generated/de-DE/lexical/a04c829329b74507c19c6bb3dedab6cd2873fb1a868a5c396d4617c8e691e4dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5791100d-c1ba-561a-8b25-e22b6436fa7e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_relationships_conflict_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c087e98e23176ef3ca31df1d1581bbc9d0f47bcb9107a8e3ec8835aacbce5214'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1771af5b-7036-5a93-91a8-8ce8bb8bdf04', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5791100d-c1ba-561a-8b25-e22b6436fa7e', 1), 'c087e98e23176ef3ca31df1d1581bbc9d0f47bcb9107a8e3ec8835aacbce5214',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a04c829329b74507c19c6bb3dedab6cd2873fb1a868a5c396d4617c8e691e4dd.mp3', 1201, '2026-09-13 06:17:37.909166', '42d141d22b0d111b78013d3ae1486d31fd39311313454acfa3de147f8b7ea58d', 'validated', '{"audio_key":"a04c829329b74507c19c6bb3dedab6cd2873fb1a868a5c396d4617c8e691e4dd","entity_key":"lx_relationships_conflict_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"42d141d22b0d111b78013d3ae1486d31fd39311313454acfa3de147f8b7ea58d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a04c829329b74507c19c6bb3dedab6cd2873fb1a868a5c396d4617c8e691e4dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_relationships_conflict_03 -> audio/generated/de-DE/lexical/a04c829329b74507c19c6bb3dedab6cd2873fb1a868a5c396d4617c8e691e4dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d229fad2-e67a-5643-8c75-b34c94f15f48', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_relationships_conflict_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c087e98e23176ef3ca31df1d1581bbc9d0f47bcb9107a8e3ec8835aacbce5214'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('579572a9-165f-5635-a611-50b5dbb6c219', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d229fad2-e67a-5643-8c75-b34c94f15f48', 1), 'c087e98e23176ef3ca31df1d1581bbc9d0f47bcb9107a8e3ec8835aacbce5214',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a04c829329b74507c19c6bb3dedab6cd2873fb1a868a5c396d4617c8e691e4dd.mp3', 1201, '2026-09-13 06:17:37.909166', '42d141d22b0d111b78013d3ae1486d31fd39311313454acfa3de147f8b7ea58d', 'validated', '{"audio_key":"a04c829329b74507c19c6bb3dedab6cd2873fb1a868a5c396d4617c8e691e4dd","entity_key":"wf_relationships_conflict_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"42d141d22b0d111b78013d3ae1486d31fd39311313454acfa3de147f8b7ea58d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a04c829329b74507c19c6bb3dedab6cd2873fb1a868a5c396d4617c8e691e4dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_workplace_communication_01 -> audio/generated/de-DE/lexical/a4b16f01e611c631f437273de291e07ce5e68aa24f6ed5dc74f1d8663b59c80a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6e5b843b-ae7c-5427-8b68-531fd4d970a2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_workplace_communication_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5683517b480b8f352080960014ea795c39c58419f1f8215833e780d358cd6665'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff990fb6-6734-50f3-8106-0fecf0476cf4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6e5b843b-ae7c-5427-8b68-531fd4d970a2', 1), '5683517b480b8f352080960014ea795c39c58419f1f8215833e780d358cd6665',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a4b16f01e611c631f437273de291e07ce5e68aa24f6ed5dc74f1d8663b59c80a.mp3', 1071, '2026-09-13 05:30:37.376332', 'bedc2f194b62e39a9e74e9b916409ecf002587243165ecf5ca12c92edc0badd2', 'validated', '{"audio_key":"a4b16f01e611c631f437273de291e07ce5e68aa24f6ed5dc74f1d8663b59c80a","entity_key":"lx_workplace_communication_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bedc2f194b62e39a9e74e9b916409ecf002587243165ecf5ca12c92edc0badd2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a4b16f01e611c631f437273de291e07ce5e68aa24f6ed5dc74f1d8663b59c80a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_workplace_communication_01 -> audio/generated/de-DE/lexical/a4b16f01e611c631f437273de291e07ce5e68aa24f6ed5dc74f1d8663b59c80a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('49bae37a-096f-5dd3-a07a-64d9bb442f1e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_workplace_communication_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5683517b480b8f352080960014ea795c39c58419f1f8215833e780d358cd6665'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5141042d-8f99-5ba7-9327-476c7ff1546d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('49bae37a-096f-5dd3-a07a-64d9bb442f1e', 1), '5683517b480b8f352080960014ea795c39c58419f1f8215833e780d358cd6665',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a4b16f01e611c631f437273de291e07ce5e68aa24f6ed5dc74f1d8663b59c80a.mp3', 1071, '2026-09-13 05:30:37.376332', 'bedc2f194b62e39a9e74e9b916409ecf002587243165ecf5ca12c92edc0badd2', 'validated', '{"audio_key":"a4b16f01e611c631f437273de291e07ce5e68aa24f6ed5dc74f1d8663b59c80a","entity_key":"wf_workplace_communication_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bedc2f194b62e39a9e74e9b916409ecf002587243165ecf5ca12c92edc0badd2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a4b16f01e611c631f437273de291e07ce5e68aa24f6ed5dc74f1d8663b59c80a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_culture_events_04 -> audio/generated/de-DE/lexical/a87b99e62601a730804e48dd0c67d3c8aa3e7e4c1c2ed11a8b53a9712303b130.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8a90b80c-c769-5221-9009-d8948d2ab421', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_culture_events_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c9fecd4df0a24d39bc026004f3be15b280d40ba331e2828ab416afc7988ad23'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bcf60f6c-5478-54a6-b04a-ac5fa6d7fc78', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8a90b80c-c769-5221-9009-d8948d2ab421', 1), '5c9fecd4df0a24d39bc026004f3be15b280d40ba331e2828ab416afc7988ad23',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a87b99e62601a730804e48dd0c67d3c8aa3e7e4c1c2ed11a8b53a9712303b130.mp3', 1149, '2026-09-13 06:17:37.923273', 'e929970d8b06936fa35c4ae2786d7f8b8ea179561dbd38769d22720662e45266', 'validated', '{"audio_key":"a87b99e62601a730804e48dd0c67d3c8aa3e7e4c1c2ed11a8b53a9712303b130","entity_key":"lx_culture_events_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e929970d8b06936fa35c4ae2786d7f8b8ea179561dbd38769d22720662e45266","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a87b99e62601a730804e48dd0c67d3c8aa3e7e4c1c2ed11a8b53a9712303b130.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_culture_events_04 -> audio/generated/de-DE/lexical/a87b99e62601a730804e48dd0c67d3c8aa3e7e4c1c2ed11a8b53a9712303b130.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('067d49d8-6de8-5944-87c4-7a861c4e9fc3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_culture_events_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c9fecd4df0a24d39bc026004f3be15b280d40ba331e2828ab416afc7988ad23'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('960092b8-854e-54ff-bcc0-b7af5eb0ea03', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('067d49d8-6de8-5944-87c4-7a861c4e9fc3', 1), '5c9fecd4df0a24d39bc026004f3be15b280d40ba331e2828ab416afc7988ad23',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a87b99e62601a730804e48dd0c67d3c8aa3e7e4c1c2ed11a8b53a9712303b130.mp3', 1149, '2026-09-13 06:17:37.923273', 'e929970d8b06936fa35c4ae2786d7f8b8ea179561dbd38769d22720662e45266', 'validated', '{"audio_key":"a87b99e62601a730804e48dd0c67d3c8aa3e7e4c1c2ed11a8b53a9712303b130","entity_key":"wf_culture_events_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e929970d8b06936fa35c4ae2786d7f8b8ea179561dbd38769d22720662e45266","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a87b99e62601a730804e48dd0c67d3c8aa3e7e4c1c2ed11a8b53a9712303b130.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_courses_learning_06 -> audio/generated/de-DE/lexical/a881ecc93bdc8d084660b0d33ba1a6ae8e9f4b16898c719c383d59188f5c546f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('50c9a18e-a22d-5240-8ce5-0025087ebc30', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_courses_learning_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0f0c12cf9b25e00e86f0852ef97a867de97f2d126915d551a64e783297a90a8d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('975c5e9d-a12f-5e80-8d25-c225f65c15e6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('50c9a18e-a22d-5240-8ce5-0025087ebc30', 1), '0f0c12cf9b25e00e86f0852ef97a867de97f2d126915d551a64e783297a90a8d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a881ecc93bdc8d084660b0d33ba1a6ae8e9f4b16898c719c383d59188f5c546f.mp3', 1097, '2026-09-13 06:17:39.069583', '7c1a6d022cb27ddf1dd86deea2249e9abef39ce062d200bbb04db7e9f8ba57c2', 'validated', '{"audio_key":"a881ecc93bdc8d084660b0d33ba1a6ae8e9f4b16898c719c383d59188f5c546f","entity_key":"lx_courses_learning_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7c1a6d022cb27ddf1dd86deea2249e9abef39ce062d200bbb04db7e9f8ba57c2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a881ecc93bdc8d084660b0d33ba1a6ae8e9f4b16898c719c383d59188f5c546f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_courses_learning_06 -> audio/generated/de-DE/lexical/a881ecc93bdc8d084660b0d33ba1a6ae8e9f4b16898c719c383d59188f5c546f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d2f81402-d691-5745-871b-2e3afa26d00e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_courses_learning_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0f0c12cf9b25e00e86f0852ef97a867de97f2d126915d551a64e783297a90a8d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8340fb77-d17f-577b-a976-5b816bad46a2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d2f81402-d691-5745-871b-2e3afa26d00e', 1), '0f0c12cf9b25e00e86f0852ef97a867de97f2d126915d551a64e783297a90a8d',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a881ecc93bdc8d084660b0d33ba1a6ae8e9f4b16898c719c383d59188f5c546f.mp3', 1097, '2026-09-13 06:17:39.069583', '7c1a6d022cb27ddf1dd86deea2249e9abef39ce062d200bbb04db7e9f8ba57c2', 'validated', '{"audio_key":"a881ecc93bdc8d084660b0d33ba1a6ae8e9f4b16898c719c383d59188f5c546f","entity_key":"wf_courses_learning_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7c1a6d022cb27ddf1dd86deea2249e9abef39ce062d200bbb04db7e9f8ba57c2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a881ecc93bdc8d084660b0d33ba1a6ae8e9f4b16898c719c383d59188f5c546f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_relationships_conflict_06 -> audio/generated/de-DE/lexical/a9a88af70e411e12685c7625793eab1da7bb101dd780909f82291866a39e81a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('440fefba-5871-5fd1-b701-9ce9177ca084', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_relationships_conflict_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10bd1d7a29c6ec6f60264b6538503d4fecfcf4242e7efd3b205ba6c47c6bb7dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f23d785-a7d7-54c0-b307-bef291abd972', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('440fefba-5871-5fd1-b701-9ce9177ca084', 1), '10bd1d7a29c6ec6f60264b6538503d4fecfcf4242e7efd3b205ba6c47c6bb7dd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a9a88af70e411e12685c7625793eab1da7bb101dd780909f82291866a39e81a6.mp3', 1018, '2026-09-13 06:17:38.862876', '1f278fc00a9a2e64dd8759154f95ce3afb01ec721252e47dc5d504a3a21d67b1', 'validated', '{"audio_key":"a9a88af70e411e12685c7625793eab1da7bb101dd780909f82291866a39e81a6","entity_key":"lx_relationships_conflict_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1f278fc00a9a2e64dd8759154f95ce3afb01ec721252e47dc5d504a3a21d67b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a9a88af70e411e12685c7625793eab1da7bb101dd780909f82291866a39e81a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_relationships_conflict_06 -> audio/generated/de-DE/lexical/a9a88af70e411e12685c7625793eab1da7bb101dd780909f82291866a39e81a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fb83f539-cceb-5f8b-a97d-98f2c005a3b5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_relationships_conflict_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10bd1d7a29c6ec6f60264b6538503d4fecfcf4242e7efd3b205ba6c47c6bb7dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('756c7024-efcf-526d-bcd6-ea96dbd46e58', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fb83f539-cceb-5f8b-a97d-98f2c005a3b5', 1), '10bd1d7a29c6ec6f60264b6538503d4fecfcf4242e7efd3b205ba6c47c6bb7dd',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/a9a88af70e411e12685c7625793eab1da7bb101dd780909f82291866a39e81a6.mp3', 1018, '2026-09-13 06:17:38.862876', '1f278fc00a9a2e64dd8759154f95ce3afb01ec721252e47dc5d504a3a21d67b1', 'validated', '{"audio_key":"a9a88af70e411e12685c7625793eab1da7bb101dd780909f82291866a39e81a6","entity_key":"wf_relationships_conflict_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1f278fc00a9a2e64dd8759154f95ce3afb01ec721252e47dc5d504a3a21d67b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/a9a88af70e411e12685c7625793eab1da7bb101dd780909f82291866a39e81a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_relationships_conflict_04 -> audio/generated/de-DE/lexical/b31c544603fa545f3730ed3d35aaebc3f0429a99595b7fe1e986d6e4797cbc0d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('36606f03-d4d1-51ba-a7f4-a0335ba6deb7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_relationships_conflict_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd27f4d1f25a4fb512a51e9509c3025ac12d98ccd40ce2fc2ae18b473a4c0e2df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb46d4e6-acd5-5ef8-8ce7-1255769b4bd2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('36606f03-d4d1-51ba-a7f4-a0335ba6deb7', 1), 'd27f4d1f25a4fb512a51e9509c3025ac12d98ccd40ce2fc2ae18b473a4c0e2df',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b31c544603fa545f3730ed3d35aaebc3f0429a99595b7fe1e986d6e4797cbc0d.mp3', 1253, '2026-09-13 06:17:39.877555', '0fd983e0b96c083efec68f904c20de58f0367d9d8ea34540c368ff6a11990d90', 'validated', '{"audio_key":"b31c544603fa545f3730ed3d35aaebc3f0429a99595b7fe1e986d6e4797cbc0d","entity_key":"lx_relationships_conflict_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0fd983e0b96c083efec68f904c20de58f0367d9d8ea34540c368ff6a11990d90","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b31c544603fa545f3730ed3d35aaebc3f0429a99595b7fe1e986d6e4797cbc0d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_relationships_conflict_04 -> audio/generated/de-DE/lexical/b31c544603fa545f3730ed3d35aaebc3f0429a99595b7fe1e986d6e4797cbc0d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d6dd141e-4dd8-53cb-aa39-29975c674295', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_relationships_conflict_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd27f4d1f25a4fb512a51e9509c3025ac12d98ccd40ce2fc2ae18b473a4c0e2df'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4cbb94b6-281b-556b-9671-72e2864f408a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d6dd141e-4dd8-53cb-aa39-29975c674295', 1), 'd27f4d1f25a4fb512a51e9509c3025ac12d98ccd40ce2fc2ae18b473a4c0e2df',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b31c544603fa545f3730ed3d35aaebc3f0429a99595b7fe1e986d6e4797cbc0d.mp3', 1253, '2026-09-13 06:17:39.877555', '0fd983e0b96c083efec68f904c20de58f0367d9d8ea34540c368ff6a11990d90', 'validated', '{"audio_key":"b31c544603fa545f3730ed3d35aaebc3f0429a99595b7fe1e986d6e4797cbc0d","entity_key":"wf_relationships_conflict_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0fd983e0b96c083efec68f904c20de58f0367d9d8ea34540c368ff6a11990d90","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b31c544603fa545f3730ed3d35aaebc3f0429a99595b7fe1e986d6e4797cbc0d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_culture_events_05 -> audio/generated/de-DE/lexical/b5fd1b2f190330bb6bafa268b897c9b598599ebc592c68f5ac96d5d65d4b1e06.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0c349fc2-c94d-5480-95cf-a96e5f5a68a5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_culture_events_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a658952450e1f66ed3621d35e75d361962f236b51d80cd46d37c72c2a3ccb18'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('518fa9d0-9814-53e4-9673-bdc3aaacb942', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0c349fc2-c94d-5480-95cf-a96e5f5a68a5', 1), '7a658952450e1f66ed3621d35e75d361962f236b51d80cd46d37c72c2a3ccb18',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b5fd1b2f190330bb6bafa268b897c9b598599ebc592c68f5ac96d5d65d4b1e06.mp3', 966, '2026-09-13 06:17:39.995227', 'ffbdfa018fbf67f96c00cb6f0f20185d0c9b52e525a3f9c22e3493dc77d62ed6', 'validated', '{"audio_key":"b5fd1b2f190330bb6bafa268b897c9b598599ebc592c68f5ac96d5d65d4b1e06","entity_key":"lx_culture_events_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ffbdfa018fbf67f96c00cb6f0f20185d0c9b52e525a3f9c22e3493dc77d62ed6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b5fd1b2f190330bb6bafa268b897c9b598599ebc592c68f5ac96d5d65d4b1e06.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_culture_events_05 -> audio/generated/de-DE/lexical/b5fd1b2f190330bb6bafa268b897c9b598599ebc592c68f5ac96d5d65d4b1e06.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('32d17cab-edb0-5b13-9c39-8acd41ba1cf5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_culture_events_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a658952450e1f66ed3621d35e75d361962f236b51d80cd46d37c72c2a3ccb18'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd4dca8a-1bb5-52d7-8934-c93e66fed186', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('32d17cab-edb0-5b13-9c39-8acd41ba1cf5', 1), '7a658952450e1f66ed3621d35e75d361962f236b51d80cd46d37c72c2a3ccb18',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b5fd1b2f190330bb6bafa268b897c9b598599ebc592c68f5ac96d5d65d4b1e06.mp3', 966, '2026-09-13 06:17:39.995227', 'ffbdfa018fbf67f96c00cb6f0f20185d0c9b52e525a3f9c22e3493dc77d62ed6', 'validated', '{"audio_key":"b5fd1b2f190330bb6bafa268b897c9b598599ebc592c68f5ac96d5d65d4b1e06","entity_key":"wf_culture_events_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ffbdfa018fbf67f96c00cb6f0f20185d0c9b52e525a3f9c22e3493dc77d62ed6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b5fd1b2f190330bb6bafa268b897c9b598599ebc592c68f5ac96d5d65d4b1e06.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_decisions_consequences_01 -> audio/generated/de-DE/lexical/b6bd7f9e8725f2abffe90ea51e2d3d0e9f1b71686aee903a88f13d2c5dee93e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8f36ae77-cd95-5921-85c2-247aa16e1052', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_decisions_consequences_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84b5bbbb43d143e6c057d492c920a2cce5fb810899065193ba5b46fdb80a97de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b91b2c85-aeb2-5fc7-9977-cfb89a0ba76a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8f36ae77-cd95-5921-85c2-247aa16e1052', 1), '84b5bbbb43d143e6c057d492c920a2cce5fb810899065193ba5b46fdb80a97de',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b6bd7f9e8725f2abffe90ea51e2d3d0e9f1b71686aee903a88f13d2c5dee93e1.mp3', 1018, '2026-09-13 06:17:40.823775', '8c2e1aff18a67d72ba8fd668e12c1b893cdd9bba6c33a2a2d81b0d61a0b35f39', 'validated', '{"audio_key":"b6bd7f9e8725f2abffe90ea51e2d3d0e9f1b71686aee903a88f13d2c5dee93e1","entity_key":"lx_decisions_consequences_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8c2e1aff18a67d72ba8fd668e12c1b893cdd9bba6c33a2a2d81b0d61a0b35f39","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b6bd7f9e8725f2abffe90ea51e2d3d0e9f1b71686aee903a88f13d2c5dee93e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_decisions_consequences_01 -> audio/generated/de-DE/lexical/b6bd7f9e8725f2abffe90ea51e2d3d0e9f1b71686aee903a88f13d2c5dee93e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('af6424e4-9f45-579a-9f18-e0d048c5ea02', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_decisions_consequences_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84b5bbbb43d143e6c057d492c920a2cce5fb810899065193ba5b46fdb80a97de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1fd4a12-feb7-5b44-85c5-0e710060663c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('af6424e4-9f45-579a-9f18-e0d048c5ea02', 1), '84b5bbbb43d143e6c057d492c920a2cce5fb810899065193ba5b46fdb80a97de',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b6bd7f9e8725f2abffe90ea51e2d3d0e9f1b71686aee903a88f13d2c5dee93e1.mp3', 1018, '2026-09-13 06:17:40.823775', '8c2e1aff18a67d72ba8fd668e12c1b893cdd9bba6c33a2a2d81b0d61a0b35f39', 'validated', '{"audio_key":"b6bd7f9e8725f2abffe90ea51e2d3d0e9f1b71686aee903a88f13d2c5dee93e1","entity_key":"wf_decisions_consequences_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8c2e1aff18a67d72ba8fd668e12c1b893cdd9bba6c33a2a2d81b0d61a0b35f39","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b6bd7f9e8725f2abffe90ea51e2d3d0e9f1b71686aee903a88f13d2c5dee93e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_complaints_returns_05 -> audio/generated/de-DE/lexical/b6c9104205af6a8792ae0f08f49408d2b216eabb5137d2d82f5213f74b653d3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d72fc7b9-8a43-5046-b78b-ebec2c3ce8af', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_complaints_returns_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ce699b48a9f263fbd20209235a42f504c8d0171bf9c9e2c3dc56500156f97b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d4294b7d-9014-53d2-8f6e-ac008e0ea3a0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d72fc7b9-8a43-5046-b78b-ebec2c3ce8af', 1), '0ce699b48a9f263fbd20209235a42f504c8d0171bf9c9e2c3dc56500156f97b5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b6c9104205af6a8792ae0f08f49408d2b216eabb5137d2d82f5213f74b653d3a.mp3', 1071, '2026-09-13 06:17:40.919670', 'ef44fc671c4206206a26d274fb873ef1e0b5c1d2e02af612dd3cae1d070effc3', 'validated', '{"audio_key":"b6c9104205af6a8792ae0f08f49408d2b216eabb5137d2d82f5213f74b653d3a","entity_key":"lx_complaints_returns_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ef44fc671c4206206a26d274fb873ef1e0b5c1d2e02af612dd3cae1d070effc3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b6c9104205af6a8792ae0f08f49408d2b216eabb5137d2d82f5213f74b653d3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_complaints_returns_05 -> audio/generated/de-DE/lexical/b6c9104205af6a8792ae0f08f49408d2b216eabb5137d2d82f5213f74b653d3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('db7501ce-574e-5367-8abb-4b9afd3ffbd1', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_complaints_returns_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ce699b48a9f263fbd20209235a42f504c8d0171bf9c9e2c3dc56500156f97b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f9c537f-8302-529d-8136-8ef34db6f35e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('db7501ce-574e-5367-8abb-4b9afd3ffbd1', 1), '0ce699b48a9f263fbd20209235a42f504c8d0171bf9c9e2c3dc56500156f97b5',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b6c9104205af6a8792ae0f08f49408d2b216eabb5137d2d82f5213f74b653d3a.mp3', 1071, '2026-09-13 06:17:40.919670', 'ef44fc671c4206206a26d274fb873ef1e0b5c1d2e02af612dd3cae1d070effc3', 'validated', '{"audio_key":"b6c9104205af6a8792ae0f08f49408d2b216eabb5137d2d82f5213f74b653d3a","entity_key":"wf_complaints_returns_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ef44fc671c4206206a26d274fb873ef1e0b5c1d2e02af612dd3cae1d070effc3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b6c9104205af6a8792ae0f08f49408d2b216eabb5137d2d82f5213f74b653d3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_environment_recycling_05 -> audio/generated/de-DE/lexical/b8a9939e17e95f338cc4a58b8a4438ec7c26d3d135e6735a7f1149a2262b0a8e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3897c02d-9953-5ab2-bf8a-d79ef4c5eaad', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_environment_recycling_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a939efb8a36c79d3ad3ca9dbe7a30dd541ec005a7140e79ac4a8dbb89d24cd56'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5de79d5-5edd-5e4c-80c8-81d6fb33e950', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3897c02d-9953-5ab2-bf8a-d79ef4c5eaad', 1), 'a939efb8a36c79d3ad3ca9dbe7a30dd541ec005a7140e79ac4a8dbb89d24cd56',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b8a9939e17e95f338cc4a58b8a4438ec7c26d3d135e6735a7f1149a2262b0a8e.mp3', 1018, '2026-09-13 06:17:41.777602', '0af6f8997c7059ed5f361c700375f426415d491b0211b7fd5e5bf6259e737398', 'validated', '{"audio_key":"b8a9939e17e95f338cc4a58b8a4438ec7c26d3d135e6735a7f1149a2262b0a8e","entity_key":"lx_environment_recycling_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0af6f8997c7059ed5f361c700375f426415d491b0211b7fd5e5bf6259e737398","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b8a9939e17e95f338cc4a58b8a4438ec7c26d3d135e6735a7f1149a2262b0a8e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_environment_recycling_05 -> audio/generated/de-DE/lexical/b8a9939e17e95f338cc4a58b8a4438ec7c26d3d135e6735a7f1149a2262b0a8e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d2e6ff02-c0b5-5b30-aabe-c615be6ad115', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_environment_recycling_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a939efb8a36c79d3ad3ca9dbe7a30dd541ec005a7140e79ac4a8dbb89d24cd56'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d7d723bb-a074-59b5-a403-ec10874498eb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d2e6ff02-c0b5-5b30-aabe-c615be6ad115', 1), 'a939efb8a36c79d3ad3ca9dbe7a30dd541ec005a7140e79ac4a8dbb89d24cd56',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b8a9939e17e95f338cc4a58b8a4438ec7c26d3d135e6735a7f1149a2262b0a8e.mp3', 1018, '2026-09-13 06:17:41.777602', '0af6f8997c7059ed5f361c700375f426415d491b0211b7fd5e5bf6259e737398', 'validated', '{"audio_key":"b8a9939e17e95f338cc4a58b8a4438ec7c26d3d135e6735a7f1149a2262b0a8e","entity_key":"wf_environment_recycling_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0af6f8997c7059ed5f361c700375f426415d491b0211b7fd5e5bf6259e737398","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b8a9939e17e95f338cc4a58b8a4438ec7c26d3d135e6735a7f1149a2262b0a8e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_complaints_returns_03 -> audio/generated/de-DE/lexical/b90c07ba2fd6fa897fc5c83c41759497c65c97125731ddcbf2ff70533421e652.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('36282a63-91b3-5ea2-b011-8d0145447666', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_complaints_returns_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d0fba61bae45e6e7f5618c28e920e6695d73bd9584ccfc6839db26808f51f2a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5052ff3-15ef-5b46-9de5-f05566efff01', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('36282a63-91b3-5ea2-b011-8d0145447666', 1), '3d0fba61bae45e6e7f5618c28e920e6695d73bd9584ccfc6839db26808f51f2a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b90c07ba2fd6fa897fc5c83c41759497c65c97125731ddcbf2ff70533421e652.mp3', 1149, '2026-09-13 06:17:41.876568', 'c4b61591eca68a90b4dd8b8b26651979258d4dc5c3985668b91a365b686c295d', 'validated', '{"audio_key":"b90c07ba2fd6fa897fc5c83c41759497c65c97125731ddcbf2ff70533421e652","entity_key":"lx_complaints_returns_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c4b61591eca68a90b4dd8b8b26651979258d4dc5c3985668b91a365b686c295d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b90c07ba2fd6fa897fc5c83c41759497c65c97125731ddcbf2ff70533421e652.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_complaints_returns_03 -> audio/generated/de-DE/lexical/b90c07ba2fd6fa897fc5c83c41759497c65c97125731ddcbf2ff70533421e652.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d3a39252-149b-5a7a-961f-3f7b7e7240a0', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_complaints_returns_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d0fba61bae45e6e7f5618c28e920e6695d73bd9584ccfc6839db26808f51f2a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('936e4359-bcd6-5758-93fc-5d31327c0398', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d3a39252-149b-5a7a-961f-3f7b7e7240a0', 1), '3d0fba61bae45e6e7f5618c28e920e6695d73bd9584ccfc6839db26808f51f2a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b90c07ba2fd6fa897fc5c83c41759497c65c97125731ddcbf2ff70533421e652.mp3', 1149, '2026-09-13 06:17:41.876568', 'c4b61591eca68a90b4dd8b8b26651979258d4dc5c3985668b91a365b686c295d', 'validated', '{"audio_key":"b90c07ba2fd6fa897fc5c83c41759497c65c97125731ddcbf2ff70533421e652","entity_key":"wf_complaints_returns_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c4b61591eca68a90b4dd8b8b26651979258d4dc5c3985668b91a365b686c295d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b90c07ba2fd6fa897fc5c83c41759497c65c97125731ddcbf2ff70533421e652.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_culture_events_02 -> audio/generated/de-DE/lexical/b9937a5d1d42ab0f5c4db638f2b085afd191cd5384f0646e0caf6876a4c72db0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c0679997-1034-5033-94fa-b32e4ac839da', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_culture_events_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90bd83c71d09153065267e9f73fd0cf1222cc283313580a11cf2f6a548f22e13'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa6d19a6-5631-5e2a-a543-13287dabf3a8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c0679997-1034-5033-94fa-b32e4ac839da', 1), '90bd83c71d09153065267e9f73fd0cf1222cc283313580a11cf2f6a548f22e13',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b9937a5d1d42ab0f5c4db638f2b085afd191cd5384f0646e0caf6876a4c72db0.mp3', 1149, '2026-09-13 06:17:42.742799', '25deaa308d5d6e814a8b833f7570f180f9dbbc381846267c12f1b23b192cb623', 'validated', '{"audio_key":"b9937a5d1d42ab0f5c4db638f2b085afd191cd5384f0646e0caf6876a4c72db0","entity_key":"lx_culture_events_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"25deaa308d5d6e814a8b833f7570f180f9dbbc381846267c12f1b23b192cb623","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b9937a5d1d42ab0f5c4db638f2b085afd191cd5384f0646e0caf6876a4c72db0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_culture_events_02 -> audio/generated/de-DE/lexical/b9937a5d1d42ab0f5c4db638f2b085afd191cd5384f0646e0caf6876a4c72db0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3f8fac9c-1b37-5f07-8df1-06d19bdb0fe3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_culture_events_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90bd83c71d09153065267e9f73fd0cf1222cc283313580a11cf2f6a548f22e13'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d3a4733c-2643-50c4-9df5-77db574fa81b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3f8fac9c-1b37-5f07-8df1-06d19bdb0fe3', 1), '90bd83c71d09153065267e9f73fd0cf1222cc283313580a11cf2f6a548f22e13',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/b9937a5d1d42ab0f5c4db638f2b085afd191cd5384f0646e0caf6876a4c72db0.mp3', 1149, '2026-09-13 06:17:42.742799', '25deaa308d5d6e814a8b833f7570f180f9dbbc381846267c12f1b23b192cb623', 'validated', '{"audio_key":"b9937a5d1d42ab0f5c4db638f2b085afd191cd5384f0646e0caf6876a4c72db0","entity_key":"wf_culture_events_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"25deaa308d5d6e814a8b833f7570f180f9dbbc381846267c12f1b23b192cb623","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/b9937a5d1d42ab0f5c4db638f2b085afd191cd5384f0646e0caf6876a4c72db0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_culture_events_01 -> audio/generated/de-DE/lexical/c4dcd44f0eeb0a15e8c6a961eacf34388cf01501cfecf7f04585e746770c1260.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7f073af3-836d-52c3-8aee-61c58fbf19e5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_culture_events_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97794d328604163a7b46ee67d32dd648f125e79ebf6eab773c5744659f6bbc39'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b46e4978-3243-59e4-bc76-b39a9e4f3c3a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7f073af3-836d-52c3-8aee-61c58fbf19e5', 1), '97794d328604163a7b46ee67d32dd648f125e79ebf6eab773c5744659f6bbc39',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c4dcd44f0eeb0a15e8c6a961eacf34388cf01501cfecf7f04585e746770c1260.mp3', 1071, '2026-09-13 06:17:42.814025', '842cd06e44a460f23e2fae5a415a48608d1947d837cf63931db598e87602523e', 'validated', '{"audio_key":"c4dcd44f0eeb0a15e8c6a961eacf34388cf01501cfecf7f04585e746770c1260","entity_key":"lx_culture_events_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"842cd06e44a460f23e2fae5a415a48608d1947d837cf63931db598e87602523e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c4dcd44f0eeb0a15e8c6a961eacf34388cf01501cfecf7f04585e746770c1260.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_culture_events_01 -> audio/generated/de-DE/lexical/c4dcd44f0eeb0a15e8c6a961eacf34388cf01501cfecf7f04585e746770c1260.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ff4ce256-9199-54ce-ab68-b85d64d8253e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_culture_events_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97794d328604163a7b46ee67d32dd648f125e79ebf6eab773c5744659f6bbc39'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a46f5a4c-71d2-5145-a78a-bb1800174ab6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ff4ce256-9199-54ce-ab68-b85d64d8253e', 1), '97794d328604163a7b46ee67d32dd648f125e79ebf6eab773c5744659f6bbc39',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/c4dcd44f0eeb0a15e8c6a961eacf34388cf01501cfecf7f04585e746770c1260.mp3', 1071, '2026-09-13 06:17:42.814025', '842cd06e44a460f23e2fae5a415a48608d1947d837cf63931db598e87602523e', 'validated', '{"audio_key":"c4dcd44f0eeb0a15e8c6a961eacf34388cf01501cfecf7f04585e746770c1260","entity_key":"wf_culture_events_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"842cd06e44a460f23e2fae5a415a48608d1947d837cf63931db598e87602523e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/c4dcd44f0eeb0a15e8c6a961eacf34388cf01501cfecf7f04585e746770c1260.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_culture_events_03 -> audio/generated/de-DE/lexical/ca92df9d81099028049b8f630214b389661345809a05b382abc84d3713471fab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ef931f52-c536-58ce-b325-a7c7022267b3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_culture_events_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e30bcf98db5e8a8e93085004281daca5d0e835a1d0c8f82b65889bf6d16dfa51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1aef5a2-198e-5cce-b3a8-b08b41b096fd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ef931f52-c536-58ce-b325-a7c7022267b3', 1), 'e30bcf98db5e8a8e93085004281daca5d0e835a1d0c8f82b65889bf6d16dfa51',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ca92df9d81099028049b8f630214b389661345809a05b382abc84d3713471fab.mp3', 1253, '2026-09-13 05:54:47.030504', '34eb45148661f989a4a0ff85c4336ba087c532ae3713c00c5f5430a80b1a88e7', 'validated', '{"audio_key":"ca92df9d81099028049b8f630214b389661345809a05b382abc84d3713471fab","entity_key":"lx_culture_events_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"34eb45148661f989a4a0ff85c4336ba087c532ae3713c00c5f5430a80b1a88e7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ca92df9d81099028049b8f630214b389661345809a05b382abc84d3713471fab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_culture_events_03 -> audio/generated/de-DE/lexical/ca92df9d81099028049b8f630214b389661345809a05b382abc84d3713471fab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d31e2e3a-f0d2-5aea-bd30-b9f706a9a57a', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_culture_events_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e30bcf98db5e8a8e93085004281daca5d0e835a1d0c8f82b65889bf6d16dfa51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b29d1a4a-9155-5493-9bf7-d2dbeb6807c2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d31e2e3a-f0d2-5aea-bd30-b9f706a9a57a', 1), 'e30bcf98db5e8a8e93085004281daca5d0e835a1d0c8f82b65889bf6d16dfa51',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ca92df9d81099028049b8f630214b389661345809a05b382abc84d3713471fab.mp3', 1253, '2026-09-13 05:54:47.030504', '34eb45148661f989a4a0ff85c4336ba087c532ae3713c00c5f5430a80b1a88e7', 'validated', '{"audio_key":"ca92df9d81099028049b8f630214b389661345809a05b382abc84d3713471fab","entity_key":"wf_culture_events_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"34eb45148661f989a4a0ff85c4336ba087c532ae3713c00c5f5430a80b1a88e7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ca92df9d81099028049b8f630214b389661345809a05b382abc84d3713471fab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_courses_learning_03 -> audio/generated/de-DE/lexical/d0157f5dfa2cfea4bd9748263a9fb0eff19161d91cbc7d04ea5009ccf00aaae4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('81bdbe5e-2d3b-5d95-a8f1-fd68282559cd', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_courses_learning_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ddfff5eed6825fd1c02099bab02cea67930b447b3b59e87ff37514bb591fba7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2f06848-c900-5a01-ad36-f42f85f62e69', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('81bdbe5e-2d3b-5d95-a8f1-fd68282559cd', 1), '1ddfff5eed6825fd1c02099bab02cea67930b447b3b59e87ff37514bb591fba7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d0157f5dfa2cfea4bd9748263a9fb0eff19161d91cbc7d04ea5009ccf00aaae4.mp3', 1201, '2026-09-13 06:17:43.716366', '2fcc9667cb3361e5ea132d9c4572fb168bb1ab0ed4230c2de70ff6aba632a55f', 'validated', '{"audio_key":"d0157f5dfa2cfea4bd9748263a9fb0eff19161d91cbc7d04ea5009ccf00aaae4","entity_key":"lx_courses_learning_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2fcc9667cb3361e5ea132d9c4572fb168bb1ab0ed4230c2de70ff6aba632a55f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d0157f5dfa2cfea4bd9748263a9fb0eff19161d91cbc7d04ea5009ccf00aaae4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_courses_learning_03 -> audio/generated/de-DE/lexical/d0157f5dfa2cfea4bd9748263a9fb0eff19161d91cbc7d04ea5009ccf00aaae4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d34db828-a762-59d2-b0c9-3242470c6cfe', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_courses_learning_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ddfff5eed6825fd1c02099bab02cea67930b447b3b59e87ff37514bb591fba7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f522be82-424b-5447-b0fb-0465abf9f7e5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d34db828-a762-59d2-b0c9-3242470c6cfe', 1), '1ddfff5eed6825fd1c02099bab02cea67930b447b3b59e87ff37514bb591fba7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d0157f5dfa2cfea4bd9748263a9fb0eff19161d91cbc7d04ea5009ccf00aaae4.mp3', 1201, '2026-09-13 06:17:43.716366', '2fcc9667cb3361e5ea132d9c4572fb168bb1ab0ed4230c2de70ff6aba632a55f', 'validated', '{"audio_key":"d0157f5dfa2cfea4bd9748263a9fb0eff19161d91cbc7d04ea5009ccf00aaae4","entity_key":"wf_courses_learning_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2fcc9667cb3361e5ea132d9c4572fb168bb1ab0ed4230c2de70ff6aba632a55f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d0157f5dfa2cfea4bd9748263a9fb0eff19161d91cbc7d04ea5009ccf00aaae4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_job_applications_05 -> audio/generated/de-DE/lexical/d02daea8f7916b1f20316f804f7df7f5c5b6858f08862e7d7551e572d95a28b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('51514238-bce9-52be-93e5-65989597194d', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_job_applications_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5bfb23b2c008716618a0ba7f624822ca0e74e7733289def130f6b8feaf6961ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('17df5a6d-3b81-530a-978d-c89a4231e92b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('51514238-bce9-52be-93e5-65989597194d', 1), '5bfb23b2c008716618a0ba7f624822ca0e74e7733289def130f6b8feaf6961ba',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d02daea8f7916b1f20316f804f7df7f5c5b6858f08862e7d7551e572d95a28b3.mp3', 1567, '2026-09-13 06:17:43.819281', '327bdd907c9c3aa8fe61baec5506a02aed54ecfaf4edf5aab73376764117938b', 'validated', '{"audio_key":"d02daea8f7916b1f20316f804f7df7f5c5b6858f08862e7d7551e572d95a28b3","entity_key":"lx_job_applications_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"327bdd907c9c3aa8fe61baec5506a02aed54ecfaf4edf5aab73376764117938b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d02daea8f7916b1f20316f804f7df7f5c5b6858f08862e7d7551e572d95a28b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_job_applications_05 -> audio/generated/de-DE/lexical/d02daea8f7916b1f20316f804f7df7f5c5b6858f08862e7d7551e572d95a28b3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('062ad871-740e-5265-adc1-be279757a8c4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_job_applications_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5bfb23b2c008716618a0ba7f624822ca0e74e7733289def130f6b8feaf6961ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1c87e2c6-f89d-5d61-be4e-5726c9581b2d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('062ad871-740e-5265-adc1-be279757a8c4', 1), '5bfb23b2c008716618a0ba7f624822ca0e74e7733289def130f6b8feaf6961ba',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d02daea8f7916b1f20316f804f7df7f5c5b6858f08862e7d7551e572d95a28b3.mp3', 1567, '2026-09-13 06:17:43.819281', '327bdd907c9c3aa8fe61baec5506a02aed54ecfaf4edf5aab73376764117938b', 'validated', '{"audio_key":"d02daea8f7916b1f20316f804f7df7f5c5b6858f08862e7d7551e572d95a28b3","entity_key":"wf_job_applications_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"327bdd907c9c3aa8fe61baec5506a02aed54ecfaf4edf5aab73376764117938b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d02daea8f7916b1f20316f804f7df7f5c5b6858f08862e7d7551e572d95a28b3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_job_applications_02 -> audio/generated/de-DE/lexical/d097e5263725eaab743c65b42af320b8fbb9b0a37cef35fbf0135f658240423d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('da870264-8afc-5a50-81ae-d75767496629', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_job_applications_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e3b4327857f62441535598f90be89221e3fda56a5007a3b64e2902da5d384f35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1faa1cbe-a585-559d-a3bd-e1fed0868902', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('da870264-8afc-5a50-81ae-d75767496629', 1), 'e3b4327857f62441535598f90be89221e3fda56a5007a3b64e2902da5d384f35',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d097e5263725eaab743c65b42af320b8fbb9b0a37cef35fbf0135f658240423d.mp3', 1071, '2026-09-13 06:17:44.689811', 'c15fa828b98692b48262ad3b4b4584682eb25abccc44826d2409600335bd76f6', 'validated', '{"audio_key":"d097e5263725eaab743c65b42af320b8fbb9b0a37cef35fbf0135f658240423d","entity_key":"lx_job_applications_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c15fa828b98692b48262ad3b4b4584682eb25abccc44826d2409600335bd76f6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d097e5263725eaab743c65b42af320b8fbb9b0a37cef35fbf0135f658240423d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_job_applications_02 -> audio/generated/de-DE/lexical/d097e5263725eaab743c65b42af320b8fbb9b0a37cef35fbf0135f658240423d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b6c93a0d-d630-5f6a-8b9a-8cb73b0e0a5c', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_job_applications_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e3b4327857f62441535598f90be89221e3fda56a5007a3b64e2902da5d384f35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25418df2-ba92-57db-9124-2af44e38514b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b6c93a0d-d630-5f6a-8b9a-8cb73b0e0a5c', 1), 'e3b4327857f62441535598f90be89221e3fda56a5007a3b64e2902da5d384f35',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/d097e5263725eaab743c65b42af320b8fbb9b0a37cef35fbf0135f658240423d.mp3', 1071, '2026-09-13 06:17:44.689811', 'c15fa828b98692b48262ad3b4b4584682eb25abccc44826d2409600335bd76f6', 'validated', '{"audio_key":"d097e5263725eaab743c65b42af320b8fbb9b0a37cef35fbf0135f658240423d","entity_key":"wf_job_applications_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c15fa828b98692b48262ad3b4b4584682eb25abccc44826d2409600335bd76f6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/d097e5263725eaab743c65b42af320b8fbb9b0a37cef35fbf0135f658240423d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_environment_recycling_03 -> audio/generated/de-DE/lexical/dc1b53c747779ad38e01f4dd74a37e8d6af4b7cedf872fa06948bb0abd76cdf8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b0476226-6d6a-5823-9c04-a37105ce71fe', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_environment_recycling_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0afa38c0ff75cfe313e6efa0f58858e9024ca16d404b511061080abfc51f0a68'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c3304ed-d9e9-5b76-a422-73a4af5b7cfc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b0476226-6d6a-5823-9c04-a37105ce71fe', 1), '0afa38c0ff75cfe313e6efa0f58858e9024ca16d404b511061080abfc51f0a68',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/dc1b53c747779ad38e01f4dd74a37e8d6af4b7cedf872fa06948bb0abd76cdf8.mp3', 1201, '2026-09-13 06:17:44.758482', '92d06b35d37c6173bca7750003c77abd0efd60d1334e3caca9216f18b63f178c', 'validated', '{"audio_key":"dc1b53c747779ad38e01f4dd74a37e8d6af4b7cedf872fa06948bb0abd76cdf8","entity_key":"lx_environment_recycling_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"92d06b35d37c6173bca7750003c77abd0efd60d1334e3caca9216f18b63f178c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/dc1b53c747779ad38e01f4dd74a37e8d6af4b7cedf872fa06948bb0abd76cdf8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_environment_recycling_03 -> audio/generated/de-DE/lexical/dc1b53c747779ad38e01f4dd74a37e8d6af4b7cedf872fa06948bb0abd76cdf8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('19ed4096-9f4c-5dda-8410-79f9f271a3c5', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_environment_recycling_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0afa38c0ff75cfe313e6efa0f58858e9024ca16d404b511061080abfc51f0a68'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d29d7a8a-1019-5cd3-aeb5-328f8291c044', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('19ed4096-9f4c-5dda-8410-79f9f271a3c5', 1), '0afa38c0ff75cfe313e6efa0f58858e9024ca16d404b511061080abfc51f0a68',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/dc1b53c747779ad38e01f4dd74a37e8d6af4b7cedf872fa06948bb0abd76cdf8.mp3', 1201, '2026-09-13 06:17:44.758482', '92d06b35d37c6173bca7750003c77abd0efd60d1334e3caca9216f18b63f178c', 'validated', '{"audio_key":"dc1b53c747779ad38e01f4dd74a37e8d6af4b7cedf872fa06948bb0abd76cdf8","entity_key":"wf_environment_recycling_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"92d06b35d37c6173bca7750003c77abd0efd60d1334e3caca9216f18b63f178c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/dc1b53c747779ad38e01f4dd74a37e8d6af4b7cedf872fa06948bb0abd76cdf8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_job_applications_01 -> audio/generated/de-DE/lexical/df09b6bb4fb5663a86a5c3134fabd0bcbd42d9bccb7b6b7ddb166717d9248b32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2a0d1a26-56b9-5164-857c-59b2e96140b8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_job_applications_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '63d587f5ee82680228b15be42659fa51a2f25daf19d0ead58fc81f801bf33dbb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28ba0a18-0037-5ecb-b252-d39631ffae01', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2a0d1a26-56b9-5164-857c-59b2e96140b8', 1), '63d587f5ee82680228b15be42659fa51a2f25daf19d0ead58fc81f801bf33dbb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/df09b6bb4fb5663a86a5c3134fabd0bcbd42d9bccb7b6b7ddb166717d9248b32.mp3', 1071, '2026-09-13 06:17:45.639683', 'c9525359199377fce78a4a55987a59e3544d992a79a8871a81ea53cdad9c24b0', 'validated', '{"audio_key":"df09b6bb4fb5663a86a5c3134fabd0bcbd42d9bccb7b6b7ddb166717d9248b32","entity_key":"lx_job_applications_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c9525359199377fce78a4a55987a59e3544d992a79a8871a81ea53cdad9c24b0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/df09b6bb4fb5663a86a5c3134fabd0bcbd42d9bccb7b6b7ddb166717d9248b32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_job_applications_01 -> audio/generated/de-DE/lexical/df09b6bb4fb5663a86a5c3134fabd0bcbd42d9bccb7b6b7ddb166717d9248b32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('56da07d2-e832-5ff5-b7e6-fd1ff1d6c443', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_job_applications_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '63d587f5ee82680228b15be42659fa51a2f25daf19d0ead58fc81f801bf33dbb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('88298f6f-ef65-55c1-8ea4-0a82e9d8e2c9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('56da07d2-e832-5ff5-b7e6-fd1ff1d6c443', 1), '63d587f5ee82680228b15be42659fa51a2f25daf19d0ead58fc81f801bf33dbb',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/df09b6bb4fb5663a86a5c3134fabd0bcbd42d9bccb7b6b7ddb166717d9248b32.mp3', 1071, '2026-09-13 06:17:45.639683', 'c9525359199377fce78a4a55987a59e3544d992a79a8871a81ea53cdad9c24b0', 'validated', '{"audio_key":"df09b6bb4fb5663a86a5c3134fabd0bcbd42d9bccb7b6b7ddb166717d9248b32","entity_key":"wf_job_applications_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c9525359199377fce78a4a55987a59e3544d992a79a8871a81ea53cdad9c24b0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/df09b6bb4fb5663a86a5c3134fabd0bcbd42d9bccb7b6b7ddb166717d9248b32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_job_applications_06 -> audio/generated/de-DE/lexical/e1ea83d109e801e0dae8e645cdc2aa39757c68fb2cdd57d1078846038c8e01c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('41237de2-dab1-5546-93e9-af3feb6d3076', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_job_applications_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9571c665ef3f2786678c2f5451a7230d2c4abc34d81128ec80e62d7a3bf61c70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80d6efaa-a32d-5ef7-be50-4abdda4a51eb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('41237de2-dab1-5546-93e9-af3feb6d3076', 1), '9571c665ef3f2786678c2f5451a7230d2c4abc34d81128ec80e62d7a3bf61c70',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e1ea83d109e801e0dae8e645cdc2aa39757c68fb2cdd57d1078846038c8e01c4.mp3', 1018, '2026-09-13 06:17:45.706130', '005459bfdd35fba95a81e1a70ae03af7aa7b364ae5019ecbbc2e6a6cbda234b1', 'validated', '{"audio_key":"e1ea83d109e801e0dae8e645cdc2aa39757c68fb2cdd57d1078846038c8e01c4","entity_key":"lx_job_applications_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"005459bfdd35fba95a81e1a70ae03af7aa7b364ae5019ecbbc2e6a6cbda234b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e1ea83d109e801e0dae8e645cdc2aa39757c68fb2cdd57d1078846038c8e01c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_job_applications_06 -> audio/generated/de-DE/lexical/e1ea83d109e801e0dae8e645cdc2aa39757c68fb2cdd57d1078846038c8e01c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b478fb87-a6fc-514a-a2e7-730e95c15826', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_job_applications_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9571c665ef3f2786678c2f5451a7230d2c4abc34d81128ec80e62d7a3bf61c70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b8eb1eea-5bda-540d-8e0b-3d527b91fb22', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b478fb87-a6fc-514a-a2e7-730e95c15826', 1), '9571c665ef3f2786678c2f5451a7230d2c4abc34d81128ec80e62d7a3bf61c70',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e1ea83d109e801e0dae8e645cdc2aa39757c68fb2cdd57d1078846038c8e01c4.mp3', 1018, '2026-09-13 06:17:45.706130', '005459bfdd35fba95a81e1a70ae03af7aa7b364ae5019ecbbc2e6a6cbda234b1', 'validated', '{"audio_key":"e1ea83d109e801e0dae8e645cdc2aa39757c68fb2cdd57d1078846038c8e01c4","entity_key":"wf_job_applications_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"005459bfdd35fba95a81e1a70ae03af7aa7b364ae5019ecbbc2e6a6cbda234b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e1ea83d109e801e0dae8e645cdc2aa39757c68fb2cdd57d1078846038c8e01c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_decisions_consequences_05 -> audio/generated/de-DE/lexical/e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7d856b01-1d58-5962-aa6d-bafa730e20da', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_decisions_consequences_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b41787ef39d1ab75c2ca6076926148eb3926eef6afebbe4d793e1b35f6f29699'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e6c041ff-4d52-5dee-b041-73478325e265', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7d856b01-1d58-5962-aa6d-bafa730e20da', 1), 'b41787ef39d1ab75c2ca6076926148eb3926eef6afebbe4d793e1b35f6f29699',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433.mp3', 1018, '2026-09-13 06:17:46.583235', 'c3911b1f5d3d9850ffe15cd520932836f11b8fdffcffdf945f73a66434ac51df', 'validated', '{"audio_key":"e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433","entity_key":"lx_decisions_consequences_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c3911b1f5d3d9850ffe15cd520932836f11b8fdffcffdf945f73a66434ac51df","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_decisions_consequences_05 -> audio/generated/de-DE/lexical/e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1dd6fa31-d587-52a6-9e9b-6d48872b302b', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_decisions_consequences_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b41787ef39d1ab75c2ca6076926148eb3926eef6afebbe4d793e1b35f6f29699'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cddceb96-7ef1-52e3-a7c5-0e9098da383c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1dd6fa31-d587-52a6-9e9b-6d48872b302b', 1), 'b41787ef39d1ab75c2ca6076926148eb3926eef6afebbe4d793e1b35f6f29699',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433.mp3', 1018, '2026-09-13 06:17:46.583235', 'c3911b1f5d3d9850ffe15cd520932836f11b8fdffcffdf945f73a66434ac51df', 'validated', '{"audio_key":"e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433","entity_key":"wf_decisions_consequences_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c3911b1f5d3d9850ffe15cd520932836f11b8fdffcffdf945f73a66434ac51df","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e3f8a339f9d9dc8ba2d16cf7b39ea0a38c153427203d9f4457b89d26b87e1433.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_money_budget_04 -> audio/generated/de-DE/lexical/e4b8830d3a0bd15a3ea9f082ad43f32b12a2166c888ae1119a8d6bbedce193cf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8e4036bc-3642-5dad-ba0a-7453cd1e5757', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_money_budget_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6e0a9a2460371a03b027d4e34f3f98efcabcc523cb8c91197a0ee5d46e55d7a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59893713-d226-525e-83bb-ae8bda053ade', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8e4036bc-3642-5dad-ba0a-7453cd1e5757', 1), 'e6e0a9a2460371a03b027d4e34f3f98efcabcc523cb8c91197a0ee5d46e55d7a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e4b8830d3a0bd15a3ea9f082ad43f32b12a2166c888ae1119a8d6bbedce193cf.mp3', 1253, '2026-09-13 06:17:46.662323', 'b721a2f4055932e400a1324fb634b7e4e2bd537d7e92ec5568373aab8ffe91b7', 'validated', '{"audio_key":"e4b8830d3a0bd15a3ea9f082ad43f32b12a2166c888ae1119a8d6bbedce193cf","entity_key":"lx_money_budget_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b721a2f4055932e400a1324fb634b7e4e2bd537d7e92ec5568373aab8ffe91b7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e4b8830d3a0bd15a3ea9f082ad43f32b12a2166c888ae1119a8d6bbedce193cf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_money_budget_04 -> audio/generated/de-DE/lexical/e4b8830d3a0bd15a3ea9f082ad43f32b12a2166c888ae1119a8d6bbedce193cf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3a0dc94f-d42c-5722-9991-803d18ea4cee', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_money_budget_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e6e0a9a2460371a03b027d4e34f3f98efcabcc523cb8c91197a0ee5d46e55d7a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d23a840-da7d-5435-a034-607c183a8e14', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3a0dc94f-d42c-5722-9991-803d18ea4cee', 1), 'e6e0a9a2460371a03b027d4e34f3f98efcabcc523cb8c91197a0ee5d46e55d7a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e4b8830d3a0bd15a3ea9f082ad43f32b12a2166c888ae1119a8d6bbedce193cf.mp3', 1253, '2026-09-13 06:17:46.662323', 'b721a2f4055932e400a1324fb634b7e4e2bd537d7e92ec5568373aab8ffe91b7', 'validated', '{"audio_key":"e4b8830d3a0bd15a3ea9f082ad43f32b12a2166c888ae1119a8d6bbedce193cf","entity_key":"wf_money_budget_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b721a2f4055932e400a1324fb634b7e4e2bd537d7e92ec5568373aab8ffe91b7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e4b8830d3a0bd15a3ea9f082ad43f32b12a2166c888ae1119a8d6bbedce193cf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_culture_events_06 -> audio/generated/de-DE/lexical/e50e6327f19fe7b4cc8fbf659f0ae795bbca4525be33a28d2017eaeb1868631a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('503fbbed-80ab-5456-b295-e2a97e275722', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_culture_events_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '83863b3f383d69f608a9ee0e75b53b0fc9298e6d4ed56f80c70b859c826728e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89dffe42-e3c2-5932-b586-f58dcb2f7b24', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('503fbbed-80ab-5456-b295-e2a97e275722', 1), '83863b3f383d69f608a9ee0e75b53b0fc9298e6d4ed56f80c70b859c826728e7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e50e6327f19fe7b4cc8fbf659f0ae795bbca4525be33a28d2017eaeb1868631a.mp3', 1515, '2026-09-13 06:17:47.572721', '5ccbb6ce591b3d8a6900e791d3288c1cb0322af01ea0c99bffb5dc31c06d828e', 'validated', '{"audio_key":"e50e6327f19fe7b4cc8fbf659f0ae795bbca4525be33a28d2017eaeb1868631a","entity_key":"lx_culture_events_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5ccbb6ce591b3d8a6900e791d3288c1cb0322af01ea0c99bffb5dc31c06d828e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e50e6327f19fe7b4cc8fbf659f0ae795bbca4525be33a28d2017eaeb1868631a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_culture_events_06 -> audio/generated/de-DE/lexical/e50e6327f19fe7b4cc8fbf659f0ae795bbca4525be33a28d2017eaeb1868631a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8a213107-4da6-5179-bc2b-dae13f36a1b2', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_culture_events_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '83863b3f383d69f608a9ee0e75b53b0fc9298e6d4ed56f80c70b859c826728e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec315fff-9dc5-55f9-9c14-d1af65188fcd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8a213107-4da6-5179-bc2b-dae13f36a1b2', 1), '83863b3f383d69f608a9ee0e75b53b0fc9298e6d4ed56f80c70b859c826728e7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/e50e6327f19fe7b4cc8fbf659f0ae795bbca4525be33a28d2017eaeb1868631a.mp3', 1515, '2026-09-13 06:17:47.572721', '5ccbb6ce591b3d8a6900e791d3288c1cb0322af01ea0c99bffb5dc31c06d828e', 'validated', '{"audio_key":"e50e6327f19fe7b4cc8fbf659f0ae795bbca4525be33a28d2017eaeb1868631a","entity_key":"wf_culture_events_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5ccbb6ce591b3d8a6900e791d3288c1cb0322af01ea0c99bffb5dc31c06d828e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/e50e6327f19fe7b4cc8fbf659f0ae795bbca4525be33a28d2017eaeb1868631a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_courses_learning_05 -> audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f666c66e-75ff-5c90-88e9-418276d7a38e', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_courses_learning_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abfc3f29bb604493a66d8e5ae703b97bbb5e0c424d7b195a672280b70f31060b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8166d85-bb84-5b0c-9bce-ac2b757f2973', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f666c66e-75ff-5c90-88e9-418276d7a38e', 1), 'abfc3f29bb604493a66d8e5ae703b97bbb5e0c424d7b195a672280b70f31060b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3', 1071, '2026-09-13 05:31:08.540973', 'd084a2298937026b832300c497875d9329270ef478d4453d3ff1af70f403a5ce', 'validated', '{"audio_key":"ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3","entity_key":"lx_courses_learning_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d084a2298937026b832300c497875d9329270ef478d4453d3ff1af70f403a5ce","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_courses_learning_05 -> audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6b8e34fb-a2fc-5b2f-901f-b2abbf1bbfd4', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_courses_learning_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'abfc3f29bb604493a66d8e5ae703b97bbb5e0c424d7b195a672280b70f31060b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f2bfd05-7830-5eb2-a065-23d2c8c6c98f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6b8e34fb-a2fc-5b2f-901f-b2abbf1bbfd4', 1), 'abfc3f29bb604493a66d8e5ae703b97bbb5e0c424d7b195a672280b70f31060b',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3', 1071, '2026-09-13 05:31:08.540973', 'd084a2298937026b832300c497875d9329270ef478d4453d3ff1af70f403a5ce', 'validated', '{"audio_key":"ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3","entity_key":"wf_courses_learning_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d084a2298937026b832300c497875d9329270ef478d4453d3ff1af70f403a5ce","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ef9b8b411e68396fde6efc108c41ac1c7cf589c13368e2407405b2a71a6ebad3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_relationships_conflict_01 -> audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('55ca057d-4fff-556a-85a7-5d1fd2f72ad3', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_relationships_conflict_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec3609f47300b6b510b59aea05b0643ba70938375035c2608c437669e2bae62a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f905ca58-4aa4-5cd7-8df0-fedbffa44b3d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('55ca057d-4fff-556a-85a7-5d1fd2f72ad3', 1), 'ec3609f47300b6b510b59aea05b0643ba70938375035c2608c437669e2bae62a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3', 1488, '2026-09-13 06:17:47.647624', '07237926f6b389608b038b24307f13b1f81e7c3a4008d9fe7b0b272b809e4010', 'validated', '{"audio_key":"f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813","entity_key":"lx_relationships_conflict_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07237926f6b389608b038b24307f13b1f81e7c3a4008d9fe7b0b272b809e4010","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_relationships_conflict_01 -> audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8258edca-0d1e-515f-813d-d040c0c41598', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_relationships_conflict_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec3609f47300b6b510b59aea05b0643ba70938375035c2608c437669e2bae62a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2099067a-0ccd-5fba-9ad3-dcb209f85b69', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8258edca-0d1e-515f-813d-d040c0c41598', 1), 'ec3609f47300b6b510b59aea05b0643ba70938375035c2608c437669e2bae62a',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3', 1488, '2026-09-13 06:17:47.647624', '07237926f6b389608b038b24307f13b1f81e7c3a4008d9fe7b0b272b809e4010', 'validated', '{"audio_key":"f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813","entity_key":"wf_relationships_conflict_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07237926f6b389608b038b24307f13b1f81e7c3a4008d9fe7b0b272b809e4010","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/f9f92d32c81de4d8f58a6abae6bca0462ec5829df6c2f2528d5ef8e5e4e7c813.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_decisions_consequences_03 -> audio/generated/de-DE/lexical/fd3e811141a6edc805c007dff218f5a6a8ce4905df28a7981f0113eb9c0d953e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0544b360-2727-5bfd-8545-2445695c7310', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_decisions_consequences_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a742ba3865c84a347d3c810c1e5a97e0decbb3440e78964daad1e554c6c3dfc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('398119e9-17c6-5eda-b4bd-e8793444d13f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0544b360-2727-5bfd-8545-2445695c7310', 1), 'a742ba3865c84a347d3c810c1e5a97e0decbb3440e78964daad1e554c6c3dfc7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fd3e811141a6edc805c007dff218f5a6a8ce4905df28a7981f0113eb9c0d953e.mp3', 1071, '2026-09-13 06:17:48.523273', 'b1d4ec16914f9e0181c7635154d6fc870f6d1a8bd6720a97bda0a4d165694898', 'validated', '{"audio_key":"fd3e811141a6edc805c007dff218f5a6a8ce4905df28a7981f0113eb9c0d953e","entity_key":"lx_decisions_consequences_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1d4ec16914f9e0181c7635154d6fc870f6d1a8bd6720a97bda0a4d165694898","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fd3e811141a6edc805c007dff218f5a6a8ce4905df28a7981f0113eb9c0d953e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_decisions_consequences_03 -> audio/generated/de-DE/lexical/fd3e811141a6edc805c007dff218f5a6a8ce4905df28a7981f0113eb9c0d953e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('28815f5e-a5d2-5b6c-8ec9-1f6b65558491', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_decisions_consequences_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a742ba3865c84a347d3c810c1e5a97e0decbb3440e78964daad1e554c6c3dfc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f42bcc62-5e0e-55e4-bd46-eff5544c85af', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('28815f5e-a5d2-5b6c-8ec9-1f6b65558491', 1), 'a742ba3865c84a347d3c810c1e5a97e0decbb3440e78964daad1e554c6c3dfc7',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/fd3e811141a6edc805c007dff218f5a6a8ce4905df28a7981f0113eb9c0d953e.mp3', 1071, '2026-09-13 06:17:48.523273', 'b1d4ec16914f9e0181c7635154d6fc870f6d1a8bd6720a97bda0a4d165694898', 'validated', '{"audio_key":"fd3e811141a6edc805c007dff218f5a6a8ce4905df28a7981f0113eb9c0d953e","entity_key":"wf_decisions_consequences_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b1d4ec16914f9e0181c7635154d6fc870f6d1a8bd6720a97bda0a4d165694898","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/fd3e811141a6edc805c007dff218f5a6a8ce4905df28a7981f0113eb9c0d953e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_relationships_conflict_05 -> audio/generated/de-DE/lexical/ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7125356b-477b-5154-a398-22985e6ae1a8', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_relationships_conflict_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2209f5fbb0e412d759e5b3ec624f5dbadf458dd29f90b4587d9a2f9ff25a5e96'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('db2cdb75-09db-594a-83cb-75e71187a4fe', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7125356b-477b-5154-a398-22985e6ae1a8', 1), '2209f5fbb0e412d759e5b3ec624f5dbadf458dd29f90b4587d9a2f9ff25a5e96',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20.mp3', 1253, '2026-09-13 05:54:52.779597', 'a9118bd61619ba3e67e59b21344e94e53e685df94cd417059c2da37bd4625f8f', 'validated', '{"audio_key":"ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20","entity_key":"lx_relationships_conflict_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a9118bd61619ba3e67e59b21344e94e53e685df94cd417059c2da37bd4625f8f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_relationships_conflict_05 -> audio/generated/de-DE/lexical/ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('97aacd68-aea3-5523-a8c5-eab51925dea7', 1)
  AND voice_key = 'de-de.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_relationships_conflict_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2209f5fbb0e412d759e5b3ec624f5dbadf458dd29f90b4587d9a2f9ff25a5e96'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c77eab0e-c26f-507a-913b-19da9c154381', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('97aacd68-aea3-5523-a8c5-eab51925dea7', 1), '2209f5fbb0e412d759e5b3ec624f5dbadf458dd29f90b4587d9a2f9ff25a5e96',
  'de-de.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/lexical/ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20.mp3', 1253, '2026-09-13 05:54:52.779597', 'a9118bd61619ba3e67e59b21344e94e53e685df94cd417059c2da37bd4625f8f', 'validated', '{"audio_key":"ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20","entity_key":"wf_relationships_conflict_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a9118bd61619ba3e67e59b21344e94e53e685df94cd417059c2da37bd4625f8f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/de-DE/lexical/ff59fef9ca7610054439481daff8e54179e0fe4b28eb4e6ba71e48fcda2f1c20.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_environment_recycling_03 -> audio/generated/de-DE/utterances/00c20aa7f2e105dd1d86108021c675224a3b810fad18fd6d95dcf493e91ded91.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a0190a5d-5550-5547-96bc-d88828d12eb8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_environment_recycling_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ec05f79f1bbff41068aafc96478230a2863700701da6afed20d9cb6a48f56aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18cf2caa-09d1-5582-a573-a978d462975d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a0190a5d-5550-5547-96bc-d88828d12eb8', 1), '1ec05f79f1bbff41068aafc96478230a2863700701da6afed20d9cb6a48f56aa',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/00c20aa7f2e105dd1d86108021c675224a3b810fad18fd6d95dcf493e91ded91.mp3', 4362, '2026-09-13 06:17:48.978237', '760c759e2a3d35212d19fed6076f44a20ff0fc704097faab36795670a535a609', 'validated', '{"audio_key":"00c20aa7f2e105dd1d86108021c675224a3b810fad18fd6d95dcf493e91ded91","entity_key":"u_environment_recycling_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"760c759e2a3d35212d19fed6076f44a20ff0fc704097faab36795670a535a609","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/00c20aa7f2e105dd1d86108021c675224a3b810fad18fd6d95dcf493e91ded91.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_environment_recycling_02_listen -> audio/generated/de-DE/utterances/00c20aa7f2e105dd1d86108021c675224a3b810fad18fd6d95dcf493e91ded91.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a56da4e0-011e-568d-b779-49f4fe6b44fd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_environment_recycling_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ec05f79f1bbff41068aafc96478230a2863700701da6afed20d9cb6a48f56aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab624bee-f8d1-5c60-9d72-2b2f3625e445', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a56da4e0-011e-568d-b779-49f4fe6b44fd', 1), '1ec05f79f1bbff41068aafc96478230a2863700701da6afed20d9cb6a48f56aa',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/00c20aa7f2e105dd1d86108021c675224a3b810fad18fd6d95dcf493e91ded91.mp3', 4362, '2026-09-13 06:17:48.978237', '760c759e2a3d35212d19fed6076f44a20ff0fc704097faab36795670a535a609', 'validated', '{"audio_key":"00c20aa7f2e105dd1d86108021c675224a3b810fad18fd6d95dcf493e91ded91","entity_key":"ex_environment_recycling_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"760c759e2a3d35212d19fed6076f44a20ff0fc704097faab36795670a535a609","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/00c20aa7f2e105dd1d86108021c675224a3b810fad18fd6d95dcf493e91ded91.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_workplace_communication_01 -> audio/generated/de-DE/utterances/018c1de0a90ad757b671ea64d040de83d341cc5e7944a2e59ee78ed48e341a64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a9c6bf81-fc65-556c-a882-47eb1430a496', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_workplace_communication_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d882d944d92e12cd988aaad7fee1ae7b46cb63aa5a2275b6f18596ca1f71cd6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('742904be-44b1-5dd7-aff3-05b053a0dfba', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a9c6bf81-fc65-556c-a882-47eb1430a496', 1), '8d882d944d92e12cd988aaad7fee1ae7b46cb63aa5a2275b6f18596ca1f71cd6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/018c1de0a90ad757b671ea64d040de83d341cc5e7944a2e59ee78ed48e341a64.mp3', 4179, '2026-09-13 06:17:49.784644', '46f15c07229a26cbaa067a0d7d8459fd27a9a0c8aa82b455a5ebc41701720dd5', 'validated', '{"audio_key":"018c1de0a90ad757b671ea64d040de83d341cc5e7944a2e59ee78ed48e341a64","entity_key":"u_workplace_communication_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"46f15c07229a26cbaa067a0d7d8459fd27a9a0c8aa82b455a5ebc41701720dd5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/018c1de0a90ad757b671ea64d040de83d341cc5e7944a2e59ee78ed48e341a64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_workplace_communication_01_listen -> audio/generated/de-DE/utterances/018c1de0a90ad757b671ea64d040de83d341cc5e7944a2e59ee78ed48e341a64.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9e591f94-f1c9-5830-87bb-95ca1b805c2e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_workplace_communication_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d882d944d92e12cd988aaad7fee1ae7b46cb63aa5a2275b6f18596ca1f71cd6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a10033f0-1696-56a2-a1c7-a52513bbe922', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9e591f94-f1c9-5830-87bb-95ca1b805c2e', 1), '8d882d944d92e12cd988aaad7fee1ae7b46cb63aa5a2275b6f18596ca1f71cd6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/018c1de0a90ad757b671ea64d040de83d341cc5e7944a2e59ee78ed48e341a64.mp3', 4179, '2026-09-13 06:17:49.784644', '46f15c07229a26cbaa067a0d7d8459fd27a9a0c8aa82b455a5ebc41701720dd5', 'validated', '{"audio_key":"018c1de0a90ad757b671ea64d040de83d341cc5e7944a2e59ee78ed48e341a64","entity_key":"ex_workplace_communication_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"46f15c07229a26cbaa067a0d7d8459fd27a9a0c8aa82b455a5ebc41701720dd5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/018c1de0a90ad757b671ea64d040de83d341cc5e7944a2e59ee78ed48e341a64.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_relationships_conflict_05 -> audio/generated/de-DE/utterances/01ca34e1dcf1185422d3cb5d5b49713f3980f93b70b541f2cbdcb65bbf5dbe2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d1f34f1a-c230-598f-be4d-c13b05d75129', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_relationships_conflict_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec3e3f4fe6047b16c74782d2154834af1732535b35042cebd45259a0fb1cf462'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29c34f31-6e4c-5fc5-85b9-96e7e77ee3cb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d1f34f1a-c230-598f-be4d-c13b05d75129', 1), 'ec3e3f4fe6047b16c74782d2154834af1732535b35042cebd45259a0fb1cf462',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/01ca34e1dcf1185422d3cb5d5b49713f3980f93b70b541f2cbdcb65bbf5dbe2d.mp3', 3657, '2026-09-13 06:17:50.229593', '72ddbbccbb42df524db4589cc781993b19b0ac1a05870fb55d4ac62b2ecc58fe', 'validated', '{"audio_key":"01ca34e1dcf1185422d3cb5d5b49713f3980f93b70b541f2cbdcb65bbf5dbe2d","entity_key":"u_relationships_conflict_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"72ddbbccbb42df524db4589cc781993b19b0ac1a05870fb55d4ac62b2ecc58fe","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/01ca34e1dcf1185422d3cb5d5b49713f3980f93b70b541f2cbdcb65bbf5dbe2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_relationships_conflict_03_listen -> audio/generated/de-DE/utterances/01ca34e1dcf1185422d3cb5d5b49713f3980f93b70b541f2cbdcb65bbf5dbe2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b477449f-e0d2-5c91-a346-4f4d050e3a29', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_relationships_conflict_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec3e3f4fe6047b16c74782d2154834af1732535b35042cebd45259a0fb1cf462'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f784900-eaf6-578d-96c0-e2bd0c874ce9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b477449f-e0d2-5c91-a346-4f4d050e3a29', 1), 'ec3e3f4fe6047b16c74782d2154834af1732535b35042cebd45259a0fb1cf462',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/01ca34e1dcf1185422d3cb5d5b49713f3980f93b70b541f2cbdcb65bbf5dbe2d.mp3', 3657, '2026-09-13 06:17:50.229593', '72ddbbccbb42df524db4589cc781993b19b0ac1a05870fb55d4ac62b2ecc58fe', 'validated', '{"audio_key":"01ca34e1dcf1185422d3cb5d5b49713f3980f93b70b541f2cbdcb65bbf5dbe2d","entity_key":"ex_relationships_conflict_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"72ddbbccbb42df524db4589cc781993b19b0ac1a05870fb55d4ac62b2ecc58fe","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/01ca34e1dcf1185422d3cb5d5b49713f3980f93b70b541f2cbdcb65bbf5dbe2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_decisions_consequences_05 -> audio/generated/de-DE/utterances/04cdf0398bd423e9b0f197b9e29839178e55280b8e99639ebdf4071f21d45e07.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2ece6c5d-515b-5fd2-b07b-804fa7004ed6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_decisions_consequences_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c709f33984cb689ff5da868f06e35266c46046f230074387c6b2023568c27d82'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0f530458-43a1-52dd-bb66-4a70cd8235e3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2ece6c5d-515b-5fd2-b07b-804fa7004ed6', 1), 'c709f33984cb689ff5da868f06e35266c46046f230074387c6b2023568c27d82',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/04cdf0398bd423e9b0f197b9e29839178e55280b8e99639ebdf4071f21d45e07.mp3', 4780, '2026-09-13 06:17:51.207126', '2cd835445ba0d7f479d7b9e92becbfc9654ed41300042778611fce93222722c5', 'validated', '{"audio_key":"04cdf0398bd423e9b0f197b9e29839178e55280b8e99639ebdf4071f21d45e07","entity_key":"u_decisions_consequences_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2cd835445ba0d7f479d7b9e92becbfc9654ed41300042778611fce93222722c5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/04cdf0398bd423e9b0f197b9e29839178e55280b8e99639ebdf4071f21d45e07.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_decisions_consequences_03_listen -> audio/generated/de-DE/utterances/04cdf0398bd423e9b0f197b9e29839178e55280b8e99639ebdf4071f21d45e07.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4569613c-395b-525c-bd54-417d43fbb033', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_decisions_consequences_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c709f33984cb689ff5da868f06e35266c46046f230074387c6b2023568c27d82'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b004486-a727-5eb1-ae0e-4a46925dc1a8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4569613c-395b-525c-bd54-417d43fbb033', 1), 'c709f33984cb689ff5da868f06e35266c46046f230074387c6b2023568c27d82',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/04cdf0398bd423e9b0f197b9e29839178e55280b8e99639ebdf4071f21d45e07.mp3', 4780, '2026-09-13 06:17:51.207126', '2cd835445ba0d7f479d7b9e92becbfc9654ed41300042778611fce93222722c5', 'validated', '{"audio_key":"04cdf0398bd423e9b0f197b9e29839178e55280b8e99639ebdf4071f21d45e07","entity_key":"ex_decisions_consequences_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2cd835445ba0d7f479d7b9e92becbfc9654ed41300042778611fce93222722c5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/04cdf0398bd423e9b0f197b9e29839178e55280b8e99639ebdf4071f21d45e07.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_culture_events_02 -> audio/generated/de-DE/utterances/0d73f24db340d241fae12454b8fa8e289030d2c1a1e97cc6a3bbd3383c0c6852.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2206ff8c-9fc1-5c3a-a3be-855b15e3cf36', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_culture_events_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fad9cf910de1f6669111e88d19ad224ddff5dca150055c62074d3e777def6ff2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9557fc2b-caac-5085-ad2a-aaa34d555fed', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2206ff8c-9fc1-5c3a-a3be-855b15e3cf36', 1), 'fad9cf910de1f6669111e88d19ad224ddff5dca150055c62074d3e777def6ff2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/0d73f24db340d241fae12454b8fa8e289030d2c1a1e97cc6a3bbd3383c0c6852.mp3', 3291, '2026-09-13 06:17:51.481334', '776f74e669e868b79838f81a56d891721df3c1327ec9e821d16bb61081398f71', 'validated', '{"audio_key":"0d73f24db340d241fae12454b8fa8e289030d2c1a1e97cc6a3bbd3383c0c6852","entity_key":"u_culture_events_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"776f74e669e868b79838f81a56d891721df3c1327ec9e821d16bb61081398f71","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/0d73f24db340d241fae12454b8fa8e289030d2c1a1e97cc6a3bbd3383c0c6852.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_culture_events_05 -> audio/generated/de-DE/utterances/15afaffde44e7a1a0d80f3a51807aa12a05f682880b4d164b20cc7530729bc6b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('74b62b62-828e-5ddf-9e37-67dd92dd5fef', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_culture_events_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '51bd4550f886182d2df46dfc57778f6441cba53738b5b1fd5eab4be2630eb923'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28ebdfe9-1583-5c55-824f-4114f5c7b393', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('74b62b62-828e-5ddf-9e37-67dd92dd5fef', 1), '51bd4550f886182d2df46dfc57778f6441cba53738b5b1fd5eab4be2630eb923',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/15afaffde44e7a1a0d80f3a51807aa12a05f682880b4d164b20cc7530729bc6b.mp3', 3422, '2026-09-13 06:17:52.517979', 'c0cf550987467ac4d320d4dc26a643f32e0f0a47b363d3ab029d6df3e045bab7', 'validated', '{"audio_key":"15afaffde44e7a1a0d80f3a51807aa12a05f682880b4d164b20cc7530729bc6b","entity_key":"u_culture_events_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c0cf550987467ac4d320d4dc26a643f32e0f0a47b363d3ab029d6df3e045bab7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/15afaffde44e7a1a0d80f3a51807aa12a05f682880b4d164b20cc7530729bc6b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_culture_events_03_listen -> audio/generated/de-DE/utterances/15afaffde44e7a1a0d80f3a51807aa12a05f682880b4d164b20cc7530729bc6b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a9230daf-3b93-5467-89d5-355147b14148', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_culture_events_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '51bd4550f886182d2df46dfc57778f6441cba53738b5b1fd5eab4be2630eb923'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3b0e693-f711-5220-8c2f-9fb884307948', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a9230daf-3b93-5467-89d5-355147b14148', 1), '51bd4550f886182d2df46dfc57778f6441cba53738b5b1fd5eab4be2630eb923',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/15afaffde44e7a1a0d80f3a51807aa12a05f682880b4d164b20cc7530729bc6b.mp3', 3422, '2026-09-13 06:17:52.517979', 'c0cf550987467ac4d320d4dc26a643f32e0f0a47b363d3ab029d6df3e045bab7', 'validated', '{"audio_key":"15afaffde44e7a1a0d80f3a51807aa12a05f682880b4d164b20cc7530729bc6b","entity_key":"ex_culture_events_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c0cf550987467ac4d320d4dc26a643f32e0f0a47b363d3ab029d6df3e045bab7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/15afaffde44e7a1a0d80f3a51807aa12a05f682880b4d164b20cc7530729bc6b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_decisions_consequences_01 -> audio/generated/de-DE/utterances/1b8b67b849838f18fb70b0bbf7f826ca891ab4925da4912cfcf4d7d607e6e6ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9c2ebaa4-5f90-59f9-a555-dd776bcd37f1', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_decisions_consequences_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff14652469b895c14f916ff9b182ce8fb3319032e836988b7325e4d47eb4de9c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7faf3366-4816-5ccb-baee-298d6457832b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9c2ebaa4-5f90-59f9-a555-dd776bcd37f1', 1), 'ff14652469b895c14f916ff9b182ce8fb3319032e836988b7325e4d47eb4de9c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1b8b67b849838f18fb70b0bbf7f826ca891ab4925da4912cfcf4d7d607e6e6ce.mp3', 4310, '2026-09-13 06:17:52.801544', 'ab71d82ee107770d2fcd9cdb7e6c9cbb4a92254293d73abf4e01489cfb5487f9', 'validated', '{"audio_key":"1b8b67b849838f18fb70b0bbf7f826ca891ab4925da4912cfcf4d7d607e6e6ce","entity_key":"u_decisions_consequences_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ab71d82ee107770d2fcd9cdb7e6c9cbb4a92254293d73abf4e01489cfb5487f9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1b8b67b849838f18fb70b0bbf7f826ca891ab4925da4912cfcf4d7d607e6e6ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_decisions_consequences_01_listen -> audio/generated/de-DE/utterances/1b8b67b849838f18fb70b0bbf7f826ca891ab4925da4912cfcf4d7d607e6e6ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('45a9bb39-62f6-50ee-976b-a0a0fd9ac1ce', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_decisions_consequences_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ff14652469b895c14f916ff9b182ce8fb3319032e836988b7325e4d47eb4de9c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('64b3edcd-4f79-5c5b-878d-de338c4c3bb2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('45a9bb39-62f6-50ee-976b-a0a0fd9ac1ce', 1), 'ff14652469b895c14f916ff9b182ce8fb3319032e836988b7325e4d47eb4de9c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/1b8b67b849838f18fb70b0bbf7f826ca891ab4925da4912cfcf4d7d607e6e6ce.mp3', 4310, '2026-09-13 06:17:52.801544', 'ab71d82ee107770d2fcd9cdb7e6c9cbb4a92254293d73abf4e01489cfb5487f9', 'validated', '{"audio_key":"1b8b67b849838f18fb70b0bbf7f826ca891ab4925da4912cfcf4d7d607e6e6ce","entity_key":"ex_decisions_consequences_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ab71d82ee107770d2fcd9cdb7e6c9cbb4a92254293d73abf4e01489cfb5487f9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/1b8b67b849838f18fb70b0bbf7f826ca891ab4925da4912cfcf4d7d607e6e6ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_job_applications_02 -> audio/generated/de-DE/utterances/23fa03dc7d9be7bb3d7073ae0340a983f5dd9e092ee609636b7cd8dedef1c18b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d8c2d61e-66d5-5756-b1a4-7da50d5a6c27', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_job_applications_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74bde9098cc95c28cec2cb7c26c8744df640b03cc42e3589cd7151fa8e191050'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b8122ec7-7896-5201-807b-d40e8a1caa07', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d8c2d61e-66d5-5756-b1a4-7da50d5a6c27', 1), '74bde9098cc95c28cec2cb7c26c8744df640b03cc42e3589cd7151fa8e191050',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/23fa03dc7d9be7bb3d7073ae0340a983f5dd9e092ee609636b7cd8dedef1c18b.mp3', 4075, '2026-09-13 06:17:53.809059', '4f1b06ec46ad7253a269089d431b0082bede6fa63c70a417008d6b263fb6c2bc', 'validated', '{"audio_key":"23fa03dc7d9be7bb3d7073ae0340a983f5dd9e092ee609636b7cd8dedef1c18b","entity_key":"u_job_applications_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4f1b06ec46ad7253a269089d431b0082bede6fa63c70a417008d6b263fb6c2bc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/23fa03dc7d9be7bb3d7073ae0340a983f5dd9e092ee609636b7cd8dedef1c18b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_money_budget_01 -> audio/generated/de-DE/utterances/2a4edba935ce6783f60b93ccb51720beee264329e57b69b8d65b0eae38a1a9a5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ec40a1dc-ec90-5784-84d5-1dbfcdb2eeb8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_money_budget_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6eeaec066b635574fa4b2abf9438b6a726b650cefa95d8d005b9dc2fc8af3fab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09e0991c-ccf4-5171-bc8c-f302f7405f5d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ec40a1dc-ec90-5784-84d5-1dbfcdb2eeb8', 1), '6eeaec066b635574fa4b2abf9438b6a726b650cefa95d8d005b9dc2fc8af3fab',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2a4edba935ce6783f60b93ccb51720beee264329e57b69b8d65b0eae38a1a9a5.mp3', 4675, '2026-09-13 06:17:54.201971', '3d778d22d9ab73426183136c4919af972ee4f9af9a19e45f0a9f281cc0d055f4', 'validated', '{"audio_key":"2a4edba935ce6783f60b93ccb51720beee264329e57b69b8d65b0eae38a1a9a5","entity_key":"u_money_budget_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3d778d22d9ab73426183136c4919af972ee4f9af9a19e45f0a9f281cc0d055f4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2a4edba935ce6783f60b93ccb51720beee264329e57b69b8d65b0eae38a1a9a5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_money_budget_01_listen -> audio/generated/de-DE/utterances/2a4edba935ce6783f60b93ccb51720beee264329e57b69b8d65b0eae38a1a9a5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('78fe7c6b-e1f0-5ff8-9c98-ff9c364726c2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_money_budget_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6eeaec066b635574fa4b2abf9438b6a726b650cefa95d8d005b9dc2fc8af3fab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e08e0973-e23a-5e69-9bb2-b1bb305e1f8a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('78fe7c6b-e1f0-5ff8-9c98-ff9c364726c2', 1), '6eeaec066b635574fa4b2abf9438b6a726b650cefa95d8d005b9dc2fc8af3fab',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/2a4edba935ce6783f60b93ccb51720beee264329e57b69b8d65b0eae38a1a9a5.mp3', 4675, '2026-09-13 06:17:54.201971', '3d778d22d9ab73426183136c4919af972ee4f9af9a19e45f0a9f281cc0d055f4', 'validated', '{"audio_key":"2a4edba935ce6783f60b93ccb51720beee264329e57b69b8d65b0eae38a1a9a5","entity_key":"ex_money_budget_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3d778d22d9ab73426183136c4919af972ee4f9af9a19e45f0a9f281cc0d055f4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/2a4edba935ce6783f60b93ccb51720beee264329e57b69b8d65b0eae38a1a9a5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_courses_learning_04 -> audio/generated/de-DE/utterances/330e1a58c56d6664f93274d6c2ba755a28a03009135dd3ae011e4fe73c2bff7f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('47f62257-188e-5a3b-929e-45aa71bd599d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_courses_learning_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9519810b31a59e106c80e1cb7018d4128f4c8973a8f97747c5ff2a8fd260ee8c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f5f6b3b-1488-57c2-b718-ea9accad87fe', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('47f62257-188e-5a3b-929e-45aa71bd599d', 1), '9519810b31a59e106c80e1cb7018d4128f4c8973a8f97747c5ff2a8fd260ee8c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/330e1a58c56d6664f93274d6c2ba755a28a03009135dd3ae011e4fe73c2bff7f.mp3', 3422, '2026-09-13 06:17:55.010136', '17de42440e729848102c8d3a3c8010422270c9072d4ce04ef72fd59ad28886b1', 'validated', '{"audio_key":"330e1a58c56d6664f93274d6c2ba755a28a03009135dd3ae011e4fe73c2bff7f","entity_key":"u_courses_learning_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"17de42440e729848102c8d3a3c8010422270c9072d4ce04ef72fd59ad28886b1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/330e1a58c56d6664f93274d6c2ba755a28a03009135dd3ae011e4fe73c2bff7f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_relationships_conflict_06 -> audio/generated/de-DE/utterances/33f4d3f2d91af379a0da36d880b47c68c05e1203cb83ea11f43dc04e872aa55b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2c24f3ae-f9ec-565d-b02a-c430410213b7', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_relationships_conflict_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df59eb5898c9f6407ba27f8246555cca2e1359648204434c5ea87897bd48460e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c284ceda-de0b-5e39-bde8-469c53d8ef92', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2c24f3ae-f9ec-565d-b02a-c430410213b7', 1), 'df59eb5898c9f6407ba27f8246555cca2e1359648204434c5ea87897bd48460e',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/33f4d3f2d91af379a0da36d880b47c68c05e1203cb83ea11f43dc04e872aa55b.mp3', 4310, '2026-09-13 06:17:55.571376', '0b466f2bc954a061cb7c564554a6861d6c84b0a0b8b26b2fccd2880ae69d400e', 'validated', '{"audio_key":"33f4d3f2d91af379a0da36d880b47c68c05e1203cb83ea11f43dc04e872aa55b","entity_key":"u_relationships_conflict_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b466f2bc954a061cb7c564554a6861d6c84b0a0b8b26b2fccd2880ae69d400e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/33f4d3f2d91af379a0da36d880b47c68c05e1203cb83ea11f43dc04e872aa55b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_environment_recycling_01 -> audio/generated/de-DE/utterances/37b87c3a64374fc4a79718077f4c283ef2f5bc61a5cc6296ef1802c94db38d9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ae8e3778-12f9-5b2f-b228-b89cf473e19a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_environment_recycling_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58e9db833677fd880c80186877dce69ee71133a01ea36da39d652c5484cb7bcd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb7431b4-53dd-526c-bc8e-430ae3292e77', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ae8e3778-12f9-5b2f-b228-b89cf473e19a', 1), '58e9db833677fd880c80186877dce69ee71133a01ea36da39d652c5484cb7bcd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/37b87c3a64374fc4a79718077f4c283ef2f5bc61a5cc6296ef1802c94db38d9c.mp3', 4075, '2026-09-13 06:17:56.295918', '301627c7abf01e5b0db16671fe50dc5d3da4a4fecd14804c0421e975a4c340d0', 'validated', '{"audio_key":"37b87c3a64374fc4a79718077f4c283ef2f5bc61a5cc6296ef1802c94db38d9c","entity_key":"u_environment_recycling_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"301627c7abf01e5b0db16671fe50dc5d3da4a4fecd14804c0421e975a4c340d0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/37b87c3a64374fc4a79718077f4c283ef2f5bc61a5cc6296ef1802c94db38d9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_environment_recycling_01_listen -> audio/generated/de-DE/utterances/37b87c3a64374fc4a79718077f4c283ef2f5bc61a5cc6296ef1802c94db38d9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ca80962d-1ddc-52bc-b7eb-0dabc5e2c5d9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_environment_recycling_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58e9db833677fd880c80186877dce69ee71133a01ea36da39d652c5484cb7bcd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c1d4d4d-458d-5cf1-87e6-3c265675173c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ca80962d-1ddc-52bc-b7eb-0dabc5e2c5d9', 1), '58e9db833677fd880c80186877dce69ee71133a01ea36da39d652c5484cb7bcd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/37b87c3a64374fc4a79718077f4c283ef2f5bc61a5cc6296ef1802c94db38d9c.mp3', 4075, '2026-09-13 06:17:56.295918', '301627c7abf01e5b0db16671fe50dc5d3da4a4fecd14804c0421e975a4c340d0', 'validated', '{"audio_key":"37b87c3a64374fc4a79718077f4c283ef2f5bc61a5cc6296ef1802c94db38d9c","entity_key":"ex_environment_recycling_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"301627c7abf01e5b0db16671fe50dc5d3da4a4fecd14804c0421e975a4c340d0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/37b87c3a64374fc4a79718077f4c283ef2f5bc61a5cc6296ef1802c94db38d9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_job_applications_03 -> audio/generated/de-DE/utterances/380b472471a3fc5a1dc5891a3e9981c8b5dfe43f2298afffea83c4ffe07abcd6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('20bb087d-0e45-5200-9373-9d146624ef19', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_job_applications_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9550e5bcae178b434cc6e6e24918b4a69dd1a3414428542a27577c08049d7c2c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50deb249-9365-5b3d-9518-597cef7f41d6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('20bb087d-0e45-5200-9373-9d146624ef19', 1), '9550e5bcae178b434cc6e6e24918b4a69dd1a3414428542a27577c08049d7c2c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/380b472471a3fc5a1dc5891a3e9981c8b5dfe43f2298afffea83c4ffe07abcd6.mp3', 3657, '2026-09-13 06:17:56.801322', '808462527ad94892daf5e93e7660a115743607520d00ada7ad6446ce27171724', 'validated', '{"audio_key":"380b472471a3fc5a1dc5891a3e9981c8b5dfe43f2298afffea83c4ffe07abcd6","entity_key":"u_job_applications_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"808462527ad94892daf5e93e7660a115743607520d00ada7ad6446ce27171724","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/380b472471a3fc5a1dc5891a3e9981c8b5dfe43f2298afffea83c4ffe07abcd6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_job_applications_02_listen -> audio/generated/de-DE/utterances/380b472471a3fc5a1dc5891a3e9981c8b5dfe43f2298afffea83c4ffe07abcd6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3a5a975f-9ee7-5d71-97aa-04d5a566fb25', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_job_applications_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9550e5bcae178b434cc6e6e24918b4a69dd1a3414428542a27577c08049d7c2c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c3cd20d-5490-50b8-ba0b-b18ad030f26b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3a5a975f-9ee7-5d71-97aa-04d5a566fb25', 1), '9550e5bcae178b434cc6e6e24918b4a69dd1a3414428542a27577c08049d7c2c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/380b472471a3fc5a1dc5891a3e9981c8b5dfe43f2298afffea83c4ffe07abcd6.mp3', 3657, '2026-09-13 06:17:56.801322', '808462527ad94892daf5e93e7660a115743607520d00ada7ad6446ce27171724', 'validated', '{"audio_key":"380b472471a3fc5a1dc5891a3e9981c8b5dfe43f2298afffea83c4ffe07abcd6","entity_key":"ex_job_applications_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"808462527ad94892daf5e93e7660a115743607520d00ada7ad6446ce27171724","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/380b472471a3fc5a1dc5891a3e9981c8b5dfe43f2298afffea83c4ffe07abcd6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_complaints_returns_02 -> audio/generated/de-DE/utterances/3fc101aad32809e1b03767421d3aa7f598ef61511a690dd6d42311ba9bf6d980.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b6ed9159-c5b8-54b6-b46c-2274c6314f9d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_complaints_returns_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8156794ca7bbc8c9bd63f95454e40539bf44adf32bafabe76d2aad20faf7ccee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c817794-5f6d-5342-a92f-40c5133ba1b7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b6ed9159-c5b8-54b6-b46c-2274c6314f9d', 1), '8156794ca7bbc8c9bd63f95454e40539bf44adf32bafabe76d2aad20faf7ccee',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/3fc101aad32809e1b03767421d3aa7f598ef61511a690dd6d42311ba9bf6d980.mp3', 3892, '2026-09-13 06:17:57.640521', 'de4c8661f7cde0cd01162869a9ff1577e17814f5d6110899e1fa5f5ecaef2153', 'validated', '{"audio_key":"3fc101aad32809e1b03767421d3aa7f598ef61511a690dd6d42311ba9bf6d980","entity_key":"u_complaints_returns_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"de4c8661f7cde0cd01162869a9ff1577e17814f5d6110899e1fa5f5ecaef2153","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/3fc101aad32809e1b03767421d3aa7f598ef61511a690dd6d42311ba9bf6d980.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_environment_recycling_05 -> audio/generated/de-DE/utterances/421b5c4acfa9ca02739d1bb5277472d2390f98e817f29199a616eca619022fcc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2e6fc10f-4704-50ae-80ee-2c4d48349229', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_environment_recycling_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd40e620bfb65a3416df8bc2f959f5ad8c69891a98478b9148d4aa22c61dc3454'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('597d6519-f4ca-5a70-9722-87a4951ba477', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2e6fc10f-4704-50ae-80ee-2c4d48349229', 1), 'd40e620bfb65a3416df8bc2f959f5ad8c69891a98478b9148d4aa22c61dc3454',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/421b5c4acfa9ca02739d1bb5277472d2390f98e817f29199a616eca619022fcc.mp3', 3369, '2026-09-13 06:17:58.006215', '5a7de85c8f770330ea763658e53330d6fff4ba7833c0b8da84641fa8750539d2', 'validated', '{"audio_key":"421b5c4acfa9ca02739d1bb5277472d2390f98e817f29199a616eca619022fcc","entity_key":"u_environment_recycling_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a7de85c8f770330ea763658e53330d6fff4ba7833c0b8da84641fa8750539d2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/421b5c4acfa9ca02739d1bb5277472d2390f98e817f29199a616eca619022fcc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_environment_recycling_03_listen -> audio/generated/de-DE/utterances/421b5c4acfa9ca02739d1bb5277472d2390f98e817f29199a616eca619022fcc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('08e73004-31ab-508e-a068-0e9d06def63c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_environment_recycling_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd40e620bfb65a3416df8bc2f959f5ad8c69891a98478b9148d4aa22c61dc3454'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95a371ef-fda8-552e-878d-842d1e1c14b7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('08e73004-31ab-508e-a068-0e9d06def63c', 1), 'd40e620bfb65a3416df8bc2f959f5ad8c69891a98478b9148d4aa22c61dc3454',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/421b5c4acfa9ca02739d1bb5277472d2390f98e817f29199a616eca619022fcc.mp3', 3369, '2026-09-13 06:17:58.006215', '5a7de85c8f770330ea763658e53330d6fff4ba7833c0b8da84641fa8750539d2', 'validated', '{"audio_key":"421b5c4acfa9ca02739d1bb5277472d2390f98e817f29199a616eca619022fcc","entity_key":"ex_environment_recycling_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a7de85c8f770330ea763658e53330d6fff4ba7833c0b8da84641fa8750539d2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/421b5c4acfa9ca02739d1bb5277472d2390f98e817f29199a616eca619022fcc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_culture_events_06 -> audio/generated/de-DE/utterances/461913590b8cb894c2d20aa7d9acab3d1e5ade17dbc800ddea2755a5ec0dfbf3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('47a2e696-6ea3-5c09-93e9-db8dab3f729d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_culture_events_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '86ae76be962032dc1926aede0ce4e037cc5e0dbf4129d548bc8fe1e33030b1cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b27fe02-2954-5ba7-bf71-9d9d803fac22', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('47a2e696-6ea3-5c09-93e9-db8dab3f729d', 1), '86ae76be962032dc1926aede0ce4e037cc5e0dbf4129d548bc8fe1e33030b1cb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/461913590b8cb894c2d20aa7d9acab3d1e5ade17dbc800ddea2755a5ec0dfbf3.mp3', 3709, '2026-09-13 06:17:58.886679', '963d5d0369ed7dd8ff41462695c6ee24b924ee2231ee5acd1febe5493313b62a', 'validated', '{"audio_key":"461913590b8cb894c2d20aa7d9acab3d1e5ade17dbc800ddea2755a5ec0dfbf3","entity_key":"u_culture_events_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"963d5d0369ed7dd8ff41462695c6ee24b924ee2231ee5acd1febe5493313b62a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/461913590b8cb894c2d20aa7d9acab3d1e5ade17dbc800ddea2755a5ec0dfbf3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_relationships_conflict_01 -> audio/generated/de-DE/utterances/47fa6f31e0eacf83f028462fef1272fdd4dbe12f2aad8a25cbf23274cc1b467c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ecfbe1bb-db7f-569e-a341-2d33140396c4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_relationships_conflict_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7592b3ff7c82fe978f81f4ed237b30dbf70cea0db9b6fb81d5524fc927ecb3b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2041955a-5f75-5c5f-8d2b-6c69abc25cfa', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ecfbe1bb-db7f-569e-a341-2d33140396c4', 1), '7592b3ff7c82fe978f81f4ed237b30dbf70cea0db9b6fb81d5524fc927ecb3b2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/47fa6f31e0eacf83f028462fef1272fdd4dbe12f2aad8a25cbf23274cc1b467c.mp3', 3369, '2026-09-13 06:17:59.232935', '7062ef7bb97d10d41260f902374918af563a6a1f4c0585e20ab780c479854572', 'validated', '{"audio_key":"47fa6f31e0eacf83f028462fef1272fdd4dbe12f2aad8a25cbf23274cc1b467c","entity_key":"u_relationships_conflict_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7062ef7bb97d10d41260f902374918af563a6a1f4c0585e20ab780c479854572","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/47fa6f31e0eacf83f028462fef1272fdd4dbe12f2aad8a25cbf23274cc1b467c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_relationships_conflict_01_listen -> audio/generated/de-DE/utterances/47fa6f31e0eacf83f028462fef1272fdd4dbe12f2aad8a25cbf23274cc1b467c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('22bd3216-cf0a-5db1-8c7e-4a3c0b748558', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_relationships_conflict_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7592b3ff7c82fe978f81f4ed237b30dbf70cea0db9b6fb81d5524fc927ecb3b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1fd39eee-6aa2-5f19-a592-00bd593b7f72', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('22bd3216-cf0a-5db1-8c7e-4a3c0b748558', 1), '7592b3ff7c82fe978f81f4ed237b30dbf70cea0db9b6fb81d5524fc927ecb3b2',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/47fa6f31e0eacf83f028462fef1272fdd4dbe12f2aad8a25cbf23274cc1b467c.mp3', 3369, '2026-09-13 06:17:59.232935', '7062ef7bb97d10d41260f902374918af563a6a1f4c0585e20ab780c479854572', 'validated', '{"audio_key":"47fa6f31e0eacf83f028462fef1272fdd4dbe12f2aad8a25cbf23274cc1b467c","entity_key":"ex_relationships_conflict_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7062ef7bb97d10d41260f902374918af563a6a1f4c0585e20ab780c479854572","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/47fa6f31e0eacf83f028462fef1272fdd4dbe12f2aad8a25cbf23274cc1b467c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_courses_learning_01 -> audio/generated/de-DE/utterances/4a7ff017eafd48fc3d1ee41d22e886d26e34a280edefd779d45c8a13c7319558.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('92072b22-9c07-5b77-8d34-a70c30ba1d5b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_courses_learning_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db1cd79813cad0d5c9ef25eb4c94e93f97f3fd06ddc020923288d00449d20169'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('322ee808-9531-5187-ac15-54d787e0005a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('92072b22-9c07-5b77-8d34-a70c30ba1d5b', 1), 'db1cd79813cad0d5c9ef25eb4c94e93f97f3fd06ddc020923288d00449d20169',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4a7ff017eafd48fc3d1ee41d22e886d26e34a280edefd779d45c8a13c7319558.mp3', 3996, '2026-09-13 06:18:00.180382', '26f6e1f976efb410d778e16ca416cb11ceb70581d051b4713dbe74fb191485ff', 'validated', '{"audio_key":"4a7ff017eafd48fc3d1ee41d22e886d26e34a280edefd779d45c8a13c7319558","entity_key":"u_courses_learning_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26f6e1f976efb410d778e16ca416cb11ceb70581d051b4713dbe74fb191485ff","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4a7ff017eafd48fc3d1ee41d22e886d26e34a280edefd779d45c8a13c7319558.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_courses_learning_01_listen -> audio/generated/de-DE/utterances/4a7ff017eafd48fc3d1ee41d22e886d26e34a280edefd779d45c8a13c7319558.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6d06a9f7-b1f2-528b-b96e-83d9c0a6faee', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_courses_learning_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db1cd79813cad0d5c9ef25eb4c94e93f97f3fd06ddc020923288d00449d20169'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('772e5c5f-eeba-55bc-85db-0a2aa60f68ce', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6d06a9f7-b1f2-528b-b96e-83d9c0a6faee', 1), 'db1cd79813cad0d5c9ef25eb4c94e93f97f3fd06ddc020923288d00449d20169',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4a7ff017eafd48fc3d1ee41d22e886d26e34a280edefd779d45c8a13c7319558.mp3', 3996, '2026-09-13 06:18:00.180382', '26f6e1f976efb410d778e16ca416cb11ceb70581d051b4713dbe74fb191485ff', 'validated', '{"audio_key":"4a7ff017eafd48fc3d1ee41d22e886d26e34a280edefd779d45c8a13c7319558","entity_key":"ex_courses_learning_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26f6e1f976efb410d778e16ca416cb11ceb70581d051b4713dbe74fb191485ff","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4a7ff017eafd48fc3d1ee41d22e886d26e34a280edefd779d45c8a13c7319558.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_decisions_consequences_02 -> audio/generated/de-DE/utterances/4ac1a72aabaa49a59611b36dcd72ff7828b4e467f4f444270d15a98b4390229c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a29ea430-68c1-5b55-9a07-efb88d9fadae', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_decisions_consequences_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf8c337f23fae0b3b9cf81ad36ffcf97de93075e574918cce8a224afa926e8e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36fdad8f-70b1-5bde-ad6f-41e5c260b938', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a29ea430-68c1-5b55-9a07-efb88d9fadae', 1), 'bf8c337f23fae0b3b9cf81ad36ffcf97de93075e574918cce8a224afa926e8e6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/4ac1a72aabaa49a59611b36dcd72ff7828b4e467f4f444270d15a98b4390229c.mp3', 3474, '2026-09-13 06:18:00.427190', '484dc42d96ad04e960fcf556cdf4e77c5f6403a0f32ec6a379918e9e0140af2f', 'validated', '{"audio_key":"4ac1a72aabaa49a59611b36dcd72ff7828b4e467f4f444270d15a98b4390229c","entity_key":"u_decisions_consequences_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"484dc42d96ad04e960fcf556cdf4e77c5f6403a0f32ec6a379918e9e0140af2f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/4ac1a72aabaa49a59611b36dcd72ff7828b4e467f4f444270d15a98b4390229c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_relationships_conflict_04 -> audio/generated/de-DE/utterances/53ef2653596cfdf319cde80abfb3c35d75089d86d25f721798c0c735a5a5a6ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('06f40118-72ed-5432-8cd0-237c5e2ee5a2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_relationships_conflict_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '31b571c1899a670438d2264aae1ab63e9e3c32f4346161297e8030e15df8abda'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f95e41f5-96ee-566c-a8bf-4225265a236b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('06f40118-72ed-5432-8cd0-237c5e2ee5a2', 1), '31b571c1899a670438d2264aae1ab63e9e3c32f4346161297e8030e15df8abda',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/53ef2653596cfdf319cde80abfb3c35d75089d86d25f721798c0c735a5a5a6ee.mp3', 3474, '2026-09-13 06:18:01.399185', 'd43d6bdd49d60cb0f033aa89e0ad6c782e2af9a7fca3e26de3a7a10bc33459ed', 'validated', '{"audio_key":"53ef2653596cfdf319cde80abfb3c35d75089d86d25f721798c0c735a5a5a6ee","entity_key":"u_relationships_conflict_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d43d6bdd49d60cb0f033aa89e0ad6c782e2af9a7fca3e26de3a7a10bc33459ed","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/53ef2653596cfdf319cde80abfb3c35d75089d86d25f721798c0c735a5a5a6ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_relationships_conflict_03 -> audio/generated/de-DE/utterances/5591c203aa4d270bc4f19a03755af3c49df9e5548ce5d45711042ebc474c17ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f8734d1f-7a8a-5ef1-bf71-34550b1f5acb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_relationships_conflict_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4722bebc129517f85863a4fc52beeeebc0fca410746ff0107895f50556f7014d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20ce6b1f-64ed-5129-adf5-97b385c93e3d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f8734d1f-7a8a-5ef1-bf71-34550b1f5acb', 1), '4722bebc129517f85863a4fc52beeeebc0fca410746ff0107895f50556f7014d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5591c203aa4d270bc4f19a03755af3c49df9e5548ce5d45711042ebc474c17ba.mp3', 5250, '2026-09-13 06:18:01.817830', '60ad4f5eea1ea4bad422163480fe366df34fab7138723aa6c8621cd92def3d2f', 'validated', '{"audio_key":"5591c203aa4d270bc4f19a03755af3c49df9e5548ce5d45711042ebc474c17ba","entity_key":"u_relationships_conflict_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"60ad4f5eea1ea4bad422163480fe366df34fab7138723aa6c8621cd92def3d2f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5591c203aa4d270bc4f19a03755af3c49df9e5548ce5d45711042ebc474c17ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_relationships_conflict_02_listen -> audio/generated/de-DE/utterances/5591c203aa4d270bc4f19a03755af3c49df9e5548ce5d45711042ebc474c17ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3e934aea-564f-56d5-a5e1-6e6e87211ff8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_relationships_conflict_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4722bebc129517f85863a4fc52beeeebc0fca410746ff0107895f50556f7014d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7373ab25-effe-5b1c-ad70-6a99eee917e0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3e934aea-564f-56d5-a5e1-6e6e87211ff8', 1), '4722bebc129517f85863a4fc52beeeebc0fca410746ff0107895f50556f7014d',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5591c203aa4d270bc4f19a03755af3c49df9e5548ce5d45711042ebc474c17ba.mp3', 5250, '2026-09-13 06:18:01.817830', '60ad4f5eea1ea4bad422163480fe366df34fab7138723aa6c8621cd92def3d2f', 'validated', '{"audio_key":"5591c203aa4d270bc4f19a03755af3c49df9e5548ce5d45711042ebc474c17ba","entity_key":"ex_relationships_conflict_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"60ad4f5eea1ea4bad422163480fe366df34fab7138723aa6c8621cd92def3d2f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5591c203aa4d270bc4f19a03755af3c49df9e5548ce5d45711042ebc474c17ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_complaints_returns_06 -> audio/generated/de-DE/utterances/5e652d96cdc7e79053f258ab9c29908df6b4256c5f91cd2ff33cdf3eadc79bc9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1129aca3-62f9-5af4-9610-e50f4f45f65f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_complaints_returns_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5df87fbbda92bbacdee5889743f28f9943c7948defdbe941715dab77fe1f4fe3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('efff0180-7e86-5f88-9e02-74f0742e1344', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1129aca3-62f9-5af4-9610-e50f4f45f65f', 1), '5df87fbbda92bbacdee5889743f28f9943c7948defdbe941715dab77fe1f4fe3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/5e652d96cdc7e79053f258ab9c29908df6b4256c5f91cd2ff33cdf3eadc79bc9.mp3', 3186, '2026-09-13 06:18:02.549262', 'd681a604c7b5ec6f98d4488be7543ff33beab97810d951cbf3fb36ba8fc7be9d', 'validated', '{"audio_key":"5e652d96cdc7e79053f258ab9c29908df6b4256c5f91cd2ff33cdf3eadc79bc9","entity_key":"u_complaints_returns_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d681a604c7b5ec6f98d4488be7543ff33beab97810d951cbf3fb36ba8fc7be9d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/5e652d96cdc7e79053f258ab9c29908df6b4256c5f91cd2ff33cdf3eadc79bc9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_environment_recycling_02 -> audio/generated/de-DE/utterances/6515b75d584c280e629f4856d2680cb554c89eb3d7fb05fc517d17bc4d0cb2cd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3bbce152-1bdf-57ea-a2f2-fb9bea831e2e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_environment_recycling_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '030098ddd5fe1e5c74e618bb7a4b0630ddcc3ac154cc3d36a1aca296ed1cf3dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e0b0444-48ed-50f8-877e-df692ad61f11', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3bbce152-1bdf-57ea-a2f2-fb9bea831e2e', 1), '030098ddd5fe1e5c74e618bb7a4b0630ddcc3ac154cc3d36a1aca296ed1cf3dc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/6515b75d584c280e629f4856d2680cb554c89eb3d7fb05fc517d17bc4d0cb2cd.mp3', 3578, '2026-09-13 06:18:03.027121', '927043706e8c01251bf1feb589196a72876c2bb471dfe32878e6bd8dc53fedba', 'validated', '{"audio_key":"6515b75d584c280e629f4856d2680cb554c89eb3d7fb05fc517d17bc4d0cb2cd","entity_key":"u_environment_recycling_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"927043706e8c01251bf1feb589196a72876c2bb471dfe32878e6bd8dc53fedba","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/6515b75d584c280e629f4856d2680cb554c89eb3d7fb05fc517d17bc4d0cb2cd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_job_applications_05 -> audio/generated/de-DE/utterances/692354814db93590a9fcb3f20e4384c8f26a441ae44ad987f876c89ae986d04b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0d2e003f-df55-508a-9a8d-93c92fb7f248', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_job_applications_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb14719345c5e742fd1b519d74d58edb1883471fe0b8896d1c01a3c4d207a239'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5274591-381f-5e45-aa88-1a1f007a9ba5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0d2e003f-df55-508a-9a8d-93c92fb7f248', 1), 'cb14719345c5e742fd1b519d74d58edb1883471fe0b8896d1c01a3c4d207a239',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/692354814db93590a9fcb3f20e4384c8f26a441ae44ad987f876c89ae986d04b.mp3', 4310, '2026-09-13 06:18:03.823949', 'a0041b2c5325126db6ff0df70e3680bf217f3aec4be91baaa968941e0f67495c', 'validated', '{"audio_key":"692354814db93590a9fcb3f20e4384c8f26a441ae44ad987f876c89ae986d04b","entity_key":"u_job_applications_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a0041b2c5325126db6ff0df70e3680bf217f3aec4be91baaa968941e0f67495c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/692354814db93590a9fcb3f20e4384c8f26a441ae44ad987f876c89ae986d04b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_job_applications_03_listen -> audio/generated/de-DE/utterances/692354814db93590a9fcb3f20e4384c8f26a441ae44ad987f876c89ae986d04b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('36e34486-8095-5466-ae54-e3119cd0cd6a', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_job_applications_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb14719345c5e742fd1b519d74d58edb1883471fe0b8896d1c01a3c4d207a239'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d1d823aa-2cf3-5e26-99ab-6d19837aca30', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('36e34486-8095-5466-ae54-e3119cd0cd6a', 1), 'cb14719345c5e742fd1b519d74d58edb1883471fe0b8896d1c01a3c4d207a239',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/692354814db93590a9fcb3f20e4384c8f26a441ae44ad987f876c89ae986d04b.mp3', 4310, '2026-09-13 06:18:03.823949', 'a0041b2c5325126db6ff0df70e3680bf217f3aec4be91baaa968941e0f67495c', 'validated', '{"audio_key":"692354814db93590a9fcb3f20e4384c8f26a441ae44ad987f876c89ae986d04b","entity_key":"ex_job_applications_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a0041b2c5325126db6ff0df70e3680bf217f3aec4be91baaa968941e0f67495c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/692354814db93590a9fcb3f20e4384c8f26a441ae44ad987f876c89ae986d04b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_courses_learning_06 -> audio/generated/de-DE/utterances/73022e1a6e164ddcef4483fae50040b6adbad5c68561b7286963e29ae72807b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8a4dc742-f7d1-5884-87d5-dbe804fe5118', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_courses_learning_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '438606a7593078725d01aac6a4a2dd1f4404396aba1869f0211385f5863f5eeb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22953b54-4f9f-5dfc-a288-26cb40d363a2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8a4dc742-f7d1-5884-87d5-dbe804fe5118', 1), '438606a7593078725d01aac6a4a2dd1f4404396aba1869f0211385f5863f5eeb',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/73022e1a6e164ddcef4483fae50040b6adbad5c68561b7286963e29ae72807b5.mp3', 3160, '2026-09-13 06:18:04.161662', '2663e171779b9925a6345750dfb05a19af08847e98007868ed63085e41cfd752', 'validated', '{"audio_key":"73022e1a6e164ddcef4483fae50040b6adbad5c68561b7286963e29ae72807b5","entity_key":"u_courses_learning_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2663e171779b9925a6345750dfb05a19af08847e98007868ed63085e41cfd752","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/73022e1a6e164ddcef4483fae50040b6adbad5c68561b7286963e29ae72807b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_culture_events_01 -> audio/generated/de-DE/utterances/75e535c52079e002822de80be7eb01ca7a69833d12463634d6da02ccc8c5a4db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b480066a-9f0b-5c49-9b33-b66cc12905d0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_culture_events_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ccb312e88e3458dbc74db2e22c780e32eaca799623ba6b069459c38402c473b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('03128a34-cc13-5b69-acd9-d2c1a5ed7463', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b480066a-9f0b-5c49-9b33-b66cc12905d0', 1), 'ccb312e88e3458dbc74db2e22c780e32eaca799623ba6b069459c38402c473b9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/75e535c52079e002822de80be7eb01ca7a69833d12463634d6da02ccc8c5a4db.mp3', 4493, '2026-09-13 06:18:05.161896', '1098024eb937416b6e6cd1bae23d28a0710024df8b56100a92e669ba5e4c294d', 'validated', '{"audio_key":"75e535c52079e002822de80be7eb01ca7a69833d12463634d6da02ccc8c5a4db","entity_key":"u_culture_events_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1098024eb937416b6e6cd1bae23d28a0710024df8b56100a92e669ba5e4c294d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/75e535c52079e002822de80be7eb01ca7a69833d12463634d6da02ccc8c5a4db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_culture_events_01_listen -> audio/generated/de-DE/utterances/75e535c52079e002822de80be7eb01ca7a69833d12463634d6da02ccc8c5a4db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c6969a73-ddd9-5c9d-8874-cd7c49c251bc', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_culture_events_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ccb312e88e3458dbc74db2e22c780e32eaca799623ba6b069459c38402c473b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d4750d7b-597c-58de-b9f7-c2fcb4308269', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c6969a73-ddd9-5c9d-8874-cd7c49c251bc', 1), 'ccb312e88e3458dbc74db2e22c780e32eaca799623ba6b069459c38402c473b9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/75e535c52079e002822de80be7eb01ca7a69833d12463634d6da02ccc8c5a4db.mp3', 4493, '2026-09-13 06:18:05.161896', '1098024eb937416b6e6cd1bae23d28a0710024df8b56100a92e669ba5e4c294d', 'validated', '{"audio_key":"75e535c52079e002822de80be7eb01ca7a69833d12463634d6da02ccc8c5a4db","entity_key":"ex_culture_events_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1098024eb937416b6e6cd1bae23d28a0710024df8b56100a92e669ba5e4c294d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/75e535c52079e002822de80be7eb01ca7a69833d12463634d6da02ccc8c5a4db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_money_budget_02 -> audio/generated/de-DE/utterances/84d44f3f4fa7438efcb1c45b0bf371175d120c91ab55bcd3229eba094ac120da.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('eacf26af-1845-5306-8ae8-51b439dbedc8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_money_budget_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe2af708e9f5409e612c6db12e9740a7fac14cd9c5ee1158362913eb73f63ffc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd01602c-57b1-5d2d-8c9d-bbad4ab0b96f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('eacf26af-1845-5306-8ae8-51b439dbedc8', 1), 'fe2af708e9f5409e612c6db12e9740a7fac14cd9c5ee1158362913eb73f63ffc',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/84d44f3f4fa7438efcb1c45b0bf371175d120c91ab55bcd3229eba094ac120da.mp3', 4963, '2026-09-13 06:18:05.549253', '6870b1c39b29d967b4292ee4f7f4342b6344dbf68c473f20c1fc92faabd69f08', 'validated', '{"audio_key":"84d44f3f4fa7438efcb1c45b0bf371175d120c91ab55bcd3229eba094ac120da","entity_key":"u_money_budget_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6870b1c39b29d967b4292ee4f7f4342b6344dbf68c473f20c1fc92faabd69f08","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/84d44f3f4fa7438efcb1c45b0bf371175d120c91ab55bcd3229eba094ac120da.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_courses_learning_02 -> audio/generated/de-DE/utterances/85256ad2248d7c0579826a876e736dcdba3864bd2614aac1aeab624888dec147.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ca19e7f5-cc4a-53ae-9eb8-3e8c76b0a356', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_courses_learning_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '86319942b3b374ba8391fd18cce496eb6880f6add46785e5b2e014a918efb2cf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2c5511f-1291-5483-8ec9-ef9da0e96846', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ca19e7f5-cc4a-53ae-9eb8-3e8c76b0a356', 1), '86319942b3b374ba8391fd18cce496eb6880f6add46785e5b2e014a918efb2cf',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/85256ad2248d7c0579826a876e736dcdba3864bd2614aac1aeab624888dec147.mp3', 4257, '2026-09-13 06:18:06.481451', '2d517b422aa8188374787e7345136bca43cca9bd0e8902bdf7af4770c74dacd5', 'validated', '{"audio_key":"85256ad2248d7c0579826a876e736dcdba3864bd2614aac1aeab624888dec147","entity_key":"u_courses_learning_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2d517b422aa8188374787e7345136bca43cca9bd0e8902bdf7af4770c74dacd5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/85256ad2248d7c0579826a876e736dcdba3864bd2614aac1aeab624888dec147.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_housing_renting_05 -> audio/generated/de-DE/utterances/86376dedc41a3a3b87de663efc864c33702fa0a3ec86945011127f0bec7e0ee5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('571cae0b-1c32-5616-a6dc-5f0cbc9e2973', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_housing_renting_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57ab11de12b2be4a8d068ac3ae042ce06afe91c678217f293bb6825f2bf6a13c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7bfd1717-3f39-5879-a58f-b487e2f79f47', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('571cae0b-1c32-5616-a6dc-5f0cbc9e2973', 1), '57ab11de12b2be4a8d068ac3ae042ce06afe91c678217f293bb6825f2bf6a13c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/86376dedc41a3a3b87de663efc864c33702fa0a3ec86945011127f0bec7e0ee5.mp3', 3291, '2026-09-13 06:18:06.734360', '7a88ec6fc96b24ea24979295f5065ff011372ff46ec9cefafddd4f93fd15ee1a', 'validated', '{"audio_key":"86376dedc41a3a3b87de663efc864c33702fa0a3ec86945011127f0bec7e0ee5","entity_key":"u_housing_renting_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7a88ec6fc96b24ea24979295f5065ff011372ff46ec9cefafddd4f93fd15ee1a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/86376dedc41a3a3b87de663efc864c33702fa0a3ec86945011127f0bec7e0ee5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_housing_renting_03_listen -> audio/generated/de-DE/utterances/86376dedc41a3a3b87de663efc864c33702fa0a3ec86945011127f0bec7e0ee5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e339c99b-c876-54ce-818a-e2a4e1359100', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_housing_renting_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '57ab11de12b2be4a8d068ac3ae042ce06afe91c678217f293bb6825f2bf6a13c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c5fc49d-439a-50b4-93e6-8954960189c8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e339c99b-c876-54ce-818a-e2a4e1359100', 1), '57ab11de12b2be4a8d068ac3ae042ce06afe91c678217f293bb6825f2bf6a13c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/86376dedc41a3a3b87de663efc864c33702fa0a3ec86945011127f0bec7e0ee5.mp3', 3291, '2026-09-13 06:18:06.734360', '7a88ec6fc96b24ea24979295f5065ff011372ff46ec9cefafddd4f93fd15ee1a', 'validated', '{"audio_key":"86376dedc41a3a3b87de663efc864c33702fa0a3ec86945011127f0bec7e0ee5","entity_key":"ex_housing_renting_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7a88ec6fc96b24ea24979295f5065ff011372ff46ec9cefafddd4f93fd15ee1a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/86376dedc41a3a3b87de663efc864c33702fa0a3ec86945011127f0bec7e0ee5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_decisions_consequences_03 -> audio/generated/de-DE/utterances/8708823e77423fcf4959eed1e9362bad06681983c2d8ab5a142a13902940ec5c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bdf24110-5e13-5a47-80a9-d0f7dc3f958e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_decisions_consequences_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dfc4c66f08638651a14c906367b1fda9f7aa1964a50adac7809781e2c4bcf1f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8615c501-e814-53e5-aad7-05c7c1c5b4c7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bdf24110-5e13-5a47-80a9-d0f7dc3f958e', 1), 'dfc4c66f08638651a14c906367b1fda9f7aa1964a50adac7809781e2c4bcf1f7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8708823e77423fcf4959eed1e9362bad06681983c2d8ab5a142a13902940ec5c.mp3', 3056, '2026-09-13 06:18:07.761683', '60e6bf4ab536d17afd1ac588a0e8ae0de95ccf444a8475cd121670ff21a012a8', 'validated', '{"audio_key":"8708823e77423fcf4959eed1e9362bad06681983c2d8ab5a142a13902940ec5c","entity_key":"u_decisions_consequences_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"60e6bf4ab536d17afd1ac588a0e8ae0de95ccf444a8475cd121670ff21a012a8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8708823e77423fcf4959eed1e9362bad06681983c2d8ab5a142a13902940ec5c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_decisions_consequences_02_listen -> audio/generated/de-DE/utterances/8708823e77423fcf4959eed1e9362bad06681983c2d8ab5a142a13902940ec5c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2b034315-e240-582a-9540-23ba6b5e5669', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_decisions_consequences_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dfc4c66f08638651a14c906367b1fda9f7aa1964a50adac7809781e2c4bcf1f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83ccae58-82cc-50ea-aad3-7301c159144b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2b034315-e240-582a-9540-23ba6b5e5669', 1), 'dfc4c66f08638651a14c906367b1fda9f7aa1964a50adac7809781e2c4bcf1f7',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8708823e77423fcf4959eed1e9362bad06681983c2d8ab5a142a13902940ec5c.mp3', 3056, '2026-09-13 06:18:07.761683', '60e6bf4ab536d17afd1ac588a0e8ae0de95ccf444a8475cd121670ff21a012a8', 'validated', '{"audio_key":"8708823e77423fcf4959eed1e9362bad06681983c2d8ab5a142a13902940ec5c","entity_key":"ex_decisions_consequences_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"60e6bf4ab536d17afd1ac588a0e8ae0de95ccf444a8475cd121670ff21a012a8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8708823e77423fcf4959eed1e9362bad06681983c2d8ab5a142a13902940ec5c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_complaints_returns_01 -> audio/generated/de-DE/utterances/8ae54d63aa192050efc123f4f8dfcbbf89769047d58688e520cb7253c89c72e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a726c371-9c83-5663-8eaa-67a340c4d6e6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_complaints_returns_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a230c3e5ec9afdcc12f2326b31bf16faea863c1e0491ef0903d805585a0efbfd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d78ead20-cef7-5e45-8e2e-3d546d0aa6cd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a726c371-9c83-5663-8eaa-67a340c4d6e6', 1), 'a230c3e5ec9afdcc12f2326b31bf16faea863c1e0491ef0903d805585a0efbfd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8ae54d63aa192050efc123f4f8dfcbbf89769047d58688e520cb7253c89c72e5.mp3', 4832, '2026-09-13 06:18:08.160438', '328841cd0e26901039dc799e39c25db0efb9a094750b29a4584633733ffddc67', 'validated', '{"audio_key":"8ae54d63aa192050efc123f4f8dfcbbf89769047d58688e520cb7253c89c72e5","entity_key":"u_complaints_returns_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"328841cd0e26901039dc799e39c25db0efb9a094750b29a4584633733ffddc67","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8ae54d63aa192050efc123f4f8dfcbbf89769047d58688e520cb7253c89c72e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_complaints_returns_01_listen -> audio/generated/de-DE/utterances/8ae54d63aa192050efc123f4f8dfcbbf89769047d58688e520cb7253c89c72e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9091ec8b-2b33-5014-a334-9674a58bd5c9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_complaints_returns_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a230c3e5ec9afdcc12f2326b31bf16faea863c1e0491ef0903d805585a0efbfd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46935ebc-7a47-53d4-bb47-72b7f41b9a7b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9091ec8b-2b33-5014-a334-9674a58bd5c9', 1), 'a230c3e5ec9afdcc12f2326b31bf16faea863c1e0491ef0903d805585a0efbfd',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8ae54d63aa192050efc123f4f8dfcbbf89769047d58688e520cb7253c89c72e5.mp3', 4832, '2026-09-13 06:18:08.160438', '328841cd0e26901039dc799e39c25db0efb9a094750b29a4584633733ffddc67', 'validated', '{"audio_key":"8ae54d63aa192050efc123f4f8dfcbbf89769047d58688e520cb7253c89c72e5","entity_key":"ex_complaints_returns_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"328841cd0e26901039dc799e39c25db0efb9a094750b29a4584633733ffddc67","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8ae54d63aa192050efc123f4f8dfcbbf89769047d58688e520cb7253c89c72e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_job_applications_06 -> audio/generated/de-DE/utterances/8bab7b9e027f91249da6b5a6ec83fa9b1aecf13c1ae953cbb9e4131799127295.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ee04ccb9-ac4a-5e9e-bd6e-3a1bc90d656f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_job_applications_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd5af087bdae147cebaa8b2a14e03caf9a5644f31af7946739e0a0567bdf21f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29fdcf21-3837-5178-8e29-cf1c3980c8d6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ee04ccb9-ac4a-5e9e-bd6e-3a1bc90d656f', 1), 'cd5af087bdae147cebaa8b2a14e03caf9a5644f31af7946739e0a0567bdf21f6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8bab7b9e027f91249da6b5a6ec83fa9b1aecf13c1ae953cbb9e4131799127295.mp3', 3239, '2026-09-13 06:18:08.942151', 'da4b2cd128195ca4876a7086548051a9b0592d39dfb8a1adfb2595b78664758a', 'validated', '{"audio_key":"8bab7b9e027f91249da6b5a6ec83fa9b1aecf13c1ae953cbb9e4131799127295","entity_key":"u_job_applications_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"da4b2cd128195ca4876a7086548051a9b0592d39dfb8a1adfb2595b78664758a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8bab7b9e027f91249da6b5a6ec83fa9b1aecf13c1ae953cbb9e4131799127295.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_courses_learning_05 -> audio/generated/de-DE/utterances/8c65ea9112c3dacd3ce151b7b46160e7deef15e5e0ef414b32c01b6dd16a3044.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('065ad057-50c4-5492-a9f6-559be0ce2ff2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_courses_learning_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a5f9dc0a4635c746b23bd4b8fc802f710f181c1d05c12f9970f40873e06179f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07471915-9666-554a-a11e-73721ed9bf51', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('065ad057-50c4-5492-a9f6-559be0ce2ff2', 1), '9a5f9dc0a4635c746b23bd4b8fc802f710f181c1d05c12f9970f40873e06179f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8c65ea9112c3dacd3ce151b7b46160e7deef15e5e0ef414b32c01b6dd16a3044.mp3', 4832, '2026-09-13 06:18:09.540514', 'da99f7a17364cbacd769f343ea3f1f48f6774258a54007d6574657014975c1ce', 'validated', '{"audio_key":"8c65ea9112c3dacd3ce151b7b46160e7deef15e5e0ef414b32c01b6dd16a3044","entity_key":"u_courses_learning_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"da99f7a17364cbacd769f343ea3f1f48f6774258a54007d6574657014975c1ce","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8c65ea9112c3dacd3ce151b7b46160e7deef15e5e0ef414b32c01b6dd16a3044.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_courses_learning_03_listen -> audio/generated/de-DE/utterances/8c65ea9112c3dacd3ce151b7b46160e7deef15e5e0ef414b32c01b6dd16a3044.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c7260c32-c93d-5ee0-86ee-18ec4843d62e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_courses_learning_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a5f9dc0a4635c746b23bd4b8fc802f710f181c1d05c12f9970f40873e06179f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09563198-a668-5ef6-bd66-db558c23de80', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c7260c32-c93d-5ee0-86ee-18ec4843d62e', 1), '9a5f9dc0a4635c746b23bd4b8fc802f710f181c1d05c12f9970f40873e06179f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8c65ea9112c3dacd3ce151b7b46160e7deef15e5e0ef414b32c01b6dd16a3044.mp3', 4832, '2026-09-13 06:18:09.540514', 'da99f7a17364cbacd769f343ea3f1f48f6774258a54007d6574657014975c1ce', 'validated', '{"audio_key":"8c65ea9112c3dacd3ce151b7b46160e7deef15e5e0ef414b32c01b6dd16a3044","entity_key":"ex_courses_learning_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"da99f7a17364cbacd769f343ea3f1f48f6774258a54007d6574657014975c1ce","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8c65ea9112c3dacd3ce151b7b46160e7deef15e5e0ef414b32c01b6dd16a3044.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_workplace_communication_06 -> audio/generated/de-DE/utterances/8f3f72e190cbb1f5902a912e156087e4b7df26774edee8c96b4cc84db5a25093.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('17b5ad29-2bb3-54e8-ae53-f3fb6f285647', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_workplace_communication_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd3f5e10b90a495a23100522e67c16c50e52d36f8b9560fa30a18e8c6bc65c7ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6777637d-4ced-57ee-be89-740db534d097', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('17b5ad29-2bb3-54e8-ae53-f3fb6f285647', 1), 'd3f5e10b90a495a23100522e67c16c50e52d36f8b9560fa30a18e8c6bc65c7ef',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/8f3f72e190cbb1f5902a912e156087e4b7df26774edee8c96b4cc84db5a25093.mp3', 3761, '2026-09-13 06:18:10.252798', '92a9b4449b0523f5efc5b6bd9fd8fd2c137dbf8a902c21acf95e4daa8e4579db', 'validated', '{"audio_key":"8f3f72e190cbb1f5902a912e156087e4b7df26774edee8c96b4cc84db5a25093","entity_key":"u_workplace_communication_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"92a9b4449b0523f5efc5b6bd9fd8fd2c137dbf8a902c21acf95e4daa8e4579db","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/8f3f72e190cbb1f5902a912e156087e4b7df26774edee8c96b4cc84db5a25093.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_housing_renting_04 -> audio/generated/de-DE/utterances/9074f28fd30fff9311d81d8f601c0ad60acd2d9ad4b2c50d751a11db391aef83.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1d7d898a-a81c-574d-9e48-55b0c330170c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_housing_renting_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '98e0453281e602027b1cc2c5c31d2d0bb0bde41c50f3d980d19839e4efbffe7c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7fd8fd1e-2ac9-549e-9edc-9b95c2a63ba6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1d7d898a-a81c-574d-9e48-55b0c330170c', 1), '98e0453281e602027b1cc2c5c31d2d0bb0bde41c50f3d980d19839e4efbffe7c',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9074f28fd30fff9311d81d8f601c0ad60acd2d9ad4b2c50d751a11db391aef83.mp3', 3657, '2026-09-13 06:18:10.764447', '96839c2b608201e4d78f5116d3b6afce08fe7e86f6495d97e196225facf87eaa', 'validated', '{"audio_key":"9074f28fd30fff9311d81d8f601c0ad60acd2d9ad4b2c50d751a11db391aef83","entity_key":"u_housing_renting_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"96839c2b608201e4d78f5116d3b6afce08fe7e86f6495d97e196225facf87eaa","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9074f28fd30fff9311d81d8f601c0ad60acd2d9ad4b2c50d751a11db391aef83.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_decisions_consequences_04 -> audio/generated/de-DE/utterances/9136582a0a9b39de451855148ec16aed5fc72475f47013765a2912089fd1fc8f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0f743ead-103e-5f60-8446-f143e5867780', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_decisions_consequences_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '625e2cd73d5a0fad2900fcabae83cf1e9055201382c63f066dc2d86ff1738e48'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d51f7ec6-3c2f-580c-a47d-416434a3d5fa', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0f743ead-103e-5f60-8446-f143e5867780', 1), '625e2cd73d5a0fad2900fcabae83cf1e9055201382c63f066dc2d86ff1738e48',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9136582a0a9b39de451855148ec16aed5fc72475f47013765a2912089fd1fc8f.mp3', 4911, '2026-09-13 06:18:11.683750', '283264498e999141dca62bf9338415ba81686720583433fc98132da9c5c6f7b2', 'validated', '{"audio_key":"9136582a0a9b39de451855148ec16aed5fc72475f47013765a2912089fd1fc8f","entity_key":"u_decisions_consequences_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"283264498e999141dca62bf9338415ba81686720583433fc98132da9c5c6f7b2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9136582a0a9b39de451855148ec16aed5fc72475f47013765a2912089fd1fc8f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_workplace_communication_04 -> audio/generated/de-DE/utterances/940fec2e09f5c875447b28c91ac360b65870470b36bae34c4d988823faf99d2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4c047afe-f84b-5205-a1d0-19f79b0d30ba', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_workplace_communication_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c06aaf09f175713d145557f964c41fd27c0614b20795d396439af71e0637208'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8fcd8cb-41df-5bf0-a859-a6c8f3c2943b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4c047afe-f84b-5205-a1d0-19f79b0d30ba', 1), '7c06aaf09f175713d145557f964c41fd27c0614b20795d396439af71e0637208',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/940fec2e09f5c875447b28c91ac360b65870470b36bae34c4d988823faf99d2e.mp3', 3369, '2026-09-13 06:18:12.021721', '8091e96da0c47810fb4dedc5bdde6d7d79a7f3d523e819f10689b413817b4e79', 'validated', '{"audio_key":"940fec2e09f5c875447b28c91ac360b65870470b36bae34c4d988823faf99d2e","entity_key":"u_workplace_communication_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8091e96da0c47810fb4dedc5bdde6d7d79a7f3d523e819f10689b413817b4e79","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/940fec2e09f5c875447b28c91ac360b65870470b36bae34c4d988823faf99d2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_complaints_returns_05 -> audio/generated/de-DE/utterances/99edfef29914e15c490363e0269f6ca9fa25c60ffd71261a9b43d336ae09b59c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7522915e-347e-5436-9f45-9c9674415b9c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_complaints_returns_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f2823fbe2767dc69194130a70fc92139e5555510c14c17b1258f52f365d9968'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c4d7428-d3f4-5d71-9d87-e1f93e95fa89', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7522915e-347e-5436-9f45-9c9674415b9c', 1), '5f2823fbe2767dc69194130a70fc92139e5555510c14c17b1258f52f365d9968',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/99edfef29914e15c490363e0269f6ca9fa25c60ffd71261a9b43d336ae09b59c.mp3', 4205, '2026-09-13 06:18:12.981668', '1c95ba5a6890ef91c296de80ea6ebb458e4991d1a15d3af08c087c073125b4c3', 'validated', '{"audio_key":"99edfef29914e15c490363e0269f6ca9fa25c60ffd71261a9b43d336ae09b59c","entity_key":"u_complaints_returns_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1c95ba5a6890ef91c296de80ea6ebb458e4991d1a15d3af08c087c073125b4c3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/99edfef29914e15c490363e0269f6ca9fa25c60ffd71261a9b43d336ae09b59c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_complaints_returns_03_listen -> audio/generated/de-DE/utterances/99edfef29914e15c490363e0269f6ca9fa25c60ffd71261a9b43d336ae09b59c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('badc52f5-3de0-5e7f-98c5-25af49d7dc5c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_complaints_returns_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5f2823fbe2767dc69194130a70fc92139e5555510c14c17b1258f52f365d9968'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb73594d-9d47-5046-ba5f-210417e1b73c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('badc52f5-3de0-5e7f-98c5-25af49d7dc5c', 1), '5f2823fbe2767dc69194130a70fc92139e5555510c14c17b1258f52f365d9968',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/99edfef29914e15c490363e0269f6ca9fa25c60ffd71261a9b43d336ae09b59c.mp3', 4205, '2026-09-13 06:18:12.981668', '1c95ba5a6890ef91c296de80ea6ebb458e4991d1a15d3af08c087c073125b4c3', 'validated', '{"audio_key":"99edfef29914e15c490363e0269f6ca9fa25c60ffd71261a9b43d336ae09b59c","entity_key":"ex_complaints_returns_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1c95ba5a6890ef91c296de80ea6ebb458e4991d1a15d3af08c087c073125b4c3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/99edfef29914e15c490363e0269f6ca9fa25c60ffd71261a9b43d336ae09b59c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_courses_learning_03 -> audio/generated/de-DE/utterances/9ab1a8fffe391b78e634cd5d8b81e703ac1aa15e486a3199f917e855a42882c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('64395e59-fc1b-5954-8515-4b97fad61a72', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_courses_learning_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df1785703f9b084936c453c0d15451bc8c7e53c20c983d527d8737ccfcfdb0d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bec774b5-0ace-5bdf-9542-9efc8d5338bb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('64395e59-fc1b-5954-8515-4b97fad61a72', 1), 'df1785703f9b084936c453c0d15451bc8c7e53c20c983d527d8737ccfcfdb0d9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9ab1a8fffe391b78e634cd5d8b81e703ac1aa15e486a3199f917e855a42882c8.mp3', 4127, '2026-09-13 06:18:13.287547', '4909d03087046c501be0abc205f76e23194ea99fda795daa4b96ccc501d928cd', 'validated', '{"audio_key":"9ab1a8fffe391b78e634cd5d8b81e703ac1aa15e486a3199f917e855a42882c8","entity_key":"u_courses_learning_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4909d03087046c501be0abc205f76e23194ea99fda795daa4b96ccc501d928cd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9ab1a8fffe391b78e634cd5d8b81e703ac1aa15e486a3199f917e855a42882c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_courses_learning_02_listen -> audio/generated/de-DE/utterances/9ab1a8fffe391b78e634cd5d8b81e703ac1aa15e486a3199f917e855a42882c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b7506e68-1473-5f9d-8eaa-d5420c8dca64', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_courses_learning_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df1785703f9b084936c453c0d15451bc8c7e53c20c983d527d8737ccfcfdb0d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c68b53e2-6819-5917-9512-165de5b33c44', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b7506e68-1473-5f9d-8eaa-d5420c8dca64', 1), 'df1785703f9b084936c453c0d15451bc8c7e53c20c983d527d8737ccfcfdb0d9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9ab1a8fffe391b78e634cd5d8b81e703ac1aa15e486a3199f917e855a42882c8.mp3', 4127, '2026-09-13 06:18:13.287547', '4909d03087046c501be0abc205f76e23194ea99fda795daa4b96ccc501d928cd', 'validated', '{"audio_key":"9ab1a8fffe391b78e634cd5d8b81e703ac1aa15e486a3199f917e855a42882c8","entity_key":"ex_courses_learning_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4909d03087046c501be0abc205f76e23194ea99fda795daa4b96ccc501d928cd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9ab1a8fffe391b78e634cd5d8b81e703ac1aa15e486a3199f917e855a42882c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_complaints_returns_03 -> audio/generated/de-DE/utterances/9e5412f687b86b0b39b8e6528b4eb8d194e8ba5d77bec359621263edcea6027b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('37090cd3-ca88-529a-ab83-df1872f3f5bd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_complaints_returns_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '27403afd1ca2969e9533f91e79e48a5d39c2aa41cadfe2158ab34e5f1cb5f7c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e0d19d7f-2db7-5bf4-9986-bc14eafb079e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('37090cd3-ca88-529a-ab83-df1872f3f5bd', 1), '27403afd1ca2969e9533f91e79e48a5d39c2aa41cadfe2158ab34e5f1cb5f7c3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9e5412f687b86b0b39b8e6528b4eb8d194e8ba5d77bec359621263edcea6027b.mp3', 4022, '2026-09-13 06:18:14.279168', '0de0b675d61777d3c62e7ccaa304446fc6e3d2221e7d26849047704cba5bce60', 'validated', '{"audio_key":"9e5412f687b86b0b39b8e6528b4eb8d194e8ba5d77bec359621263edcea6027b","entity_key":"u_complaints_returns_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0de0b675d61777d3c62e7ccaa304446fc6e3d2221e7d26849047704cba5bce60","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9e5412f687b86b0b39b8e6528b4eb8d194e8ba5d77bec359621263edcea6027b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_complaints_returns_02_listen -> audio/generated/de-DE/utterances/9e5412f687b86b0b39b8e6528b4eb8d194e8ba5d77bec359621263edcea6027b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('64770ae1-3fdc-5543-b968-80bf481acc3d', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_complaints_returns_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '27403afd1ca2969e9533f91e79e48a5d39c2aa41cadfe2158ab34e5f1cb5f7c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31c5c43e-89a1-5598-b0ec-3a664272aaf6', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('64770ae1-3fdc-5543-b968-80bf481acc3d', 1), '27403afd1ca2969e9533f91e79e48a5d39c2aa41cadfe2158ab34e5f1cb5f7c3',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9e5412f687b86b0b39b8e6528b4eb8d194e8ba5d77bec359621263edcea6027b.mp3', 4022, '2026-09-13 06:18:14.279168', '0de0b675d61777d3c62e7ccaa304446fc6e3d2221e7d26849047704cba5bce60', 'validated', '{"audio_key":"9e5412f687b86b0b39b8e6528b4eb8d194e8ba5d77bec359621263edcea6027b","entity_key":"ex_complaints_returns_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0de0b675d61777d3c62e7ccaa304446fc6e3d2221e7d26849047704cba5bce60","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9e5412f687b86b0b39b8e6528b4eb8d194e8ba5d77bec359621263edcea6027b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_relationships_conflict_02 -> audio/generated/de-DE/utterances/9ebf55d275d2eb5226c80c3c277ae0073e73157ec9b03f171224afcb65b7a261.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('84873524-0995-55ce-bab9-3f7e6ec8f0ba', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_relationships_conflict_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ef6a7b027942cf0dc97833555186ac7eab89bc4461aba4530a0f65c3a76b9f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1d6bda7-1c44-5b05-867e-633970700514', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('84873524-0995-55ce-bab9-3f7e6ec8f0ba', 1), '7ef6a7b027942cf0dc97833555186ac7eab89bc4461aba4530a0f65c3a76b9f6',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/9ebf55d275d2eb5226c80c3c277ae0073e73157ec9b03f171224afcb65b7a261.mp3', 3343, '2026-09-13 06:18:14.458025', '02bc27c68b258d97f934038aa011c664ad11a01fc0bd198c231cd7ac99dfbc93', 'validated', '{"audio_key":"9ebf55d275d2eb5226c80c3c277ae0073e73157ec9b03f171224afcb65b7a261","entity_key":"u_relationships_conflict_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"02bc27c68b258d97f934038aa011c664ad11a01fc0bd198c231cd7ac99dfbc93","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/9ebf55d275d2eb5226c80c3c277ae0073e73157ec9b03f171224afcb65b7a261.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_money_budget_04 -> audio/generated/de-DE/utterances/a29743c4406b8c925cf32958bb70596ee6010913829b9e0cb009e371e7586200.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f2c32bec-8569-5b7c-978a-728592ae6a7b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_money_budget_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6cffcb18e7eafe6dbe9aa708b704f51c28ca36325f85704a43b36e0a317f5c45'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e0a8c9c4-a17d-5a8d-9149-d6ea89210d8f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f2c32bec-8569-5b7c-978a-728592ae6a7b', 1), '6cffcb18e7eafe6dbe9aa708b704f51c28ca36325f85704a43b36e0a317f5c45',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a29743c4406b8c925cf32958bb70596ee6010913829b9e0cb009e371e7586200.mp3', 4728, '2026-09-13 06:18:15.703947', 'fe9457b8d8641cc28f99cf37b13cd8397a0ce4999337e49f51b0d0e215e9f450', 'validated', '{"audio_key":"a29743c4406b8c925cf32958bb70596ee6010913829b9e0cb009e371e7586200","entity_key":"u_money_budget_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fe9457b8d8641cc28f99cf37b13cd8397a0ce4999337e49f51b0d0e215e9f450","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a29743c4406b8c925cf32958bb70596ee6010913829b9e0cb009e371e7586200.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_workplace_communication_05 -> audio/generated/de-DE/utterances/a755adea975dd9af5b5bf16e4687345838137232d66a539470e097e4498ff571.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4e44def8-114e-595a-b288-e6a0ce559377', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_workplace_communication_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b240129a422b4a4142dc3e4a6a58fa00ccba64299f373dda0b89abe884de625'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e525f59-bd58-53bb-b3de-b2d717e2144f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4e44def8-114e-595a-b288-e6a0ce559377', 1), '7b240129a422b4a4142dc3e4a6a58fa00ccba64299f373dda0b89abe884de625',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a755adea975dd9af5b5bf16e4687345838137232d66a539470e097e4498ff571.mp3', 3578, '2026-09-13 06:18:15.683413', '0bb2e5bf640d1b85a4ac46befd6206f6230aae3384eadb6fc6409d385abb8bb8', 'validated', '{"audio_key":"a755adea975dd9af5b5bf16e4687345838137232d66a539470e097e4498ff571","entity_key":"u_workplace_communication_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0bb2e5bf640d1b85a4ac46befd6206f6230aae3384eadb6fc6409d385abb8bb8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a755adea975dd9af5b5bf16e4687345838137232d66a539470e097e4498ff571.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_workplace_communication_03_listen -> audio/generated/de-DE/utterances/a755adea975dd9af5b5bf16e4687345838137232d66a539470e097e4498ff571.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d6764f2c-b8ac-5d24-8849-ab901f22c00e', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_workplace_communication_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b240129a422b4a4142dc3e4a6a58fa00ccba64299f373dda0b89abe884de625'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6dbb1bbf-42a7-5b09-bee2-c89ed101ebec', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d6764f2c-b8ac-5d24-8849-ab901f22c00e', 1), '7b240129a422b4a4142dc3e4a6a58fa00ccba64299f373dda0b89abe884de625',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/a755adea975dd9af5b5bf16e4687345838137232d66a539470e097e4498ff571.mp3', 3578, '2026-09-13 06:18:15.683413', '0bb2e5bf640d1b85a4ac46befd6206f6230aae3384eadb6fc6409d385abb8bb8', 'validated', '{"audio_key":"a755adea975dd9af5b5bf16e4687345838137232d66a539470e097e4498ff571","entity_key":"ex_workplace_communication_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0bb2e5bf640d1b85a4ac46befd6206f6230aae3384eadb6fc6409d385abb8bb8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/a755adea975dd9af5b5bf16e4687345838137232d66a539470e097e4498ff571.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_complaints_returns_04 -> audio/generated/de-DE/utterances/acfb719a8e5255224bb1877ea50b8fd56843d1e806347cb0807c5c26ef15a9cd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ec093d85-2444-5a09-a11b-3828a445892f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_complaints_returns_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da2f2db195729ef3308284abf06955971d9973fdb39748ff7a5ef4faad944ce9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c1fd54a-b821-5670-a45b-b0fb0cd809f3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ec093d85-2444-5a09-a11b-3828a445892f', 1), 'da2f2db195729ef3308284abf06955971d9973fdb39748ff7a5ef4faad944ce9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/acfb719a8e5255224bb1877ea50b8fd56843d1e806347cb0807c5c26ef15a9cd.mp3', 4205, '2026-09-13 06:18:16.975875', '86fe4ba5a6f23ab2421f564a3c6a2b78f699901ab45300be9ba467c579fc02bd', 'validated', '{"audio_key":"acfb719a8e5255224bb1877ea50b8fd56843d1e806347cb0807c5c26ef15a9cd","entity_key":"u_complaints_returns_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"86fe4ba5a6f23ab2421f564a3c6a2b78f699901ab45300be9ba467c579fc02bd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/acfb719a8e5255224bb1877ea50b8fd56843d1e806347cb0807c5c26ef15a9cd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_housing_renting_03 -> audio/generated/de-DE/utterances/b3549fb4e7a89c4016a9c65a09a5787264d388daa12ac6b87460e862b960b93f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('18195338-8906-5f74-bf1e-07ac836073ef', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_housing_renting_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '795af86b157e0b7fd2dc18faf74548090c0517903128560637f10ab899b3ef1b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b67b1da8-980f-53fc-9bf8-e8d92899cff8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('18195338-8906-5f74-bf1e-07ac836073ef', 1), '795af86b157e0b7fd2dc18faf74548090c0517903128560637f10ab899b3ef1b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b3549fb4e7a89c4016a9c65a09a5787264d388daa12ac6b87460e862b960b93f.mp3', 3160, '2026-09-13 06:18:16.927492', 'a99dbb3ca3c327bad7194ccec21c4d05d7e775d82a2f99efc92c0144402638c8', 'validated', '{"audio_key":"b3549fb4e7a89c4016a9c65a09a5787264d388daa12ac6b87460e862b960b93f","entity_key":"u_housing_renting_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a99dbb3ca3c327bad7194ccec21c4d05d7e775d82a2f99efc92c0144402638c8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b3549fb4e7a89c4016a9c65a09a5787264d388daa12ac6b87460e862b960b93f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_housing_renting_02_listen -> audio/generated/de-DE/utterances/b3549fb4e7a89c4016a9c65a09a5787264d388daa12ac6b87460e862b960b93f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ac6c0eb1-7211-5a0b-8c9e-dd4af4539ab9', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_housing_renting_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '795af86b157e0b7fd2dc18faf74548090c0517903128560637f10ab899b3ef1b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c9f52c7-745d-5dda-96b9-29010a88359f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ac6c0eb1-7211-5a0b-8c9e-dd4af4539ab9', 1), '795af86b157e0b7fd2dc18faf74548090c0517903128560637f10ab899b3ef1b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/b3549fb4e7a89c4016a9c65a09a5787264d388daa12ac6b87460e862b960b93f.mp3', 3160, '2026-09-13 06:18:16.927492', 'a99dbb3ca3c327bad7194ccec21c4d05d7e775d82a2f99efc92c0144402638c8', 'validated', '{"audio_key":"b3549fb4e7a89c4016a9c65a09a5787264d388daa12ac6b87460e862b960b93f","entity_key":"ex_housing_renting_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a99dbb3ca3c327bad7194ccec21c4d05d7e775d82a2f99efc92c0144402638c8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/b3549fb4e7a89c4016a9c65a09a5787264d388daa12ac6b87460e862b960b93f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_culture_events_03 -> audio/generated/de-DE/utterances/bb23111bf8fd30c0cb75b247943d588d2cd0230b5b6c35dc5ad918f82ed670f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0ef2ac4d-df9b-5656-a1b1-806cb03f9abd', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_culture_events_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3f9c10a0e6851a54792f942f023e619ff130d637ef2fa19bed2ada60fb945a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd3a1c3c-7fee-523f-8293-2cf48d50a4b3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0ef2ac4d-df9b-5656-a1b1-806cb03f9abd', 1), 'f3f9c10a0e6851a54792f942f023e619ff130d637ef2fa19bed2ada60fb945a1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bb23111bf8fd30c0cb75b247943d588d2cd0230b5b6c35dc5ad918f82ed670f9.mp3', 4362, '2026-09-13 06:18:18.234838', '08e54a086101694cbfd0255e91913cb7de60f7f801ebb1049f70bbcb93fa773c', 'validated', '{"audio_key":"bb23111bf8fd30c0cb75b247943d588d2cd0230b5b6c35dc5ad918f82ed670f9","entity_key":"u_culture_events_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08e54a086101694cbfd0255e91913cb7de60f7f801ebb1049f70bbcb93fa773c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bb23111bf8fd30c0cb75b247943d588d2cd0230b5b6c35dc5ad918f82ed670f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_culture_events_02_listen -> audio/generated/de-DE/utterances/bb23111bf8fd30c0cb75b247943d588d2cd0230b5b6c35dc5ad918f82ed670f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6f322aa0-749c-5a10-9b91-3b15e86624ca', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_culture_events_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3f9c10a0e6851a54792f942f023e619ff130d637ef2fa19bed2ada60fb945a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09430e2b-3193-555b-8b8f-b78eb672d249', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6f322aa0-749c-5a10-9b91-3b15e86624ca', 1), 'f3f9c10a0e6851a54792f942f023e619ff130d637ef2fa19bed2ada60fb945a1',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bb23111bf8fd30c0cb75b247943d588d2cd0230b5b6c35dc5ad918f82ed670f9.mp3', 4362, '2026-09-13 06:18:18.234838', '08e54a086101694cbfd0255e91913cb7de60f7f801ebb1049f70bbcb93fa773c', 'validated', '{"audio_key":"bb23111bf8fd30c0cb75b247943d588d2cd0230b5b6c35dc5ad918f82ed670f9","entity_key":"ex_culture_events_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"08e54a086101694cbfd0255e91913cb7de60f7f801ebb1049f70bbcb93fa773c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bb23111bf8fd30c0cb75b247943d588d2cd0230b5b6c35dc5ad918f82ed670f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_job_applications_04 -> audio/generated/de-DE/utterances/bbba7a8d6be05e22646f1e1f701bc0618ea4adae48c3905ef0abdcd1fdbe38cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f4b610fa-d178-5890-9310-4b5c00584feb', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_job_applications_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5af41031eafaaf2d3854be1598554d2f36e2bdc94ae75907f076dc69f8bc5081'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20868ac1-7269-547f-871f-dcc203f5db90', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f4b610fa-d178-5890-9310-4b5c00584feb', 1), '5af41031eafaaf2d3854be1598554d2f36e2bdc94ae75907f076dc69f8bc5081',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/bbba7a8d6be05e22646f1e1f701bc0618ea4adae48c3905ef0abdcd1fdbe38cc.mp3', 3291, '2026-09-13 06:18:18.183647', 'a8f683ee2fad8d7f12fd4edc1d8a25a41d9442712a05f7149d77fe882472e9bb', 'validated', '{"audio_key":"bbba7a8d6be05e22646f1e1f701bc0618ea4adae48c3905ef0abdcd1fdbe38cc","entity_key":"u_job_applications_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a8f683ee2fad8d7f12fd4edc1d8a25a41d9442712a05f7149d77fe882472e9bb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/bbba7a8d6be05e22646f1e1f701bc0618ea4adae48c3905ef0abdcd1fdbe38cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_decisions_consequences_06 -> audio/generated/de-DE/utterances/c19bb076586b939a164ecb9f90b6ca6c4784d37dba5cffe9e9ad85c139eaa720.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('412c5d55-f1e8-5dc1-bb35-0a661baa72b0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_decisions_consequences_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56c3423eabb15cf4f7c3523aeb204c920ba77a31db23ab688ebfe6c4fd1d5230'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7198d11a-044a-5604-b362-54e3e59d4f30', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('412c5d55-f1e8-5dc1-bb35-0a661baa72b0', 1), '56c3423eabb15cf4f7c3523aeb204c920ba77a31db23ab688ebfe6c4fd1d5230',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/c19bb076586b939a164ecb9f90b6ca6c4784d37dba5cffe9e9ad85c139eaa720.mp3', 4545, '2026-09-13 06:18:19.564051', '45bbfdf69f6d6d62745f4ef7653d8cabd3821851cf6709f6789701b5db147fea', 'validated', '{"audio_key":"c19bb076586b939a164ecb9f90b6ca6c4784d37dba5cffe9e9ad85c139eaa720","entity_key":"u_decisions_consequences_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"45bbfdf69f6d6d62745f4ef7653d8cabd3821851cf6709f6789701b5db147fea","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/c19bb076586b939a164ecb9f90b6ca6c4784d37dba5cffe9e9ad85c139eaa720.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_environment_recycling_04 -> audio/generated/de-DE/utterances/cac94331bb44515557cfa19aa0cc2367485d32f20d03dde87d2d944e92cfe5f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8cd0dedc-4410-58f1-9155-46ff35091ce6', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_environment_recycling_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e3bf8f5a7eb0fc221fd86ee0af1121ee1921797dac6db12fd112594c601c8b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d3cde98-45eb-5449-8c78-015d78602aaa', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8cd0dedc-4410-58f1-9155-46ff35091ce6', 1), '9e3bf8f5a7eb0fc221fd86ee0af1121ee1921797dac6db12fd112594c601c8b8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cac94331bb44515557cfa19aa0cc2367485d32f20d03dde87d2d944e92cfe5f4.mp3', 3604, '2026-09-13 06:18:19.448532', 'ef9f1b5a2ec2b37df1e8747bb1ad62392fbff97c29d61bc6886a38834290cad2', 'validated', '{"audio_key":"cac94331bb44515557cfa19aa0cc2367485d32f20d03dde87d2d944e92cfe5f4","entity_key":"u_environment_recycling_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ef9f1b5a2ec2b37df1e8747bb1ad62392fbff97c29d61bc6886a38834290cad2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cac94331bb44515557cfa19aa0cc2367485d32f20d03dde87d2d944e92cfe5f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_workplace_communication_02 -> audio/generated/de-DE/utterances/cbead11ec1af386490838dca7545517b91808aa6f27cb519af5c3a1a20adfcfb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('789f1958-3c64-57e7-9128-9c73dd504582', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_workplace_communication_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '869ab9b8d44b8f9fd176289634b0f8a9237117cbdde275a2d7482463251afaa9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('989953b9-ed2b-5112-9f9a-d77e3c7b6d89', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('789f1958-3c64-57e7-9128-9c73dd504582', 1), '869ab9b8d44b8f9fd176289634b0f8a9237117cbdde275a2d7482463251afaa9',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cbead11ec1af386490838dca7545517b91808aa6f27cb519af5c3a1a20adfcfb.mp3', 3526, '2026-09-13 06:18:20.638379', '2566d959b453b134ea28f00408a0eb68e33e608d1cb7b5f95a52aa21befe279a', 'validated', '{"audio_key":"cbead11ec1af386490838dca7545517b91808aa6f27cb519af5c3a1a20adfcfb","entity_key":"u_workplace_communication_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2566d959b453b134ea28f00408a0eb68e33e608d1cb7b5f95a52aa21befe279a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cbead11ec1af386490838dca7545517b91808aa6f27cb519af5c3a1a20adfcfb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_culture_events_04 -> audio/generated/de-DE/utterances/cee8e4112eb2c40ee4316b4979409e646661d7a6f28fedaed36adb96be45f258.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('44a86318-b0ac-5163-92b3-f779e2454bb2', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_culture_events_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7b5ad1f218b5fdb2a1d5cf9e1c5d904ef807169efa753974c891bc5ee1311898'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac2d0de8-81ee-5fab-a674-88bb1d70f516', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('44a86318-b0ac-5163-92b3-f779e2454bb2', 1), '7b5ad1f218b5fdb2a1d5cf9e1c5d904ef807169efa753974c891bc5ee1311898',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cee8e4112eb2c40ee4316b4979409e646661d7a6f28fedaed36adb96be45f258.mp3', 4310, '2026-09-13 06:18:20.830800', 'd5907847277f77a08bc7e03ea5d31b8660fa79ee4c4640e3d26a7618e0af94ba', 'validated', '{"audio_key":"cee8e4112eb2c40ee4316b4979409e646661d7a6f28fedaed36adb96be45f258","entity_key":"u_culture_events_04","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d5907847277f77a08bc7e03ea5d31b8660fa79ee4c4640e3d26a7618e0af94ba","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cee8e4112eb2c40ee4316b4979409e646661d7a6f28fedaed36adb96be45f258.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_housing_renting_01 -> audio/generated/de-DE/utterances/cf42eaac777378230a9eaaa889c75e7dd03c60071ec2955a48e9b1336ec5be6d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b4c3f310-2e2e-5f9b-b042-06eb6b021d3c', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_housing_renting_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0a586ff2b0d9d95bfbc2f871f05e588370c9a25187112e03456eb5f6ee02a57'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('06172445-6256-5655-ad84-1edf237da1db', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b4c3f310-2e2e-5f9b-b042-06eb6b021d3c', 1), 'b0a586ff2b0d9d95bfbc2f871f05e588370c9a25187112e03456eb5f6ee02a57',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cf42eaac777378230a9eaaa889c75e7dd03c60071ec2955a48e9b1336ec5be6d.mp3', 3709, '2026-09-13 06:18:21.858847', 'a8a0e5413686836e85d8eae750ae326214feb59cb19fed35ad753c8f668dc18e', 'validated', '{"audio_key":"cf42eaac777378230a9eaaa889c75e7dd03c60071ec2955a48e9b1336ec5be6d","entity_key":"u_housing_renting_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a8a0e5413686836e85d8eae750ae326214feb59cb19fed35ad753c8f668dc18e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cf42eaac777378230a9eaaa889c75e7dd03c60071ec2955a48e9b1336ec5be6d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_housing_renting_01_listen -> audio/generated/de-DE/utterances/cf42eaac777378230a9eaaa889c75e7dd03c60071ec2955a48e9b1336ec5be6d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('354f1671-ef04-5b54-abc2-b59704d0a2c4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_housing_renting_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0a586ff2b0d9d95bfbc2f871f05e588370c9a25187112e03456eb5f6ee02a57'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da88d79c-e8e9-5f05-bb09-7e58b2fbca1d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('354f1671-ef04-5b54-abc2-b59704d0a2c4', 1), 'b0a586ff2b0d9d95bfbc2f871f05e588370c9a25187112e03456eb5f6ee02a57',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/cf42eaac777378230a9eaaa889c75e7dd03c60071ec2955a48e9b1336ec5be6d.mp3', 3709, '2026-09-13 06:18:21.858847', 'a8a0e5413686836e85d8eae750ae326214feb59cb19fed35ad753c8f668dc18e', 'validated', '{"audio_key":"cf42eaac777378230a9eaaa889c75e7dd03c60071ec2955a48e9b1336ec5be6d","entity_key":"ex_housing_renting_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a8a0e5413686836e85d8eae750ae326214feb59cb19fed35ad753c8f668dc18e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/cf42eaac777378230a9eaaa889c75e7dd03c60071ec2955a48e9b1336ec5be6d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_job_applications_01 -> audio/generated/de-DE/utterances/d00a456c6fe5f545a4a5fa09b4d75f0d9ac8dab922f1db1a7c3e8f18c59a677d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fe263d94-ddb1-5dcf-83f9-bb30abae2b49', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_job_applications_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2d7ea0f6e5f80dcb1144d850a5edd9a82b6a34d6ef2dd32eade18338f34a627'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5368a64e-9b03-5b2a-a384-c2a7e9ab0730', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fe263d94-ddb1-5dcf-83f9-bb30abae2b49', 1), 'b2d7ea0f6e5f80dcb1144d850a5edd9a82b6a34d6ef2dd32eade18338f34a627',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d00a456c6fe5f545a4a5fa09b4d75f0d9ac8dab922f1db1a7c3e8f18c59a677d.mp3', 3787, '2026-09-13 06:18:22.068333', '190edde32b74ac76d644636657a88fb710e1564249bc11fd0266bb9088d6e34e', 'validated', '{"audio_key":"d00a456c6fe5f545a4a5fa09b4d75f0d9ac8dab922f1db1a7c3e8f18c59a677d","entity_key":"u_job_applications_01","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"190edde32b74ac76d644636657a88fb710e1564249bc11fd0266bb9088d6e34e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d00a456c6fe5f545a4a5fa09b4d75f0d9ac8dab922f1db1a7c3e8f18c59a677d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_job_applications_01_listen -> audio/generated/de-DE/utterances/d00a456c6fe5f545a4a5fa09b4d75f0d9ac8dab922f1db1a7c3e8f18c59a677d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3deae5d0-907e-5eb0-819f-547f71ac1b4f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_job_applications_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2d7ea0f6e5f80dcb1144d850a5edd9a82b6a34d6ef2dd32eade18338f34a627'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f35c5070-9bbe-57c3-970d-154492cf5ee2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3deae5d0-907e-5eb0-819f-547f71ac1b4f', 1), 'b2d7ea0f6e5f80dcb1144d850a5edd9a82b6a34d6ef2dd32eade18338f34a627',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d00a456c6fe5f545a4a5fa09b4d75f0d9ac8dab922f1db1a7c3e8f18c59a677d.mp3', 3787, '2026-09-13 06:18:22.068333', '190edde32b74ac76d644636657a88fb710e1564249bc11fd0266bb9088d6e34e', 'validated', '{"audio_key":"d00a456c6fe5f545a4a5fa09b4d75f0d9ac8dab922f1db1a7c3e8f18c59a677d","entity_key":"ex_job_applications_01_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"190edde32b74ac76d644636657a88fb710e1564249bc11fd0266bb9088d6e34e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d00a456c6fe5f545a4a5fa09b4d75f0d9ac8dab922f1db1a7c3e8f18c59a677d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_money_budget_05 -> audio/generated/de-DE/utterances/d16e045721f9f73b03e4456418a9ff3222f6c57f84552cc7917698abdb479036.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('97b3735a-aee2-59c0-a806-b0911a896ce3', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_money_budget_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73360fe93e9683129327c0b386f9f545952533a521f9189712ade76013066a98'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b21ae31-cd03-55f4-960f-659e937ed264', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('97b3735a-aee2-59c0-a806-b0911a896ce3', 1), '73360fe93e9683129327c0b386f9f545952533a521f9189712ade76013066a98',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d16e045721f9f73b03e4456418a9ff3222f6c57f84552cc7917698abdb479036.mp3', 3343, '2026-09-13 06:18:23.107675', 'b78d47f6c846ca122b79b5e0ee8fb041aeb65414b782e2d0f3e49eae4979327e', 'validated', '{"audio_key":"d16e045721f9f73b03e4456418a9ff3222f6c57f84552cc7917698abdb479036","entity_key":"u_money_budget_05","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b78d47f6c846ca122b79b5e0ee8fb041aeb65414b782e2d0f3e49eae4979327e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d16e045721f9f73b03e4456418a9ff3222f6c57f84552cc7917698abdb479036.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_money_budget_03_listen -> audio/generated/de-DE/utterances/d16e045721f9f73b03e4456418a9ff3222f6c57f84552cc7917698abdb479036.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0613767a-fcc4-53c0-9e5b-2e8e1e3c88bf', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_money_budget_03_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73360fe93e9683129327c0b386f9f545952533a521f9189712ade76013066a98'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a88577c-7830-5507-87ce-cefe23405dad', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0613767a-fcc4-53c0-9e5b-2e8e1e3c88bf', 1), '73360fe93e9683129327c0b386f9f545952533a521f9189712ade76013066a98',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d16e045721f9f73b03e4456418a9ff3222f6c57f84552cc7917698abdb479036.mp3', 3343, '2026-09-13 06:18:23.107675', 'b78d47f6c846ca122b79b5e0ee8fb041aeb65414b782e2d0f3e49eae4979327e', 'validated', '{"audio_key":"d16e045721f9f73b03e4456418a9ff3222f6c57f84552cc7917698abdb479036","entity_key":"ex_money_budget_03_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b78d47f6c846ca122b79b5e0ee8fb041aeb65414b782e2d0f3e49eae4979327e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d16e045721f9f73b03e4456418a9ff3222f6c57f84552cc7917698abdb479036.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_housing_renting_02 -> audio/generated/de-DE/utterances/d49042e3cfa3d025572bd2c91e57e389cce0a06ad60ab3db450268dafe8f9eb5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e4c6044a-9dc2-562c-8d79-1e3c1f4b10f4', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_housing_renting_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56aaee9b5c6e47aaa6a768869f14389e5f97e6bc578c894d79305693fefd1611'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('367fea1b-65c7-55d4-b15f-755693e86277', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e4c6044a-9dc2-562c-8d79-1e3c1f4b10f4', 1), '56aaee9b5c6e47aaa6a768869f14389e5f97e6bc578c894d79305693fefd1611',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/d49042e3cfa3d025572bd2c91e57e389cce0a06ad60ab3db450268dafe8f9eb5.mp3', 3186, '2026-09-13 06:18:23.270424', '6082c09bfbdfd352d01a65262fd97ce84069c4bfbb4b8f8eb74c556164093781', 'validated', '{"audio_key":"d49042e3cfa3d025572bd2c91e57e389cce0a06ad60ab3db450268dafe8f9eb5","entity_key":"u_housing_renting_02","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6082c09bfbdfd352d01a65262fd97ce84069c4bfbb4b8f8eb74c556164093781","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/d49042e3cfa3d025572bd2c91e57e389cce0a06ad60ab3db450268dafe8f9eb5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_workplace_communication_03 -> audio/generated/de-DE/utterances/e0727fd206277deb8766cc0ed7057198efb207c32c95c2e669db2aa0595d8122.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3751992f-1eab-5f53-93f0-dfccbaf6be9b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_workplace_communication_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3bfb42b547e4a05fea116a191e70627bcbea6378ba3996462712cd57d14d921b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b824d360-27e2-5120-a3f1-f34ba844c8e0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3751992f-1eab-5f53-93f0-dfccbaf6be9b', 1), '3bfb42b547e4a05fea116a191e70627bcbea6378ba3996462712cd57d14d921b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e0727fd206277deb8766cc0ed7057198efb207c32c95c2e669db2aa0595d8122.mp3', 3291, '2026-09-13 06:18:24.340431', 'fc42a0d60617c7658e8483572ab707f4e48ab8a37893d27457b7466c2abb400b', 'validated', '{"audio_key":"e0727fd206277deb8766cc0ed7057198efb207c32c95c2e669db2aa0595d8122","entity_key":"u_workplace_communication_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fc42a0d60617c7658e8483572ab707f4e48ab8a37893d27457b7466c2abb400b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e0727fd206277deb8766cc0ed7057198efb207c32c95c2e669db2aa0595d8122.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_workplace_communication_02_listen -> audio/generated/de-DE/utterances/e0727fd206277deb8766cc0ed7057198efb207c32c95c2e669db2aa0595d8122.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b2de878f-0034-55a0-aca4-abc028d16230', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_workplace_communication_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3bfb42b547e4a05fea116a191e70627bcbea6378ba3996462712cd57d14d921b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f7b60b8-2e5d-5d31-b36b-51be09141f40', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b2de878f-0034-55a0-aca4-abc028d16230', 1), '3bfb42b547e4a05fea116a191e70627bcbea6378ba3996462712cd57d14d921b',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e0727fd206277deb8766cc0ed7057198efb207c32c95c2e669db2aa0595d8122.mp3', 3291, '2026-09-13 06:18:24.340431', 'fc42a0d60617c7658e8483572ab707f4e48ab8a37893d27457b7466c2abb400b', 'validated', '{"audio_key":"e0727fd206277deb8766cc0ed7057198efb207c32c95c2e669db2aa0595d8122","entity_key":"ex_workplace_communication_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fc42a0d60617c7658e8483572ab707f4e48ab8a37893d27457b7466c2abb400b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e0727fd206277deb8766cc0ed7057198efb207c32c95c2e669db2aa0595d8122.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_money_budget_06 -> audio/generated/de-DE/utterances/e3830cb3122ff7eeb90c0278cfcec5e7f083a991dda62ebe8a607b538ea95750.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2294eb68-e330-5526-9790-99a0dda24eb8', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_money_budget_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b36688d62125a0de8f11e95a95893b38ce7abd85439e79379b55e5a8ac1d714'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf21042c-7adb-50e7-89a4-c8bc0900f2f7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2294eb68-e330-5526-9790-99a0dda24eb8', 1), '9b36688d62125a0de8f11e95a95893b38ce7abd85439e79379b55e5a8ac1d714',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e3830cb3122ff7eeb90c0278cfcec5e7f083a991dda62ebe8a607b538ea95750.mp3', 4963, '2026-09-13 06:18:24.669704', 'f57d0c34424307f6f70c73805d6312012a42c1ae17e146ff447df304ebf6c2f2', 'validated', '{"audio_key":"e3830cb3122ff7eeb90c0278cfcec5e7f083a991dda62ebe8a607b538ea95750","entity_key":"u_money_budget_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f57d0c34424307f6f70c73805d6312012a42c1ae17e146ff447df304ebf6c2f2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e3830cb3122ff7eeb90c0278cfcec5e7f083a991dda62ebe8a607b538ea95750.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_money_budget_03 -> audio/generated/de-DE/utterances/e72be04810caa9c7de761209d4393fdca4c55ad2f3d7278f1a9af6b709489a74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5c1904bb-82d7-55a7-a97d-c7c5812c100b', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_money_budget_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '99d72d8cb5a90bbb2edd8eb226d144e403bdd9a420e371482cc0f38aa6dfd504'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4560f2ae-4e1a-531a-b008-992cf022a57d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5c1904bb-82d7-55a7-a97d-c7c5812c100b', 1), '99d72d8cb5a90bbb2edd8eb226d144e403bdd9a420e371482cc0f38aa6dfd504',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e72be04810caa9c7de761209d4393fdca4c55ad2f3d7278f1a9af6b709489a74.mp3', 3840, '2026-09-13 06:18:25.591166', 'c8bbb67a080524dd1bbe74d9e8c6a11bae6d3aee16a50da3288c9bb97571cb03', 'validated', '{"audio_key":"e72be04810caa9c7de761209d4393fdca4c55ad2f3d7278f1a9af6b709489a74","entity_key":"u_money_budget_03","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c8bbb67a080524dd1bbe74d9e8c6a11bae6d3aee16a50da3288c9bb97571cb03","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e72be04810caa9c7de761209d4393fdca4c55ad2f3d7278f1a9af6b709489a74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_money_budget_02_listen -> audio/generated/de-DE/utterances/e72be04810caa9c7de761209d4393fdca4c55ad2f3d7278f1a9af6b709489a74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8e1dd353-de32-5ab4-96e1-2e029fa078d0', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_money_budget_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '99d72d8cb5a90bbb2edd8eb226d144e403bdd9a420e371482cc0f38aa6dfd504'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78c15036-9888-50e8-9b86-d3825e2d1be4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8e1dd353-de32-5ab4-96e1-2e029fa078d0', 1), '99d72d8cb5a90bbb2edd8eb226d144e403bdd9a420e371482cc0f38aa6dfd504',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/e72be04810caa9c7de761209d4393fdca4c55ad2f3d7278f1a9af6b709489a74.mp3', 3840, '2026-09-13 06:18:25.591166', 'c8bbb67a080524dd1bbe74d9e8c6a11bae6d3aee16a50da3288c9bb97571cb03', 'validated', '{"audio_key":"e72be04810caa9c7de761209d4393fdca4c55ad2f3d7278f1a9af6b709489a74","entity_key":"ex_money_budget_02_listen","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c8bbb67a080524dd1bbe74d9e8c6a11bae6d3aee16a50da3288c9bb97571cb03","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/e72be04810caa9c7de761209d4393fdca4c55ad2f3d7278f1a9af6b709489a74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_housing_renting_06 -> audio/generated/de-DE/utterances/f92007005bb039aa9d20c7b85198428f2cd5a4afdf64511190795badb0fb851e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e2adc8a7-1f32-5418-bbea-6793dde05786', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_housing_renting_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '300ba15dd4eed0e344b93ac01433f1a852af27287b1eb8eefb239da7c99202a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18645725-85d5-59bd-b45c-4de208fdd199', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e2adc8a7-1f32-5418-bbea-6793dde05786', 1), '300ba15dd4eed0e344b93ac01433f1a852af27287b1eb8eefb239da7c99202a8',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f92007005bb039aa9d20c7b85198428f2cd5a4afdf64511190795badb0fb851e.mp3', 3108, '2026-09-13 06:18:25.874054', 'e49bb41ac5cede20e4f34770027133f98695b5ed380f0059724cf72f7ee1327a', 'validated', '{"audio_key":"f92007005bb039aa9d20c7b85198428f2cd5a4afdf64511190795badb0fb851e","entity_key":"u_housing_renting_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e49bb41ac5cede20e4f34770027133f98695b5ed380f0059724cf72f7ee1327a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f92007005bb039aa9d20c7b85198428f2cd5a4afdf64511190795badb0fb851e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_environment_recycling_06 -> audio/generated/de-DE/utterances/f9d7142f6e51e7e3bd6b4015e3e030b83c0ab83de8d4b9ff5aeb77ddb7144702.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7dcba6fc-a650-527e-bd72-185b51c2d48f', 1)
  AND voice_key = 'de-de.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_environment_recycling_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea6780d949f825630658d74b9b8e623a931f4124a6ad4362b205473a90f4787f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ff60209-5d6e-50a6-a413-3507d8054cee', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7dcba6fc-a650-527e-bd72-185b51c2d48f', 1), 'ea6780d949f825630658d74b9b8e623a931f4124a6ad4362b205473a90f4787f',
  'de-de.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/de-DE/utterances/f9d7142f6e51e7e3bd6b4015e3e030b83c0ab83de8d4b9ff5aeb77ddb7144702.mp3', 3787, '2026-09-13 06:18:26.841161', '5b6a17dc2804112085f113ec12fb615fe778eb28bd14ae890e479dd061796b97', 'validated', '{"audio_key":"f9d7142f6e51e7e3bd6b4015e3e030b83c0ab83de8d4b9ff5aeb77ddb7144702","entity_key":"u_environment_recycling_06","voice_id":"v3V1d2rk6528UrLKRuy8","voice_name":"Susi - Effortless and Confident","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"de","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5b6a17dc2804112085f113ec12fb615fe778eb28bd14ae890e479dd061796b97","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/de-DE/utterances/f9d7142f6e51e7e3bd6b4015e3e030b83c0ab83de8d4b9ff5aeb77ddb7144702.mp3"}'
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

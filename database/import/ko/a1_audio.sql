-- Generated audio link import for ko-KR A1
-- Source manifest: audio/manifests/ko/A1.json
-- Generated rows: 260
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'ko' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'ko-KR' LIMIT 1);
START TRANSACTION;

-- d_daily_routine_01:3 -> audio/generated/ko-KR/dialogues/047382b92a8f1ced2419fe6254e6c0fada7ce771eb8f2c3ea34fae198c01b6f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6b9ac361-322d-5c2d-a7f1-609c1372f75a', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_daily_routine_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '732dc997163be77263128bdfc600d7db688662e0d9a52cea68473743018239c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ea9f294-d3b5-504f-bdcc-3ede38ea7821', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6b9ac361-322d-5c2d-a7f1-609c1372f75a', 1), '732dc997163be77263128bdfc600d7db688662e0d9a52cea68473743018239c4',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/047382b92a8f1ced2419fe6254e6c0fada7ce771eb8f2c3ea34fae198c01b6f9.mp3', 1436, '2026-09-13 22:04:14.440732', '78ff0bbb9d0842b279f454ad922c51530ef0a18e4b7b85010b5e43da8e7a4311', 'validated', '{"audio_key":"047382b92a8f1ced2419fe6254e6c0fada7ce771eb8f2c3ea34fae198c01b6f9","entity_key":"d_daily_routine_01:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"78ff0bbb9d0842b279f454ad922c51530ef0a18e4b7b85010b5e43da8e7a4311","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/047382b92a8f1ced2419fe6254e6c0fada7ce771eb8f2c3ea34fae198c01b6f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_and_people_01:3 -> audio/generated/ko-KR/dialogues/049f644e02c5000d02a873126272f53bce3916c0d216c2e23931cca3465c14d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4e85d664-c0ff-5eb0-b9e6-ceec5cfb8608', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_and_people_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5abda8923e37071bd64ad9d5fc9413b6677e6e2876ca6ee38fe4d1bd5c68fbc8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af333bb1-9959-542a-a0e5-2d0e6da12b7a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4e85d664-c0ff-5eb0-b9e6-ceec5cfb8608', 1), '5abda8923e37071bd64ad9d5fc9413b6677e6e2876ca6ee38fe4d1bd5c68fbc8',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/049f644e02c5000d02a873126272f53bce3916c0d216c2e23931cca3465c14d9.mp3', 1515, '2026-09-13 22:04:14.266395', '8e7cd014f5b9c4f09c24af5eda3f379ecc5b00be7aa199e4f4de00c595a81534', 'validated', '{"audio_key":"049f644e02c5000d02a873126272f53bce3916c0d216c2e23931cca3465c14d9","entity_key":"d_family_and_people_01:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8e7cd014f5b9c4f09c24af5eda3f379ecc5b00be7aa199e4f4de00c595a81534","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/049f644e02c5000d02a873126272f53bce3916c0d216c2e23931cca3465c14d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_and_people_02:1 -> audio/generated/ko-KR/dialogues/05495d8b9f44d60e986cb25fc523d7b65e8da888306b30491c58661d7dcbe842.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b065402a-eabe-56a6-b828-0bc7044e298c', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_and_people_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '797f0e465893fd217cd2db3f0d70fc23a4633f5347343a00e224e93c29c99361'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b26093b7-7899-5ace-838d-524b1cd86cd6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b065402a-eabe-56a6-b828-0bc7044e298c', 1), '797f0e465893fd217cd2db3f0d70fc23a4633f5347343a00e224e93c29c99361',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/05495d8b9f44d60e986cb25fc523d7b65e8da888306b30491c58661d7dcbe842.mp3', 1384, '2026-09-13 22:04:15.757804', '3408835a4199c298ed49875d490afcfe1f2bc8175b640112af8e7f6ad29a7613', 'validated', '{"audio_key":"05495d8b9f44d60e986cb25fc523d7b65e8da888306b30491c58661d7dcbe842","entity_key":"d_family_and_people_02:1","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3408835a4199c298ed49875d490afcfe1f2bc8175b640112af8e7f6ad29a7613","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/05495d8b9f44d60e986cb25fc523d7b65e8da888306b30491c58661d7dcbe842.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_schedule_01:3 -> audio/generated/ko-KR/dialogues/067b25310e6b6f9d7341bb06e754f67ed71c8d31bd10fda44fd427756de7071f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('98655f4f-f449-5b85-a9e0-ce5409efa653', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_schedule_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '565937691eb55c761e2eec389a5dbdfa0a7b166544bbbf4edd23cc203fcde594'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c57c34e3-413d-502b-9788-e64494b13b94', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('98655f4f-f449-5b85-a9e0-ce5409efa653', 1), '565937691eb55c761e2eec389a5dbdfa0a7b166544bbbf4edd23cc203fcde594',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/067b25310e6b6f9d7341bb06e754f67ed71c8d31bd10fda44fd427756de7071f.mp3', 1436, '2026-09-13 22:04:15.514144', 'd39c415de3d364a48b3b90582eb127c7182ce584bccfb82812f3c9c4a45bdada', 'validated', '{"audio_key":"067b25310e6b6f9d7341bb06e754f67ed71c8d31bd10fda44fd427756de7071f","entity_key":"d_time_and_schedule_01:3","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d39c415de3d364a48b3b90582eb127c7182ce584bccfb82812f3c9c4a45bdada","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/067b25310e6b6f9d7341bb06e754f67ed71c8d31bd10fda44fd427756de7071f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cafe_orders_02:4 -> audio/generated/ko-KR/dialogues/08e8b46e48c79051b2615a667e384d4f012e86cd0218cf8b2569081ed415ce52.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a61e7b1b-4301-55b9-af53-ff25fdce4f2b', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cafe_orders_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b968912a6081d19540d4d71e24c3163fddf275ddf76df3ad1262e6bad9b64ca7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8fe0a638-f569-5804-aab8-b5221a93c679', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a61e7b1b-4301-55b9-af53-ff25fdce4f2b', 1), 'b968912a6081d19540d4d71e24c3163fddf275ddf76df3ad1262e6bad9b64ca7',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/08e8b46e48c79051b2615a667e384d4f012e86cd0218cf8b2569081ed415ce52.mp3', 1697, '2026-09-13 22:04:16.514402', '043ecca2e31d3a9752d8579b6eec52b0237be7896443d5db58ff2cdd5b6d037d', 'validated', '{"audio_key":"08e8b46e48c79051b2615a667e384d4f012e86cd0218cf8b2569081ed415ce52","entity_key":"d_cafe_orders_02:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"043ecca2e31d3a9752d8579b6eec52b0237be7896443d5db58ff2cdd5b6d037d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/08e8b46e48c79051b2615a667e384d4f012e86cd0218cf8b2569081ed415ce52.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_day_out_capstone_01:1 -> audio/generated/ko-KR/dialogues/14e09166207f0e32cbf622e3fc973d541ff5f4698e7aa3894bde2f69b169ebe8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b66f7d89-e3c8-5798-b9c6-a2634190e42c', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_day_out_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1d7f723b4ebccc2e0506c703bbef1dd9abf5e341ccc6c6c66d76a9a40a1aa95'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe083aeb-fed7-5526-8e56-eb74f9fdcd6c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b66f7d89-e3c8-5798-b9c6-a2634190e42c', 1), 'a1d7f723b4ebccc2e0506c703bbef1dd9abf5e341ccc6c6c66d76a9a40a1aa95',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/14e09166207f0e32cbf622e3fc973d541ff5f4698e7aa3894bde2f69b169ebe8.mp3', 1515, '2026-09-13 22:04:16.759005', 'b581b7b88e24f582ccf76f9327fc8f8f7d452ed5a3a6d580f7c74e6d664b56ac', 'validated', '{"audio_key":"14e09166207f0e32cbf622e3fc973d541ff5f4698e7aa3894bde2f69b169ebe8","entity_key":"d_a1_day_out_capstone_01:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b581b7b88e24f582ccf76f9327fc8f8f7d452ed5a3a6d580f7c74e6d664b56ac","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/14e09166207f0e32cbf622e3fc973d541ff5f4698e7aa3894bde2f69b169ebe8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_and_people_01:1 -> audio/generated/ko-KR/dialogues/1c1711ea64d7f75d4daff999e7be2b6d44f0b5ab0500fef0409ee020884763cb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f6a7ac42-fdef-503b-9ea3-b8e48bb33a20', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_and_people_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bbffcdd916bcb2a8195220c8fdfa004c811a94e1f51d4b0028180f2f97c53a10'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77f73ec6-6a42-52d4-987e-5bb5d2b48eb3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f6a7ac42-fdef-503b-9ea3-b8e48bb33a20', 1), 'bbffcdd916bcb2a8195220c8fdfa004c811a94e1f51d4b0028180f2f97c53a10',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/1c1711ea64d7f75d4daff999e7be2b6d44f0b5ab0500fef0409ee020884763cb.mp3', 1488, '2026-09-13 22:04:17.499444', 'f734a758f7af718ba9814900c47fecb1aa4365dfa2289a02b0816e5508419ae1', 'validated', '{"audio_key":"1c1711ea64d7f75d4daff999e7be2b6d44f0b5ab0500fef0409ee020884763cb","entity_key":"d_family_and_people_01:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f734a758f7af718ba9814900c47fecb1aa4365dfa2289a02b0816e5508419ae1","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/1c1711ea64d7f75d4daff999e7be2b6d44f0b5ab0500fef0409ee020884763cb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_day_out_capstone_02:2 -> audio/generated/ko-KR/dialogues/1d8f2fee39ce44768274ac823d09fcb326ea4bbf55565d367c8cbc450dd8ea32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('efb90c69-9b4b-5dc6-a1fb-4cae30f11107', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_day_out_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '161c3c95186e4d0f58b0fdb33fcf40a7817ef77ddaadfc77dac69e5fd1a434eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('880665c6-f214-5884-83f7-3baf8376971c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('efb90c69-9b4b-5dc6-a1fb-4cae30f11107', 1), '161c3c95186e4d0f58b0fdb33fcf40a7817ef77ddaadfc77dac69e5fd1a434eb',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/1d8f2fee39ce44768274ac823d09fcb326ea4bbf55565d367c8cbc450dd8ea32.mp3', 1567, '2026-09-13 22:04:17.800455', '213fd47d368daaa6fa1f3380d938189f2f974d46e4e65ea86bdf454bb5bb52a9', 'validated', '{"audio_key":"1d8f2fee39ce44768274ac823d09fcb326ea4bbf55565d367c8cbc450dd8ea32","entity_key":"d_a1_day_out_capstone_02:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"213fd47d368daaa6fa1f3380d938189f2f974d46e4e65ea86bdf454bb5bb52a9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/1d8f2fee39ce44768274ac823d09fcb326ea4bbf55565d367c8cbc450dd8ea32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_basics_02:1 -> audio/generated/ko-KR/dialogues/1e523576570b6791579c1e40bb447c638dcfdad653692627d97e91eadda512bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e623861b-7ccf-5dd8-b0c9-7cb20929edfa', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_basics_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b6ee12dc760dcc9d3ff5d4c118824f23e054147728279aee53b5824aa0f3b25f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22dda7b2-cb6d-5899-9d1c-d0adfa755f7c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e623861b-7ccf-5dd8-b0c9-7cb20929edfa', 1), 'b6ee12dc760dcc9d3ff5d4c118824f23e054147728279aee53b5824aa0f3b25f',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/1e523576570b6791579c1e40bb447c638dcfdad653692627d97e91eadda512bf.mp3', 2638, '2026-09-13 22:04:18.679924', '7ac6c263ba548de7c10a21c599212b1043a8bf9209251e8135170e4e9a770ad8', 'validated', '{"audio_key":"1e523576570b6791579c1e40bb447c638dcfdad653692627d97e91eadda512bf","entity_key":"d_shopping_basics_02:1","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7ac6c263ba548de7c10a21c599212b1043a8bf9209251e8135170e4e9a770ad8","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/1e523576570b6791579c1e40bb447c638dcfdad653692627d97e91eadda512bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_01:4 -> audio/generated/ko-KR/dialogues/1f42e65cf9f712608dee34c66b1f987439b965fa780dcd55e304b5326511590a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('436fbe0e-d1e6-509c-9635-0eab584bf162', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89d145a46b1ce6bb8ed9de6c6e94251a6ae29e83df11454dfdd593b9ad4e620b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d9eeb93-864a-5947-9a66-1b05c81ba4ce', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('436fbe0e-d1e6-509c-9635-0eab584bf162', 1), '89d145a46b1ce6bb8ed9de6c6e94251a6ae29e83df11454dfdd593b9ad4e620b',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/1f42e65cf9f712608dee34c66b1f987439b965fa780dcd55e304b5326511590a.mp3', 1515, '2026-09-13 22:04:18.960252', '1204cddb5f1660c51f8e3f0fa7407a5eb52064e6b2e8cdbd0768e9f72f82452a', 'validated', '{"audio_key":"1f42e65cf9f712608dee34c66b1f987439b965fa780dcd55e304b5326511590a","entity_key":"d_getting_around_01:4","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1204cddb5f1660c51f8e3f0fa7407a5eb52064e6b2e8cdbd0768e9f72f82452a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/1f42e65cf9f712608dee34c66b1f987439b965fa780dcd55e304b5326511590a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_day_out_capstone_02:4 -> audio/generated/ko-KR/dialogues/20cc978c64466e571bd81edfa686fd7d0cdae7a9b4874926e33639ef1fabe897.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d76c383c-eb85-5670-9568-50d986695deb', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_day_out_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64ad13419a55064b21f574b9e2e2d1708a703b4d8d8dc8f41d20987a261b3c91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc26890f-1d6f-5df7-900f-0172338d8d21', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d76c383c-eb85-5670-9568-50d986695deb', 1), '64ad13419a55064b21f574b9e2e2d1708a703b4d8d8dc8f41d20987a261b3c91',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/20cc978c64466e571bd81edfa686fd7d0cdae7a9b4874926e33639ef1fabe897.mp3', 1619, '2026-09-13 22:04:19.697127', '8e146bf41878ee68ac0cfec934706550a876b328e204773a074058f921160e9c', 'validated', '{"audio_key":"20cc978c64466e571bd81edfa686fd7d0cdae7a9b4874926e33639ef1fabe897","entity_key":"d_a1_day_out_capstone_02:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8e146bf41878ee68ac0cfec934706550a876b328e204773a074058f921160e9c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/20cc978c64466e571bd81edfa686fd7d0cdae7a9b4874926e33639ef1fabe897.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_where_things_are_02:2 -> audio/generated/ko-KR/dialogues/2946abb51a7dc824ca84248aa5b00514f7c9d08cd4e4ebde2e437be7ea216fef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('12d62829-3ece-5a82-9762-6dab6822a6ea', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_where_things_are_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '554c56b2a2684c57eeddb77a0c94bc68ab8175394a9e9199c681c3eb68c05e0a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da88f1a4-b504-5d46-bdee-38554b1fac0b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('12d62829-3ece-5a82-9762-6dab6822a6ea', 1), '554c56b2a2684c57eeddb77a0c94bc68ab8175394a9e9199c681c3eb68c05e0a',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2946abb51a7dc824ca84248aa5b00514f7c9d08cd4e4ebde2e437be7ea216fef.mp3', 1253, '2026-09-13 22:04:19.953678', 'd7e2ef3e4d0895d0ff74e70fb1e008fb6319f8742762813638043816b9996e6f', 'validated', '{"audio_key":"2946abb51a7dc824ca84248aa5b00514f7c9d08cd4e4ebde2e437be7ea216fef","entity_key":"d_where_things_are_02:2","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d7e2ef3e4d0895d0ff74e70fb1e008fb6319f8742762813638043816b9996e6f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/2946abb51a7dc824ca84248aa5b00514f7c9d08cd4e4ebde2e437be7ea216fef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_schedule_02:1 -> audio/generated/ko-KR/dialogues/2bb19e8137432ddfccd51b68ed9867feb1654f92800c3eaa4b928e931aad7696.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f066996f-527f-5fc0-8994-b4998a06a4a6', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_schedule_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4bb130e6ed6d2c86b63c64233f2d749dcfb45e753dd056119cd6ad8447bf15be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2cb9ab9-3ba0-54bc-835b-15b41903786c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f066996f-527f-5fc0-8994-b4998a06a4a6', 1), '4bb130e6ed6d2c86b63c64233f2d749dcfb45e753dd056119cd6ad8447bf15be',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2bb19e8137432ddfccd51b68ed9867feb1654f92800c3eaa4b928e931aad7696.mp3', 1436, '2026-09-13 22:04:20.789998', '8f6eafd345032ab7b5bc748db99ba7c8836bd29ca185ab80014d8ea1e3e4c44a', 'validated', '{"audio_key":"2bb19e8137432ddfccd51b68ed9867feb1654f92800c3eaa4b928e931aad7696","entity_key":"d_time_and_schedule_02:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8f6eafd345032ab7b5bc748db99ba7c8836bd29ca185ab80014d8ea1e3e4c44a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/2bb19e8137432ddfccd51b68ed9867feb1654f92800c3eaa4b928e931aad7696.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_01:1 -> audio/generated/ko-KR/dialogues/2fec46b176089bfaa35b59ced314c43d6ac48dd6f7913e280b7f50c4bd938076.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f6e40478-b07b-54be-9d0f-33eda0aab506', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d62115087cb79cc88a24610cc1484a9cc309fc4346784083ea8ff91cc07982e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('55a6cf68-d3ea-5c1e-a476-043a35c2ca4d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f6e40478-b07b-54be-9d0f-33eda0aab506', 1), '2d62115087cb79cc88a24610cc1484a9cc309fc4346784083ea8ff91cc07982e',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2fec46b176089bfaa35b59ced314c43d6ac48dd6f7913e280b7f50c4bd938076.mp3', 2768, '2026-09-13 22:04:21.140310', '8f13401a7a4561ba7d47336745cd900e0a2f761d0f4d18305f9f1b9078543322', 'validated', '{"audio_key":"2fec46b176089bfaa35b59ced314c43d6ac48dd6f7913e280b7f50c4bd938076","entity_key":"d_getting_around_01:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8f13401a7a4561ba7d47336745cd900e0a2f761d0f4d18305f9f1b9078543322","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/2fec46b176089bfaa35b59ced314c43d6ac48dd6f7913e280b7f50c4bd938076.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_likes_and_dislikes_01:4 -> audio/generated/ko-KR/dialogues/355a38a7dd93078277de6e393d2c5ff529112ef83cc91cdc60dca88e6afe9e9a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d20b3cff-7d41-5654-a707-0ff9feb3c7df', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_likes_and_dislikes_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6fbab1dab524ea018972c7866c46f320fd852d56cab71a9dbeadeefff3ed42f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e48ad41d-1eee-5b89-9d78-5945206dd812', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d20b3cff-7d41-5654-a707-0ff9feb3c7df', 1), '6fbab1dab524ea018972c7866c46f320fd852d56cab71a9dbeadeefff3ed42f3',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/355a38a7dd93078277de6e393d2c5ff529112ef83cc91cdc60dca88e6afe9e9a.mp3', 1515, '2026-09-13 22:04:21.879029', '07c5de56b52baaa698b8c34da51b44ee28ac81a08f7ff3e79282c6f545031fc6', 'validated', '{"audio_key":"355a38a7dd93078277de6e393d2c5ff529112ef83cc91cdc60dca88e6afe9e9a","entity_key":"d_likes_and_dislikes_01:4","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"07c5de56b52baaa698b8c34da51b44ee28ac81a08f7ff3e79282c6f545031fc6","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/355a38a7dd93078277de6e393d2c5ff529112ef83cc91cdc60dca88e6afe9e9a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_identity_and_work_01:4 -> audio/generated/ko-KR/dialogues/3a03ca0eaa66d50fc060b87a211d908fb229a4b5ba7baf8f4d96c674929d4a74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2aef60b2-8f98-54d7-a6d7-b80143cb3263', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_identity_and_work_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '16dd512458d7f4c7483d71d318c5adb99601bcd6b439fb68bffc8aeceeff63cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9945756-64e0-51d1-9bc1-c386eec025c2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2aef60b2-8f98-54d7-a6d7-b80143cb3263', 1), '16dd512458d7f4c7483d71d318c5adb99601bcd6b439fb68bffc8aeceeff63cb',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/3a03ca0eaa66d50fc060b87a211d908fb229a4b5ba7baf8f4d96c674929d4a74.mp3', 1097, '2026-09-13 22:04:22.093469', '972ae7e51c1a0ea9b6f26cc73e69459b18217b34b7a80cf04c555d9db058680b', 'validated', '{"audio_key":"3a03ca0eaa66d50fc060b87a211d908fb229a4b5ba7baf8f4d96c674929d4a74","entity_key":"d_identity_and_work_01:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"972ae7e51c1a0ea9b6f26cc73e69459b18217b34b7a80cf04c555d9db058680b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/3a03ca0eaa66d50fc060b87a211d908fb229a4b5ba7baf8f4d96c674929d4a74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cafe_orders_01:1 -> audio/generated/ko-KR/dialogues/3e4203b1696ee63ae90fea90c21127d055fa9c8b665b62f45898fcf64e183cca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e327791b-ec9b-58a7-898a-bdfd7d1fbd2b', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cafe_orders_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d1ed1ec67e14199d79e272e8f996de4b6b2b00022aa744229fb23e1c6f93dc1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe0e9eb6-8d14-53d2-a03c-3482dd3d0264', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e327791b-ec9b-58a7-898a-bdfd7d1fbd2b', 1), '0d1ed1ec67e14199d79e272e8f996de4b6b2b00022aa744229fb23e1c6f93dc1',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/3e4203b1696ee63ae90fea90c21127d055fa9c8b665b62f45898fcf64e183cca.mp3', 1854, '2026-09-13 22:04:22.865815', '73a7fb1dac91a4cba7905ad535e5b4ec8a442998ef410b391c463b8bbeb42600', 'validated', '{"audio_key":"3e4203b1696ee63ae90fea90c21127d055fa9c8b665b62f45898fcf64e183cca","entity_key":"d_cafe_orders_01:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"73a7fb1dac91a4cba7905ad535e5b4ec8a442998ef410b391c463b8bbeb42600","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/3e4203b1696ee63ae90fea90c21127d055fa9c8b665b62f45898fcf64e183cca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_likes_and_dislikes_01:2 -> audio/generated/ko-KR/dialogues/3ea69b55936356f8e87cdca2c040614e5797a09e5131cac4fc27c81536c21eb5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('599c5996-c350-5660-80c5-804abe30c272', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_likes_and_dislikes_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2763ef289c3930aaa8fa654e3f9289a99b7f3313aa74dcae077161c7685e4194'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc3577a5-1fdd-5053-95d5-2d99dff9a75e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('599c5996-c350-5660-80c5-804abe30c272', 1), '2763ef289c3930aaa8fa654e3f9289a99b7f3313aa74dcae077161c7685e4194',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/3ea69b55936356f8e87cdca2c040614e5797a09e5131cac4fc27c81536c21eb5.mp3', 1671, '2026-09-13 22:04:23.175853', '8cff6e56943042f4f0123a22cc2b60351f93fa29529086015deebc42baa011b2', 'validated', '{"audio_key":"3ea69b55936356f8e87cdca2c040614e5797a09e5131cac4fc27c81536c21eb5","entity_key":"d_likes_and_dislikes_01:2","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8cff6e56943042f4f0123a22cc2b60351f93fa29529086015deebc42baa011b2","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/3ea69b55936356f8e87cdca2c040614e5797a09e5131cac4fc27c81536c21eb5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_and_people_02:4 -> audio/generated/ko-KR/dialogues/44b530bea5f93bd9e94e5cabd945206b2d3a781dbefa68f1bed6506bd3a69f51.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ddff6e59-6c73-55ae-9ae0-a29c76d979cd', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_and_people_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0b33af12e992cdb29825060a38a9ad66b5c11121716c30fa6d714a68dcc9153'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f958e648-46e0-54c1-ac90-1f7f56535061', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ddff6e59-6c73-55ae-9ae0-a29c76d979cd', 1), 'd0b33af12e992cdb29825060a38a9ad66b5c11121716c30fa6d714a68dcc9153',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/44b530bea5f93bd9e94e5cabd945206b2d3a781dbefa68f1bed6506bd3a69f51.mp3', 1071, '2026-09-13 22:04:23.824851', 'e5b0d60a6b79e849dcb1ed4fdc55fb4f62170a82e1a8a2b72c619e7ce551c153', 'validated', '{"audio_key":"44b530bea5f93bd9e94e5cabd945206b2d3a781dbefa68f1bed6506bd3a69f51","entity_key":"d_family_and_people_02:4","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e5b0d60a6b79e849dcb1ed4fdc55fb4f62170a82e1a8a2b72c619e7ce551c153","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/44b530bea5f93bd9e94e5cabd945206b2d3a781dbefa68f1bed6506bd3a69f51.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_likes_and_dislikes_02:4 -> audio/generated/ko-KR/dialogues/474d8f5785b3a23bee45713c52fc0586b4634b245cecd26f757baf3582467b3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2c99cecb-368a-57cc-b73f-09249a38dcc5', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_likes_and_dislikes_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '265c153c41786eae5562a2cca0983998a63a05b42e89fa3c493b305186b84613'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a7ae23a-9adc-5101-ae6c-c3b6f27344ee', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2c99cecb-368a-57cc-b73f-09249a38dcc5', 1), '265c153c41786eae5562a2cca0983998a63a05b42e89fa3c493b305186b84613',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/474d8f5785b3a23bee45713c52fc0586b4634b245cecd26f757baf3582467b3b.mp3', 1515, '2026-09-13 22:04:24.171675', '0692b9563c76ae1e13637acf6e2be077243ed16d7783de5a06953633173671e3', 'validated', '{"audio_key":"474d8f5785b3a23bee45713c52fc0586b4634b245cecd26f757baf3582467b3b","entity_key":"d_likes_and_dislikes_02:4","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0692b9563c76ae1e13637acf6e2be077243ed16d7783de5a06953633173671e3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/474d8f5785b3a23bee45713c52fc0586b4634b245cecd26f757baf3582467b3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_daily_routine_01:4 -> audio/generated/ko-KR/dialogues/489a0e635041ed9d31efeea297099832c195605d84ae40debc9e69c99a0c044a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e4ff2745-eed9-56e9-9fc5-e9eea3c84b9f', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_daily_routine_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a2ac4d82b069428a0bc15050ad2e3b9a1ae3d524d18a117c11de48285718b212'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b500fab2-7bb3-5ede-9fb1-30f295537c2f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e4ff2745-eed9-56e9-9fc5-e9eea3c84b9f', 1), 'a2ac4d82b069428a0bc15050ad2e3b9a1ae3d524d18a117c11de48285718b212',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/489a0e635041ed9d31efeea297099832c195605d84ae40debc9e69c99a0c044a.mp3', 1567, '2026-09-13 22:04:24.823792', '9dd7c403f8e9deb365fe28b66b9d829ceab0cd512c2bf98dd3cd78d32c17e0f9', 'validated', '{"audio_key":"489a0e635041ed9d31efeea297099832c195605d84ae40debc9e69c99a0c044a","entity_key":"d_daily_routine_01:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9dd7c403f8e9deb365fe28b66b9d829ceab0cd512c2bf98dd3cd78d32c17e0f9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/489a0e635041ed9d31efeea297099832c195605d84ae40debc9e69c99a0c044a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_day_out_capstone_01:3 -> audio/generated/ko-KR/dialogues/4bafe0477e28e861a9952adfc471f692a062768a30cc7559ea8fbfb122e9f0fd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8286160a-8a31-57c7-a45c-476ddf0a88fe', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_day_out_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '913b0e32cb0718b2be8b0cdce635040f46d0bd68c0f326703180587258a5ac63'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e07530cd-4aad-5c41-8825-8b8e3e3fc5d8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8286160a-8a31-57c7-a45c-476ddf0a88fe', 1), '913b0e32cb0718b2be8b0cdce635040f46d0bd68c0f326703180587258a5ac63',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/4bafe0477e28e861a9952adfc471f692a062768a30cc7559ea8fbfb122e9f0fd.mp3', 1906, '2026-09-13 22:04:25.182187', 'd99d36d89c307e72a87fce6281863cdfd6e895c50275db85b727aa6bbc3869a9', 'validated', '{"audio_key":"4bafe0477e28e861a9952adfc471f692a062768a30cc7559ea8fbfb122e9f0fd","entity_key":"d_a1_day_out_capstone_01:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d99d36d89c307e72a87fce6281863cdfd6e895c50275db85b727aa6bbc3869a9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/4bafe0477e28e861a9952adfc471f692a062768a30cc7559ea8fbfb122e9f0fd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_basics_02:2 -> audio/generated/ko-KR/dialogues/4e1da30dd418911ba1513fa2ce5e9b7edc77f2f02e52eb8606d73072a3796fd9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1883806f-6811-5181-b6c9-fbcd062469ff', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_basics_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '07c2ccf8d75da9d3e7a623dd78e2f25d0916d263a7ee6b6867ff28608a0e71ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd91b1b8-b16e-5e03-aa01-afba210abf74', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1883806f-6811-5181-b6c9-fbcd062469ff', 1), '07c2ccf8d75da9d3e7a623dd78e2f25d0916d263a7ee6b6867ff28608a0e71ce',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/4e1da30dd418911ba1513fa2ce5e9b7edc77f2f02e52eb8606d73072a3796fd9.mp3', 1149, '2026-09-13 22:04:25.810291', '4cfd1e782a39ea7f7d64be0ed0458aa288ae907b80a76109b91c8f08f2c547f3', 'validated', '{"audio_key":"4e1da30dd418911ba1513fa2ce5e9b7edc77f2f02e52eb8606d73072a3796fd9","entity_key":"d_shopping_basics_02:2","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4cfd1e782a39ea7f7d64be0ed0458aa288ae907b80a76109b91c8f08f2c547f3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/4e1da30dd418911ba1513fa2ce5e9b7edc77f2f02e52eb8606d73072a3796fd9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_daily_routine_02:3 -> audio/generated/ko-KR/dialogues/51ab58ea92be467b06d9dff56e98630506bcf50ab716111b8a08fce6c61c57e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('420d3837-32ab-5b96-a20b-c36d675d40b2', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_daily_routine_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0afa22163f7a10ff233697ee3ac28bf7b03d485243846e45412742c06978a96c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('74c60673-a255-52ae-9fa0-a99332486886', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('420d3837-32ab-5b96-a20b-c36d675d40b2', 1), '0afa22163f7a10ff233697ee3ac28bf7b03d485243846e45412742c06978a96c',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/51ab58ea92be467b06d9dff56e98630506bcf50ab716111b8a08fce6c61c57e8.mp3', 1253, '2026-09-13 22:04:26.209087', '989c303f5b978ef9adbe897e30efb754a51b921f47f38dba7c427bb180179c87', 'validated', '{"audio_key":"51ab58ea92be467b06d9dff56e98630506bcf50ab716111b8a08fce6c61c57e8","entity_key":"d_daily_routine_02:3","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"989c303f5b978ef9adbe897e30efb754a51b921f47f38dba7c427bb180179c87","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/51ab58ea92be467b06d9dff56e98630506bcf50ab716111b8a08fce6c61c57e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_and_people_02:2 -> audio/generated/ko-KR/dialogues/52a19bb2329a1ff9149cbcf213737abf09fa7633f2c505ca0130bee825c902b9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('17733215-1595-5b99-9bf8-14ddea486ac5', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_and_people_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ef3d87c1bb27a04bc61b00be948b237e6bf2968cf5c71c9073043887509d967'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2447990e-a242-599b-bc12-5aaf9afd0fef', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('17733215-1595-5b99-9bf8-14ddea486ac5', 1), '5ef3d87c1bb27a04bc61b00be948b237e6bf2968cf5c71c9073043887509d967',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/52a19bb2329a1ff9149cbcf213737abf09fa7633f2c505ca0130bee825c902b9.mp3', 1567, '2026-09-13 22:04:26.827238', 'e5c03183fa629e41efddcbb17930b41737f8a935540e7b47a5e6c93a75d9eb91', 'validated', '{"audio_key":"52a19bb2329a1ff9149cbcf213737abf09fa7633f2c505ca0130bee825c902b9","entity_key":"d_family_and_people_02:2","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e5c03183fa629e41efddcbb17930b41737f8a935540e7b47a5e6c93a75d9eb91","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/52a19bb2329a1ff9149cbcf213737abf09fa7633f2c505ca0130bee825c902b9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_day_out_capstone_02:3 -> audio/generated/ko-KR/dialogues/53b36e33cc608d5d75349ca784c2a79bee06d2feaf5957f44724124c7ea9b9de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b496fa3a-4cc3-59d8-8c75-d9d0e43e002c', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_day_out_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b849c991e016825b192f37d868d487aaf6af8feecbd5c4d486ea69088e86d15d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('010a2105-4e83-5e86-bae1-6843b432e5fc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b496fa3a-4cc3-59d8-8c75-d9d0e43e002c', 1), 'b849c991e016825b192f37d868d487aaf6af8feecbd5c4d486ea69088e86d15d',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/53b36e33cc608d5d75349ca784c2a79bee06d2feaf5957f44724124c7ea9b9de.mp3', 1488, '2026-09-13 22:04:27.258515', '6eb9773f250c71e5b55efcafbb68f58032aa2e66aae9db0059a53515034fc6d2', 'validated', '{"audio_key":"53b36e33cc608d5d75349ca784c2a79bee06d2feaf5957f44724124c7ea9b9de","entity_key":"d_a1_day_out_capstone_02:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6eb9773f250c71e5b55efcafbb68f58032aa2e66aae9db0059a53515034fc6d2","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/53b36e33cc608d5d75349ca784c2a79bee06d2feaf5957f44724124c7ea9b9de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_identity_and_work_02:1 -> audio/generated/ko-KR/dialogues/54c0de2a8792b4bfdf2033d0cb6e8ba454951a88d040651b010289105b093cd0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f6c690f2-2edc-53c4-85e5-94c27541174c', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_identity_and_work_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ba93907ad4e64764376573580000330dc4165ed6b1a81b983deba6d3479196d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e28f538-2a2b-5ead-9b71-1466e0f92f02', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f6c690f2-2edc-53c4-85e5-94c27541174c', 1), '7ba93907ad4e64764376573580000330dc4165ed6b1a81b983deba6d3479196d',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/54c0de2a8792b4bfdf2033d0cb6e8ba454951a88d040651b010289105b093cd0.mp3', 1933, '2026-09-13 22:04:27.894404', '169bd8e1317fb48e5d03d02ee65e7ede6035d591f8770b3cfee61336f334b2b8', 'validated', '{"audio_key":"54c0de2a8792b4bfdf2033d0cb6e8ba454951a88d040651b010289105b093cd0","entity_key":"d_identity_and_work_02:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"169bd8e1317fb48e5d03d02ee65e7ede6035d591f8770b3cfee61336f334b2b8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/54c0de2a8792b4bfdf2033d0cb6e8ba454951a88d040651b010289105b093cd0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cafe_orders_01:2 -> audio/generated/ko-KR/dialogues/553303f95598894c0bf92987c93c2a9c3b14a7f4dc95a63346e46c2c26d4e0dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('98fc62d3-84ea-5243-9095-bed8ef465806', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cafe_orders_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae1e358bac3eb55c30c99ae7b114df38339b3fefd2f826b76e04550cf440e83b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e875664-71b6-5f5b-8ba8-5a06ff772965', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('98fc62d3-84ea-5243-9095-bed8ef465806', 1), 'ae1e358bac3eb55c30c99ae7b114df38339b3fefd2f826b76e04550cf440e83b',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/553303f95598894c0bf92987c93c2a9c3b14a7f4dc95a63346e46c2c26d4e0dc.mp3', 1619, '2026-09-13 22:04:28.291576', 'a47b66db31fdc79693a4bf60d26839b24b2b86b3649346f3cffec0109061fea7', 'validated', '{"audio_key":"553303f95598894c0bf92987c93c2a9c3b14a7f4dc95a63346e46c2c26d4e0dc","entity_key":"d_cafe_orders_01:2","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a47b66db31fdc79693a4bf60d26839b24b2b86b3649346f3cffec0109061fea7","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/553303f95598894c0bf92987c93c2a9c3b14a7f4dc95a63346e46c2c26d4e0dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_02:4 -> audio/generated/ko-KR/dialogues/5f731f7fa7b43276931b5f11bea8ccd76d61a967ea31fab6fcd303f1dafc9ac4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('50bda4b3-b7a4-5f23-be4b-5a8b1d5a1f7e', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '891299bb552b650f043fb3ab493f5e529d5bec9e3bea1bf40968cc2aab90a254'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76eb26cc-4ac4-5ebf-a117-3fbface2d6db', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('50bda4b3-b7a4-5f23-be4b-5a8b1d5a1f7e', 1), '891299bb552b650f043fb3ab493f5e529d5bec9e3bea1bf40968cc2aab90a254',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/5f731f7fa7b43276931b5f11bea8ccd76d61a967ea31fab6fcd303f1dafc9ac4.mp3', 2115, '2026-09-13 22:04:28.924612', '14f66d6bf394254df376631ef1c2be09341638e52a8b9380a49e0caa72b417c8', 'validated', '{"audio_key":"5f731f7fa7b43276931b5f11bea8ccd76d61a967ea31fab6fcd303f1dafc9ac4","entity_key":"d_getting_around_02:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"14f66d6bf394254df376631ef1c2be09341638e52a8b9380a49e0caa72b417c8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/5f731f7fa7b43276931b5f11bea8ccd76d61a967ea31fab6fcd303f1dafc9ac4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_likes_and_dislikes_02:3 -> audio/generated/ko-KR/dialogues/60e1a436f6cdfe5aa1fd9017cd6e0006e6cef067fbaa49e4f72307255418322b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7ef687f1-8798-507b-a27f-219eb617dd6f', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_likes_and_dislikes_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf2bc0ea61ee712d593901b6610698826c3eb0cb6963a2bd96db19e69a1a0228'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36f17063-9e61-5eb9-aeec-a024a2827d4f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7ef687f1-8798-507b-a27f-219eb617dd6f', 1), 'bf2bc0ea61ee712d593901b6610698826c3eb0cb6963a2bd96db19e69a1a0228',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/60e1a436f6cdfe5aa1fd9017cd6e0006e6cef067fbaa49e4f72307255418322b.mp3', 1071, '2026-09-13 22:04:29.234978', '39a61bdbc6c415a5b43c1a166d90ecccff9e249f8010cecb53d86fb67f2a5b9b', 'validated', '{"audio_key":"60e1a436f6cdfe5aa1fd9017cd6e0006e6cef067fbaa49e4f72307255418322b","entity_key":"d_likes_and_dislikes_02:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"39a61bdbc6c415a5b43c1a166d90ecccff9e249f8010cecb53d86fb67f2a5b9b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/60e1a436f6cdfe5aa1fd9017cd6e0006e6cef067fbaa49e4f72307255418322b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_day_out_capstone_01:2 -> audio/generated/ko-KR/dialogues/69efed7d79a92bd90884963b885d3cfe6d7299121a8da4763abbafbb79bff28d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b9b34a0e-cfcd-53c7-b74c-b1a962385af1', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_day_out_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4189177d1045cf2bfb99b6fd00a0cfd3e122bb50eb0da3d1bb1915b09f9eedbf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('836a7c5c-e291-5e92-923d-bbf49d2f4616', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b9b34a0e-cfcd-53c7-b74c-b1a962385af1', 1), '4189177d1045cf2bfb99b6fd00a0cfd3e122bb50eb0da3d1bb1915b09f9eedbf',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/69efed7d79a92bd90884963b885d3cfe6d7299121a8da4763abbafbb79bff28d.mp3', 1933, '2026-09-13 22:04:29.987499', '06d0ddf11be5fd510752dce29c7b7fbdfc0603c5a9afbdd9831d4ca7b9a63dfe', 'validated', '{"audio_key":"69efed7d79a92bd90884963b885d3cfe6d7299121a8da4763abbafbb79bff28d","entity_key":"d_a1_day_out_capstone_01:2","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"06d0ddf11be5fd510752dce29c7b7fbdfc0603c5a9afbdd9831d4ca7b9a63dfe","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/69efed7d79a92bd90884963b885d3cfe6d7299121a8da4763abbafbb79bff28d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_identity_and_work_02:2 -> audio/generated/ko-KR/dialogues/6adb226716c59da01469d33e8fc93e3d71bdc2b24f45e523085f4cac508627f3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d1934518-1945-5230-b348-9dc6c5a7e681', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_identity_and_work_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cfd38b0a5356c57e9a532eb84896fe56c2c2d4fba4cb8635c1a47ef0cf2524e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3379a09f-4598-5ac0-b409-a0dc01cdd8f1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d1934518-1945-5230-b348-9dc6c5a7e681', 1), 'cfd38b0a5356c57e9a532eb84896fe56c2c2d4fba4cb8635c1a47ef0cf2524e2',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6adb226716c59da01469d33e8fc93e3d71bdc2b24f45e523085f4cac508627f3.mp3', 1933, '2026-09-13 22:04:30.278325', '64719ff1d7ad5371030fca800a0a2becc5011b37c24951e64c467bf597f1d053', 'validated', '{"audio_key":"6adb226716c59da01469d33e8fc93e3d71bdc2b24f45e523085f4cac508627f3","entity_key":"d_identity_and_work_02:2","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"64719ff1d7ad5371030fca800a0a2becc5011b37c24951e64c467bf597f1d053","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/6adb226716c59da01469d33e8fc93e3d71bdc2b24f45e523085f4cac508627f3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_where_things_are_02:4 -> audio/generated/ko-KR/dialogues/6c8c558d019c7cd0fa20c5d35361bf53b82649d982499310a3a8bec7e5359abe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('86c7bece-7c9a-57dd-8121-72bb59152d44', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_where_things_are_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68f49bf17446ffee651a69cfdf736c15807a67549347f6f8262a52ec402cdad4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a37fb61-c67d-5448-9ef4-abfd535333da', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('86c7bece-7c9a-57dd-8121-72bb59152d44', 1), '68f49bf17446ffee651a69cfdf736c15807a67549347f6f8262a52ec402cdad4',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6c8c558d019c7cd0fa20c5d35361bf53b82649d982499310a3a8bec7e5359abe.mp3', 1515, '2026-09-13 22:04:30.986630', '10cc59502598a21c1087ecba8344fca53281e896f57a13ecdde8b198610a4b19', 'validated', '{"audio_key":"6c8c558d019c7cd0fa20c5d35361bf53b82649d982499310a3a8bec7e5359abe","entity_key":"d_where_things_are_02:4","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"10cc59502598a21c1087ecba8344fca53281e896f57a13ecdde8b198610a4b19","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/6c8c558d019c7cd0fa20c5d35361bf53b82649d982499310a3a8bec7e5359abe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_and_people_01:4 -> audio/generated/ko-KR/dialogues/6f836ff6f47acbdc0b620d422a0b8e6aef263e4e3cebb25db09733ecbdb1ceb5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8772a908-3ca9-525f-b5ea-c50e2691bcd3', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_and_people_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4340873acab0d4c96649dd9d2309dac31824e4c5a4f9c7a7eb2bb8101f54e855'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3700a4db-1658-5076-b237-e6c6b9fefbbd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8772a908-3ca9-525f-b5ea-c50e2691bcd3', 1), '4340873acab0d4c96649dd9d2309dac31824e4c5a4f9c7a7eb2bb8101f54e855',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6f836ff6f47acbdc0b620d422a0b8e6aef263e4e3cebb25db09733ecbdb1ceb5.mp3', 1201, '2026-09-13 22:04:31.239835', '6fbf801a51642ba03460d9b7b2e27677e9ea210433607fa6eec36707991b8c35', 'validated', '{"audio_key":"6f836ff6f47acbdc0b620d422a0b8e6aef263e4e3cebb25db09733ecbdb1ceb5","entity_key":"d_family_and_people_01:4","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6fbf801a51642ba03460d9b7b2e27677e9ea210433607fa6eec36707991b8c35","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/6f836ff6f47acbdc0b620d422a0b8e6aef263e4e3cebb25db09733ecbdb1ceb5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_identity_and_work_01:3 -> audio/generated/ko-KR/dialogues/70e319dbed196b1732c17760e3889cffeec705840d78546d9548f0012d12c7ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5a310f34-226c-52fd-b434-b5d337f8c283', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_identity_and_work_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43a8c905a494fb5c38e1720b12045bf3363df3c508d75646c466a4b2dc64331d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('126b1c50-d216-58c5-aba9-584fd1f9225a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5a310f34-226c-52fd-b434-b5d337f8c283', 1), '43a8c905a494fb5c38e1720b12045bf3363df3c508d75646c466a4b2dc64331d',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/70e319dbed196b1732c17760e3889cffeec705840d78546d9548f0012d12c7ef.mp3', 1436, '2026-09-13 22:04:32.019348', '30bb3d47d054f67b667b33c029970f82f9954818a754e5fd76166869f362e2bc', 'validated', '{"audio_key":"70e319dbed196b1732c17760e3889cffeec705840d78546d9548f0012d12c7ef","entity_key":"d_identity_and_work_01:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"30bb3d47d054f67b667b33c029970f82f9954818a754e5fd76166869f362e2bc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/70e319dbed196b1732c17760e3889cffeec705840d78546d9548f0012d12c7ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_01:3 -> audio/generated/ko-KR/dialogues/712fa2b33f85050084b25c1c740b3ca1fae55edc13ce74520ef360aac2fb4fb3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('91093f7c-72c1-538c-961d-c2eab3ecafad', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a6be18494439e19e81f76410485f32efa35188cf11012f4aa48af99669811b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e261124-b2bb-5a07-880a-deb63a5c8578', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('91093f7c-72c1-538c-961d-c2eab3ecafad', 1), '1a6be18494439e19e81f76410485f32efa35188cf11012f4aa48af99669811b5',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/712fa2b33f85050084b25c1c740b3ca1fae55edc13ce74520ef360aac2fb4fb3.mp3', 914, '2026-09-13 22:04:32.178931', '1a9f3f61520136b975533fd090f3f3de449513b9a91057f039599123dbf2ebbf', 'validated', '{"audio_key":"712fa2b33f85050084b25c1c740b3ca1fae55edc13ce74520ef360aac2fb4fb3","entity_key":"d_getting_around_01:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1a9f3f61520136b975533fd090f3f3de449513b9a91057f039599123dbf2ebbf","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/712fa2b33f85050084b25c1c740b3ca1fae55edc13ce74520ef360aac2fb4fb3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_basics_01:3 -> audio/generated/ko-KR/dialogues/73e7365d733e3914f8f834c478db1e6d121d61857e9a9aa4e5eb8d7bb02cbcd7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('808db77b-5825-5f4a-9459-9ef69cfbd493', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_basics_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a6d6078330307f22bd0e8d82cf697ed51e0a4fe6de4a5492a84213a471c55f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc263dfa-7698-5c33-b030-83686a59784a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('808db77b-5825-5f4a-9459-9ef69cfbd493', 1), '5a6d6078330307f22bd0e8d82cf697ed51e0a4fe6de4a5492a84213a471c55f3',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/73e7365d733e3914f8f834c478db1e6d121d61857e9a9aa4e5eb8d7bb02cbcd7.mp3', 1280, '2026-09-13 22:04:33.084333', '1b495bca47b03280a5082c339f2daf337f0cdde10b8440b9aa150a12ee90ecab', 'validated', '{"audio_key":"73e7365d733e3914f8f834c478db1e6d121d61857e9a9aa4e5eb8d7bb02cbcd7","entity_key":"d_shopping_basics_01:3","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1b495bca47b03280a5082c339f2daf337f0cdde10b8440b9aa150a12ee90ecab","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/73e7365d733e3914f8f834c478db1e6d121d61857e9a9aa4e5eb8d7bb02cbcd7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_02:1 -> audio/generated/ko-KR/dialogues/76f40046fd1604065a0c8f02659fbddf13519433d156e049810bc27d39831bcd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6743e7ae-4e67-5f38-9e21-418f6cbc732f', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '21e62d7df81cf6594506d363d0d6d8a2ec1c4e51490809c60e76e01f51e23c29'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de333623-3b5d-5f7c-8a15-e7e9a9bcf76a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6743e7ae-4e67-5f38-9e21-418f6cbc732f', 1), '21e62d7df81cf6594506d363d0d6d8a2ec1c4e51490809c60e76e01f51e23c29',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/76f40046fd1604065a0c8f02659fbddf13519433d156e049810bc27d39831bcd.mp3', 1854, '2026-09-13 22:04:33.225571', 'f9198e169bde047a50a5bce1fd98b60e90023abf461e61e37c8212492699b0d5', 'validated', '{"audio_key":"76f40046fd1604065a0c8f02659fbddf13519433d156e049810bc27d39831bcd","entity_key":"d_getting_around_02:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f9198e169bde047a50a5bce1fd98b60e90023abf461e61e37c8212492699b0d5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/76f40046fd1604065a0c8f02659fbddf13519433d156e049810bc27d39831bcd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_schedule_02:2 -> audio/generated/ko-KR/dialogues/7fa0fd84bc2c8b23ee7a0f3cd8ad1e76add1f1c451d33ab5e5344e84d4f09ac5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2324b605-6ca7-547f-96fc-3b2532f662e5', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_schedule_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1cb15077820b1183d8b2ef37cca49802559fdde2c1beafa3168e631df4377fe2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3c26ced-c3e0-5538-bb70-97abb5a2b340', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2324b605-6ca7-547f-96fc-3b2532f662e5', 1), '1cb15077820b1183d8b2ef37cca49802559fdde2c1beafa3168e631df4377fe2',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7fa0fd84bc2c8b23ee7a0f3cd8ad1e76add1f1c451d33ab5e5344e84d4f09ac5.mp3', 1253, '2026-09-13 22:04:34.193550', '87c6452409798892820cc8f07ed1fe5e64cc06973f07544140317075a970e0f1', 'validated', '{"audio_key":"7fa0fd84bc2c8b23ee7a0f3cd8ad1e76add1f1c451d33ab5e5344e84d4f09ac5","entity_key":"d_time_and_schedule_02:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"87c6452409798892820cc8f07ed1fe5e64cc06973f07544140317075a970e0f1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/7fa0fd84bc2c8b23ee7a0f3cd8ad1e76add1f1c451d33ab5e5344e84d4f09ac5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_schedule_01:2 -> audio/generated/ko-KR/dialogues/7ff68eafa16ca0e9f15fb2c67ee75ae9537205e6a3f68e4fed105c41553e3250.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f3257f31-5bfe-52f3-ba39-ee7cfe55cb02', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_schedule_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '91ae1c2fcff00739970a7b610c83276b49f0879ec6e5191fef38c76e098cbda2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('04e12957-08b8-51b0-a5fd-62e14e2be5c6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f3257f31-5bfe-52f3-ba39-ee7cfe55cb02', 1), '91ae1c2fcff00739970a7b610c83276b49f0879ec6e5191fef38c76e098cbda2',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7ff68eafa16ca0e9f15fb2c67ee75ae9537205e6a3f68e4fed105c41553e3250.mp3', 1201, '2026-09-13 22:04:34.259766', '26ffc3e7f918397748ec860403e071472f936036850023b9467038040757e0aa', 'validated', '{"audio_key":"7ff68eafa16ca0e9f15fb2c67ee75ae9537205e6a3f68e4fed105c41553e3250","entity_key":"d_time_and_schedule_01:2","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"26ffc3e7f918397748ec860403e071472f936036850023b9467038040757e0aa","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/7ff68eafa16ca0e9f15fb2c67ee75ae9537205e6a3f68e4fed105c41553e3250.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_daily_routine_01:1 -> audio/generated/ko-KR/dialogues/829d7374e9bca4a6ff3921e4b1da18af853704a1eade515c441e5a182ee29def.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3ce019cc-374d-5108-8456-8756f177dd40', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_daily_routine_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5389c2f27d84562336e1b865f5aabf9a74360e6e4c093d0a322989de8cc7d692'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50ef9ee5-9bf6-50f6-a62e-5313729c93ec', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3ce019cc-374d-5108-8456-8756f177dd40', 1), '5389c2f27d84562336e1b865f5aabf9a74360e6e4c093d0a322989de8cc7d692',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/829d7374e9bca4a6ff3921e4b1da18af853704a1eade515c441e5a182ee29def.mp3', 1933, '2026-09-13 22:04:35.318319', 'e50092e7ce46419b77e10fd582d5ae4ac01e670a263b6600ce7e917b36ad7d53', 'validated', '{"audio_key":"829d7374e9bca4a6ff3921e4b1da18af853704a1eade515c441e5a182ee29def","entity_key":"d_daily_routine_01:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e50092e7ce46419b77e10fd582d5ae4ac01e670a263b6600ce7e917b36ad7d53","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/829d7374e9bca4a6ff3921e4b1da18af853704a1eade515c441e5a182ee29def.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_schedule_02:3 -> audio/generated/ko-KR/dialogues/83a42d3bface5ac8ad20aa812836f7596e22da6f7296a40b9271298ead9a4665.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4c4bbbdb-d824-5384-9c94-b523b7c5d463', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_schedule_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6832846b54e471c9fc23c61879ae70838d995da32c1f5c6f26de0fbe8df1cd1f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1d3842b5-a716-582f-9d99-3c87b28dc445', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4c4bbbdb-d824-5384-9c94-b523b7c5d463', 1), '6832846b54e471c9fc23c61879ae70838d995da32c1f5c6f26de0fbe8df1cd1f',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/83a42d3bface5ac8ad20aa812836f7596e22da6f7296a40b9271298ead9a4665.mp3', 1201, '2026-09-13 22:04:35.318226', 'fb84397017861628c094224928f054da63205def18b1cee158ac30a2b7313a60', 'validated', '{"audio_key":"83a42d3bface5ac8ad20aa812836f7596e22da6f7296a40b9271298ead9a4665","entity_key":"d_time_and_schedule_02:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb84397017861628c094224928f054da63205def18b1cee158ac30a2b7313a60","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/83a42d3bface5ac8ad20aa812836f7596e22da6f7296a40b9271298ead9a4665.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_identity_and_work_01:1 -> audio/generated/ko-KR/dialogues/844df5260a871e9ecaec88db2a1e32190692f5ab99ddc6aae8525975a11ecdc4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bde78042-6c2e-5eee-a00d-f02114f22eca', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_identity_and_work_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f24b5c68e546643eb3e0de0bcc3888f408ecd4b3c4bd5fc85c5fa054c91cbfc3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5fc04efa-655f-5b43-9acf-622784079084', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bde78042-6c2e-5eee-a00d-f02114f22eca', 1), 'f24b5c68e546643eb3e0de0bcc3888f408ecd4b3c4bd5fc85c5fa054c91cbfc3',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/844df5260a871e9ecaec88db2a1e32190692f5ab99ddc6aae8525975a11ecdc4.mp3', 1671, '2026-09-13 22:04:36.419022', '7fe918223ef1a06ac8a2e769da260636cee97d213e7a2cb7e7081892d922d99a', 'validated', '{"audio_key":"844df5260a871e9ecaec88db2a1e32190692f5ab99ddc6aae8525975a11ecdc4","entity_key":"d_identity_and_work_01:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7fe918223ef1a06ac8a2e769da260636cee97d213e7a2cb7e7081892d922d99a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/844df5260a871e9ecaec88db2a1e32190692f5ab99ddc6aae8525975a11ecdc4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_and_people_02:3 -> audio/generated/ko-KR/dialogues/8533956fef6f63c098e2e4702d367dd990a682f8d945daf443fe531d841f6763.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ddec16c4-fea3-55ce-859e-825e3097c0db', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_and_people_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c383e9f2202fc9a58cfadc87e885bba47e297c3216cb145622f967826ac5a608'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b5719bf4-4a33-5c97-bf1f-d118de4914f1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ddec16c4-fea3-55ce-859e-825e3097c0db', 1), 'c383e9f2202fc9a58cfadc87e885bba47e297c3216cb145622f967826ac5a608',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/8533956fef6f63c098e2e4702d367dd990a682f8d945daf443fe531d841f6763.mp3', 1384, '2026-09-13 22:04:36.329658', '6cfded84e1cec4eae0ad8f4bac3aa3a39ef76cb9a26efbf1ed36ed8f2a582ac5', 'validated', '{"audio_key":"8533956fef6f63c098e2e4702d367dd990a682f8d945daf443fe531d841f6763","entity_key":"d_family_and_people_02:3","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6cfded84e1cec4eae0ad8f4bac3aa3a39ef76cb9a26efbf1ed36ed8f2a582ac5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/8533956fef6f63c098e2e4702d367dd990a682f8d945daf443fe531d841f6763.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_identity_and_work_02:4 -> audio/generated/ko-KR/dialogues/87651c00b8fc28e5d88234004722da2a00f445000e5b75f9d4e38a955a64a030.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d9247311-43f6-560a-b8a8-02163edab4ae', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_identity_and_work_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6c83150380e678f0cd644b02bfdece591ebc63dec53ec00317e5d1c656745e17'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3f3ec7b-4d2a-51e1-81f7-6dc9d3ab4e99', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d9247311-43f6-560a-b8a8-02163edab4ae', 1), '6c83150380e678f0cd644b02bfdece591ebc63dec53ec00317e5d1c656745e17',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/87651c00b8fc28e5d88234004722da2a00f445000e5b75f9d4e38a955a64a030.mp3', 2115, '2026-09-13 22:04:37.384183', '3b507b9310680d8d075453f2c091c8a56d2d2b2c50cbd3164b9f926a33821ac5', 'validated', '{"audio_key":"87651c00b8fc28e5d88234004722da2a00f445000e5b75f9d4e38a955a64a030","entity_key":"d_identity_and_work_02:4","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3b507b9310680d8d075453f2c091c8a56d2d2b2c50cbd3164b9f926a33821ac5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/87651c00b8fc28e5d88234004722da2a00f445000e5b75f9d4e38a955a64a030.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_identity_and_work_02:3 -> audio/generated/ko-KR/dialogues/89033d3bee10593721c7e4edcf5b8b1e316395b1c3381fe9eade15a47d0282ee.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('382a926f-1892-5098-af98-0daebc9cc325', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_identity_and_work_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0769f372c0cac861d92295c5eb18f5205d25f3fbccf14296b614a4b58e7edca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('937e698a-11ab-5cec-bf5a-8a61312b6a5d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('382a926f-1892-5098-af98-0daebc9cc325', 1), 'd0769f372c0cac861d92295c5eb18f5205d25f3fbccf14296b614a4b58e7edca',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/89033d3bee10593721c7e4edcf5b8b1e316395b1c3381fe9eade15a47d0282ee.mp3', 1436, '2026-09-13 22:04:37.484751', 'a69a566219a8f8cc3b14403f0304871e295976494319d4d085fe506b850e9c37', 'validated', '{"audio_key":"89033d3bee10593721c7e4edcf5b8b1e316395b1c3381fe9eade15a47d0282ee","entity_key":"d_identity_and_work_02:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a69a566219a8f8cc3b14403f0304871e295976494319d4d085fe506b850e9c37","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/89033d3bee10593721c7e4edcf5b8b1e316395b1c3381fe9eade15a47d0282ee.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_schedule_01:1 -> audio/generated/ko-KR/dialogues/8943e2e3e65b00549fde2266130968ce109ced6edf744f844795c5608b0d3f29.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('40b87f75-d795-510c-a510-de341d4e35a4', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_schedule_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd0a7fe5106ff2ce11cea64fd653e63d77201f506a8bb9dccdab9a84c0540e2f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('24f52a14-1147-5181-8c3d-163f383af039', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('40b87f75-d795-510c-a510-de341d4e35a4', 1), 'cd0a7fe5106ff2ce11cea64fd653e63d77201f506a8bb9dccdab9a84c0540e2f',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/8943e2e3e65b00549fde2266130968ce109ced6edf744f844795c5608b0d3f29.mp3', 1515, '2026-09-13 22:04:38.440319', 'e18b025217d0c6c3832bc0974bfa502ba491a4ecb5981371fd804ce0af7e3ca5', 'validated', '{"audio_key":"8943e2e3e65b00549fde2266130968ce109ced6edf744f844795c5608b0d3f29","entity_key":"d_time_and_schedule_01:1","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e18b025217d0c6c3832bc0974bfa502ba491a4ecb5981371fd804ce0af7e3ca5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/8943e2e3e65b00549fde2266130968ce109ced6edf744f844795c5608b0d3f29.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_likes_and_dislikes_02:1 -> audio/generated/ko-KR/dialogues/8db93fa9d78b47bce33bdc8cc2673b2b932043b3eb8fac8ffc5c3718460e2bfd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a92d67fd-ee4d-5479-b1d3-f9fa5beb1c2b', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_likes_and_dislikes_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '89c6e930ff0b02c17f2ba5955872765ba495fdc3534f899e6b948b093f97cb1d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c771f43e-3fcf-5e87-8e67-51d47563a539', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a92d67fd-ee4d-5479-b1d3-f9fa5beb1c2b', 1), '89c6e930ff0b02c17f2ba5955872765ba495fdc3534f899e6b948b093f97cb1d',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/8db93fa9d78b47bce33bdc8cc2673b2b932043b3eb8fac8ffc5c3718460e2bfd.mp3', 1619, '2026-09-13 22:04:38.549802', '94b7e41bfd0e885f90fc53192973690084b6fc74a532bd69433bae7a74f8ccc5', 'validated', '{"audio_key":"8db93fa9d78b47bce33bdc8cc2673b2b932043b3eb8fac8ffc5c3718460e2bfd","entity_key":"d_likes_and_dislikes_02:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"94b7e41bfd0e885f90fc53192973690084b6fc74a532bd69433bae7a74f8ccc5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/8db93fa9d78b47bce33bdc8cc2673b2b932043b3eb8fac8ffc5c3718460e2bfd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_basics_02:3 -> audio/generated/ko-KR/dialogues/8e3051afa95bf33c64aa8ca1f7ceaf6020f949184b72589004e63ffc32dca83f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3f4797a3-ae4c-5f8f-9096-982797e99fb3', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_basics_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e5ffe5e8c1d6339d6bcf553ee9ea7d681f1b7a39962110e44da3c4a68513fa63'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25f22633-c1d8-579b-a9ee-6b6709145540', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3f4797a3-ae4c-5f8f-9096-982797e99fb3', 1), 'e5ffe5e8c1d6339d6bcf553ee9ea7d681f1b7a39962110e44da3c4a68513fa63',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/8e3051afa95bf33c64aa8ca1f7ceaf6020f949184b72589004e63ffc32dca83f.mp3', 1436, '2026-09-13 22:04:39.444781', '92d2ba0723e5bd034ef74c9ae0c51251e671344e62248cc3ac7058a5d916975c', 'validated', '{"audio_key":"8e3051afa95bf33c64aa8ca1f7ceaf6020f949184b72589004e63ffc32dca83f","entity_key":"d_shopping_basics_02:3","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"92d2ba0723e5bd034ef74c9ae0c51251e671344e62248cc3ac7058a5d916975c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/8e3051afa95bf33c64aa8ca1f7ceaf6020f949184b72589004e63ffc32dca83f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_basics_01:1 -> audio/generated/ko-KR/dialogues/996f991bad1acf670ea905a8cbb22f261390365f626e7dab2d8a110f4cb4b5e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5e089e41-b19b-5360-b61a-a83d009a6581', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_basics_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4fe2937d40d44d789bb732432b14180e959029618b70df77469741758a43868'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3772322-5784-5d05-9927-dc44bcbb942b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5e089e41-b19b-5360-b61a-a83d009a6581', 1), 'e4fe2937d40d44d789bb732432b14180e959029618b70df77469741758a43868',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/996f991bad1acf670ea905a8cbb22f261390365f626e7dab2d8a110f4cb4b5e0.mp3', 1201, '2026-09-13 22:04:39.583441', 'de67a1be3445544f08dfe4380a2a51b77eee599b049ad00fdaad0c82d03e09a0', 'validated', '{"audio_key":"996f991bad1acf670ea905a8cbb22f261390365f626e7dab2d8a110f4cb4b5e0","entity_key":"d_shopping_basics_01:1","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"de67a1be3445544f08dfe4380a2a51b77eee599b049ad00fdaad0c82d03e09a0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/996f991bad1acf670ea905a8cbb22f261390365f626e7dab2d8a110f4cb4b5e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_basics_02:4 -> audio/generated/ko-KR/dialogues/9b86bb1b2f0b4fea05af8c715f3b652a61990efc0cbca8da239735c8473c08c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2da32ebc-7bb3-5e17-9879-ad184ad768bf', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_basics_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a2109fd31a29a85efc70cc119b7e83b094144839eb5d987c11c81e977fcd3a84'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0cc6c028-8936-5e26-998b-422cd92418d1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2da32ebc-7bb3-5e17-9879-ad184ad768bf', 1), 'a2109fd31a29a85efc70cc119b7e83b094144839eb5d987c11c81e977fcd3a84',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9b86bb1b2f0b4fea05af8c715f3b652a61990efc0cbca8da239735c8473c08c9.mp3', 1280, '2026-09-13 22:04:40.404197', 'c884de283128ad107cc48710245c85b657f9cd0c7a40c4fbe9e1d29298e412a6', 'validated', '{"audio_key":"9b86bb1b2f0b4fea05af8c715f3b652a61990efc0cbca8da239735c8473c08c9","entity_key":"d_shopping_basics_02:4","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c884de283128ad107cc48710245c85b657f9cd0c7a40c4fbe9e1d29298e412a6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/9b86bb1b2f0b4fea05af8c715f3b652a61990efc0cbca8da239735c8473c08c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_day_out_capstone_02:1 -> audio/generated/ko-KR/dialogues/9c7ae686da92292c7c57515d8f259172d2d62c6248e5e6f1881e2f24493ffbd0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('244c27c1-d9d7-52d9-a902-a04ac8b3cb7f', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_day_out_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf0460fb5893ff4d48e2269568413c5a81cf2a9c9447cf297acc4e95a2ca738b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e69c13d-7c63-5b85-a44b-708358e27938', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('244c27c1-d9d7-52d9-a902-a04ac8b3cb7f', 1), 'bf0460fb5893ff4d48e2269568413c5a81cf2a9c9447cf297acc4e95a2ca738b',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9c7ae686da92292c7c57515d8f259172d2d62c6248e5e6f1881e2f24493ffbd0.mp3', 1436, '2026-09-13 22:04:40.557236', 'ceb9ae6ed5a82a636faa02e8d9415addd843a81c044a7490f0ffe2f7ea96f315', 'validated', '{"audio_key":"9c7ae686da92292c7c57515d8f259172d2d62c6248e5e6f1881e2f24493ffbd0","entity_key":"d_a1_day_out_capstone_02:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ceb9ae6ed5a82a636faa02e8d9415addd843a81c044a7490f0ffe2f7ea96f315","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/9c7ae686da92292c7c57515d8f259172d2d62c6248e5e6f1881e2f24493ffbd0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_daily_routine_01:2 -> audio/generated/ko-KR/dialogues/9d5219f8e7953cd4885287a4abaa44b01b53d6b58c0a10b584875d1368ca64c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bfe9b8c7-62df-5b5a-80f6-73920c249b93', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_daily_routine_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dcb201405263982471b6c11d00a2ef9a03dfa65e3a19b5d58cd9c91e7a545e04'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d761c53a-5336-5183-83b5-202cfa101016', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bfe9b8c7-62df-5b5a-80f6-73920c249b93', 1), 'dcb201405263982471b6c11d00a2ef9a03dfa65e3a19b5d58cd9c91e7a545e04',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9d5219f8e7953cd4885287a4abaa44b01b53d6b58c0a10b584875d1368ca64c8.mp3', 1384, '2026-09-13 22:04:41.396369', '77657dbe38f12e1ca6ec18cfc482f87d3b62f0c12192c9a163c334c08bb20368', 'validated', '{"audio_key":"9d5219f8e7953cd4885287a4abaa44b01b53d6b58c0a10b584875d1368ca64c8","entity_key":"d_daily_routine_01:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"77657dbe38f12e1ca6ec18cfc482f87d3b62f0c12192c9a163c334c08bb20368","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/9d5219f8e7953cd4885287a4abaa44b01b53d6b58c0a10b584875d1368ca64c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_daily_routine_02:4 -> audio/generated/ko-KR/dialogues/a50d52c29cc461ce33698651cb6bf6b21c9389238860ee05580b29d069b1c365.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('302749a9-5d7f-5b0b-86b5-3f5af3c4be5f', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_daily_routine_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e24b2abd8c97213356b19b27919a08e631ca63a10acc27b00a569cce566634e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50ae59d0-f8c6-5480-bed5-d71f27f5c03e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('302749a9-5d7f-5b0b-86b5-3f5af3c4be5f', 1), 'e24b2abd8c97213356b19b27919a08e631ca63a10acc27b00a569cce566634e4',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a50d52c29cc461ce33698651cb6bf6b21c9389238860ee05580b29d069b1c365.mp3', 1619, '2026-09-13 22:04:41.583424', '767c0b5de5c591f9f4c1391a81e84f010cda9849f9a737c297f160a2e9c302b4', 'validated', '{"audio_key":"a50d52c29cc461ce33698651cb6bf6b21c9389238860ee05580b29d069b1c365","entity_key":"d_daily_routine_02:4","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"767c0b5de5c591f9f4c1391a81e84f010cda9849f9a737c297f160a2e9c302b4","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/a50d52c29cc461ce33698651cb6bf6b21c9389238860ee05580b29d069b1c365.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cafe_orders_02:2 -> audio/generated/ko-KR/dialogues/ac4a0105e7142a1008518b1203b0d27df698fd2f4db7c5f27c3e1e33d382a473.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('64ad8be2-7294-5cc9-b9b2-7bce798cc78c', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cafe_orders_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1eca201b982b40aaea1d72cde9440e1d6c5805904fb24819b3746ee8c180e291'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13735c41-37cc-5411-bb4e-8bf70f51eb57', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('64ad8be2-7294-5cc9-b9b2-7bce798cc78c', 1), '1eca201b982b40aaea1d72cde9440e1d6c5805904fb24819b3746ee8c180e291',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ac4a0105e7142a1008518b1203b0d27df698fd2f4db7c5f27c3e1e33d382a473.mp3', 1436, '2026-09-13 22:04:42.404948', 'cc95a0f8cc99a6bfb144fbf737c6839c08fbdebd8f9b97821f9cc2eda50355d4', 'validated', '{"audio_key":"ac4a0105e7142a1008518b1203b0d27df698fd2f4db7c5f27c3e1e33d382a473","entity_key":"d_cafe_orders_02:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cc95a0f8cc99a6bfb144fbf737c6839c08fbdebd8f9b97821f9cc2eda50355d4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/ac4a0105e7142a1008518b1203b0d27df698fd2f4db7c5f27c3e1e33d382a473.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_02:2 -> audio/generated/ko-KR/dialogues/ad9ced90d8b6f34c34d81dd7bb837c8cee2c9233207aaa87ab1ef74823497a26.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('16623dd3-eba6-5fbb-847b-5f5c2f82b573', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2fbb3fd560577fe4a8288c728ff3e5f72b4ffb2e47ccb8de488b87a60560979b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9bbd3012-2310-596f-a7a1-0ad7d64b7474', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('16623dd3-eba6-5fbb-847b-5f5c2f82b573', 1), '2fbb3fd560577fe4a8288c728ff3e5f72b4ffb2e47ccb8de488b87a60560979b',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ad9ced90d8b6f34c34d81dd7bb837c8cee2c9233207aaa87ab1ef74823497a26.mp3', 1750, '2026-09-13 22:04:42.601438', '003cdae916f74b7530a5d66c0aa7c5a318ce1912a0e5242af79936a17af32174', 'validated', '{"audio_key":"ad9ced90d8b6f34c34d81dd7bb837c8cee2c9233207aaa87ab1ef74823497a26","entity_key":"d_getting_around_02:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"003cdae916f74b7530a5d66c0aa7c5a318ce1912a0e5242af79936a17af32174","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/ad9ced90d8b6f34c34d81dd7bb837c8cee2c9233207aaa87ab1ef74823497a26.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_where_things_are_01:2 -> audio/generated/ko-KR/dialogues/af53eb30473c85ccd40b1ef65720780edc3c676a7041827db8e90918b1ff3598.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3d1912ea-2787-5c9f-bb01-c6ba2f2cf232', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_where_things_are_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c8b69e87de36558d3f4953794dc35380ba672c5434c5cf617e1ff90ddc79d58'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b2d68ad5-3e30-52e2-8a78-fe34e5c09c2e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3d1912ea-2787-5c9f-bb01-c6ba2f2cf232', 1), '0c8b69e87de36558d3f4953794dc35380ba672c5434c5cf617e1ff90ddc79d58',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/af53eb30473c85ccd40b1ef65720780edc3c676a7041827db8e90918b1ff3598.mp3', 1384, '2026-09-13 22:04:43.360773', '7fea5dc74d4e3f47d17f73f3a469882f982cbe52b570f171123940cd8a1e8ae0', 'validated', '{"audio_key":"af53eb30473c85ccd40b1ef65720780edc3c676a7041827db8e90918b1ff3598","entity_key":"d_where_things_are_01:2","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7fea5dc74d4e3f47d17f73f3a469882f982cbe52b570f171123940cd8a1e8ae0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/af53eb30473c85ccd40b1ef65720780edc3c676a7041827db8e90918b1ff3598.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a1_day_out_capstone_01:4 -> audio/generated/ko-KR/dialogues/afd405b2fb33375099ed8a5bbe2ffbbb65fb594ebb1aa81eecdc13bad98d4105.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a9004d97-273b-578c-8ff8-2d5dfd9825e1', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a1_day_out_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b432f7ff3b701a997305d486f53318ab9a106c2aed58937a0114ecaef0cbc300'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3b67aaa-dec7-5414-9627-eac5e41c41e9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a9004d97-273b-578c-8ff8-2d5dfd9825e1', 1), 'b432f7ff3b701a997305d486f53318ab9a106c2aed58937a0114ecaef0cbc300',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/afd405b2fb33375099ed8a5bbe2ffbbb65fb594ebb1aa81eecdc13bad98d4105.mp3', 1280, '2026-09-13 22:04:43.674570', 'e6e72d72cf6ac3ce9f841bb3eff48b2748d6b97aa662905c54d6451c0fcc07b5', 'validated', '{"audio_key":"afd405b2fb33375099ed8a5bbe2ffbbb65fb594ebb1aa81eecdc13bad98d4105","entity_key":"d_a1_day_out_capstone_01:4","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e6e72d72cf6ac3ce9f841bb3eff48b2748d6b97aa662905c54d6451c0fcc07b5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/afd405b2fb33375099ed8a5bbe2ffbbb65fb594ebb1aa81eecdc13bad98d4105.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_where_things_are_01:3 -> audio/generated/ko-KR/dialogues/b06fc15a01249db92c6dd056c6dc4507303cd6fb1681fbc2bb9f0ec0a8b079bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e574b275-b34e-534c-8619-d37a3ab3e947', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_where_things_are_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa94215015268dc69ff7279c834e5bf2a3b98b701dba5c110615104f8eb7be68'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e58ab1fd-26a1-5d17-9fe5-4f31eff4b67f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e574b275-b34e-534c-8619-d37a3ab3e947', 1), 'fa94215015268dc69ff7279c834e5bf2a3b98b701dba5c110615104f8eb7be68',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b06fc15a01249db92c6dd056c6dc4507303cd6fb1681fbc2bb9f0ec0a8b079bd.mp3', 1332, '2026-09-13 22:04:44.331826', 'fac6cc0f6b0c737499c70a4fb18f8302b0725e156a1b103070b4516eef1db8b9', 'validated', '{"audio_key":"b06fc15a01249db92c6dd056c6dc4507303cd6fb1681fbc2bb9f0ec0a8b079bd","entity_key":"d_where_things_are_01:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fac6cc0f6b0c737499c70a4fb18f8302b0725e156a1b103070b4516eef1db8b9","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/b06fc15a01249db92c6dd056c6dc4507303cd6fb1681fbc2bb9f0ec0a8b079bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_family_and_people_01:2 -> audio/generated/ko-KR/dialogues/b7efde0e82b6b421562b9943bc32b8e86f4b3fe3e86a6b089672c5225a5fb5f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f667114d-3efe-51aa-9a39-c79e8ed852fd', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_family_and_people_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db0541756065c0131ac2db7a32e2c2c219bc8dbb37475ae460fd40299f882c68'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39c2b651-7c60-5653-a824-596b7a023d4f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f667114d-3efe-51aa-9a39-c79e8ed852fd', 1), 'db0541756065c0131ac2db7a32e2c2c219bc8dbb37475ae460fd40299f882c68',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b7efde0e82b6b421562b9943bc32b8e86f4b3fe3e86a6b089672c5225a5fb5f4.mp3', 1436, '2026-09-13 22:04:44.650618', 'e7c762d5b5c04ee40a79144a71f4e1bc7759d73a8e002d1a98903e1f9e44415b', 'validated', '{"audio_key":"b7efde0e82b6b421562b9943bc32b8e86f4b3fe3e86a6b089672c5225a5fb5f4","entity_key":"d_family_and_people_01:2","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e7c762d5b5c04ee40a79144a71f4e1bc7759d73a8e002d1a98903e1f9e44415b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/b7efde0e82b6b421562b9943bc32b8e86f4b3fe3e86a6b089672c5225a5fb5f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_daily_routine_02:1 -> audio/generated/ko-KR/dialogues/bec15b23e9388f7703874f6437e0f30703772d4816d565b6c40e3a0e248eaaf5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ed475c7a-def5-57ea-8e69-53f973077fde', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_daily_routine_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4fe91b7cc0bb2c1902283c7567c4372d73707fa3b8d2e57237daa7728df194c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('260674ec-aad6-58e4-be41-b1ff40b4138a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ed475c7a-def5-57ea-8e69-53f973077fde', 1), 'b4fe91b7cc0bb2c1902283c7567c4372d73707fa3b8d2e57237daa7728df194c',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/bec15b23e9388f7703874f6437e0f30703772d4816d565b6c40e3a0e248eaaf5.mp3', 1515, '2026-09-13 22:04:45.363308', '69aa5168ffa16d52a79e0d9d21c1d28d40323226c3c0257bebeb3054834ea475', 'validated', '{"audio_key":"bec15b23e9388f7703874f6437e0f30703772d4816d565b6c40e3a0e248eaaf5","entity_key":"d_daily_routine_02:1","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"69aa5168ffa16d52a79e0d9d21c1d28d40323226c3c0257bebeb3054834ea475","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/bec15b23e9388f7703874f6437e0f30703772d4816d565b6c40e3a0e248eaaf5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_likes_and_dislikes_02:2 -> audio/generated/ko-KR/dialogues/ccdc3c5822b0d3f9f2e61964d37d80c89995dd99140a87bad178ba99367329a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3201d35b-d096-538a-a9f2-cef6f8ecae01', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_likes_and_dislikes_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f99203c4072553c39ca823cd34df6a3dca4519431bab96a5da26e120e4b04d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5befcee5-3c4c-57a0-afec-9d2a4d0b00f8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3201d35b-d096-538a-a9f2-cef6f8ecae01', 1), '2f99203c4072553c39ca823cd34df6a3dca4519431bab96a5da26e120e4b04d4',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ccdc3c5822b0d3f9f2e61964d37d80c89995dd99140a87bad178ba99367329a3.mp3', 1567, '2026-09-13 22:04:45.640215', 'b1d0f274e8c2b381ac788eccf57589c3fbc36e248432d86b5556732067a5ff64', 'validated', '{"audio_key":"ccdc3c5822b0d3f9f2e61964d37d80c89995dd99140a87bad178ba99367329a3","entity_key":"d_likes_and_dislikes_02:2","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b1d0f274e8c2b381ac788eccf57589c3fbc36e248432d86b5556732067a5ff64","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/ccdc3c5822b0d3f9f2e61964d37d80c89995dd99140a87bad178ba99367329a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cafe_orders_02:1 -> audio/generated/ko-KR/dialogues/d251d02be08757c7a20b1d7dea2a7b85c19790d741a1b1a647109b891d8f67c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a169411a-e58b-51f4-bf9e-0862d4c27133', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cafe_orders_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35a0d5c13ab46876ceac346ffb9e30c92434ca97b2727d056249e56b82832e4d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('caf92dfb-9c02-51f9-923f-fb491664d60e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a169411a-e58b-51f4-bf9e-0862d4c27133', 1), '35a0d5c13ab46876ceac346ffb9e30c92434ca97b2727d056249e56b82832e4d',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d251d02be08757c7a20b1d7dea2a7b85c19790d741a1b1a647109b891d8f67c2.mp3', 1488, '2026-09-13 22:04:46.351516', '871a6dcaabc645b3ff5a943109cc51dd8372ab9378e9318456afc3f338a850fe', 'validated', '{"audio_key":"d251d02be08757c7a20b1d7dea2a7b85c19790d741a1b1a647109b891d8f67c2","entity_key":"d_cafe_orders_02:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"871a6dcaabc645b3ff5a943109cc51dd8372ab9378e9318456afc3f338a850fe","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/d251d02be08757c7a20b1d7dea2a7b85c19790d741a1b1a647109b891d8f67c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cafe_orders_01:4 -> audio/generated/ko-KR/dialogues/d486133274c9196a0c6a34b2804f0ee10d7bd885ae1f0dc5143bba530b7c3fd7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bc079b79-51a8-575e-863d-e55f53a99780', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cafe_orders_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '650c43969d8f0f04d52e08223d0302e48fedc609d6f6102f17cc01dbe4142a34'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80626f67-f8f6-5c3a-a2ac-1f1925d19ebb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bc079b79-51a8-575e-863d-e55f53a99780', 1), '650c43969d8f0f04d52e08223d0302e48fedc609d6f6102f17cc01dbe4142a34',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d486133274c9196a0c6a34b2804f0ee10d7bd885ae1f0dc5143bba530b7c3fd7.mp3', 1697, '2026-09-13 22:04:46.671674', '2c81442d867413ceecd33a0c0a0631ae86a99d2865882839e4ee6b13824bda71', 'validated', '{"audio_key":"d486133274c9196a0c6a34b2804f0ee10d7bd885ae1f0dc5143bba530b7c3fd7","entity_key":"d_cafe_orders_01:4","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2c81442d867413ceecd33a0c0a0631ae86a99d2865882839e4ee6b13824bda71","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/d486133274c9196a0c6a34b2804f0ee10d7bd885ae1f0dc5143bba530b7c3fd7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_02:3 -> audio/generated/ko-KR/dialogues/d58412a08b433557e291af7f0d334765be0bb453f1e09ccf2815357f9b7f816b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('36367959-91ee-5559-9af3-65458542dbf1', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e112560214d1621b9c9a65d364d11725a47e7ec850c89902c98221b3515013f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c7018ce-49a1-55b0-8c65-bda4f0b4d94a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('36367959-91ee-5559-9af3-65458542dbf1', 1), '6e112560214d1621b9c9a65d364d11725a47e7ec850c89902c98221b3515013f',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d58412a08b433557e291af7f0d334765be0bb453f1e09ccf2815357f9b7f816b.mp3', 1201, '2026-09-13 22:04:47.342049', '8145f7fef8ee465406060eb5f5b4be0ce7e2726cce5f6d1925b519c03028818b', 'validated', '{"audio_key":"d58412a08b433557e291af7f0d334765be0bb453f1e09ccf2815357f9b7f816b","entity_key":"d_getting_around_02:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8145f7fef8ee465406060eb5f5b4be0ce7e2726cce5f6d1925b519c03028818b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/d58412a08b433557e291af7f0d334765be0bb453f1e09ccf2815357f9b7f816b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_basics_01:4 -> audio/generated/ko-KR/dialogues/db82330ebb1595b89e8216e009611da132ce807693341344afc70dafe61947f2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d6de4369-b080-5d87-ad79-5b0db298ae94', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_basics_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2bb191da08e083836da525bc015c9b222048c38ae03a2627af3ddd574d830856'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b088a55-2761-559f-af53-1faab6b0ca89', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d6de4369-b080-5d87-ad79-5b0db298ae94', 1), '2bb191da08e083836da525bc015c9b222048c38ae03a2627af3ddd574d830856',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/db82330ebb1595b89e8216e009611da132ce807693341344afc70dafe61947f2.mp3', 1488, '2026-09-13 22:04:47.668493', '4d7c0a0a60faf96ea5adf208097c357f9cea7963c2704d433e5cc6468353a630', 'validated', '{"audio_key":"db82330ebb1595b89e8216e009611da132ce807693341344afc70dafe61947f2","entity_key":"d_shopping_basics_01:4","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4d7c0a0a60faf96ea5adf208097c357f9cea7963c2704d433e5cc6468353a630","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/db82330ebb1595b89e8216e009611da132ce807693341344afc70dafe61947f2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_identity_and_work_01:2 -> audio/generated/ko-KR/dialogues/dd59ec932d0557e2f0f39c28534be5e4eb83760aa7f1e1737560ca61042da25b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9f9b7603-cdd7-57df-91c0-9d6f7a2641c1', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_identity_and_work_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6502038266463a186ec675b7027cdfe16a8574239991ce53c3a4d813ea6ec89f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('98f0881f-3571-59fc-9068-8b129b529515', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9f9b7603-cdd7-57df-91c0-9d6f7a2641c1', 1), '6502038266463a186ec675b7027cdfe16a8574239991ce53c3a4d813ea6ec89f',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/dd59ec932d0557e2f0f39c28534be5e4eb83760aa7f1e1737560ca61042da25b.mp3', 2533, '2026-09-13 22:04:48.418499', 'a4bb81bfccd02aa3bab3cc07497de5d48d436c4c67eb2871091ee009a92c195d', 'validated', '{"audio_key":"dd59ec932d0557e2f0f39c28534be5e4eb83760aa7f1e1737560ca61042da25b","entity_key":"d_identity_and_work_01:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a4bb81bfccd02aa3bab3cc07497de5d48d436c4c67eb2871091ee009a92c195d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/dd59ec932d0557e2f0f39c28534be5e4eb83760aa7f1e1737560ca61042da25b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_likes_and_dislikes_01:1 -> audio/generated/ko-KR/dialogues/e05be301dde68e6c92a8f2491dc0cfc6b958a3d4532131eb213ae03f19b74441.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d388fd41-ab1e-5707-b5b0-42c6c70eec08', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_likes_and_dislikes_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b37afa174dd945e7f17bb1c2f9c74eef6650d8b5a3f7d723eeeea627fa294855'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3736092-b287-527f-87f5-ddcea82cf1c2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d388fd41-ab1e-5707-b5b0-42c6c70eec08', 1), 'b37afa174dd945e7f17bb1c2f9c74eef6650d8b5a3f7d723eeeea627fa294855',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e05be301dde68e6c92a8f2491dc0cfc6b958a3d4532131eb213ae03f19b74441.mp3', 1332, '2026-09-13 22:04:48.660957', '9f0e5af19a7c087d78acef11f9ed552c09c2ce2a1534a72a2d9867f3332c4967', 'validated', '{"audio_key":"e05be301dde68e6c92a8f2491dc0cfc6b958a3d4532131eb213ae03f19b74441","entity_key":"d_likes_and_dislikes_01:1","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9f0e5af19a7c087d78acef11f9ed552c09c2ce2a1534a72a2d9867f3332c4967","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/e05be301dde68e6c92a8f2491dc0cfc6b958a3d4532131eb213ae03f19b74441.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_shopping_basics_01:2 -> audio/generated/ko-KR/dialogues/e4d911c0f0221e40767aafade39e00da9a706bb34e92853c46571bd12a717d56.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dc1f3288-bf3f-50e3-99c3-230d9d918e76', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_shopping_basics_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b332361b479b105b2a370da3b15a39e8b53dccc78b078f31389185a9a725c272'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e04321dd-2fa0-50a6-bab6-0b9aae1beb76', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dc1f3288-bf3f-50e3-99c3-230d9d918e76', 1), 'b332361b479b105b2a370da3b15a39e8b53dccc78b078f31389185a9a725c272',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e4d911c0f0221e40767aafade39e00da9a706bb34e92853c46571bd12a717d56.mp3', 1280, '2026-09-13 22:04:49.397250', '578a2db34c0bdad00fc682ea04fd3054a754af5308b94fdb45ba593fa5863b48', 'validated', '{"audio_key":"e4d911c0f0221e40767aafade39e00da9a706bb34e92853c46571bd12a717d56","entity_key":"d_shopping_basics_01:2","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"578a2db34c0bdad00fc682ea04fd3054a754af5308b94fdb45ba593fa5863b48","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/e4d911c0f0221e40767aafade39e00da9a706bb34e92853c46571bd12a717d56.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_where_things_are_02:3 -> audio/generated/ko-KR/dialogues/e7d5e0a134d5f11c2e3e1b4c957d90dff9f55c1c65e419d956bb3aded1afb333.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('405e60e5-7306-59d1-a1cf-c0eaef9d0795', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_where_things_are_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d5a60aa5b820e2a6289caa13c685c419542b81b7543a05f8a6295425c301b4f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('92dab3ba-5a74-5a67-b632-3cd931d4c347', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('405e60e5-7306-59d1-a1cf-c0eaef9d0795', 1), '0d5a60aa5b820e2a6289caa13c685c419542b81b7543a05f8a6295425c301b4f',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e7d5e0a134d5f11c2e3e1b4c957d90dff9f55c1c65e419d956bb3aded1afb333.mp3', 1436, '2026-09-13 22:04:49.656764', '246c40f14ad2e78326daf7cd30403f7b60f31eda3f7c71417a3a49ce2aad1109', 'validated', '{"audio_key":"e7d5e0a134d5f11c2e3e1b4c957d90dff9f55c1c65e419d956bb3aded1afb333","entity_key":"d_where_things_are_02:3","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"246c40f14ad2e78326daf7cd30403f7b60f31eda3f7c71417a3a49ce2aad1109","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/e7d5e0a134d5f11c2e3e1b4c957d90dff9f55c1c65e419d956bb3aded1afb333.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_where_things_are_01:4 -> audio/generated/ko-KR/dialogues/eafa0dee88278fde504a681691e83d4b973cb864735d11932edb475e8cfb2ede.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5f7f63ae-d7c6-5810-9b20-8223179a04f2', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_where_things_are_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac9c9213237bcb2a20d2322acdea16ba4197cb993bd7f0d9d8d56b932e26fa69'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2104db4c-4318-5f8e-8953-01b2c74d8718', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5f7f63ae-d7c6-5810-9b20-8223179a04f2', 1), 'ac9c9213237bcb2a20d2322acdea16ba4197cb993bd7f0d9d8d56b932e26fa69',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/eafa0dee88278fde504a681691e83d4b973cb864735d11932edb475e8cfb2ede.mp3', 1071, '2026-09-13 22:04:50.343926', '26c8f082f1640d86f4c370cebafd9a71e10269f707c2dd1259d4e671a64697ba', 'validated', '{"audio_key":"eafa0dee88278fde504a681691e83d4b973cb864735d11932edb475e8cfb2ede","entity_key":"d_where_things_are_01:4","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"26c8f082f1640d86f4c370cebafd9a71e10269f707c2dd1259d4e671a64697ba","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/eafa0dee88278fde504a681691e83d4b973cb864735d11932edb475e8cfb2ede.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_schedule_01:4 -> audio/generated/ko-KR/dialogues/ed60feac483d51b93d3863aa4d541965dc8d2d0814a947098ecc30a28f9155e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('34235c1e-8fc6-5c41-a68f-1f61a75a815e', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_schedule_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e731866f3ff78f7178d2910f7e04d7922e8e8c3d05613c09503f35dd949f2dc6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7d84c760-a099-5a3d-9f74-859cd958e14c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('34235c1e-8fc6-5c41-a68f-1f61a75a815e', 1), 'e731866f3ff78f7178d2910f7e04d7922e8e8c3d05613c09503f35dd949f2dc6',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ed60feac483d51b93d3863aa4d541965dc8d2d0814a947098ecc30a28f9155e8.mp3', 1671, '2026-09-13 22:04:50.653704', '6315a9e8a1286657a780228deb1a98b2d2515432eddcce746742b38e1f04e29d', 'validated', '{"audio_key":"ed60feac483d51b93d3863aa4d541965dc8d2d0814a947098ecc30a28f9155e8","entity_key":"d_time_and_schedule_01:4","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6315a9e8a1286657a780228deb1a98b2d2515432eddcce746742b38e1f04e29d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/ed60feac483d51b93d3863aa4d541965dc8d2d0814a947098ecc30a28f9155e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_time_and_schedule_02:4 -> audio/generated/ko-KR/dialogues/ee760b1ea433c9d6c3884adfb867b4023825d007ac9ffe1ed88a41f5b6bf7c62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6430f9c7-bd05-51cd-a5fd-407f3d0c4e27', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_time_and_schedule_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a44ebc9488053645c0f26448a6e89dc5bb44a6c502808b664fc7b6cdabe2090d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6da11a34-0af0-5fe3-b6e0-fed856d8a0b0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6430f9c7-bd05-51cd-a5fd-407f3d0c4e27', 1), 'a44ebc9488053645c0f26448a6e89dc5bb44a6c502808b664fc7b6cdabe2090d',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ee760b1ea433c9d6c3884adfb867b4023825d007ac9ffe1ed88a41f5b6bf7c62.mp3', 1515, '2026-09-13 22:04:51.367642', '9a8ae1e907fe29373eacebb2b232fa022255d7421b6890478b99d9b36fa6557a', 'validated', '{"audio_key":"ee760b1ea433c9d6c3884adfb867b4023825d007ac9ffe1ed88a41f5b6bf7c62","entity_key":"d_time_and_schedule_02:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9a8ae1e907fe29373eacebb2b232fa022255d7421b6890478b99d9b36fa6557a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/ee760b1ea433c9d6c3884adfb867b4023825d007ac9ffe1ed88a41f5b6bf7c62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cafe_orders_01:3 -> audio/generated/ko-KR/dialogues/f7b5154a156834e7e295494194bf85f69b25acdc5ed76c8568c945167f50a58d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c946ff90-6f32-5e29-825e-4b0734f95f1b', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cafe_orders_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '740de684e232a2b5a6319dcd86eb7ef937b969904f373502b2f9c5779060c365'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3387144a-9f0b-57a3-ace1-91524d620455', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c946ff90-6f32-5e29-825e-4b0734f95f1b', 1), '740de684e232a2b5a6319dcd86eb7ef937b969904f373502b2f9c5779060c365',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f7b5154a156834e7e295494194bf85f69b25acdc5ed76c8568c945167f50a58d.mp3', 1750, '2026-09-13 22:04:51.675263', 'a2fddaa822f035386b97ea78f047fdb11dc1c0fb081cb1d5ab87b8721a46215f', 'validated', '{"audio_key":"f7b5154a156834e7e295494194bf85f69b25acdc5ed76c8568c945167f50a58d","entity_key":"d_cafe_orders_01:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a2fddaa822f035386b97ea78f047fdb11dc1c0fb081cb1d5ab87b8721a46215f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/f7b5154a156834e7e295494194bf85f69b25acdc5ed76c8568c945167f50a58d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_cafe_orders_02:3 -> audio/generated/ko-KR/dialogues/f905c8281c16dc0fa764fb8e99c281257f67bc80c67cdcbee413cf5be5a3c878.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('55f35e66-2bd7-58c8-9dac-0f35a9ee9140', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_cafe_orders_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b549681699af578eeb5498d0c578b6ff6c8dcd4f5ff3209741c426fa2cb8f0a4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b23acd39-54ac-5520-9be9-18197b277a31', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('55f35e66-2bd7-58c8-9dac-0f35a9ee9140', 1), 'b549681699af578eeb5498d0c578b6ff6c8dcd4f5ff3209741c426fa2cb8f0a4',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f905c8281c16dc0fa764fb8e99c281257f67bc80c67cdcbee413cf5be5a3c878.mp3', 1253, '2026-09-13 22:04:52.352563', '5d09d0f1d2f12c5ad1e14f0d08aa4688ba7660941e7429438a3f440b6b409d0b', 'validated', '{"audio_key":"f905c8281c16dc0fa764fb8e99c281257f67bc80c67cdcbee413cf5be5a3c878","entity_key":"d_cafe_orders_02:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5d09d0f1d2f12c5ad1e14f0d08aa4688ba7660941e7429438a3f440b6b409d0b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/f905c8281c16dc0fa764fb8e99c281257f67bc80c67cdcbee413cf5be5a3c878.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_where_things_are_02:1 -> audio/generated/ko-KR/dialogues/fc2c3cd775a5d4a5d98ca3cf6c57a3514ad682181b06b0cd730345986e280ef4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b38884da-0ac0-58f8-8451-bc2d9659bda4', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_where_things_are_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f61d34bfdec99652b428fe05c902e589df80cf0f38e3170565e44dd1c09f558'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13501154-7bd5-5eff-b230-ccd4a483393c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b38884da-0ac0-58f8-8451-bc2d9659bda4', 1), '4f61d34bfdec99652b428fe05c902e589df80cf0f38e3170565e44dd1c09f558',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/fc2c3cd775a5d4a5d98ca3cf6c57a3514ad682181b06b0cd730345986e280ef4.mp3', 1619, '2026-09-13 22:04:52.667234', '46cb7070b338be674aa337adfbca59cf7613cd403d126500b0a7a4cf193a40b7', 'validated', '{"audio_key":"fc2c3cd775a5d4a5d98ca3cf6c57a3514ad682181b06b0cd730345986e280ef4","entity_key":"d_where_things_are_02:1","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"46cb7070b338be674aa337adfbca59cf7613cd403d126500b0a7a4cf193a40b7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/fc2c3cd775a5d4a5d98ca3cf6c57a3514ad682181b06b0cd730345986e280ef4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_likes_and_dislikes_01:3 -> audio/generated/ko-KR/dialogues/fc52eec189acd5abcd8313817006c1bfd034049886467bb15b5218b5860dd1a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dd0496c9-faed-55ee-b743-d50a3e8944e0', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_likes_and_dislikes_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c6ba696eb5ebd2b5db496c0676133642c5a1c26f68f2040d22ca441ba4df274'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb1abb1a-6211-57e0-8b88-f5872b3f2d0c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dd0496c9-faed-55ee-b743-d50a3e8944e0', 1), '3c6ba696eb5ebd2b5db496c0676133642c5a1c26f68f2040d22ca441ba4df274',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/fc52eec189acd5abcd8313817006c1bfd034049886467bb15b5218b5860dd1a2.mp3', 1332, '2026-09-13 22:04:53.319195', '1815764519446502697110e9e75919be1ad076151815e090d7d68c03f9087e0e', 'validated', '{"audio_key":"fc52eec189acd5abcd8313817006c1bfd034049886467bb15b5218b5860dd1a2","entity_key":"d_likes_and_dislikes_01:3","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1815764519446502697110e9e75919be1ad076151815e090d7d68c03f9087e0e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/fc52eec189acd5abcd8313817006c1bfd034049886467bb15b5218b5860dd1a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_daily_routine_02:2 -> audio/generated/ko-KR/dialogues/fd4eb897867f2e6b58772dec626e9d2082a0d4c5e490b7b28d455c90ac0e6ea9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('abf2f7ad-3320-5070-9c7b-b5de4401d50b', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_daily_routine_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f8ce91667e19c072df7d578a235b1da2054d8164974f7d1c79e5af28240990f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('976945a2-7015-506f-ac1b-37ed13c147df', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('abf2f7ad-3320-5070-9c7b-b5de4401d50b', 1), '4f8ce91667e19c072df7d578a235b1da2054d8164974f7d1c79e5af28240990f',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/fd4eb897867f2e6b58772dec626e9d2082a0d4c5e490b7b28d455c90ac0e6ea9.mp3', 1436, '2026-09-13 22:04:53.705833', '9c1ca25a4009724cdb1a37a98f4da744149c77ce200fce69d570834c08cbd2fe', 'validated', '{"audio_key":"fd4eb897867f2e6b58772dec626e9d2082a0d4c5e490b7b28d455c90ac0e6ea9","entity_key":"d_daily_routine_02:2","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9c1ca25a4009724cdb1a37a98f4da744149c77ce200fce69d570834c08cbd2fe","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/fd4eb897867f2e6b58772dec626e9d2082a0d4c5e490b7b28d455c90ac0e6ea9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_where_things_are_01:1 -> audio/generated/ko-KR/dialogues/fddd8ae414c28c5d15d1c262e30aefc70998fbdad5217969976cc9aa41fcb517.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('56e4d6cb-dd7c-5c67-8bb1-7a3143fa8e49', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_where_things_are_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4facd51bc0586ed0973addae98bea35a3854bdeb9821f0699f6e9bdfd4b02edd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('485d882c-f9ea-54d6-ada6-7ed7d8a3d874', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('56e4d6cb-dd7c-5c67-8bb1-7a3143fa8e49', 1), '4facd51bc0586ed0973addae98bea35a3854bdeb9821f0699f6e9bdfd4b02edd',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/fddd8ae414c28c5d15d1c262e30aefc70998fbdad5217969976cc9aa41fcb517.mp3', 1515, '2026-09-13 22:04:54.299902', '253358e1303287263601e0fbec6cf70878e53f34a3e20a446df2938b4a01f8c1', 'validated', '{"audio_key":"fddd8ae414c28c5d15d1c262e30aefc70998fbdad5217969976cc9aa41fcb517","entity_key":"d_where_things_are_01:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"253358e1303287263601e0fbec6cf70878e53f34a3e20a446df2938b4a01f8c1","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/fddd8ae414c28c5d15d1c262e30aefc70998fbdad5217969976cc9aa41fcb517.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_getting_around_01:2 -> audio/generated/ko-KR/dialogues/fe50bfa3a76ce7f611fadb1cb2d3146cc0058cd0c8d191a58d2e68f736f1b2a8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ab6e4495-8454-5337-ad7b-8376231d2064', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_getting_around_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '49b647e2c6d19f197b52d016f62f2db28e177385115d4b4b8e39228d5037c352'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01873822-5072-5d85-8254-d515306c1c47', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ab6e4495-8454-5337-ad7b-8376231d2064', 1), '49b647e2c6d19f197b52d016f62f2db28e177385115d4b4b8e39228d5037c352',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/fe50bfa3a76ce7f611fadb1cb2d3146cc0058cd0c8d191a58d2e68f736f1b2a8.mp3', 1488, '2026-09-13 22:04:54.740292', '2271330661f32910a4652615de82bcdd744b9aed630006ef98a46076ac6412c6', 'validated', '{"audio_key":"fe50bfa3a76ce7f611fadb1cb2d3146cc0058cd0c8d191a58d2e68f736f1b2a8","entity_key":"d_getting_around_01:2","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2271330661f32910a4652615de82bcdd744b9aed630006ef98a46076ac6412c6","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/fe50bfa3a76ce7f611fadb1cb2d3146cc0058cd0c8d191a58d2e68f736f1b2a8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_family_and_people_04 -> audio/generated/ko-KR/lexical/01a5886a9a3bbcd1fbd1388325e9b3cb8a5645c29707d6bde02e8a872470fc78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dbb1cb3f-24d0-5dd5-8a3f-cca882497948', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_family_and_people_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc9b651fd875fefcac75cfaa355cc258489b1a770f4e0d8e87ff6de188eaf3bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('23774eb7-f411-5862-860c-c0aa2cfb6052', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dbb1cb3f-24d0-5dd5-8a3f-cca882497948', 1), 'bc9b651fd875fefcac75cfaa355cc258489b1a770f4e0d8e87ff6de188eaf3bb',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/01a5886a9a3bbcd1fbd1388325e9b3cb8a5645c29707d6bde02e8a872470fc78.mp3', 1071, '2026-09-13 22:04:55.309789', '803ebb7e13630bd26d2124c0423ef02426d66cdf67dadf40150e4e1cbd6a7d69', 'validated', '{"audio_key":"01a5886a9a3bbcd1fbd1388325e9b3cb8a5645c29707d6bde02e8a872470fc78","entity_key":"lx_family_and_people_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"803ebb7e13630bd26d2124c0423ef02426d66cdf67dadf40150e4e1cbd6a7d69","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/01a5886a9a3bbcd1fbd1388325e9b3cb8a5645c29707d6bde02e8a872470fc78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_family_and_people_04 -> audio/generated/ko-KR/lexical/01a5886a9a3bbcd1fbd1388325e9b3cb8a5645c29707d6bde02e8a872470fc78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('80219fbf-feb6-5979-be8c-44c13e45d60f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_family_and_people_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc9b651fd875fefcac75cfaa355cc258489b1a770f4e0d8e87ff6de188eaf3bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a8e2709-36c4-5777-b1f0-8dcbb187049b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('80219fbf-feb6-5979-be8c-44c13e45d60f', 1), 'bc9b651fd875fefcac75cfaa355cc258489b1a770f4e0d8e87ff6de188eaf3bb',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/01a5886a9a3bbcd1fbd1388325e9b3cb8a5645c29707d6bde02e8a872470fc78.mp3', 1071, '2026-09-13 22:04:55.309789', '803ebb7e13630bd26d2124c0423ef02426d66cdf67dadf40150e4e1cbd6a7d69', 'validated', '{"audio_key":"01a5886a9a3bbcd1fbd1388325e9b3cb8a5645c29707d6bde02e8a872470fc78","entity_key":"wf_family_and_people_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"803ebb7e13630bd26d2124c0423ef02426d66cdf67dadf40150e4e1cbd6a7d69","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/01a5886a9a3bbcd1fbd1388325e9b3cb8a5645c29707d6bde02e8a872470fc78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_identity_and_work_03 -> audio/generated/ko-KR/lexical/05304832eb9a88fba86c6595bb8efe8462de3a364961268f6eb7ea116e9d8ae6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a1c4833b-786e-5bd4-bc3d-375df8fa8ca6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_identity_and_work_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'daac5ca7b302bd9b404a465efa26cf415f2ff08658def3cbc8fbff6402bdb9c1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86d27257-180c-5493-ae27-bd3ba3a75c88', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a1c4833b-786e-5bd4-bc3d-375df8fa8ca6', 1), 'daac5ca7b302bd9b404a465efa26cf415f2ff08658def3cbc8fbff6402bdb9c1',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/05304832eb9a88fba86c6595bb8efe8462de3a364961268f6eb7ea116e9d8ae6.mp3', 1097, '2026-09-13 22:04:55.693314', '94754ab5dd8feed39d2eef938e048cbf2975c9922bfb1dd5319baba2d59e8566', 'validated', '{"audio_key":"05304832eb9a88fba86c6595bb8efe8462de3a364961268f6eb7ea116e9d8ae6","entity_key":"lx_identity_and_work_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"94754ab5dd8feed39d2eef938e048cbf2975c9922bfb1dd5319baba2d59e8566","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/05304832eb9a88fba86c6595bb8efe8462de3a364961268f6eb7ea116e9d8ae6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_identity_and_work_03 -> audio/generated/ko-KR/lexical/05304832eb9a88fba86c6595bb8efe8462de3a364961268f6eb7ea116e9d8ae6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('062c3021-5fb0-59ce-9b99-2d30c704182d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_identity_and_work_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'daac5ca7b302bd9b404a465efa26cf415f2ff08658def3cbc8fbff6402bdb9c1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b711678e-74ac-53f8-ae0f-5867d54e7720', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('062c3021-5fb0-59ce-9b99-2d30c704182d', 1), 'daac5ca7b302bd9b404a465efa26cf415f2ff08658def3cbc8fbff6402bdb9c1',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/05304832eb9a88fba86c6595bb8efe8462de3a364961268f6eb7ea116e9d8ae6.mp3', 1097, '2026-09-13 22:04:55.693314', '94754ab5dd8feed39d2eef938e048cbf2975c9922bfb1dd5319baba2d59e8566', 'validated', '{"audio_key":"05304832eb9a88fba86c6595bb8efe8462de3a364961268f6eb7ea116e9d8ae6","entity_key":"wf_identity_and_work_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"94754ab5dd8feed39d2eef938e048cbf2975c9922bfb1dd5319baba2d59e8566","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/05304832eb9a88fba86c6595bb8efe8462de3a364961268f6eb7ea116e9d8ae6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a1_day_out_capstone_03 -> audio/generated/ko-KR/lexical/05fe31a26b66cbdf0a55ee34c74b7621befea44f72d1a7e7c28badf28c3c550a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('02afc1b5-6f74-537f-86b9-fc0bcbfcb6db', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a1_day_out_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d2b6bbf82785e6dce3dcd70637960636f0fcdae7e4015925e5a47438f169d43'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('046bb221-d2a1-5ab6-9ca5-4d79093425e2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('02afc1b5-6f74-537f-86b9-fc0bcbfcb6db', 1), '6d2b6bbf82785e6dce3dcd70637960636f0fcdae7e4015925e5a47438f169d43',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/05fe31a26b66cbdf0a55ee34c74b7621befea44f72d1a7e7c28badf28c3c550a.mp3', 1071, '2026-09-13 22:04:56.284970', 'f0f52587732b47f87b07a885f809ba36fbb9c4644de7609bd148d8be13d47af0', 'validated', '{"audio_key":"05fe31a26b66cbdf0a55ee34c74b7621befea44f72d1a7e7c28badf28c3c550a","entity_key":"lx_a1_day_out_capstone_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f0f52587732b47f87b07a885f809ba36fbb9c4644de7609bd148d8be13d47af0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/05fe31a26b66cbdf0a55ee34c74b7621befea44f72d1a7e7c28badf28c3c550a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a1_day_out_capstone_03 -> audio/generated/ko-KR/lexical/05fe31a26b66cbdf0a55ee34c74b7621befea44f72d1a7e7c28badf28c3c550a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('282f8bcd-f24f-5eb5-8954-cc1737578b85', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a1_day_out_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d2b6bbf82785e6dce3dcd70637960636f0fcdae7e4015925e5a47438f169d43'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ddb40047-8e4b-573c-be8e-abfbf29584a8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('282f8bcd-f24f-5eb5-8954-cc1737578b85', 1), '6d2b6bbf82785e6dce3dcd70637960636f0fcdae7e4015925e5a47438f169d43',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/05fe31a26b66cbdf0a55ee34c74b7621befea44f72d1a7e7c28badf28c3c550a.mp3', 1071, '2026-09-13 22:04:56.284970', 'f0f52587732b47f87b07a885f809ba36fbb9c4644de7609bd148d8be13d47af0', 'validated', '{"audio_key":"05fe31a26b66cbdf0a55ee34c74b7621befea44f72d1a7e7c28badf28c3c550a","entity_key":"wf_a1_day_out_capstone_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f0f52587732b47f87b07a885f809ba36fbb9c4644de7609bd148d8be13d47af0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/05fe31a26b66cbdf0a55ee34c74b7621befea44f72d1a7e7c28badf28c3c550a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_likes_and_dislikes_03 -> audio/generated/ko-KR/lexical/085e2d6189f7785b7c1b1a5aa9f3935e73a6217553b7e269f8871f24e12a9118.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('46a0155f-8461-5bf9-bb1e-53d6d749c37a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_likes_and_dislikes_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd697e1a44df5b675b505a4e80dfcc9110ef362ad5217a114231b92a2bb87948c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('528740a5-b6f0-5901-b9c5-0d03749949cd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('46a0155f-8461-5bf9-bb1e-53d6d749c37a', 1), 'd697e1a44df5b675b505a4e80dfcc9110ef362ad5217a114231b92a2bb87948c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/085e2d6189f7785b7c1b1a5aa9f3935e73a6217553b7e269f8871f24e12a9118.mp3', 1071, '2026-09-13 22:04:56.684932', 'eb65ea865acb922d565fac91ca2ba29f5e7a4a106f754718658ab41bf03ad5c7', 'validated', '{"audio_key":"085e2d6189f7785b7c1b1a5aa9f3935e73a6217553b7e269f8871f24e12a9118","entity_key":"lx_likes_and_dislikes_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"eb65ea865acb922d565fac91ca2ba29f5e7a4a106f754718658ab41bf03ad5c7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/085e2d6189f7785b7c1b1a5aa9f3935e73a6217553b7e269f8871f24e12a9118.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_likes_and_dislikes_03 -> audio/generated/ko-KR/lexical/085e2d6189f7785b7c1b1a5aa9f3935e73a6217553b7e269f8871f24e12a9118.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('44915827-fd1b-5b44-9b33-06f9907e5074', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_likes_and_dislikes_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd697e1a44df5b675b505a4e80dfcc9110ef362ad5217a114231b92a2bb87948c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad30a1f9-863d-55b2-b963-e6c957aff4a9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('44915827-fd1b-5b44-9b33-06f9907e5074', 1), 'd697e1a44df5b675b505a4e80dfcc9110ef362ad5217a114231b92a2bb87948c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/085e2d6189f7785b7c1b1a5aa9f3935e73a6217553b7e269f8871f24e12a9118.mp3', 1071, '2026-09-13 22:04:56.684932', 'eb65ea865acb922d565fac91ca2ba29f5e7a4a106f754718658ab41bf03ad5c7', 'validated', '{"audio_key":"085e2d6189f7785b7c1b1a5aa9f3935e73a6217553b7e269f8871f24e12a9118","entity_key":"wf_likes_and_dislikes_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"eb65ea865acb922d565fac91ca2ba29f5e7a4a106f754718658ab41bf03ad5c7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/085e2d6189f7785b7c1b1a5aa9f3935e73a6217553b7e269f8871f24e12a9118.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_identity_and_work_06 -> audio/generated/ko-KR/lexical/0893d1520fb088c437512ee1504f2aea8fc8c76e432627524e5286f1aeb801f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('75191331-e653-5a59-bbaf-4e72bf2857c5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_identity_and_work_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a86f32067c011ee9805668192e21e0ef009971330ed28d122f584e35a64da43'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1876f1a-5ac7-5edc-b410-e23968eb4f1f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('75191331-e653-5a59-bbaf-4e72bf2857c5', 1), '2a86f32067c011ee9805668192e21e0ef009971330ed28d122f584e35a64da43',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0893d1520fb088c437512ee1504f2aea8fc8c76e432627524e5286f1aeb801f4.mp3', 966, '2026-09-13 22:04:57.231709', 'd289fa112b022147cd88e49d38d71ce0db94ca28c78eb40b056440a6ed32bd1d', 'validated', '{"audio_key":"0893d1520fb088c437512ee1504f2aea8fc8c76e432627524e5286f1aeb801f4","entity_key":"lx_identity_and_work_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d289fa112b022147cd88e49d38d71ce0db94ca28c78eb40b056440a6ed32bd1d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0893d1520fb088c437512ee1504f2aea8fc8c76e432627524e5286f1aeb801f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_identity_and_work_06 -> audio/generated/ko-KR/lexical/0893d1520fb088c437512ee1504f2aea8fc8c76e432627524e5286f1aeb801f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('00d16e17-7051-5fe7-96ea-c06f63d1adb0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_identity_and_work_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a86f32067c011ee9805668192e21e0ef009971330ed28d122f584e35a64da43'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f82325a-cb55-5e61-aeba-bc54c62897c2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('00d16e17-7051-5fe7-96ea-c06f63d1adb0', 1), '2a86f32067c011ee9805668192e21e0ef009971330ed28d122f584e35a64da43',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0893d1520fb088c437512ee1504f2aea8fc8c76e432627524e5286f1aeb801f4.mp3', 966, '2026-09-13 22:04:57.231709', 'd289fa112b022147cd88e49d38d71ce0db94ca28c78eb40b056440a6ed32bd1d', 'validated', '{"audio_key":"0893d1520fb088c437512ee1504f2aea8fc8c76e432627524e5286f1aeb801f4","entity_key":"wf_identity_and_work_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d289fa112b022147cd88e49d38d71ce0db94ca28c78eb40b056440a6ed32bd1d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0893d1520fb088c437512ee1504f2aea8fc8c76e432627524e5286f1aeb801f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cafe_orders_03 -> audio/generated/ko-KR/lexical/16812dbd5168efffece9915a201f508fc0eb7d079549a3fbc55c36d32d738a81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1b57783f-581d-5dc2-9cf9-eb716db8c826', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cafe_orders_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'edc73c627b8f32b7f6a1e9e093958cf3081662dbd607ba5c12e3690ca3cdac25'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8091b10d-5a7a-56b2-890d-724bdd580e66', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1b57783f-581d-5dc2-9cf9-eb716db8c826', 1), 'edc73c627b8f32b7f6a1e9e093958cf3081662dbd607ba5c12e3690ca3cdac25',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/16812dbd5168efffece9915a201f508fc0eb7d079549a3fbc55c36d32d738a81.mp3', 1071, '2026-09-13 22:04:57.685479', '065c5c9afd97276a21e839a9288aa96e1fa2828873820625a22f340e7e9e4297', 'validated', '{"audio_key":"16812dbd5168efffece9915a201f508fc0eb7d079549a3fbc55c36d32d738a81","entity_key":"lx_cafe_orders_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"065c5c9afd97276a21e839a9288aa96e1fa2828873820625a22f340e7e9e4297","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/16812dbd5168efffece9915a201f508fc0eb7d079549a3fbc55c36d32d738a81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cafe_orders_03 -> audio/generated/ko-KR/lexical/16812dbd5168efffece9915a201f508fc0eb7d079549a3fbc55c36d32d738a81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('37073045-42a8-5d8a-8d0b-4565ba97d0fc', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cafe_orders_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'edc73c627b8f32b7f6a1e9e093958cf3081662dbd607ba5c12e3690ca3cdac25'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a7baa15d-c078-55b2-b833-d012a50fb86d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('37073045-42a8-5d8a-8d0b-4565ba97d0fc', 1), 'edc73c627b8f32b7f6a1e9e093958cf3081662dbd607ba5c12e3690ca3cdac25',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/16812dbd5168efffece9915a201f508fc0eb7d079549a3fbc55c36d32d738a81.mp3', 1071, '2026-09-13 22:04:57.685479', '065c5c9afd97276a21e839a9288aa96e1fa2828873820625a22f340e7e9e4297', 'validated', '{"audio_key":"16812dbd5168efffece9915a201f508fc0eb7d079549a3fbc55c36d32d738a81","entity_key":"wf_cafe_orders_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"065c5c9afd97276a21e839a9288aa96e1fa2828873820625a22f340e7e9e4297","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/16812dbd5168efffece9915a201f508fc0eb7d079549a3fbc55c36d32d738a81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cafe_orders_06 -> audio/generated/ko-KR/lexical/180724c81b33afa4e68ead299c58bb1360c4184c37656614507f958701cd24f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ac285231-5f6f-53d5-ac95-72b1fbe341a7', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cafe_orders_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97f2a1d4f468faba426d2e1bd823c8f1b2e71a2c23e61ddc1dbfd934886a2362'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4317f34-d5ce-525a-ac37-547845121281', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ac285231-5f6f-53d5-ac95-72b1fbe341a7', 1), '97f2a1d4f468faba426d2e1bd823c8f1b2e71a2c23e61ddc1dbfd934886a2362',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/180724c81b33afa4e68ead299c58bb1360c4184c37656614507f958701cd24f9.mp3', 1018, '2026-09-13 21:05:20.593143', 'a0b49bae5bb17497098d954af631826ca70aaae5fb82a36c01cd0587c0f88b38', 'validated', '{"audio_key":"180724c81b33afa4e68ead299c58bb1360c4184c37656614507f958701cd24f9","entity_key":"lx_cafe_orders_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a0b49bae5bb17497098d954af631826ca70aaae5fb82a36c01cd0587c0f88b38","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/180724c81b33afa4e68ead299c58bb1360c4184c37656614507f958701cd24f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cafe_orders_06 -> audio/generated/ko-KR/lexical/180724c81b33afa4e68ead299c58bb1360c4184c37656614507f958701cd24f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6a262d21-264a-5e16-90a8-6d55c29c3f2f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cafe_orders_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97f2a1d4f468faba426d2e1bd823c8f1b2e71a2c23e61ddc1dbfd934886a2362'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fda421ea-30ea-5611-8879-11d2bd963921', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6a262d21-264a-5e16-90a8-6d55c29c3f2f', 1), '97f2a1d4f468faba426d2e1bd823c8f1b2e71a2c23e61ddc1dbfd934886a2362',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/180724c81b33afa4e68ead299c58bb1360c4184c37656614507f958701cd24f9.mp3', 1018, '2026-09-13 21:05:20.593143', 'a0b49bae5bb17497098d954af631826ca70aaae5fb82a36c01cd0587c0f88b38', 'validated', '{"audio_key":"180724c81b33afa4e68ead299c58bb1360c4184c37656614507f958701cd24f9","entity_key":"wf_cafe_orders_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a0b49bae5bb17497098d954af631826ca70aaae5fb82a36c01cd0587c0f88b38","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/180724c81b33afa4e68ead299c58bb1360c4184c37656614507f958701cd24f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cafe_orders_05 -> audio/generated/ko-KR/lexical/18641844dab6dd5c89cfcfa45a61716871b4a33a8fe6e835c6ec2d3295ff883f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b2c69ff5-9133-5faa-906e-183921f4f9ca', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cafe_orders_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a57ab05712bfb600cb4b38bb8741ccf680fedeab4b340ff52242b30d760ccaac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6e7e827-e93b-5607-8568-2ce23a2b09e2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b2c69ff5-9133-5faa-906e-183921f4f9ca', 1), 'a57ab05712bfb600cb4b38bb8741ccf680fedeab4b340ff52242b30d760ccaac',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/18641844dab6dd5c89cfcfa45a61716871b4a33a8fe6e835c6ec2d3295ff883f.mp3', 783, '2026-09-13 22:04:58.145875', '7ff525a8b45b0eafd0922b05032b9a66c4d2cd48870520cf3b459a7350ad80c4', 'validated', '{"audio_key":"18641844dab6dd5c89cfcfa45a61716871b4a33a8fe6e835c6ec2d3295ff883f","entity_key":"lx_cafe_orders_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7ff525a8b45b0eafd0922b05032b9a66c4d2cd48870520cf3b459a7350ad80c4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/18641844dab6dd5c89cfcfa45a61716871b4a33a8fe6e835c6ec2d3295ff883f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cafe_orders_05 -> audio/generated/ko-KR/lexical/18641844dab6dd5c89cfcfa45a61716871b4a33a8fe6e835c6ec2d3295ff883f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('74e6c92a-0499-594c-ad2f-948202080d18', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cafe_orders_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a57ab05712bfb600cb4b38bb8741ccf680fedeab4b340ff52242b30d760ccaac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('71826188-5c26-56df-b2f2-0b40546ae3f2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('74e6c92a-0499-594c-ad2f-948202080d18', 1), 'a57ab05712bfb600cb4b38bb8741ccf680fedeab4b340ff52242b30d760ccaac',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/18641844dab6dd5c89cfcfa45a61716871b4a33a8fe6e835c6ec2d3295ff883f.mp3', 783, '2026-09-13 22:04:58.145875', '7ff525a8b45b0eafd0922b05032b9a66c4d2cd48870520cf3b459a7350ad80c4', 'validated', '{"audio_key":"18641844dab6dd5c89cfcfa45a61716871b4a33a8fe6e835c6ec2d3295ff883f","entity_key":"wf_cafe_orders_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7ff525a8b45b0eafd0922b05032b9a66c4d2cd48870520cf3b459a7350ad80c4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/18641844dab6dd5c89cfcfa45a61716871b4a33a8fe6e835c6ec2d3295ff883f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_daily_routine_01 -> audio/generated/ko-KR/lexical/1cb283e21e734180ba246735cee82835bd2d9e3f3301b0421786295d705bc741.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dca5de21-6106-5884-a103-1a34ce5cf07f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_daily_routine_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd57c47b0949440ff623b9ab3cb05be76fc0fb9425655dcba563a238a52ffd318'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77cc1f5c-87ff-590b-bd53-96fa493bf596', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dca5de21-6106-5884-a103-1a34ce5cf07f', 1), 'd57c47b0949440ff623b9ab3cb05be76fc0fb9425655dcba563a238a52ffd318',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1cb283e21e734180ba246735cee82835bd2d9e3f3301b0421786295d705bc741.mp3', 1071, '2026-09-13 22:04:58.654928', 'f2acc43a420f988f032f1b8cffc74d212ccc306b37acc4252e29b8cad5c70523', 'validated', '{"audio_key":"1cb283e21e734180ba246735cee82835bd2d9e3f3301b0421786295d705bc741","entity_key":"lx_daily_routine_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f2acc43a420f988f032f1b8cffc74d212ccc306b37acc4252e29b8cad5c70523","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1cb283e21e734180ba246735cee82835bd2d9e3f3301b0421786295d705bc741.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_daily_routine_01 -> audio/generated/ko-KR/lexical/1cb283e21e734180ba246735cee82835bd2d9e3f3301b0421786295d705bc741.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c4f4ac0c-589b-57a5-83b9-896fec5a570c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_daily_routine_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd57c47b0949440ff623b9ab3cb05be76fc0fb9425655dcba563a238a52ffd318'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca2eba77-6568-5825-89b3-fdf91b57681a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c4f4ac0c-589b-57a5-83b9-896fec5a570c', 1), 'd57c47b0949440ff623b9ab3cb05be76fc0fb9425655dcba563a238a52ffd318',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1cb283e21e734180ba246735cee82835bd2d9e3f3301b0421786295d705bc741.mp3', 1071, '2026-09-13 22:04:58.654928', 'f2acc43a420f988f032f1b8cffc74d212ccc306b37acc4252e29b8cad5c70523', 'validated', '{"audio_key":"1cb283e21e734180ba246735cee82835bd2d9e3f3301b0421786295d705bc741","entity_key":"wf_daily_routine_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f2acc43a420f988f032f1b8cffc74d212ccc306b37acc4252e29b8cad5c70523","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1cb283e21e734180ba246735cee82835bd2d9e3f3301b0421786295d705bc741.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shopping_basics_05 -> audio/generated/ko-KR/lexical/1f9e50145c7666168597d59b4f730d814c5df910ad3d86291d643ae0e2dc7ee9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9db61bb1-f1d0-5a23-a869-d4d482c96ed9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shopping_basics_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '063c1a7bb93233dcd2056f684229ca776791015f7602f1fedf250a71cea01d10'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b33d8c18-d918-5c89-824e-a0481911ac66', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9db61bb1-f1d0-5a23-a869-d4d482c96ed9', 1), '063c1a7bb93233dcd2056f684229ca776791015f7602f1fedf250a71cea01d10',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1f9e50145c7666168597d59b4f730d814c5df910ad3d86291d643ae0e2dc7ee9.mp3', 1071, '2026-09-13 22:04:59.140022', 'afc28b4e8a45ad2230f89ccfc3ccd7843cfe0b57cbb4f4d23a38b0bca884c66e', 'validated', '{"audio_key":"1f9e50145c7666168597d59b4f730d814c5df910ad3d86291d643ae0e2dc7ee9","entity_key":"lx_shopping_basics_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"afc28b4e8a45ad2230f89ccfc3ccd7843cfe0b57cbb4f4d23a38b0bca884c66e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1f9e50145c7666168597d59b4f730d814c5df910ad3d86291d643ae0e2dc7ee9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shopping_basics_05 -> audio/generated/ko-KR/lexical/1f9e50145c7666168597d59b4f730d814c5df910ad3d86291d643ae0e2dc7ee9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('754d37e1-8b31-5321-8c72-72d395de91ff', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shopping_basics_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '063c1a7bb93233dcd2056f684229ca776791015f7602f1fedf250a71cea01d10'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee85b523-002b-5537-85a5-fe82e45c6037', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('754d37e1-8b31-5321-8c72-72d395de91ff', 1), '063c1a7bb93233dcd2056f684229ca776791015f7602f1fedf250a71cea01d10',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1f9e50145c7666168597d59b4f730d814c5df910ad3d86291d643ae0e2dc7ee9.mp3', 1071, '2026-09-13 22:04:59.140022', 'afc28b4e8a45ad2230f89ccfc3ccd7843cfe0b57cbb4f4d23a38b0bca884c66e', 'validated', '{"audio_key":"1f9e50145c7666168597d59b4f730d814c5df910ad3d86291d643ae0e2dc7ee9","entity_key":"wf_shopping_basics_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"afc28b4e8a45ad2230f89ccfc3ccd7843cfe0b57cbb4f4d23a38b0bca884c66e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1f9e50145c7666168597d59b4f730d814c5df910ad3d86291d643ae0e2dc7ee9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_and_schedule_05 -> audio/generated/ko-KR/lexical/21537602a3b943f3c89a203fd1089f43286a173d8d3ce128143fab6f022e70e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('24340e70-e398-56e9-8f0b-29dc7c68a66b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_and_schedule_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e07b94ba5182a41e7de0ba00455a71152c47eccb1adaa12bdd49e4605447665'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('979cd91b-baca-5300-82ee-581f52c5ca26', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('24340e70-e398-56e9-8f0b-29dc7c68a66b', 1), '1e07b94ba5182a41e7de0ba00455a71152c47eccb1adaa12bdd49e4605447665',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/21537602a3b943f3c89a203fd1089f43286a173d8d3ce128143fab6f022e70e7.mp3', 914, '2026-09-13 22:04:59.604008', '4b44455da450879399dbbbe8163bfe27f734843baf77eabc7981986f3340e17d', 'validated', '{"audio_key":"21537602a3b943f3c89a203fd1089f43286a173d8d3ce128143fab6f022e70e7","entity_key":"lx_time_and_schedule_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4b44455da450879399dbbbe8163bfe27f734843baf77eabc7981986f3340e17d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/21537602a3b943f3c89a203fd1089f43286a173d8d3ce128143fab6f022e70e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_and_schedule_05 -> audio/generated/ko-KR/lexical/21537602a3b943f3c89a203fd1089f43286a173d8d3ce128143fab6f022e70e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('12d31cab-4a3e-5015-b7f9-2a467ddc740e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_and_schedule_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e07b94ba5182a41e7de0ba00455a71152c47eccb1adaa12bdd49e4605447665'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6effae64-fd2a-5692-bffe-fa3b3b8345d7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('12d31cab-4a3e-5015-b7f9-2a467ddc740e', 1), '1e07b94ba5182a41e7de0ba00455a71152c47eccb1adaa12bdd49e4605447665',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/21537602a3b943f3c89a203fd1089f43286a173d8d3ce128143fab6f022e70e7.mp3', 914, '2026-09-13 22:04:59.604008', '4b44455da450879399dbbbe8163bfe27f734843baf77eabc7981986f3340e17d', 'validated', '{"audio_key":"21537602a3b943f3c89a203fd1089f43286a173d8d3ce128143fab6f022e70e7","entity_key":"wf_time_and_schedule_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4b44455da450879399dbbbe8163bfe27f734843baf77eabc7981986f3340e17d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/21537602a3b943f3c89a203fd1089f43286a173d8d3ce128143fab6f022e70e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_where_things_are_05 -> audio/generated/ko-KR/lexical/22911c37c4964371e7557e096d2b31284337f2d631bb65c594e7907a3e3a8809.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('18b46fbc-487d-5c5c-a4c0-a763ce832884', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_where_things_are_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8f2ea9820639f8b8504795ab8bfa35e2b94d11ccecf83f7eff0f3b6a8c845493'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dba49dfe-c246-5785-83ce-230ffc439d5b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('18b46fbc-487d-5c5c-a4c0-a763ce832884', 1), '8f2ea9820639f8b8504795ab8bfa35e2b94d11ccecf83f7eff0f3b6a8c845493',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/22911c37c4964371e7557e096d2b31284337f2d631bb65c594e7907a3e3a8809.mp3', 914, '2026-09-13 22:05:00.101156', 'e1dfbf218bde308d20486db6fc103b5dcd736654bf0e249ff77482786c66bc13', 'validated', '{"audio_key":"22911c37c4964371e7557e096d2b31284337f2d631bb65c594e7907a3e3a8809","entity_key":"lx_where_things_are_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e1dfbf218bde308d20486db6fc103b5dcd736654bf0e249ff77482786c66bc13","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/22911c37c4964371e7557e096d2b31284337f2d631bb65c594e7907a3e3a8809.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_where_things_are_05 -> audio/generated/ko-KR/lexical/22911c37c4964371e7557e096d2b31284337f2d631bb65c594e7907a3e3a8809.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('34ff1a8d-1544-5b50-98fa-b65a0ccef4eb', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_where_things_are_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8f2ea9820639f8b8504795ab8bfa35e2b94d11ccecf83f7eff0f3b6a8c845493'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('93d9e629-437c-5508-b296-0185e598d8a4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('34ff1a8d-1544-5b50-98fa-b65a0ccef4eb', 1), '8f2ea9820639f8b8504795ab8bfa35e2b94d11ccecf83f7eff0f3b6a8c845493',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/22911c37c4964371e7557e096d2b31284337f2d631bb65c594e7907a3e3a8809.mp3', 914, '2026-09-13 22:05:00.101156', 'e1dfbf218bde308d20486db6fc103b5dcd736654bf0e249ff77482786c66bc13', 'validated', '{"audio_key":"22911c37c4964371e7557e096d2b31284337f2d631bb65c594e7907a3e3a8809","entity_key":"wf_where_things_are_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e1dfbf218bde308d20486db6fc103b5dcd736654bf0e249ff77482786c66bc13","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/22911c37c4964371e7557e096d2b31284337f2d631bb65c594e7907a3e3a8809.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_likes_and_dislikes_04 -> audio/generated/ko-KR/lexical/255d95e75569f3e933c4b0120160590bcb033b3d543db4278e1cd9406b9735de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c506fc4a-91d5-5708-b3be-4709c864f22d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_likes_and_dislikes_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74a6aa2fc6ae8f0c6bc160502d6626a526885f5352c8f962fa6426b1ac918e0e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f9dd28e-4dbc-57cf-aee1-033cef0d4d9e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c506fc4a-91d5-5708-b3be-4709c864f22d', 1), '74a6aa2fc6ae8f0c6bc160502d6626a526885f5352c8f962fa6426b1ac918e0e',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/255d95e75569f3e933c4b0120160590bcb033b3d543db4278e1cd9406b9735de.mp3', 1201, '2026-09-13 22:05:00.683654', '9f1c7f0626f2dbfdeb59fcbdbdb8cdab0ab7b005b8c53ed22d78afdad9d396ec', 'validated', '{"audio_key":"255d95e75569f3e933c4b0120160590bcb033b3d543db4278e1cd9406b9735de","entity_key":"lx_likes_and_dislikes_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9f1c7f0626f2dbfdeb59fcbdbdb8cdab0ab7b005b8c53ed22d78afdad9d396ec","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/255d95e75569f3e933c4b0120160590bcb033b3d543db4278e1cd9406b9735de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_likes_and_dislikes_04 -> audio/generated/ko-KR/lexical/255d95e75569f3e933c4b0120160590bcb033b3d543db4278e1cd9406b9735de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a808cccd-ae71-5028-86bc-892ca5d86c36', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_likes_and_dislikes_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74a6aa2fc6ae8f0c6bc160502d6626a526885f5352c8f962fa6426b1ac918e0e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a62419b2-91dd-56a0-bc92-450aec74876e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a808cccd-ae71-5028-86bc-892ca5d86c36', 1), '74a6aa2fc6ae8f0c6bc160502d6626a526885f5352c8f962fa6426b1ac918e0e',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/255d95e75569f3e933c4b0120160590bcb033b3d543db4278e1cd9406b9735de.mp3', 1201, '2026-09-13 22:05:00.683654', '9f1c7f0626f2dbfdeb59fcbdbdb8cdab0ab7b005b8c53ed22d78afdad9d396ec', 'validated', '{"audio_key":"255d95e75569f3e933c4b0120160590bcb033b3d543db4278e1cd9406b9735de","entity_key":"wf_likes_and_dislikes_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9f1c7f0626f2dbfdeb59fcbdbdb8cdab0ab7b005b8c53ed22d78afdad9d396ec","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/255d95e75569f3e933c4b0120160590bcb033b3d543db4278e1cd9406b9735de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_identity_and_work_01 -> audio/generated/ko-KR/lexical/277f182a20911a26b7cd2b2d3ce0b9d888dc09469b33af0c988e79b5cba86356.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('874d45e7-0642-529d-801a-1443de4c4b2c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_identity_and_work_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a0d8fcfa829510f2ed03567168f2a815db4d9293b1ba0f616698e32ae1625ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d4353f7-99ee-506f-a3f3-99e7bd6d3eaa', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('874d45e7-0642-529d-801a-1443de4c4b2c', 1), '1a0d8fcfa829510f2ed03567168f2a815db4d9293b1ba0f616698e32ae1625ee',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/277f182a20911a26b7cd2b2d3ce0b9d888dc09469b33af0c988e79b5cba86356.mp3', 1097, '2026-09-13 22:05:01.085777', '388a3302f9adef2a347d6657b54122c8b0203da3771fce0cb1c1be005ffd5dff', 'validated', '{"audio_key":"277f182a20911a26b7cd2b2d3ce0b9d888dc09469b33af0c988e79b5cba86356","entity_key":"lx_identity_and_work_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"388a3302f9adef2a347d6657b54122c8b0203da3771fce0cb1c1be005ffd5dff","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/277f182a20911a26b7cd2b2d3ce0b9d888dc09469b33af0c988e79b5cba86356.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_identity_and_work_01 -> audio/generated/ko-KR/lexical/277f182a20911a26b7cd2b2d3ce0b9d888dc09469b33af0c988e79b5cba86356.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bad6dfbe-33bb-5317-83d8-58bd460c5ce5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_identity_and_work_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a0d8fcfa829510f2ed03567168f2a815db4d9293b1ba0f616698e32ae1625ee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e25ebdf4-3130-5624-acb0-fff291783a5b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bad6dfbe-33bb-5317-83d8-58bd460c5ce5', 1), '1a0d8fcfa829510f2ed03567168f2a815db4d9293b1ba0f616698e32ae1625ee',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/277f182a20911a26b7cd2b2d3ce0b9d888dc09469b33af0c988e79b5cba86356.mp3', 1097, '2026-09-13 22:05:01.085777', '388a3302f9adef2a347d6657b54122c8b0203da3771fce0cb1c1be005ffd5dff', 'validated', '{"audio_key":"277f182a20911a26b7cd2b2d3ce0b9d888dc09469b33af0c988e79b5cba86356","entity_key":"wf_identity_and_work_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"388a3302f9adef2a347d6657b54122c8b0203da3771fce0cb1c1be005ffd5dff","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/277f182a20911a26b7cd2b2d3ce0b9d888dc09469b33af0c988e79b5cba86356.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_likes_and_dislikes_06 -> audio/generated/ko-KR/lexical/2b48ffdf42d9fa1cd2ff9b5695835efa7783a3ebdcd8f81d32ec5ea56bbc3cab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a1b2e94c-a713-5085-846f-0fc75cdd004f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_likes_and_dislikes_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5407a521139ec81f061e667e5f9fe20307553777cae8a111ef7bb2152c5c6662'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ccabd6e7-57ac-58a7-977e-3836cf061349', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a1b2e94c-a713-5085-846f-0fc75cdd004f', 1), '5407a521139ec81f061e667e5f9fe20307553777cae8a111ef7bb2152c5c6662',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/2b48ffdf42d9fa1cd2ff9b5695835efa7783a3ebdcd8f81d32ec5ea56bbc3cab.mp3', 966, '2026-09-13 22:05:01.644539', 'c73e5f8e140cc0283b431d49da364922deaeeb52a584c447f84bcc4706ab6428', 'validated', '{"audio_key":"2b48ffdf42d9fa1cd2ff9b5695835efa7783a3ebdcd8f81d32ec5ea56bbc3cab","entity_key":"lx_likes_and_dislikes_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c73e5f8e140cc0283b431d49da364922deaeeb52a584c447f84bcc4706ab6428","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/2b48ffdf42d9fa1cd2ff9b5695835efa7783a3ebdcd8f81d32ec5ea56bbc3cab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_likes_and_dislikes_06 -> audio/generated/ko-KR/lexical/2b48ffdf42d9fa1cd2ff9b5695835efa7783a3ebdcd8f81d32ec5ea56bbc3cab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('98a4f871-a1d3-5d49-af7d-59e3e2a0edc5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_likes_and_dislikes_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5407a521139ec81f061e667e5f9fe20307553777cae8a111ef7bb2152c5c6662'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('efb12686-13f3-51c0-88eb-7a8b1a086340', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('98a4f871-a1d3-5d49-af7d-59e3e2a0edc5', 1), '5407a521139ec81f061e667e5f9fe20307553777cae8a111ef7bb2152c5c6662',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/2b48ffdf42d9fa1cd2ff9b5695835efa7783a3ebdcd8f81d32ec5ea56bbc3cab.mp3', 966, '2026-09-13 22:05:01.644539', 'c73e5f8e140cc0283b431d49da364922deaeeb52a584c447f84bcc4706ab6428', 'validated', '{"audio_key":"2b48ffdf42d9fa1cd2ff9b5695835efa7783a3ebdcd8f81d32ec5ea56bbc3cab","entity_key":"wf_likes_and_dislikes_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c73e5f8e140cc0283b431d49da364922deaeeb52a584c447f84bcc4706ab6428","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/2b48ffdf42d9fa1cd2ff9b5695835efa7783a3ebdcd8f81d32ec5ea56bbc3cab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_identity_and_work_05 -> audio/generated/ko-KR/lexical/2bcd6de16c08ec51c0ce8d81518874f0a32a29f81ff22769439b683d9f2e818c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1501e52c-eb3c-5391-a015-aeeef5ba2ead', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_identity_and_work_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca897023e50c8699100a26f6096e3191c930fcba5c3578e74b4d6914b0ab6e6d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('537d3333-7c0c-5c47-9d2a-df77f27e9839', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1501e52c-eb3c-5391-a015-aeeef5ba2ead', 1), 'ca897023e50c8699100a26f6096e3191c930fcba5c3578e74b4d6914b0ab6e6d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/2bcd6de16c08ec51c0ce8d81518874f0a32a29f81ff22769439b683d9f2e818c.mp3', 1201, '2026-09-13 22:05:02.030001', '5cfa536c0b2f064c4e0b227822c604d4d18ddcf2ea57332bcb931323fd5e12e8', 'validated', '{"audio_key":"2bcd6de16c08ec51c0ce8d81518874f0a32a29f81ff22769439b683d9f2e818c","entity_key":"lx_identity_and_work_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5cfa536c0b2f064c4e0b227822c604d4d18ddcf2ea57332bcb931323fd5e12e8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/2bcd6de16c08ec51c0ce8d81518874f0a32a29f81ff22769439b683d9f2e818c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_identity_and_work_05 -> audio/generated/ko-KR/lexical/2bcd6de16c08ec51c0ce8d81518874f0a32a29f81ff22769439b683d9f2e818c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d3d4fd4c-088a-56ef-aa6b-4565f469d4d0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_identity_and_work_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca897023e50c8699100a26f6096e3191c930fcba5c3578e74b4d6914b0ab6e6d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('084050cb-1383-57d8-aafe-6ad12001cff1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d3d4fd4c-088a-56ef-aa6b-4565f469d4d0', 1), 'ca897023e50c8699100a26f6096e3191c930fcba5c3578e74b4d6914b0ab6e6d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/2bcd6de16c08ec51c0ce8d81518874f0a32a29f81ff22769439b683d9f2e818c.mp3', 1201, '2026-09-13 22:05:02.030001', '5cfa536c0b2f064c4e0b227822c604d4d18ddcf2ea57332bcb931323fd5e12e8', 'validated', '{"audio_key":"2bcd6de16c08ec51c0ce8d81518874f0a32a29f81ff22769439b683d9f2e818c","entity_key":"wf_identity_and_work_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5cfa536c0b2f064c4e0b227822c604d4d18ddcf2ea57332bcb931323fd5e12e8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/2bcd6de16c08ec51c0ce8d81518874f0a32a29f81ff22769439b683d9f2e818c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_family_and_people_02 -> audio/generated/ko-KR/lexical/2fc5c3f8e1fc3b694b7f87e77e57e0218ace31b31fed1cc33571de594e150400.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e2d4cc0c-6460-53b7-a08a-0b9808175a8e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_family_and_people_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9498f9014908e2891f1fd762ac31112088d69b69a6cac4d88a019b7e167375b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b50d237e-f942-5dfa-9f82-0193c0bd13ef', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e2d4cc0c-6460-53b7-a08a-0b9808175a8e', 1), '9498f9014908e2891f1fd762ac31112088d69b69a6cac4d88a019b7e167375b2',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/2fc5c3f8e1fc3b694b7f87e77e57e0218ace31b31fed1cc33571de594e150400.mp3', 835, '2026-09-13 22:05:02.596986', '489acd73f77ead01096468cc6622e817b39e727d343d587a2f4e94632d0fd71f', 'validated', '{"audio_key":"2fc5c3f8e1fc3b694b7f87e77e57e0218ace31b31fed1cc33571de594e150400","entity_key":"lx_family_and_people_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"489acd73f77ead01096468cc6622e817b39e727d343d587a2f4e94632d0fd71f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/2fc5c3f8e1fc3b694b7f87e77e57e0218ace31b31fed1cc33571de594e150400.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_family_and_people_02 -> audio/generated/ko-KR/lexical/2fc5c3f8e1fc3b694b7f87e77e57e0218ace31b31fed1cc33571de594e150400.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8d1f9694-7c2c-5ee1-b7e3-ca070eb25604', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_family_and_people_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9498f9014908e2891f1fd762ac31112088d69b69a6cac4d88a019b7e167375b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c87bd7a-0af9-52b1-9f0b-b0052b1d966d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8d1f9694-7c2c-5ee1-b7e3-ca070eb25604', 1), '9498f9014908e2891f1fd762ac31112088d69b69a6cac4d88a019b7e167375b2',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/2fc5c3f8e1fc3b694b7f87e77e57e0218ace31b31fed1cc33571de594e150400.mp3', 835, '2026-09-13 22:05:02.596986', '489acd73f77ead01096468cc6622e817b39e727d343d587a2f4e94632d0fd71f', 'validated', '{"audio_key":"2fc5c3f8e1fc3b694b7f87e77e57e0218ace31b31fed1cc33571de594e150400","entity_key":"wf_family_and_people_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"489acd73f77ead01096468cc6622e817b39e727d343d587a2f4e94632d0fd71f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/2fc5c3f8e1fc3b694b7f87e77e57e0218ace31b31fed1cc33571de594e150400.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_where_things_are_02 -> audio/generated/ko-KR/lexical/3411dfdef4be00d083df61ced34a4566e16977d5a441ae731a9883f45fda019d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9d1a8737-d9c4-5718-8a7d-277d26213374', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_where_things_are_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e2d1cb559455849bf57e9d3c8ed6b88cfd227f0fc5f88debc9256104100aed9d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d81d063c-8b3b-555e-a888-95115cf666b8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9d1a8737-d9c4-5718-8a7d-277d26213374', 1), 'e2d1cb559455849bf57e9d3c8ed6b88cfd227f0fc5f88debc9256104100aed9d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/3411dfdef4be00d083df61ced34a4566e16977d5a441ae731a9883f45fda019d.mp3', 1071, '2026-09-13 22:05:02.988756', '13c793f65a072d7ad7480b25fd9ecec738d346d623795b62d3af4a424ffbe667', 'validated', '{"audio_key":"3411dfdef4be00d083df61ced34a4566e16977d5a441ae731a9883f45fda019d","entity_key":"lx_where_things_are_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"13c793f65a072d7ad7480b25fd9ecec738d346d623795b62d3af4a424ffbe667","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/3411dfdef4be00d083df61ced34a4566e16977d5a441ae731a9883f45fda019d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_where_things_are_02 -> audio/generated/ko-KR/lexical/3411dfdef4be00d083df61ced34a4566e16977d5a441ae731a9883f45fda019d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b5ddcc05-2b0d-5cb4-8d75-db0681bee601', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_where_things_are_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e2d1cb559455849bf57e9d3c8ed6b88cfd227f0fc5f88debc9256104100aed9d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ecb2d4d-cff5-59c4-9328-daf1004b800e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b5ddcc05-2b0d-5cb4-8d75-db0681bee601', 1), 'e2d1cb559455849bf57e9d3c8ed6b88cfd227f0fc5f88debc9256104100aed9d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/3411dfdef4be00d083df61ced34a4566e16977d5a441ae731a9883f45fda019d.mp3', 1071, '2026-09-13 22:05:02.988756', '13c793f65a072d7ad7480b25fd9ecec738d346d623795b62d3af4a424ffbe667', 'validated', '{"audio_key":"3411dfdef4be00d083df61ced34a4566e16977d5a441ae731a9883f45fda019d","entity_key":"wf_where_things_are_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"13c793f65a072d7ad7480b25fd9ecec738d346d623795b62d3af4a424ffbe667","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/3411dfdef4be00d083df61ced34a4566e16977d5a441ae731a9883f45fda019d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shopping_basics_02 -> audio/generated/ko-KR/lexical/396cff08cc591bbd478dad5a352ee18c0c6d32b94a256ab1d4a8c152afb7f691.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c91f34f8-8b7b-56a0-8e62-980614411594', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shopping_basics_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e0a4529e0c9d4ed90588b0ddbc8a1119bb4b55d061874bde2db4dbc3b56b6f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08900f8c-93bf-53d4-ab65-17d363c41f99', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c91f34f8-8b7b-56a0-8e62-980614411594', 1), '8e0a4529e0c9d4ed90588b0ddbc8a1119bb4b55d061874bde2db4dbc3b56b6f4',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/396cff08cc591bbd478dad5a352ee18c0c6d32b94a256ab1d4a8c152afb7f691.mp3', 862, '2026-09-13 22:05:03.518220', '4653ff3d7a1ff9fb0def9221bc705a34559d5c8526165b8d8da8fc4668195ea9', 'validated', '{"audio_key":"396cff08cc591bbd478dad5a352ee18c0c6d32b94a256ab1d4a8c152afb7f691","entity_key":"lx_shopping_basics_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4653ff3d7a1ff9fb0def9221bc705a34559d5c8526165b8d8da8fc4668195ea9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/396cff08cc591bbd478dad5a352ee18c0c6d32b94a256ab1d4a8c152afb7f691.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shopping_basics_02 -> audio/generated/ko-KR/lexical/396cff08cc591bbd478dad5a352ee18c0c6d32b94a256ab1d4a8c152afb7f691.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3cbac6d0-7670-5b12-b2c8-10930bc93d96', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shopping_basics_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e0a4529e0c9d4ed90588b0ddbc8a1119bb4b55d061874bde2db4dbc3b56b6f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a062c49a-b0d5-5e7c-8e96-6af5aed43eab', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3cbac6d0-7670-5b12-b2c8-10930bc93d96', 1), '8e0a4529e0c9d4ed90588b0ddbc8a1119bb4b55d061874bde2db4dbc3b56b6f4',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/396cff08cc591bbd478dad5a352ee18c0c6d32b94a256ab1d4a8c152afb7f691.mp3', 862, '2026-09-13 22:05:03.518220', '4653ff3d7a1ff9fb0def9221bc705a34559d5c8526165b8d8da8fc4668195ea9', 'validated', '{"audio_key":"396cff08cc591bbd478dad5a352ee18c0c6d32b94a256ab1d4a8c152afb7f691","entity_key":"wf_shopping_basics_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4653ff3d7a1ff9fb0def9221bc705a34559d5c8526165b8d8da8fc4668195ea9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/396cff08cc591bbd478dad5a352ee18c0c6d32b94a256ab1d4a8c152afb7f691.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_and_schedule_04 -> audio/generated/ko-KR/lexical/3bfe59fff2b5d8912366450cd5a25ce4febcfcc7185ed04fe901e2425aef1717.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d3f5a51d-bca1-5a4c-85f1-25c247694c19', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_and_schedule_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3bc6235e1d18162fb94cd242a101ce19f00f7bb5d4682419f2dba8102d00ad45'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b2235f8-f3a9-59bb-9ebc-4fabd9a224a4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d3f5a51d-bca1-5a4c-85f1-25c247694c19', 1), '3bc6235e1d18162fb94cd242a101ce19f00f7bb5d4682419f2dba8102d00ad45',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/3bfe59fff2b5d8912366450cd5a25ce4febcfcc7185ed04fe901e2425aef1717.mp3', 862, '2026-09-13 21:05:26.501577', 'b05fbfe2e352816531c6fa72fccd6b9a857acfe3372e6fc43f43bf53781dd002', 'validated', '{"audio_key":"3bfe59fff2b5d8912366450cd5a25ce4febcfcc7185ed04fe901e2425aef1717","entity_key":"lx_time_and_schedule_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b05fbfe2e352816531c6fa72fccd6b9a857acfe3372e6fc43f43bf53781dd002","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/3bfe59fff2b5d8912366450cd5a25ce4febcfcc7185ed04fe901e2425aef1717.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_and_schedule_04 -> audio/generated/ko-KR/lexical/3bfe59fff2b5d8912366450cd5a25ce4febcfcc7185ed04fe901e2425aef1717.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ff8f0ba2-9c9b-5493-98c3-db4cf9e35646', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_and_schedule_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3bc6235e1d18162fb94cd242a101ce19f00f7bb5d4682419f2dba8102d00ad45'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fc7c9c60-267b-585f-a562-d319b1ab9c18', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ff8f0ba2-9c9b-5493-98c3-db4cf9e35646', 1), '3bc6235e1d18162fb94cd242a101ce19f00f7bb5d4682419f2dba8102d00ad45',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/3bfe59fff2b5d8912366450cd5a25ce4febcfcc7185ed04fe901e2425aef1717.mp3', 862, '2026-09-13 21:05:26.501577', 'b05fbfe2e352816531c6fa72fccd6b9a857acfe3372e6fc43f43bf53781dd002', 'validated', '{"audio_key":"3bfe59fff2b5d8912366450cd5a25ce4febcfcc7185ed04fe901e2425aef1717","entity_key":"wf_time_and_schedule_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b05fbfe2e352816531c6fa72fccd6b9a857acfe3372e6fc43f43bf53781dd002","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/3bfe59fff2b5d8912366450cd5a25ce4febcfcc7185ed04fe901e2425aef1717.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_daily_routine_03 -> audio/generated/ko-KR/lexical/3e06c1f06020a2126266956dc3cdec3ac8fbee8aba00d72dcf0f46f8327c86f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8e687213-08e3-5149-a385-0af506843da9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_daily_routine_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '233cb510410b09d69cdc65ce28a7eb1951a74ee9b62aa8433bf9a023cd09a2ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ea385be-3a4f-517a-9f03-57a43e5e9ed3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8e687213-08e3-5149-a385-0af506843da9', 1), '233cb510410b09d69cdc65ce28a7eb1951a74ee9b62aa8433bf9a023cd09a2ac',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/3e06c1f06020a2126266956dc3cdec3ac8fbee8aba00d72dcf0f46f8327c86f7.mp3', 1018, '2026-09-13 22:05:03.972203', '31e973c91e67d8b6230c68593a9d49665847ea0ee6abd7c14ecae70dde15ea52', 'validated', '{"audio_key":"3e06c1f06020a2126266956dc3cdec3ac8fbee8aba00d72dcf0f46f8327c86f7","entity_key":"lx_daily_routine_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"31e973c91e67d8b6230c68593a9d49665847ea0ee6abd7c14ecae70dde15ea52","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/3e06c1f06020a2126266956dc3cdec3ac8fbee8aba00d72dcf0f46f8327c86f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_daily_routine_03 -> audio/generated/ko-KR/lexical/3e06c1f06020a2126266956dc3cdec3ac8fbee8aba00d72dcf0f46f8327c86f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('efc05af4-535d-5e20-b948-780f26e76013', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_daily_routine_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '233cb510410b09d69cdc65ce28a7eb1951a74ee9b62aa8433bf9a023cd09a2ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b6253e7-5a56-53d3-80c6-f04de09681dc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('efc05af4-535d-5e20-b948-780f26e76013', 1), '233cb510410b09d69cdc65ce28a7eb1951a74ee9b62aa8433bf9a023cd09a2ac',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/3e06c1f06020a2126266956dc3cdec3ac8fbee8aba00d72dcf0f46f8327c86f7.mp3', 1018, '2026-09-13 22:05:03.972203', '31e973c91e67d8b6230c68593a9d49665847ea0ee6abd7c14ecae70dde15ea52', 'validated', '{"audio_key":"3e06c1f06020a2126266956dc3cdec3ac8fbee8aba00d72dcf0f46f8327c86f7","entity_key":"wf_daily_routine_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"31e973c91e67d8b6230c68593a9d49665847ea0ee6abd7c14ecae70dde15ea52","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/3e06c1f06020a2126266956dc3cdec3ac8fbee8aba00d72dcf0f46f8327c86f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_getting_around_05 -> audio/generated/ko-KR/lexical/456bef708c8fafedfb055102be9233ffea3ac9a07d24d17337ea713e83e9aa0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c4226a4a-a6fe-5c8c-aa33-b75b32ac5cc4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_getting_around_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f594aa6a15b9381c0df796aa189e6a211a5b84d6f846c83fcab4ea7ffe7cff2b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45b9b0f3-861d-5e71-b1d3-57b3acc39ae5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c4226a4a-a6fe-5c8c-aa33-b75b32ac5cc4', 1), 'f594aa6a15b9381c0df796aa189e6a211a5b84d6f846c83fcab4ea7ffe7cff2b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/456bef708c8fafedfb055102be9233ffea3ac9a07d24d17337ea713e83e9aa0b.mp3', 914, '2026-09-13 22:05:04.448789', '950bde2339ab3c523beaee38929b3528eae8937091c7291f845df5a627835476', 'validated', '{"audio_key":"456bef708c8fafedfb055102be9233ffea3ac9a07d24d17337ea713e83e9aa0b","entity_key":"lx_getting_around_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"950bde2339ab3c523beaee38929b3528eae8937091c7291f845df5a627835476","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/456bef708c8fafedfb055102be9233ffea3ac9a07d24d17337ea713e83e9aa0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_getting_around_05 -> audio/generated/ko-KR/lexical/456bef708c8fafedfb055102be9233ffea3ac9a07d24d17337ea713e83e9aa0b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('79d947ca-e86b-51e2-b8b9-9d157d4fd3a9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_getting_around_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f594aa6a15b9381c0df796aa189e6a211a5b84d6f846c83fcab4ea7ffe7cff2b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('010682da-ce4a-513a-86b1-086ee4098575', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('79d947ca-e86b-51e2-b8b9-9d157d4fd3a9', 1), 'f594aa6a15b9381c0df796aa189e6a211a5b84d6f846c83fcab4ea7ffe7cff2b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/456bef708c8fafedfb055102be9233ffea3ac9a07d24d17337ea713e83e9aa0b.mp3', 914, '2026-09-13 22:05:04.448789', '950bde2339ab3c523beaee38929b3528eae8937091c7291f845df5a627835476', 'validated', '{"audio_key":"456bef708c8fafedfb055102be9233ffea3ac9a07d24d17337ea713e83e9aa0b","entity_key":"wf_getting_around_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"950bde2339ab3c523beaee38929b3528eae8937091c7291f845df5a627835476","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/456bef708c8fafedfb055102be9233ffea3ac9a07d24d17337ea713e83e9aa0b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_where_things_are_04 -> audio/generated/ko-KR/lexical/47979428ec25ad3d7a9f8d2bcf742dfbe0d93346d1fce949ccccaaa94093db8b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c6ceadfd-596a-592f-9ea0-6090a823bf6a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_where_things_are_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e0bebb354d8f7f3b0c8204eb75c50bfa0454ca9797de7d5d8d4c1ddc4d77a399'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96ee6b3d-9643-5a52-a583-62f5331452e5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c6ceadfd-596a-592f-9ea0-6090a823bf6a', 1), 'e0bebb354d8f7f3b0c8204eb75c50bfa0454ca9797de7d5d8d4c1ddc4d77a399',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/47979428ec25ad3d7a9f8d2bcf742dfbe0d93346d1fce949ccccaaa94093db8b.mp3', 835, '2026-09-13 22:05:04.957561', 'd99fb8ae1da3ff51662b3a67e8e2d47418714434bc46ed543f5e5438354cdef7', 'validated', '{"audio_key":"47979428ec25ad3d7a9f8d2bcf742dfbe0d93346d1fce949ccccaaa94093db8b","entity_key":"lx_where_things_are_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d99fb8ae1da3ff51662b3a67e8e2d47418714434bc46ed543f5e5438354cdef7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/47979428ec25ad3d7a9f8d2bcf742dfbe0d93346d1fce949ccccaaa94093db8b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_where_things_are_04 -> audio/generated/ko-KR/lexical/47979428ec25ad3d7a9f8d2bcf742dfbe0d93346d1fce949ccccaaa94093db8b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d63625e7-a908-5766-b578-317abc0b2aff', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_where_things_are_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e0bebb354d8f7f3b0c8204eb75c50bfa0454ca9797de7d5d8d4c1ddc4d77a399'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec1426a8-d112-5228-b506-cc185bd12cf4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d63625e7-a908-5766-b578-317abc0b2aff', 1), 'e0bebb354d8f7f3b0c8204eb75c50bfa0454ca9797de7d5d8d4c1ddc4d77a399',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/47979428ec25ad3d7a9f8d2bcf742dfbe0d93346d1fce949ccccaaa94093db8b.mp3', 835, '2026-09-13 22:05:04.957561', 'd99fb8ae1da3ff51662b3a67e8e2d47418714434bc46ed543f5e5438354cdef7', 'validated', '{"audio_key":"47979428ec25ad3d7a9f8d2bcf742dfbe0d93346d1fce949ccccaaa94093db8b","entity_key":"wf_where_things_are_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d99fb8ae1da3ff51662b3a67e8e2d47418714434bc46ed543f5e5438354cdef7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/47979428ec25ad3d7a9f8d2bcf742dfbe0d93346d1fce949ccccaaa94093db8b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_and_schedule_02 -> audio/generated/ko-KR/lexical/4f6ea9ea59b639d24829803fc16903aa81567fddc9ee89a976eaf698221d8390.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('090a974e-1d66-5e22-b9f5-e8da732e952f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_and_schedule_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bfa42cf6a12e912330383a28e28d31dbf769281307df1f2ea3b22541c5c71697'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d011a554-bd29-536e-8a94-aa4f68a470bb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('090a974e-1d66-5e22-b9f5-e8da732e952f', 1), 'bfa42cf6a12e912330383a28e28d31dbf769281307df1f2ea3b22541c5c71697',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4f6ea9ea59b639d24829803fc16903aa81567fddc9ee89a976eaf698221d8390.mp3', 783, '2026-09-13 22:05:05.394328', '923cde6560b3bcd7dadcbdec99be9e646a154438093a19571ecb14f6372c390d', 'validated', '{"audio_key":"4f6ea9ea59b639d24829803fc16903aa81567fddc9ee89a976eaf698221d8390","entity_key":"lx_time_and_schedule_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"923cde6560b3bcd7dadcbdec99be9e646a154438093a19571ecb14f6372c390d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4f6ea9ea59b639d24829803fc16903aa81567fddc9ee89a976eaf698221d8390.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_and_schedule_02 -> audio/generated/ko-KR/lexical/4f6ea9ea59b639d24829803fc16903aa81567fddc9ee89a976eaf698221d8390.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('592180e5-478b-5619-bfa1-f2cb0b47cb5d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_and_schedule_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bfa42cf6a12e912330383a28e28d31dbf769281307df1f2ea3b22541c5c71697'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('260b57a1-ad74-59ad-9ac8-fceba102d105', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('592180e5-478b-5619-bfa1-f2cb0b47cb5d', 1), 'bfa42cf6a12e912330383a28e28d31dbf769281307df1f2ea3b22541c5c71697',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4f6ea9ea59b639d24829803fc16903aa81567fddc9ee89a976eaf698221d8390.mp3', 783, '2026-09-13 22:05:05.394328', '923cde6560b3bcd7dadcbdec99be9e646a154438093a19571ecb14f6372c390d', 'validated', '{"audio_key":"4f6ea9ea59b639d24829803fc16903aa81567fddc9ee89a976eaf698221d8390","entity_key":"wf_time_and_schedule_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"923cde6560b3bcd7dadcbdec99be9e646a154438093a19571ecb14f6372c390d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4f6ea9ea59b639d24829803fc16903aa81567fddc9ee89a976eaf698221d8390.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_likes_and_dislikes_05 -> audio/generated/ko-KR/lexical/68edf208721f872d78d5916ffaeacd34a0f8dcf82a4c2ca8cf3609d85aca1e9f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0c1e7924-a535-5a6d-9b59-f427b9f4b55f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_likes_and_dislikes_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a00f3250955b45e9391b08b354d1356bade313e98fd1e5c3776bf377b26e3c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ee222e1-0c22-5f2e-8fdf-a579afffe2e4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0c1e7924-a535-5a6d-9b59-f427b9f4b55f', 1), '1a00f3250955b45e9391b08b354d1356bade313e98fd1e5c3776bf377b26e3c4',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/68edf208721f872d78d5916ffaeacd34a0f8dcf82a4c2ca8cf3609d85aca1e9f.mp3', 1097, '2026-09-13 22:05:06.201093', '0523859348e141fbe4967546d839b71eae6360eb86ddac2670320b9fef2f7cb3', 'validated', '{"audio_key":"68edf208721f872d78d5916ffaeacd34a0f8dcf82a4c2ca8cf3609d85aca1e9f","entity_key":"lx_likes_and_dislikes_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0523859348e141fbe4967546d839b71eae6360eb86ddac2670320b9fef2f7cb3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/68edf208721f872d78d5916ffaeacd34a0f8dcf82a4c2ca8cf3609d85aca1e9f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_likes_and_dislikes_05 -> audio/generated/ko-KR/lexical/68edf208721f872d78d5916ffaeacd34a0f8dcf82a4c2ca8cf3609d85aca1e9f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7532ca03-f68d-505e-aaf7-81c26bb7e236', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_likes_and_dislikes_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a00f3250955b45e9391b08b354d1356bade313e98fd1e5c3776bf377b26e3c4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b8f2db1c-0980-5bf5-bfc1-ae7ad26b75f0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7532ca03-f68d-505e-aaf7-81c26bb7e236', 1), '1a00f3250955b45e9391b08b354d1356bade313e98fd1e5c3776bf377b26e3c4',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/68edf208721f872d78d5916ffaeacd34a0f8dcf82a4c2ca8cf3609d85aca1e9f.mp3', 1097, '2026-09-13 22:05:06.201093', '0523859348e141fbe4967546d839b71eae6360eb86ddac2670320b9fef2f7cb3', 'validated', '{"audio_key":"68edf208721f872d78d5916ffaeacd34a0f8dcf82a4c2ca8cf3609d85aca1e9f","entity_key":"wf_likes_and_dislikes_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0523859348e141fbe4967546d839b71eae6360eb86ddac2670320b9fef2f7cb3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/68edf208721f872d78d5916ffaeacd34a0f8dcf82a4c2ca8cf3609d85aca1e9f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_where_things_are_03 -> audio/generated/ko-KR/lexical/6c353c0d80e59842676e1120186e037778e93e3c20311061b70b5dd950d38197.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9b4df0f9-9962-503a-968e-3d608ecf3ab3', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_where_things_are_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76102fe82462d111be2a7d663bdc667173bffd227e74f40f58af620361d0bb75'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9fa6b4f-e211-59ec-b6a4-78e6199ba262', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9b4df0f9-9962-503a-968e-3d608ecf3ab3', 1), '76102fe82462d111be2a7d663bdc667173bffd227e74f40f58af620361d0bb75',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6c353c0d80e59842676e1120186e037778e93e3c20311061b70b5dd950d38197.mp3', 862, '2026-09-13 22:05:06.417562', '16608206d5b1f611c52953f92e8aaea8f9355ad2a55082150364fc988d157654', 'validated', '{"audio_key":"6c353c0d80e59842676e1120186e037778e93e3c20311061b70b5dd950d38197","entity_key":"lx_where_things_are_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"16608206d5b1f611c52953f92e8aaea8f9355ad2a55082150364fc988d157654","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6c353c0d80e59842676e1120186e037778e93e3c20311061b70b5dd950d38197.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_where_things_are_03 -> audio/generated/ko-KR/lexical/6c353c0d80e59842676e1120186e037778e93e3c20311061b70b5dd950d38197.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c3e34362-4f9f-55e2-883a-8e6212effed0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_where_things_are_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76102fe82462d111be2a7d663bdc667173bffd227e74f40f58af620361d0bb75'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07f99169-7721-5f62-ae14-43ac1188a6a6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c3e34362-4f9f-55e2-883a-8e6212effed0', 1), '76102fe82462d111be2a7d663bdc667173bffd227e74f40f58af620361d0bb75',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6c353c0d80e59842676e1120186e037778e93e3c20311061b70b5dd950d38197.mp3', 862, '2026-09-13 22:05:06.417562', '16608206d5b1f611c52953f92e8aaea8f9355ad2a55082150364fc988d157654', 'validated', '{"audio_key":"6c353c0d80e59842676e1120186e037778e93e3c20311061b70b5dd950d38197","entity_key":"wf_where_things_are_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"16608206d5b1f611c52953f92e8aaea8f9355ad2a55082150364fc988d157654","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6c353c0d80e59842676e1120186e037778e93e3c20311061b70b5dd950d38197.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_getting_around_06 -> audio/generated/ko-KR/lexical/6c4563376b990bb3d5be5b7a8e99921da0c57511b6b576f0dc3da5462dd64a22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8cb84c34-91e2-5e72-a625-fcaf66d4736d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_getting_around_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc0103c11a2b107bbc7ce002fd88efdafb47bd221ad5547ff155a6d8d7ac85d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a080264-06ad-5027-8373-7c8957efa912', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8cb84c34-91e2-5e72-a625-fcaf66d4736d', 1), 'dc0103c11a2b107bbc7ce002fd88efdafb47bd221ad5547ff155a6d8d7ac85d5',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6c4563376b990bb3d5be5b7a8e99921da0c57511b6b576f0dc3da5462dd64a22.mp3', 966, '2026-09-13 22:05:07.196372', '5ba32e19c114566ba9a2b5cfeb0c0d4ebd37a5875e46faca154311492c23c916', 'validated', '{"audio_key":"6c4563376b990bb3d5be5b7a8e99921da0c57511b6b576f0dc3da5462dd64a22","entity_key":"lx_getting_around_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5ba32e19c114566ba9a2b5cfeb0c0d4ebd37a5875e46faca154311492c23c916","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6c4563376b990bb3d5be5b7a8e99921da0c57511b6b576f0dc3da5462dd64a22.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_getting_around_06 -> audio/generated/ko-KR/lexical/6c4563376b990bb3d5be5b7a8e99921da0c57511b6b576f0dc3da5462dd64a22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('98e9b6ca-4be3-5f03-b69f-955c78b76182', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_getting_around_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc0103c11a2b107bbc7ce002fd88efdafb47bd221ad5547ff155a6d8d7ac85d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a7bf93b3-b6ef-5f37-84da-ff4b44c6845d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('98e9b6ca-4be3-5f03-b69f-955c78b76182', 1), 'dc0103c11a2b107bbc7ce002fd88efdafb47bd221ad5547ff155a6d8d7ac85d5',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6c4563376b990bb3d5be5b7a8e99921da0c57511b6b576f0dc3da5462dd64a22.mp3', 966, '2026-09-13 22:05:07.196372', '5ba32e19c114566ba9a2b5cfeb0c0d4ebd37a5875e46faca154311492c23c916', 'validated', '{"audio_key":"6c4563376b990bb3d5be5b7a8e99921da0c57511b6b576f0dc3da5462dd64a22","entity_key":"wf_getting_around_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5ba32e19c114566ba9a2b5cfeb0c0d4ebd37a5875e46faca154311492c23c916","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6c4563376b990bb3d5be5b7a8e99921da0c57511b6b576f0dc3da5462dd64a22.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a1_day_out_capstone_02 -> audio/generated/ko-KR/lexical/6e7680e1992ef4ae3525ba4267263855ce32b4dde853a67fe97bceb12b82fd24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('734b40ec-2934-5c06-94a4-8d297a1fa2cc', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a1_day_out_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1202aff936337891e07925c4ada650bec9606da9b7307f39115cd719cc9fc4dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da4da90e-b92e-5fed-a246-e25a68534cdf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('734b40ec-2934-5c06-94a4-8d297a1fa2cc', 1), '1202aff936337891e07925c4ada650bec9606da9b7307f39115cd719cc9fc4dc',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6e7680e1992ef4ae3525ba4267263855ce32b4dde853a67fe97bceb12b82fd24.mp3', 966, '2026-09-13 22:05:07.433559', '77b610a11d7b3fd95288527573eb526b1bdd80b90febc19ac83862665d0e89a6', 'validated', '{"audio_key":"6e7680e1992ef4ae3525ba4267263855ce32b4dde853a67fe97bceb12b82fd24","entity_key":"lx_a1_day_out_capstone_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"77b610a11d7b3fd95288527573eb526b1bdd80b90febc19ac83862665d0e89a6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6e7680e1992ef4ae3525ba4267263855ce32b4dde853a67fe97bceb12b82fd24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a1_day_out_capstone_02 -> audio/generated/ko-KR/lexical/6e7680e1992ef4ae3525ba4267263855ce32b4dde853a67fe97bceb12b82fd24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('aab8f796-0dcf-5134-9ca0-7128b5a5b448', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a1_day_out_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1202aff936337891e07925c4ada650bec9606da9b7307f39115cd719cc9fc4dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('746dcc3f-afe8-55d7-bce5-337a53e4973a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('aab8f796-0dcf-5134-9ca0-7128b5a5b448', 1), '1202aff936337891e07925c4ada650bec9606da9b7307f39115cd719cc9fc4dc',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6e7680e1992ef4ae3525ba4267263855ce32b4dde853a67fe97bceb12b82fd24.mp3', 966, '2026-09-13 22:05:07.433559', '77b610a11d7b3fd95288527573eb526b1bdd80b90febc19ac83862665d0e89a6', 'validated', '{"audio_key":"6e7680e1992ef4ae3525ba4267263855ce32b4dde853a67fe97bceb12b82fd24","entity_key":"wf_a1_day_out_capstone_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"77b610a11d7b3fd95288527573eb526b1bdd80b90febc19ac83862665d0e89a6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6e7680e1992ef4ae3525ba4267263855ce32b4dde853a67fe97bceb12b82fd24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a1_day_out_capstone_01 -> audio/generated/ko-KR/lexical/6ead612b3d7bbf7b0180d5bda542c4aca55cc4dccdd585a16c68286de035b7d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6cf437e3-38cc-5ab6-9957-35b79e2d2bfc', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a1_day_out_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a39ee87db456831ef069ab824c965eb384b8bfe17d4f3b94e1421814827ab8f0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f04958b-1615-54ef-bac3-6776d4a0e76c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6cf437e3-38cc-5ab6-9957-35b79e2d2bfc', 1), 'a39ee87db456831ef069ab824c965eb384b8bfe17d4f3b94e1421814827ab8f0',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6ead612b3d7bbf7b0180d5bda542c4aca55cc4dccdd585a16c68286de035b7d3.mp3', 862, '2026-09-13 22:05:08.125747', '077fd02146742e04e1851732f8a59761017a4aa0ab1358fadff355462a51cbb8', 'validated', '{"audio_key":"6ead612b3d7bbf7b0180d5bda542c4aca55cc4dccdd585a16c68286de035b7d3","entity_key":"lx_a1_day_out_capstone_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"077fd02146742e04e1851732f8a59761017a4aa0ab1358fadff355462a51cbb8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6ead612b3d7bbf7b0180d5bda542c4aca55cc4dccdd585a16c68286de035b7d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a1_day_out_capstone_01 -> audio/generated/ko-KR/lexical/6ead612b3d7bbf7b0180d5bda542c4aca55cc4dccdd585a16c68286de035b7d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a7f12e33-517b-5b43-af13-0f7de0740ecb', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a1_day_out_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a39ee87db456831ef069ab824c965eb384b8bfe17d4f3b94e1421814827ab8f0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('800668d9-4194-57ee-b9bd-9e9fd9507ebc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a7f12e33-517b-5b43-af13-0f7de0740ecb', 1), 'a39ee87db456831ef069ab824c965eb384b8bfe17d4f3b94e1421814827ab8f0',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6ead612b3d7bbf7b0180d5bda542c4aca55cc4dccdd585a16c68286de035b7d3.mp3', 862, '2026-09-13 22:05:08.125747', '077fd02146742e04e1851732f8a59761017a4aa0ab1358fadff355462a51cbb8', 'validated', '{"audio_key":"6ead612b3d7bbf7b0180d5bda542c4aca55cc4dccdd585a16c68286de035b7d3","entity_key":"wf_a1_day_out_capstone_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"077fd02146742e04e1851732f8a59761017a4aa0ab1358fadff355462a51cbb8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6ead612b3d7bbf7b0180d5bda542c4aca55cc4dccdd585a16c68286de035b7d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shopping_basics_04 -> audio/generated/ko-KR/lexical/7070078785d4267cd019e237ff42296f696d7c67447a1ebb23aeb5e0ccfb7ccc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9800fe77-684a-50e7-b7e3-9b10e33e246c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shopping_basics_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b291179e0fe019b65663e1cb3ad3d99a7d544309db522954dbfae8116fcafc0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ae5928c-99ee-53a2-b9b9-a484d8b65665', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9800fe77-684a-50e7-b7e3-9b10e33e246c', 1), 'b291179e0fe019b65663e1cb3ad3d99a7d544309db522954dbfae8116fcafc0f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7070078785d4267cd019e237ff42296f696d7c67447a1ebb23aeb5e0ccfb7ccc.mp3', 914, '2026-09-13 22:05:08.419783', 'c310657f0f67565bce732fe885cdcf97fc42333488734f123a4fd4ec64754f9a', 'validated', '{"audio_key":"7070078785d4267cd019e237ff42296f696d7c67447a1ebb23aeb5e0ccfb7ccc","entity_key":"lx_shopping_basics_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c310657f0f67565bce732fe885cdcf97fc42333488734f123a4fd4ec64754f9a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7070078785d4267cd019e237ff42296f696d7c67447a1ebb23aeb5e0ccfb7ccc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shopping_basics_04 -> audio/generated/ko-KR/lexical/7070078785d4267cd019e237ff42296f696d7c67447a1ebb23aeb5e0ccfb7ccc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d9ba73a4-586d-5849-a4d5-5f6d1d2df135', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shopping_basics_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b291179e0fe019b65663e1cb3ad3d99a7d544309db522954dbfae8116fcafc0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('884222fa-3c69-576c-a6d4-ed7d3ab7f436', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d9ba73a4-586d-5849-a4d5-5f6d1d2df135', 1), 'b291179e0fe019b65663e1cb3ad3d99a7d544309db522954dbfae8116fcafc0f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7070078785d4267cd019e237ff42296f696d7c67447a1ebb23aeb5e0ccfb7ccc.mp3', 914, '2026-09-13 22:05:08.419783', 'c310657f0f67565bce732fe885cdcf97fc42333488734f123a4fd4ec64754f9a', 'validated', '{"audio_key":"7070078785d4267cd019e237ff42296f696d7c67447a1ebb23aeb5e0ccfb7ccc","entity_key":"wf_shopping_basics_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c310657f0f67565bce732fe885cdcf97fc42333488734f123a4fd4ec64754f9a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7070078785d4267cd019e237ff42296f696d7c67447a1ebb23aeb5e0ccfb7ccc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cafe_orders_01 -> audio/generated/ko-KR/lexical/7341172d0aacf6550da308e8fcdbd1adcf606600125606a5120a5a6b81009e0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('49046f40-7de3-5cc4-988a-401e57233fc3', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cafe_orders_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '019f085377ad53a621d18293e93bc4885e3308a5848c6b4e2d2ee4a013f8ddbf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c55aa464-cbf9-5355-9526-bbf0a7788392', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('49046f40-7de3-5cc4-988a-401e57233fc3', 1), '019f085377ad53a621d18293e93bc4885e3308a5848c6b4e2d2ee4a013f8ddbf',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7341172d0aacf6550da308e8fcdbd1adcf606600125606a5120a5a6b81009e0c.mp3', 1201, '2026-09-13 22:05:09.418956', '61fb2c66ff675e68b58403e2f4d51de8812ee15242860cc791ed4133192c7e04', 'validated', '{"audio_key":"7341172d0aacf6550da308e8fcdbd1adcf606600125606a5120a5a6b81009e0c","entity_key":"lx_cafe_orders_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"61fb2c66ff675e68b58403e2f4d51de8812ee15242860cc791ed4133192c7e04","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7341172d0aacf6550da308e8fcdbd1adcf606600125606a5120a5a6b81009e0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cafe_orders_01 -> audio/generated/ko-KR/lexical/7341172d0aacf6550da308e8fcdbd1adcf606600125606a5120a5a6b81009e0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7a1c3970-9158-5cd4-b3f4-33336e3d469b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cafe_orders_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '019f085377ad53a621d18293e93bc4885e3308a5848c6b4e2d2ee4a013f8ddbf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ef7ff77-954e-5c63-be77-11c2cd673275', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7a1c3970-9158-5cd4-b3f4-33336e3d469b', 1), '019f085377ad53a621d18293e93bc4885e3308a5848c6b4e2d2ee4a013f8ddbf',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7341172d0aacf6550da308e8fcdbd1adcf606600125606a5120a5a6b81009e0c.mp3', 1201, '2026-09-13 22:05:09.418956', '61fb2c66ff675e68b58403e2f4d51de8812ee15242860cc791ed4133192c7e04', 'validated', '{"audio_key":"7341172d0aacf6550da308e8fcdbd1adcf606600125606a5120a5a6b81009e0c","entity_key":"wf_cafe_orders_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"61fb2c66ff675e68b58403e2f4d51de8812ee15242860cc791ed4133192c7e04","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7341172d0aacf6550da308e8fcdbd1adcf606600125606a5120a5a6b81009e0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shopping_basics_03 -> audio/generated/ko-KR/lexical/799427560563621604d212a942ac520cded7c63a269b8dae9135bfe29637406c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('da95d438-5212-53da-bbb8-f67ae1563d49', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shopping_basics_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c19fd6787279897c79a8049465e99093699ba4acdbc327984f0c219d4fa27515'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e1b2212-62d7-5582-a7bb-81166a03640f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('da95d438-5212-53da-bbb8-f67ae1563d49', 1), 'c19fd6787279897c79a8049465e99093699ba4acdbc327984f0c219d4fa27515',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/799427560563621604d212a942ac520cded7c63a269b8dae9135bfe29637406c.mp3', 862, '2026-09-13 22:05:09.418037', '9f9eb9a1177827668fe7f3e251211d6507606665ce9654d31dacdefa3adae8e1', 'validated', '{"audio_key":"799427560563621604d212a942ac520cded7c63a269b8dae9135bfe29637406c","entity_key":"lx_shopping_basics_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9f9eb9a1177827668fe7f3e251211d6507606665ce9654d31dacdefa3adae8e1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/799427560563621604d212a942ac520cded7c63a269b8dae9135bfe29637406c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shopping_basics_03 -> audio/generated/ko-KR/lexical/799427560563621604d212a942ac520cded7c63a269b8dae9135bfe29637406c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9f4c0552-8e7b-5da6-ac8c-c436d6b9e8ea', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shopping_basics_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c19fd6787279897c79a8049465e99093699ba4acdbc327984f0c219d4fa27515'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d09f8652-1ff4-56f6-abb0-dd37292cb5f7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9f4c0552-8e7b-5da6-ac8c-c436d6b9e8ea', 1), 'c19fd6787279897c79a8049465e99093699ba4acdbc327984f0c219d4fa27515',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/799427560563621604d212a942ac520cded7c63a269b8dae9135bfe29637406c.mp3', 862, '2026-09-13 22:05:09.418037', '9f9eb9a1177827668fe7f3e251211d6507606665ce9654d31dacdefa3adae8e1', 'validated', '{"audio_key":"799427560563621604d212a942ac520cded7c63a269b8dae9135bfe29637406c","entity_key":"wf_shopping_basics_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9f9eb9a1177827668fe7f3e251211d6507606665ce9654d31dacdefa3adae8e1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/799427560563621604d212a942ac520cded7c63a269b8dae9135bfe29637406c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_and_schedule_03 -> audio/generated/ko-KR/lexical/7a02f96b1d65d04665190055d865cc391b950ad9cf9ba47edd356113bbf146bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3496afdb-6fcd-51c5-a155-8091a6bd346e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_and_schedule_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca4a187881dbf529d05eb168ececcc3eaea6a98a08fa96011760842aea4c04d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4a174bb-a2f6-5a54-aa1c-727488d9280a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3496afdb-6fcd-51c5-a155-8091a6bd346e', 1), 'ca4a187881dbf529d05eb168ececcc3eaea6a98a08fa96011760842aea4c04d3',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7a02f96b1d65d04665190055d865cc391b950ad9cf9ba47edd356113bbf146bd.mp3', 1097, '2026-09-13 22:05:10.374982', 'd29613596dbb3fe0f4ab8d2309a5cb3245204d85c12eba225685d9187672f770', 'validated', '{"audio_key":"7a02f96b1d65d04665190055d865cc391b950ad9cf9ba47edd356113bbf146bd","entity_key":"lx_time_and_schedule_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d29613596dbb3fe0f4ab8d2309a5cb3245204d85c12eba225685d9187672f770","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7a02f96b1d65d04665190055d865cc391b950ad9cf9ba47edd356113bbf146bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_and_schedule_03 -> audio/generated/ko-KR/lexical/7a02f96b1d65d04665190055d865cc391b950ad9cf9ba47edd356113bbf146bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fdfd4d53-06bc-51fd-8f12-de432c6c7257', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_and_schedule_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca4a187881dbf529d05eb168ececcc3eaea6a98a08fa96011760842aea4c04d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1133497e-fdef-58fc-a27a-d899aa846564', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fdfd4d53-06bc-51fd-8f12-de432c6c7257', 1), 'ca4a187881dbf529d05eb168ececcc3eaea6a98a08fa96011760842aea4c04d3',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7a02f96b1d65d04665190055d865cc391b950ad9cf9ba47edd356113bbf146bd.mp3', 1097, '2026-09-13 22:05:10.374982', 'd29613596dbb3fe0f4ab8d2309a5cb3245204d85c12eba225685d9187672f770', 'validated', '{"audio_key":"7a02f96b1d65d04665190055d865cc391b950ad9cf9ba47edd356113bbf146bd","entity_key":"wf_time_and_schedule_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d29613596dbb3fe0f4ab8d2309a5cb3245204d85c12eba225685d9187672f770","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7a02f96b1d65d04665190055d865cc391b950ad9cf9ba47edd356113bbf146bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_where_things_are_01 -> audio/generated/ko-KR/lexical/842826f002589777ecc28c12b7d9cf93735543086a7d8d104e9ddf994b2ba469.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3807f6a3-b14b-58ad-998f-09db4ac2d4f9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_where_things_are_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba928dd573a2db9e75799c93457027aec2147c652baa2070364af4ea5aa1fed1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b6a4b11-ebb0-5d5c-af20-d846dd3fa932', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3807f6a3-b14b-58ad-998f-09db4ac2d4f9', 1), 'ba928dd573a2db9e75799c93457027aec2147c652baa2070364af4ea5aa1fed1',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/842826f002589777ecc28c12b7d9cf93735543086a7d8d104e9ddf994b2ba469.mp3', 862, '2026-09-13 21:05:32.555452', '4a964f86d4c23bdf9dbe137516ab2f8caa09e6c78cb30fd54f1d15f3d8018707', 'validated', '{"audio_key":"842826f002589777ecc28c12b7d9cf93735543086a7d8d104e9ddf994b2ba469","entity_key":"lx_where_things_are_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4a964f86d4c23bdf9dbe137516ab2f8caa09e6c78cb30fd54f1d15f3d8018707","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/842826f002589777ecc28c12b7d9cf93735543086a7d8d104e9ddf994b2ba469.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_where_things_are_01 -> audio/generated/ko-KR/lexical/842826f002589777ecc28c12b7d9cf93735543086a7d8d104e9ddf994b2ba469.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e9436f30-a8e2-59f6-84c6-62356183d80e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_where_things_are_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba928dd573a2db9e75799c93457027aec2147c652baa2070364af4ea5aa1fed1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31b02338-ef35-5822-bcc2-25d8d7ced094', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e9436f30-a8e2-59f6-84c6-62356183d80e', 1), 'ba928dd573a2db9e75799c93457027aec2147c652baa2070364af4ea5aa1fed1',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/842826f002589777ecc28c12b7d9cf93735543086a7d8d104e9ddf994b2ba469.mp3', 862, '2026-09-13 21:05:32.555452', '4a964f86d4c23bdf9dbe137516ab2f8caa09e6c78cb30fd54f1d15f3d8018707', 'validated', '{"audio_key":"842826f002589777ecc28c12b7d9cf93735543086a7d8d104e9ddf994b2ba469","entity_key":"wf_where_things_are_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4a964f86d4c23bdf9dbe137516ab2f8caa09e6c78cb30fd54f1d15f3d8018707","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/842826f002589777ecc28c12b7d9cf93735543086a7d8d104e9ddf994b2ba469.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_family_and_people_06 -> audio/generated/ko-KR/lexical/8a2b3dae385f90d842b798c106e338a30bf5af17a9c2d9d3a0efc02965b3ba30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9d999e86-aba6-5808-8242-8035abf7cf30', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_family_and_people_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9f96b8e22cc06bfafc548ef472e33b60548b190f17dbc04b1da176a50d2c6d2c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0bfbe9e8-f2bf-55a6-b2fc-2e6eb981bdd5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9d999e86-aba6-5808-8242-8035abf7cf30', 1), '9f96b8e22cc06bfafc548ef472e33b60548b190f17dbc04b1da176a50d2c6d2c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8a2b3dae385f90d842b798c106e338a30bf5af17a9c2d9d3a0efc02965b3ba30.mp3', 862, '2026-09-13 22:05:10.352868', '1da5a884d1ca6387ca04faf55fa91797241232f90c2b2ea95db8af5d98315745', 'validated', '{"audio_key":"8a2b3dae385f90d842b798c106e338a30bf5af17a9c2d9d3a0efc02965b3ba30","entity_key":"lx_family_and_people_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1da5a884d1ca6387ca04faf55fa91797241232f90c2b2ea95db8af5d98315745","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8a2b3dae385f90d842b798c106e338a30bf5af17a9c2d9d3a0efc02965b3ba30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_family_and_people_06 -> audio/generated/ko-KR/lexical/8a2b3dae385f90d842b798c106e338a30bf5af17a9c2d9d3a0efc02965b3ba30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1762dc72-3471-5194-ad08-7c5042a9c090', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_family_and_people_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9f96b8e22cc06bfafc548ef472e33b60548b190f17dbc04b1da176a50d2c6d2c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('510f13a4-077b-5f74-976b-549ca92bf2fd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1762dc72-3471-5194-ad08-7c5042a9c090', 1), '9f96b8e22cc06bfafc548ef472e33b60548b190f17dbc04b1da176a50d2c6d2c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8a2b3dae385f90d842b798c106e338a30bf5af17a9c2d9d3a0efc02965b3ba30.mp3', 862, '2026-09-13 22:05:10.352868', '1da5a884d1ca6387ca04faf55fa91797241232f90c2b2ea95db8af5d98315745', 'validated', '{"audio_key":"8a2b3dae385f90d842b798c106e338a30bf5af17a9c2d9d3a0efc02965b3ba30","entity_key":"wf_family_and_people_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1da5a884d1ca6387ca04faf55fa91797241232f90c2b2ea95db8af5d98315745","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8a2b3dae385f90d842b798c106e338a30bf5af17a9c2d9d3a0efc02965b3ba30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a1_day_out_capstone_06 -> audio/generated/ko-KR/lexical/8a7953f14c87d448a2ba18757f31a2cb45afaa670f18e16a5db5dc77d931ca25.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9b99e42a-6d87-58e0-96cf-52adbbbe84e4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a1_day_out_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9a2699f824000e36e45abe7371b538ab500913906a9010971bb1bea104a5e06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('06ef976e-37dc-5c78-a95e-c6ee4cb52b22', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9b99e42a-6d87-58e0-96cf-52adbbbe84e4', 1), 'b9a2699f824000e36e45abe7371b538ab500913906a9010971bb1bea104a5e06',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8a7953f14c87d448a2ba18757f31a2cb45afaa670f18e16a5db5dc77d931ca25.mp3', 1097, '2026-09-13 22:05:11.302860', '63597e4d804b2675e8bbc5b42415cb720c22f01a75a58d1e709164f3957432fd', 'validated', '{"audio_key":"8a7953f14c87d448a2ba18757f31a2cb45afaa670f18e16a5db5dc77d931ca25","entity_key":"lx_a1_day_out_capstone_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"63597e4d804b2675e8bbc5b42415cb720c22f01a75a58d1e709164f3957432fd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8a7953f14c87d448a2ba18757f31a2cb45afaa670f18e16a5db5dc77d931ca25.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a1_day_out_capstone_06 -> audio/generated/ko-KR/lexical/8a7953f14c87d448a2ba18757f31a2cb45afaa670f18e16a5db5dc77d931ca25.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a4fba360-3427-5c30-be91-2a1c104bfaed', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a1_day_out_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9a2699f824000e36e45abe7371b538ab500913906a9010971bb1bea104a5e06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e765540d-4255-507f-a919-2ca6b0275305', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a4fba360-3427-5c30-be91-2a1c104bfaed', 1), 'b9a2699f824000e36e45abe7371b538ab500913906a9010971bb1bea104a5e06',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8a7953f14c87d448a2ba18757f31a2cb45afaa670f18e16a5db5dc77d931ca25.mp3', 1097, '2026-09-13 22:05:11.302860', '63597e4d804b2675e8bbc5b42415cb720c22f01a75a58d1e709164f3957432fd', 'validated', '{"audio_key":"8a7953f14c87d448a2ba18757f31a2cb45afaa670f18e16a5db5dc77d931ca25","entity_key":"wf_a1_day_out_capstone_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"63597e4d804b2675e8bbc5b42415cb720c22f01a75a58d1e709164f3957432fd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8a7953f14c87d448a2ba18757f31a2cb45afaa670f18e16a5db5dc77d931ca25.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_where_things_are_06 -> audio/generated/ko-KR/lexical/919be1dbd4d2637ca1cb7009b1eb66e5caefcf4deef2b2acc6d01f0edd31c77e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('268774ad-2ada-5fe0-bedd-308f958aebc2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_where_things_are_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '499f8423f214354759ff6d502dc466aac2ab3e6e94ea6f9e2771e16bdc86e221'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c350143d-9a0c-5b95-8d5e-db223a15aaea', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('268774ad-2ada-5fe0-bedd-308f958aebc2', 1), '499f8423f214354759ff6d502dc466aac2ab3e6e94ea6f9e2771e16bdc86e221',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/919be1dbd4d2637ca1cb7009b1eb66e5caefcf4deef2b2acc6d01f0edd31c77e.mp3', 1018, '2026-09-13 22:05:11.344855', 'd9c687d2b9f419613e66aa8c1d58039aa223ae4d69e0daa172495b0c8d5c42d7', 'validated', '{"audio_key":"919be1dbd4d2637ca1cb7009b1eb66e5caefcf4deef2b2acc6d01f0edd31c77e","entity_key":"lx_where_things_are_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d9c687d2b9f419613e66aa8c1d58039aa223ae4d69e0daa172495b0c8d5c42d7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/919be1dbd4d2637ca1cb7009b1eb66e5caefcf4deef2b2acc6d01f0edd31c77e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_where_things_are_06 -> audio/generated/ko-KR/lexical/919be1dbd4d2637ca1cb7009b1eb66e5caefcf4deef2b2acc6d01f0edd31c77e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a1f50a6b-0a4e-59af-860c-5c9030770cc8', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_where_things_are_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '499f8423f214354759ff6d502dc466aac2ab3e6e94ea6f9e2771e16bdc86e221'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7765f089-b6dd-555a-9e54-4bf9f9ccb245', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a1f50a6b-0a4e-59af-860c-5c9030770cc8', 1), '499f8423f214354759ff6d502dc466aac2ab3e6e94ea6f9e2771e16bdc86e221',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/919be1dbd4d2637ca1cb7009b1eb66e5caefcf4deef2b2acc6d01f0edd31c77e.mp3', 1018, '2026-09-13 22:05:11.344855', 'd9c687d2b9f419613e66aa8c1d58039aa223ae4d69e0daa172495b0c8d5c42d7', 'validated', '{"audio_key":"919be1dbd4d2637ca1cb7009b1eb66e5caefcf4deef2b2acc6d01f0edd31c77e","entity_key":"wf_where_things_are_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d9c687d2b9f419613e66aa8c1d58039aa223ae4d69e0daa172495b0c8d5c42d7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/919be1dbd4d2637ca1cb7009b1eb66e5caefcf4deef2b2acc6d01f0edd31c77e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_daily_routine_04 -> audio/generated/ko-KR/lexical/998b8495a9b384de7fee6269ba1a0588c05af31eca8593ebb4775cc8f7271a71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('54639df8-3aae-5e0a-8cf4-ddbe6d8e7978', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_daily_routine_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '002a60f979d8c3de292f28b7635dbc97dc87b563cec43e11c9e56428b6f0852a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01f857ed-210f-59eb-904b-bdd0302bc18e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('54639df8-3aae-5e0a-8cf4-ddbe6d8e7978', 1), '002a60f979d8c3de292f28b7635dbc97dc87b563cec43e11c9e56428b6f0852a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/998b8495a9b384de7fee6269ba1a0588c05af31eca8593ebb4775cc8f7271a71.mp3', 1149, '2026-09-13 22:05:12.244767', 'fb9667326c813c67ce0c3a239b60193a44976cec4d95518edc52a4d88e6cd4a8', 'validated', '{"audio_key":"998b8495a9b384de7fee6269ba1a0588c05af31eca8593ebb4775cc8f7271a71","entity_key":"lx_daily_routine_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fb9667326c813c67ce0c3a239b60193a44976cec4d95518edc52a4d88e6cd4a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/998b8495a9b384de7fee6269ba1a0588c05af31eca8593ebb4775cc8f7271a71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_daily_routine_04 -> audio/generated/ko-KR/lexical/998b8495a9b384de7fee6269ba1a0588c05af31eca8593ebb4775cc8f7271a71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9a5bc328-d8a4-5c37-8d42-61e33966d27e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_daily_routine_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '002a60f979d8c3de292f28b7635dbc97dc87b563cec43e11c9e56428b6f0852a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ed5f3e1-fc4e-5107-ab2c-76a26b9f8cf5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9a5bc328-d8a4-5c37-8d42-61e33966d27e', 1), '002a60f979d8c3de292f28b7635dbc97dc87b563cec43e11c9e56428b6f0852a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/998b8495a9b384de7fee6269ba1a0588c05af31eca8593ebb4775cc8f7271a71.mp3', 1149, '2026-09-13 22:05:12.244767', 'fb9667326c813c67ce0c3a239b60193a44976cec4d95518edc52a4d88e6cd4a8', 'validated', '{"audio_key":"998b8495a9b384de7fee6269ba1a0588c05af31eca8593ebb4775cc8f7271a71","entity_key":"wf_daily_routine_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fb9667326c813c67ce0c3a239b60193a44976cec4d95518edc52a4d88e6cd4a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/998b8495a9b384de7fee6269ba1a0588c05af31eca8593ebb4775cc8f7271a71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_likes_and_dislikes_02 -> audio/generated/ko-KR/lexical/9af5e19b235bd88fa7a71c8dbdf1c15b7d5ed304e4402dae80842549aed6fb34.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7c4359df-ea05-599f-8f3d-17dbde6f4991', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_likes_and_dislikes_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88caa317d96897c98d10cbb24b2d53437c6d6a33a64ba3587f693083418780cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d89786d7-d83e-5747-94fd-2393b56d8049', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7c4359df-ea05-599f-8f3d-17dbde6f4991', 1), '88caa317d96897c98d10cbb24b2d53437c6d6a33a64ba3587f693083418780cb',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/9af5e19b235bd88fa7a71c8dbdf1c15b7d5ed304e4402dae80842549aed6fb34.mp3', 862, '2026-09-13 22:05:12.350331', '7ae4edc540ae7e87d1ca1254e451f720a86dbc4e60aebaadd3dce370756d736f', 'validated', '{"audio_key":"9af5e19b235bd88fa7a71c8dbdf1c15b7d5ed304e4402dae80842549aed6fb34","entity_key":"lx_likes_and_dislikes_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7ae4edc540ae7e87d1ca1254e451f720a86dbc4e60aebaadd3dce370756d736f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/9af5e19b235bd88fa7a71c8dbdf1c15b7d5ed304e4402dae80842549aed6fb34.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_likes_and_dislikes_02 -> audio/generated/ko-KR/lexical/9af5e19b235bd88fa7a71c8dbdf1c15b7d5ed304e4402dae80842549aed6fb34.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('94e6f81a-3c64-5da5-86c7-5bf4d51abdd9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_likes_and_dislikes_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '88caa317d96897c98d10cbb24b2d53437c6d6a33a64ba3587f693083418780cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36e0e5a2-1dcd-5c98-9e3d-e81fe1431ddb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('94e6f81a-3c64-5da5-86c7-5bf4d51abdd9', 1), '88caa317d96897c98d10cbb24b2d53437c6d6a33a64ba3587f693083418780cb',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/9af5e19b235bd88fa7a71c8dbdf1c15b7d5ed304e4402dae80842549aed6fb34.mp3', 862, '2026-09-13 22:05:12.350331', '7ae4edc540ae7e87d1ca1254e451f720a86dbc4e60aebaadd3dce370756d736f', 'validated', '{"audio_key":"9af5e19b235bd88fa7a71c8dbdf1c15b7d5ed304e4402dae80842549aed6fb34","entity_key":"wf_likes_and_dislikes_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7ae4edc540ae7e87d1ca1254e451f720a86dbc4e60aebaadd3dce370756d736f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/9af5e19b235bd88fa7a71c8dbdf1c15b7d5ed304e4402dae80842549aed6fb34.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a1_day_out_capstone_05 -> audio/generated/ko-KR/lexical/9ca08c0153a275d3263304521d4bfcd8572e65a0f58857c2ae3da96b4a894aa9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2291d916-2338-51de-aa82-d2e74c52821c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a1_day_out_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c91c4ef7e321cf674262818ba1edfa371d9582a0b6c5451f9576effb0740ed9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5df1806f-b704-566f-8214-ec9f7f226785', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2291d916-2338-51de-aa82-d2e74c52821c', 1), '8c91c4ef7e321cf674262818ba1edfa371d9582a0b6c5451f9576effb0740ed9',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/9ca08c0153a275d3263304521d4bfcd8572e65a0f58857c2ae3da96b4a894aa9.mp3', 1018, '2026-09-13 22:05:13.199881', '5dcf78394d2fab05f89cc9ef317e49da133a3d77c6109704751de82b7df7a359', 'validated', '{"audio_key":"9ca08c0153a275d3263304521d4bfcd8572e65a0f58857c2ae3da96b4a894aa9","entity_key":"lx_a1_day_out_capstone_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5dcf78394d2fab05f89cc9ef317e49da133a3d77c6109704751de82b7df7a359","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/9ca08c0153a275d3263304521d4bfcd8572e65a0f58857c2ae3da96b4a894aa9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a1_day_out_capstone_05 -> audio/generated/ko-KR/lexical/9ca08c0153a275d3263304521d4bfcd8572e65a0f58857c2ae3da96b4a894aa9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('440b7381-8523-5e16-b3d5-da537b6354c5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a1_day_out_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8c91c4ef7e321cf674262818ba1edfa371d9582a0b6c5451f9576effb0740ed9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('66ba9d3b-f276-5d32-8adf-766c1fce361d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('440b7381-8523-5e16-b3d5-da537b6354c5', 1), '8c91c4ef7e321cf674262818ba1edfa371d9582a0b6c5451f9576effb0740ed9',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/9ca08c0153a275d3263304521d4bfcd8572e65a0f58857c2ae3da96b4a894aa9.mp3', 1018, '2026-09-13 22:05:13.199881', '5dcf78394d2fab05f89cc9ef317e49da133a3d77c6109704751de82b7df7a359', 'validated', '{"audio_key":"9ca08c0153a275d3263304521d4bfcd8572e65a0f58857c2ae3da96b4a894aa9","entity_key":"wf_a1_day_out_capstone_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5dcf78394d2fab05f89cc9ef317e49da133a3d77c6109704751de82b7df7a359","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/9ca08c0153a275d3263304521d4bfcd8572e65a0f58857c2ae3da96b4a894aa9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a1_day_out_capstone_04 -> audio/generated/ko-KR/lexical/a3eebf31bcc8bb284d7cd6f288029a430b185ab9d979499540994aabce738356.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('09b7f7fe-62cf-5527-9a14-f89646291d83', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a1_day_out_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df159f47a890ff65503985e485398a14711e34b04fb0fa285e036a277910375a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fbf39a93-7438-58b0-9eda-2d27f20f92c8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('09b7f7fe-62cf-5527-9a14-f89646291d83', 1), 'df159f47a890ff65503985e485398a14711e34b04fb0fa285e036a277910375a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a3eebf31bcc8bb284d7cd6f288029a430b185ab9d979499540994aabce738356.mp3', 1018, '2026-09-13 21:05:35.391912', '16dd1cc363cef10964ee98b9beeb21c30e05800de72030d92dafa4d7f1b5fa00', 'validated', '{"audio_key":"a3eebf31bcc8bb284d7cd6f288029a430b185ab9d979499540994aabce738356","entity_key":"lx_a1_day_out_capstone_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"16dd1cc363cef10964ee98b9beeb21c30e05800de72030d92dafa4d7f1b5fa00","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a3eebf31bcc8bb284d7cd6f288029a430b185ab9d979499540994aabce738356.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a1_day_out_capstone_04 -> audio/generated/ko-KR/lexical/a3eebf31bcc8bb284d7cd6f288029a430b185ab9d979499540994aabce738356.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d931f407-05c1-5a88-bcfd-9012251d0a1b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a1_day_out_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df159f47a890ff65503985e485398a14711e34b04fb0fa285e036a277910375a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9043aab5-77a7-50bf-a616-96a48e5d92fe', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d931f407-05c1-5a88-bcfd-9012251d0a1b', 1), 'df159f47a890ff65503985e485398a14711e34b04fb0fa285e036a277910375a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a3eebf31bcc8bb284d7cd6f288029a430b185ab9d979499540994aabce738356.mp3', 1018, '2026-09-13 21:05:35.391912', '16dd1cc363cef10964ee98b9beeb21c30e05800de72030d92dafa4d7f1b5fa00', 'validated', '{"audio_key":"a3eebf31bcc8bb284d7cd6f288029a430b185ab9d979499540994aabce738356","entity_key":"wf_a1_day_out_capstone_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"16dd1cc363cef10964ee98b9beeb21c30e05800de72030d92dafa4d7f1b5fa00","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a3eebf31bcc8bb284d7cd6f288029a430b185ab9d979499540994aabce738356.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_getting_around_02 -> audio/generated/ko-KR/lexical/ad4234541cd41cbdc75f178e36dbc7831d365d434e4d7e706b6f4d9c934edd29.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e2dc9a61-e42d-5b8b-b710-0b4019e1609a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_getting_around_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '888da7692e098e28c0f239da6a75ab2cddbdc726be3419c3504e2a8302383968'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('829343e6-44a1-580f-9f6b-795de6e19e72', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e2dc9a61-e42d-5b8b-b710-0b4019e1609a', 1), '888da7692e098e28c0f239da6a75ab2cddbdc726be3419c3504e2a8302383968',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ad4234541cd41cbdc75f178e36dbc7831d365d434e4d7e706b6f4d9c934edd29.mp3', 1097, '2026-09-13 22:05:13.304813', '6c24f33c24ba1ff50c9e3eed94f73173d1e2819b1d4dad707d746e736cfdcefa', 'validated', '{"audio_key":"ad4234541cd41cbdc75f178e36dbc7831d365d434e4d7e706b6f4d9c934edd29","entity_key":"lx_getting_around_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6c24f33c24ba1ff50c9e3eed94f73173d1e2819b1d4dad707d746e736cfdcefa","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ad4234541cd41cbdc75f178e36dbc7831d365d434e4d7e706b6f4d9c934edd29.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_getting_around_02 -> audio/generated/ko-KR/lexical/ad4234541cd41cbdc75f178e36dbc7831d365d434e4d7e706b6f4d9c934edd29.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('803dd29c-3eb3-5710-b0ca-d4b453dc3928', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_getting_around_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '888da7692e098e28c0f239da6a75ab2cddbdc726be3419c3504e2a8302383968'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ac40d80-3e5b-559f-9f3b-fd6948fde349', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('803dd29c-3eb3-5710-b0ca-d4b453dc3928', 1), '888da7692e098e28c0f239da6a75ab2cddbdc726be3419c3504e2a8302383968',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ad4234541cd41cbdc75f178e36dbc7831d365d434e4d7e706b6f4d9c934edd29.mp3', 1097, '2026-09-13 22:05:13.304813', '6c24f33c24ba1ff50c9e3eed94f73173d1e2819b1d4dad707d746e736cfdcefa', 'validated', '{"audio_key":"ad4234541cd41cbdc75f178e36dbc7831d365d434e4d7e706b6f4d9c934edd29","entity_key":"wf_getting_around_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6c24f33c24ba1ff50c9e3eed94f73173d1e2819b1d4dad707d746e736cfdcefa","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ad4234541cd41cbdc75f178e36dbc7831d365d434e4d7e706b6f4d9c934edd29.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_family_and_people_05 -> audio/generated/ko-KR/lexical/b310b9a8e6d018c27b8b478aa047a975066b8dc4f9ecf8e8ff2a322e10ae506e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('77e7465b-a732-5935-8405-85e96e3a5a9a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_family_and_people_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '398dfa639dfd0db8f8e021ccff2c8deb3f4a3cb0416ddc22acd5e7a56233b221'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('067083d0-1131-5229-a2e7-fe128f2ab7de', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('77e7465b-a732-5935-8405-85e96e3a5a9a', 1), '398dfa639dfd0db8f8e021ccff2c8deb3f4a3cb0416ddc22acd5e7a56233b221',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b310b9a8e6d018c27b8b478aa047a975066b8dc4f9ecf8e8ff2a322e10ae506e.mp3', 835, '2026-09-13 22:05:14.150841', '3c7c6c41911b1334d38245e8c54fa3cb6a2c973a5f4376779f705ddff6c655ca', 'validated', '{"audio_key":"b310b9a8e6d018c27b8b478aa047a975066b8dc4f9ecf8e8ff2a322e10ae506e","entity_key":"lx_family_and_people_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3c7c6c41911b1334d38245e8c54fa3cb6a2c973a5f4376779f705ddff6c655ca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b310b9a8e6d018c27b8b478aa047a975066b8dc4f9ecf8e8ff2a322e10ae506e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_family_and_people_05 -> audio/generated/ko-KR/lexical/b310b9a8e6d018c27b8b478aa047a975066b8dc4f9ecf8e8ff2a322e10ae506e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('da01ed21-69f9-5ae6-8667-13d4c02f75d1', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_family_and_people_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '398dfa639dfd0db8f8e021ccff2c8deb3f4a3cb0416ddc22acd5e7a56233b221'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0732755-c0cd-5efc-ad21-d30686123ccf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('da01ed21-69f9-5ae6-8667-13d4c02f75d1', 1), '398dfa639dfd0db8f8e021ccff2c8deb3f4a3cb0416ddc22acd5e7a56233b221',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b310b9a8e6d018c27b8b478aa047a975066b8dc4f9ecf8e8ff2a322e10ae506e.mp3', 835, '2026-09-13 22:05:14.150841', '3c7c6c41911b1334d38245e8c54fa3cb6a2c973a5f4376779f705ddff6c655ca', 'validated', '{"audio_key":"b310b9a8e6d018c27b8b478aa047a975066b8dc4f9ecf8e8ff2a322e10ae506e","entity_key":"wf_family_and_people_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3c7c6c41911b1334d38245e8c54fa3cb6a2c973a5f4376779f705ddff6c655ca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b310b9a8e6d018c27b8b478aa047a975066b8dc4f9ecf8e8ff2a322e10ae506e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shopping_basics_01 -> audio/generated/ko-KR/lexical/b4a5f30a1262e6820db19165d3badfb61e4d1082fadf057a6d9908a0e123aee7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d6ab84ea-8ecd-5f29-8291-3fc94fefc217', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shopping_basics_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4515223b0fb4ed4e27bf9af006c6fb636b60703e96d426d9583e4104c95aad94'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2fe9a517-82d6-58d3-898e-1a6b1c053dbd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d6ab84ea-8ecd-5f29-8291-3fc94fefc217', 1), '4515223b0fb4ed4e27bf9af006c6fb636b60703e96d426d9583e4104c95aad94',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b4a5f30a1262e6820db19165d3badfb61e4d1082fadf057a6d9908a0e123aee7.mp3', 783, '2026-09-13 22:05:14.232187', '3652f15ee7823ac6e537ca081b63e88461a2e680296099e4365edf66f64c81eb', 'validated', '{"audio_key":"b4a5f30a1262e6820db19165d3badfb61e4d1082fadf057a6d9908a0e123aee7","entity_key":"lx_shopping_basics_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3652f15ee7823ac6e537ca081b63e88461a2e680296099e4365edf66f64c81eb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b4a5f30a1262e6820db19165d3badfb61e4d1082fadf057a6d9908a0e123aee7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shopping_basics_01 -> audio/generated/ko-KR/lexical/b4a5f30a1262e6820db19165d3badfb61e4d1082fadf057a6d9908a0e123aee7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a49049f6-910d-5f1c-80c2-9a3f2425c0ec', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shopping_basics_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4515223b0fb4ed4e27bf9af006c6fb636b60703e96d426d9583e4104c95aad94'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c16ff28b-ea5b-5f59-b58d-76538d5e64b3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a49049f6-910d-5f1c-80c2-9a3f2425c0ec', 1), '4515223b0fb4ed4e27bf9af006c6fb636b60703e96d426d9583e4104c95aad94',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b4a5f30a1262e6820db19165d3badfb61e4d1082fadf057a6d9908a0e123aee7.mp3', 783, '2026-09-13 22:05:14.232187', '3652f15ee7823ac6e537ca081b63e88461a2e680296099e4365edf66f64c81eb', 'validated', '{"audio_key":"b4a5f30a1262e6820db19165d3badfb61e4d1082fadf057a6d9908a0e123aee7","entity_key":"wf_shopping_basics_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3652f15ee7823ac6e537ca081b63e88461a2e680296099e4365edf66f64c81eb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b4a5f30a1262e6820db19165d3badfb61e4d1082fadf057a6d9908a0e123aee7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_identity_and_work_02 -> audio/generated/ko-KR/lexical/ba5b45e4f203311af25cf5a4818b62c563471fc39083dedca4184dcf26cf2e2a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e2209780-d3ca-55e4-b245-32d68a7e96c6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_identity_and_work_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f24650b42089c29f902733a82535cf3038f2612ac74bbb81d117a929f448bff2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38dd9c5e-603c-5135-a4a1-1216977dc085', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e2209780-d3ca-55e4-b245-32d68a7e96c6', 1), 'f24650b42089c29f902733a82535cf3038f2612ac74bbb81d117a929f448bff2',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ba5b45e4f203311af25cf5a4818b62c563471fc39083dedca4184dcf26cf2e2a.mp3', 1071, '2026-09-13 22:05:15.105292', '37e77c4a983345804e8211b74a34601aab208a6e288eed23805e3b07901cb038', 'validated', '{"audio_key":"ba5b45e4f203311af25cf5a4818b62c563471fc39083dedca4184dcf26cf2e2a","entity_key":"lx_identity_and_work_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"37e77c4a983345804e8211b74a34601aab208a6e288eed23805e3b07901cb038","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ba5b45e4f203311af25cf5a4818b62c563471fc39083dedca4184dcf26cf2e2a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_identity_and_work_02 -> audio/generated/ko-KR/lexical/ba5b45e4f203311af25cf5a4818b62c563471fc39083dedca4184dcf26cf2e2a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0be075e7-b721-5662-9dcc-f63827fbaa38', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_identity_and_work_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f24650b42089c29f902733a82535cf3038f2612ac74bbb81d117a929f448bff2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a244591-90bb-5c30-9c2e-ec574af938c7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0be075e7-b721-5662-9dcc-f63827fbaa38', 1), 'f24650b42089c29f902733a82535cf3038f2612ac74bbb81d117a929f448bff2',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ba5b45e4f203311af25cf5a4818b62c563471fc39083dedca4184dcf26cf2e2a.mp3', 1071, '2026-09-13 22:05:15.105292', '37e77c4a983345804e8211b74a34601aab208a6e288eed23805e3b07901cb038', 'validated', '{"audio_key":"ba5b45e4f203311af25cf5a4818b62c563471fc39083dedca4184dcf26cf2e2a","entity_key":"wf_identity_and_work_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"37e77c4a983345804e8211b74a34601aab208a6e288eed23805e3b07901cb038","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ba5b45e4f203311af25cf5a4818b62c563471fc39083dedca4184dcf26cf2e2a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_daily_routine_06 -> audio/generated/ko-KR/lexical/bc9fe292073749fba561eb35adb1224abfa42eb7208dbabbf69dd8bc6193c45a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('af5b7b14-1c29-5295-85a4-bd062e9f5314', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_daily_routine_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '023aa5fb341789792a99205272b7d25559032eff1ddc534262fe6ed1edf37853'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd4fafc8-7be9-53fb-b220-501b0d4767dc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('af5b7b14-1c29-5295-85a4-bd062e9f5314', 1), '023aa5fb341789792a99205272b7d25559032eff1ddc534262fe6ed1edf37853',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bc9fe292073749fba561eb35adb1224abfa42eb7208dbabbf69dd8bc6193c45a.mp3', 1018, '2026-09-13 22:05:15.193680', '8ab6fbcfa2ba60c3f7eb194d42d8977f2543913bb5ae35877cc4e73382b4ab57', 'validated', '{"audio_key":"bc9fe292073749fba561eb35adb1224abfa42eb7208dbabbf69dd8bc6193c45a","entity_key":"lx_daily_routine_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8ab6fbcfa2ba60c3f7eb194d42d8977f2543913bb5ae35877cc4e73382b4ab57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bc9fe292073749fba561eb35adb1224abfa42eb7208dbabbf69dd8bc6193c45a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_daily_routine_06 -> audio/generated/ko-KR/lexical/bc9fe292073749fba561eb35adb1224abfa42eb7208dbabbf69dd8bc6193c45a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9f24f09e-5c95-5a2a-b4b0-c6de8a9a12f0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_daily_routine_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '023aa5fb341789792a99205272b7d25559032eff1ddc534262fe6ed1edf37853'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e398d1d-219c-50e1-8863-bb4f68321e7b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9f24f09e-5c95-5a2a-b4b0-c6de8a9a12f0', 1), '023aa5fb341789792a99205272b7d25559032eff1ddc534262fe6ed1edf37853',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bc9fe292073749fba561eb35adb1224abfa42eb7208dbabbf69dd8bc6193c45a.mp3', 1018, '2026-09-13 22:05:15.193680', '8ab6fbcfa2ba60c3f7eb194d42d8977f2543913bb5ae35877cc4e73382b4ab57', 'validated', '{"audio_key":"bc9fe292073749fba561eb35adb1224abfa42eb7208dbabbf69dd8bc6193c45a","entity_key":"wf_daily_routine_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8ab6fbcfa2ba60c3f7eb194d42d8977f2543913bb5ae35877cc4e73382b4ab57","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bc9fe292073749fba561eb35adb1224abfa42eb7208dbabbf69dd8bc6193c45a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_likes_and_dislikes_01 -> audio/generated/ko-KR/lexical/bf79588b51d9d713db34f7e2968be5aef975643e66f221b405347c483a942c61.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('eb7357cc-3289-5ab1-b974-e5467bbdce7f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_likes_and_dislikes_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4215a3126661d523ba2fef93507ce53ca9fefb31d0c4d32094e49aff918b60b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('82ab1f66-aa97-59c9-b60e-c5eec4c4a702', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('eb7357cc-3289-5ab1-b974-e5467bbdce7f', 1), 'a4215a3126661d523ba2fef93507ce53ca9fefb31d0c4d32094e49aff918b60b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bf79588b51d9d713db34f7e2968be5aef975643e66f221b405347c483a942c61.mp3', 1097, '2026-09-13 21:05:39.468145', '7888a3dda2f55a7056aeaa2fb39d2ec694344b9b7a5592fefb4d54418fb003b4', 'validated', '{"audio_key":"bf79588b51d9d713db34f7e2968be5aef975643e66f221b405347c483a942c61","entity_key":"lx_likes_and_dislikes_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7888a3dda2f55a7056aeaa2fb39d2ec694344b9b7a5592fefb4d54418fb003b4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bf79588b51d9d713db34f7e2968be5aef975643e66f221b405347c483a942c61.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_likes_and_dislikes_01 -> audio/generated/ko-KR/lexical/bf79588b51d9d713db34f7e2968be5aef975643e66f221b405347c483a942c61.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e73c44c0-2ab3-53bd-8418-aac2c091c5ad', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_likes_and_dislikes_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4215a3126661d523ba2fef93507ce53ca9fefb31d0c4d32094e49aff918b60b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('acb533d5-c73b-580d-bad0-2b9e8711e3dc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e73c44c0-2ab3-53bd-8418-aac2c091c5ad', 1), 'a4215a3126661d523ba2fef93507ce53ca9fefb31d0c4d32094e49aff918b60b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bf79588b51d9d713db34f7e2968be5aef975643e66f221b405347c483a942c61.mp3', 1097, '2026-09-13 21:05:39.468145', '7888a3dda2f55a7056aeaa2fb39d2ec694344b9b7a5592fefb4d54418fb003b4', 'validated', '{"audio_key":"bf79588b51d9d713db34f7e2968be5aef975643e66f221b405347c483a942c61","entity_key":"wf_likes_and_dislikes_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7888a3dda2f55a7056aeaa2fb39d2ec694344b9b7a5592fefb4d54418fb003b4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bf79588b51d9d713db34f7e2968be5aef975643e66f221b405347c483a942c61.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_and_schedule_06 -> audio/generated/ko-KR/lexical/c421c50333167c3ea414c4679d39d2b2fcde55d780e24ec5c4fc23ec2f676ab5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('46684c66-9176-54f3-9ddd-061e2498b257', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_and_schedule_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1bced847edb7e2eec5ea66bfc96583a55781626c09026259b352424d58a93ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4e6703a-5fd7-5eae-a5cf-cd40b93e327c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('46684c66-9176-54f3-9ddd-061e2498b257', 1), 'b1bced847edb7e2eec5ea66bfc96583a55781626c09026259b352424d58a93ff',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/c421c50333167c3ea414c4679d39d2b2fcde55d780e24ec5c4fc23ec2f676ab5.mp3', 1018, '2026-09-13 22:05:16.036011', '16afe3a05c34283a178f785f588061a3596bdcf1f5c9cd0a317a1a588dfca57b', 'validated', '{"audio_key":"c421c50333167c3ea414c4679d39d2b2fcde55d780e24ec5c4fc23ec2f676ab5","entity_key":"lx_time_and_schedule_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"16afe3a05c34283a178f785f588061a3596bdcf1f5c9cd0a317a1a588dfca57b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/c421c50333167c3ea414c4679d39d2b2fcde55d780e24ec5c4fc23ec2f676ab5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_and_schedule_06 -> audio/generated/ko-KR/lexical/c421c50333167c3ea414c4679d39d2b2fcde55d780e24ec5c4fc23ec2f676ab5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('48933b06-9319-5e76-9b89-58908324db1d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_and_schedule_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1bced847edb7e2eec5ea66bfc96583a55781626c09026259b352424d58a93ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a70135e-9524-5de1-a9e1-07f9499375b1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('48933b06-9319-5e76-9b89-58908324db1d', 1), 'b1bced847edb7e2eec5ea66bfc96583a55781626c09026259b352424d58a93ff',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/c421c50333167c3ea414c4679d39d2b2fcde55d780e24ec5c4fc23ec2f676ab5.mp3', 1018, '2026-09-13 22:05:16.036011', '16afe3a05c34283a178f785f588061a3596bdcf1f5c9cd0a317a1a588dfca57b', 'validated', '{"audio_key":"c421c50333167c3ea414c4679d39d2b2fcde55d780e24ec5c4fc23ec2f676ab5","entity_key":"wf_time_and_schedule_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"16afe3a05c34283a178f785f588061a3596bdcf1f5c9cd0a317a1a588dfca57b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/c421c50333167c3ea414c4679d39d2b2fcde55d780e24ec5c4fc23ec2f676ab5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_daily_routine_05 -> audio/generated/ko-KR/lexical/c6dd83f59e0c6a687090ff92db6ae8b9ccd576c90292bbd2dfaebba479fc6d9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('38a0ee7b-ad8b-5833-8fb3-7a5c2164ab77', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_daily_routine_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3313fc8f7aeacdfbc30f0811f7656061b44151b746b20e07c51234dbca3edcf5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b33cb37b-f426-562b-bb14-1464e592011e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('38a0ee7b-ad8b-5833-8fb3-7a5c2164ab77', 1), '3313fc8f7aeacdfbc30f0811f7656061b44151b746b20e07c51234dbca3edcf5',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/c6dd83f59e0c6a687090ff92db6ae8b9ccd576c90292bbd2dfaebba479fc6d9c.mp3', 1018, '2026-09-13 22:05:16.121889', 'd1eb805dbc9485255c1f6e72c4e282a682df7a590a5bc51d8ff86697a3f22d00', 'validated', '{"audio_key":"c6dd83f59e0c6a687090ff92db6ae8b9ccd576c90292bbd2dfaebba479fc6d9c","entity_key":"lx_daily_routine_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d1eb805dbc9485255c1f6e72c4e282a682df7a590a5bc51d8ff86697a3f22d00","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/c6dd83f59e0c6a687090ff92db6ae8b9ccd576c90292bbd2dfaebba479fc6d9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_daily_routine_05 -> audio/generated/ko-KR/lexical/c6dd83f59e0c6a687090ff92db6ae8b9ccd576c90292bbd2dfaebba479fc6d9c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3dd9b163-1e12-56a5-b5a9-6dd5a49c3300', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_daily_routine_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3313fc8f7aeacdfbc30f0811f7656061b44151b746b20e07c51234dbca3edcf5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ade7495-3a42-5158-98b6-ec75b7dd4230', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3dd9b163-1e12-56a5-b5a9-6dd5a49c3300', 1), '3313fc8f7aeacdfbc30f0811f7656061b44151b746b20e07c51234dbca3edcf5',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/c6dd83f59e0c6a687090ff92db6ae8b9ccd576c90292bbd2dfaebba479fc6d9c.mp3', 1018, '2026-09-13 22:05:16.121889', 'd1eb805dbc9485255c1f6e72c4e282a682df7a590a5bc51d8ff86697a3f22d00', 'validated', '{"audio_key":"c6dd83f59e0c6a687090ff92db6ae8b9ccd576c90292bbd2dfaebba479fc6d9c","entity_key":"wf_daily_routine_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d1eb805dbc9485255c1f6e72c4e282a682df7a590a5bc51d8ff86697a3f22d00","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/c6dd83f59e0c6a687090ff92db6ae8b9ccd576c90292bbd2dfaebba479fc6d9c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_shopping_basics_06 -> audio/generated/ko-KR/lexical/c7dbdf0fcf727d7b4e4035b6fb027e6536c454d3cecfba4695ac823be175aa29.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4d77a874-3cca-5d19-afdb-b25ddaa0f7a6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_shopping_basics_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee0ee072926e06fcb4a4f0d188fc93e93951f748253de8e1071ec83fd597089d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e159d69-7b5e-5390-bdf8-5b2ef633d57c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4d77a874-3cca-5d19-afdb-b25ddaa0f7a6', 1), 'ee0ee072926e06fcb4a4f0d188fc93e93951f748253de8e1071ec83fd597089d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/c7dbdf0fcf727d7b4e4035b6fb027e6536c454d3cecfba4695ac823be175aa29.mp3', 1149, '2026-09-13 22:05:17.014814', 'a8b5d207c8d365c872f5a2dc0909ef2a52313c39de9b54d56529e228acded0f5', 'validated', '{"audio_key":"c7dbdf0fcf727d7b4e4035b6fb027e6536c454d3cecfba4695ac823be175aa29","entity_key":"lx_shopping_basics_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a8b5d207c8d365c872f5a2dc0909ef2a52313c39de9b54d56529e228acded0f5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/c7dbdf0fcf727d7b4e4035b6fb027e6536c454d3cecfba4695ac823be175aa29.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_shopping_basics_06 -> audio/generated/ko-KR/lexical/c7dbdf0fcf727d7b4e4035b6fb027e6536c454d3cecfba4695ac823be175aa29.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('da40e115-a2a3-57f9-9223-6d0d1cd9d8f7', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_shopping_basics_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee0ee072926e06fcb4a4f0d188fc93e93951f748253de8e1071ec83fd597089d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30f2d66b-7a05-5a29-b05a-5d4315dfc942', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('da40e115-a2a3-57f9-9223-6d0d1cd9d8f7', 1), 'ee0ee072926e06fcb4a4f0d188fc93e93951f748253de8e1071ec83fd597089d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/c7dbdf0fcf727d7b4e4035b6fb027e6536c454d3cecfba4695ac823be175aa29.mp3', 1149, '2026-09-13 22:05:17.014814', 'a8b5d207c8d365c872f5a2dc0909ef2a52313c39de9b54d56529e228acded0f5', 'validated', '{"audio_key":"c7dbdf0fcf727d7b4e4035b6fb027e6536c454d3cecfba4695ac823be175aa29","entity_key":"wf_shopping_basics_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a8b5d207c8d365c872f5a2dc0909ef2a52313c39de9b54d56529e228acded0f5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/c7dbdf0fcf727d7b4e4035b6fb027e6536c454d3cecfba4695ac823be175aa29.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_daily_routine_02 -> audio/generated/ko-KR/lexical/ce2527b63e22cfe6f16f77661773acff419a427772f0b19db01fba700c09801b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('de34703a-2c0d-5be2-8af5-89a98068a391', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_daily_routine_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9639f892bdddb53fc055c86c8a094beb189270fdb0a53ab990c46480182e69cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e477d531-8835-5435-bcb0-62e021a9d491', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('de34703a-2c0d-5be2-8af5-89a98068a391', 1), '9639f892bdddb53fc055c86c8a094beb189270fdb0a53ab990c46480182e69cc',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ce2527b63e22cfe6f16f77661773acff419a427772f0b19db01fba700c09801b.mp3', 1097, '2026-09-13 22:05:17.071180', '5858d01000ab5d9e32b3b971d7e0d7e36c50cb89a2fca8a74529a1aff9f714a4', 'validated', '{"audio_key":"ce2527b63e22cfe6f16f77661773acff419a427772f0b19db01fba700c09801b","entity_key":"lx_daily_routine_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5858d01000ab5d9e32b3b971d7e0d7e36c50cb89a2fca8a74529a1aff9f714a4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ce2527b63e22cfe6f16f77661773acff419a427772f0b19db01fba700c09801b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_daily_routine_02 -> audio/generated/ko-KR/lexical/ce2527b63e22cfe6f16f77661773acff419a427772f0b19db01fba700c09801b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d353f7ca-2224-5a5a-a4ff-6be51d1fce51', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_daily_routine_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9639f892bdddb53fc055c86c8a094beb189270fdb0a53ab990c46480182e69cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d00ffbb-aa1d-5839-847d-2e6fabf220df', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d353f7ca-2224-5a5a-a4ff-6be51d1fce51', 1), '9639f892bdddb53fc055c86c8a094beb189270fdb0a53ab990c46480182e69cc',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ce2527b63e22cfe6f16f77661773acff419a427772f0b19db01fba700c09801b.mp3', 1097, '2026-09-13 22:05:17.071180', '5858d01000ab5d9e32b3b971d7e0d7e36c50cb89a2fca8a74529a1aff9f714a4', 'validated', '{"audio_key":"ce2527b63e22cfe6f16f77661773acff419a427772f0b19db01fba700c09801b","entity_key":"wf_daily_routine_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5858d01000ab5d9e32b3b971d7e0d7e36c50cb89a2fca8a74529a1aff9f714a4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ce2527b63e22cfe6f16f77661773acff419a427772f0b19db01fba700c09801b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_getting_around_01 -> audio/generated/ko-KR/lexical/cfbdd4e945dded8247b4c25d7eb70e9aec7ad04892516d6ac3fb022cf055e0dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8e851420-f48b-505a-be6c-f8e7117c05b0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_getting_around_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64860555fc86a9fbcb011adf94d1daf6fd8ccf043f99b0cd0acdcdb22c24368a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a90c7cea-4740-57b9-9a99-cb329a1f4b16', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8e851420-f48b-505a-be6c-f8e7117c05b0', 1), '64860555fc86a9fbcb011adf94d1daf6fd8ccf043f99b0cd0acdcdb22c24368a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/cfbdd4e945dded8247b4c25d7eb70e9aec7ad04892516d6ac3fb022cf055e0dc.mp3', 1097, '2026-09-13 22:05:18.027947', 'bea372c9e6aec8793ad7bab6d2b01368eab92254b2d13bdb65073256ad4f63c6', 'validated', '{"audio_key":"cfbdd4e945dded8247b4c25d7eb70e9aec7ad04892516d6ac3fb022cf055e0dc","entity_key":"lx_getting_around_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bea372c9e6aec8793ad7bab6d2b01368eab92254b2d13bdb65073256ad4f63c6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/cfbdd4e945dded8247b4c25d7eb70e9aec7ad04892516d6ac3fb022cf055e0dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_getting_around_01 -> audio/generated/ko-KR/lexical/cfbdd4e945dded8247b4c25d7eb70e9aec7ad04892516d6ac3fb022cf055e0dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('66db068d-a699-5ce6-b5b4-2622fab29623', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_getting_around_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64860555fc86a9fbcb011adf94d1daf6fd8ccf043f99b0cd0acdcdb22c24368a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb431144-0181-5b9e-a1c9-6967bd4c1b27', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('66db068d-a699-5ce6-b5b4-2622fab29623', 1), '64860555fc86a9fbcb011adf94d1daf6fd8ccf043f99b0cd0acdcdb22c24368a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/cfbdd4e945dded8247b4c25d7eb70e9aec7ad04892516d6ac3fb022cf055e0dc.mp3', 1097, '2026-09-13 22:05:18.027947', 'bea372c9e6aec8793ad7bab6d2b01368eab92254b2d13bdb65073256ad4f63c6', 'validated', '{"audio_key":"cfbdd4e945dded8247b4c25d7eb70e9aec7ad04892516d6ac3fb022cf055e0dc","entity_key":"wf_getting_around_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bea372c9e6aec8793ad7bab6d2b01368eab92254b2d13bdb65073256ad4f63c6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/cfbdd4e945dded8247b4c25d7eb70e9aec7ad04892516d6ac3fb022cf055e0dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cafe_orders_04 -> audio/generated/ko-KR/lexical/d4d45ca910bb430a524d065db920f7c62d2eeaa24a9a4a988ba3976c987b3aaf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9c33a340-4d17-5439-97f1-a41a00911bf0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cafe_orders_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca06065856b9c29b0c803fe40ba36a1e288aac33a07267b8234478b69ff5a9b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2fa78a73-f6a6-5cbb-9131-323e5b6ef54c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9c33a340-4d17-5439-97f1-a41a00911bf0', 1), 'ca06065856b9c29b0c803fe40ba36a1e288aac33a07267b8234478b69ff5a9b9',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/d4d45ca910bb430a524d065db920f7c62d2eeaa24a9a4a988ba3976c987b3aaf.mp3', 862, '2026-09-13 22:05:18.033463', 'f8138e79071293677f35fb3e3b4fcf8d9d21e56192ad20ce33b2b915f07d8000', 'validated', '{"audio_key":"d4d45ca910bb430a524d065db920f7c62d2eeaa24a9a4a988ba3976c987b3aaf","entity_key":"lx_cafe_orders_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f8138e79071293677f35fb3e3b4fcf8d9d21e56192ad20ce33b2b915f07d8000","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/d4d45ca910bb430a524d065db920f7c62d2eeaa24a9a4a988ba3976c987b3aaf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cafe_orders_04 -> audio/generated/ko-KR/lexical/d4d45ca910bb430a524d065db920f7c62d2eeaa24a9a4a988ba3976c987b3aaf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('956dfaf2-6ac0-5eff-b162-31c3d31ae897', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cafe_orders_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca06065856b9c29b0c803fe40ba36a1e288aac33a07267b8234478b69ff5a9b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09edc551-77cb-5ad4-905e-88f4a690abc3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('956dfaf2-6ac0-5eff-b162-31c3d31ae897', 1), 'ca06065856b9c29b0c803fe40ba36a1e288aac33a07267b8234478b69ff5a9b9',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/d4d45ca910bb430a524d065db920f7c62d2eeaa24a9a4a988ba3976c987b3aaf.mp3', 862, '2026-09-13 22:05:18.033463', 'f8138e79071293677f35fb3e3b4fcf8d9d21e56192ad20ce33b2b915f07d8000', 'validated', '{"audio_key":"d4d45ca910bb430a524d065db920f7c62d2eeaa24a9a4a988ba3976c987b3aaf","entity_key":"wf_cafe_orders_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f8138e79071293677f35fb3e3b4fcf8d9d21e56192ad20ce33b2b915f07d8000","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/d4d45ca910bb430a524d065db920f7c62d2eeaa24a9a4a988ba3976c987b3aaf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_family_and_people_03 -> audio/generated/ko-KR/lexical/d4dffe2a7d90f98f12778bcc573c9cddcc754e7c8f7615c9eac3464796e1a476.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a9363942-736c-5210-926a-a02770b70c8d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_family_and_people_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c9f209994786f50d18979bc0570a234e59f4eaff1e85a8d2c5d1f3bf9fc07123'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2b5c498-6311-5907-a90c-5eda8bfd2fb3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a9363942-736c-5210-926a-a02770b70c8d', 1), 'c9f209994786f50d18979bc0570a234e59f4eaff1e85a8d2c5d1f3bf9fc07123',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/d4dffe2a7d90f98f12778bcc573c9cddcc754e7c8f7615c9eac3464796e1a476.mp3', 966, '2026-09-13 22:05:19.069508', '456bb6193e15ebba64518122bdfa17bdf77d6da4af18f1489d9a4e134c401a0c', 'validated', '{"audio_key":"d4dffe2a7d90f98f12778bcc573c9cddcc754e7c8f7615c9eac3464796e1a476","entity_key":"lx_family_and_people_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"456bb6193e15ebba64518122bdfa17bdf77d6da4af18f1489d9a4e134c401a0c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/d4dffe2a7d90f98f12778bcc573c9cddcc754e7c8f7615c9eac3464796e1a476.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_family_and_people_03 -> audio/generated/ko-KR/lexical/d4dffe2a7d90f98f12778bcc573c9cddcc754e7c8f7615c9eac3464796e1a476.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('55a4d051-d4da-551c-b7f1-618f28743b54', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_family_and_people_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c9f209994786f50d18979bc0570a234e59f4eaff1e85a8d2c5d1f3bf9fc07123'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('693dee28-67ef-5161-a73d-9f6fd3e61719', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('55a4d051-d4da-551c-b7f1-618f28743b54', 1), 'c9f209994786f50d18979bc0570a234e59f4eaff1e85a8d2c5d1f3bf9fc07123',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/d4dffe2a7d90f98f12778bcc573c9cddcc754e7c8f7615c9eac3464796e1a476.mp3', 966, '2026-09-13 22:05:19.069508', '456bb6193e15ebba64518122bdfa17bdf77d6da4af18f1489d9a4e134c401a0c', 'validated', '{"audio_key":"d4dffe2a7d90f98f12778bcc573c9cddcc754e7c8f7615c9eac3464796e1a476","entity_key":"wf_family_and_people_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"456bb6193e15ebba64518122bdfa17bdf77d6da4af18f1489d9a4e134c401a0c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/d4dffe2a7d90f98f12778bcc573c9cddcc754e7c8f7615c9eac3464796e1a476.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_getting_around_03 -> audio/generated/ko-KR/lexical/d9e9171590092de77f3c6f1557ce06174923f46e256e999bb4973da9e71698dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('70ee4d14-516f-5685-a5c2-3a7f3ef7ee4f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_getting_around_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd72c8434585436678000f84e914c75545854fd7f40d039e4b52abec54fcc1cea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1eaaff8f-1cae-50b3-ba59-c51eb57ef8d0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('70ee4d14-516f-5685-a5c2-3a7f3ef7ee4f', 1), 'd72c8434585436678000f84e914c75545854fd7f40d039e4b52abec54fcc1cea',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/d9e9171590092de77f3c6f1557ce06174923f46e256e999bb4973da9e71698dd.mp3', 914, '2026-09-13 22:05:19.071744', '8b65c60c881d36509213cc9aa34142b210ff046f65f80ed473b5dee6c2c4e710', 'validated', '{"audio_key":"d9e9171590092de77f3c6f1557ce06174923f46e256e999bb4973da9e71698dd","entity_key":"lx_getting_around_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8b65c60c881d36509213cc9aa34142b210ff046f65f80ed473b5dee6c2c4e710","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/d9e9171590092de77f3c6f1557ce06174923f46e256e999bb4973da9e71698dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_getting_around_03 -> audio/generated/ko-KR/lexical/d9e9171590092de77f3c6f1557ce06174923f46e256e999bb4973da9e71698dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3ac42f7d-ba0a-55e9-bf66-df107e47872b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_getting_around_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd72c8434585436678000f84e914c75545854fd7f40d039e4b52abec54fcc1cea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('51be93b9-6ee8-5a4b-b459-c935c69f3355', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3ac42f7d-ba0a-55e9-bf66-df107e47872b', 1), 'd72c8434585436678000f84e914c75545854fd7f40d039e4b52abec54fcc1cea',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/d9e9171590092de77f3c6f1557ce06174923f46e256e999bb4973da9e71698dd.mp3', 914, '2026-09-13 22:05:19.071744', '8b65c60c881d36509213cc9aa34142b210ff046f65f80ed473b5dee6c2c4e710', 'validated', '{"audio_key":"d9e9171590092de77f3c6f1557ce06174923f46e256e999bb4973da9e71698dd","entity_key":"wf_getting_around_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8b65c60c881d36509213cc9aa34142b210ff046f65f80ed473b5dee6c2c4e710","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/d9e9171590092de77f3c6f1557ce06174923f46e256e999bb4973da9e71698dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_getting_around_04 -> audio/generated/ko-KR/lexical/db3e03697a07dae322e874f8023924402199f578574922988fec0bdea81b6c4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('98cec03d-a319-5251-a145-a8af143bcd04', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_getting_around_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '077b6c57af048c3baee67a251f579b5ee41c700b59dba1086ae090b60b9676b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46755433-1b68-5741-afd3-48da22f59d1f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('98cec03d-a319-5251-a145-a8af143bcd04', 1), '077b6c57af048c3baee67a251f579b5ee41c700b59dba1086ae090b60b9676b8',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/db3e03697a07dae322e874f8023924402199f578574922988fec0bdea81b6c4e.mp3', 862, '2026-09-13 22:05:20.075484', 'f094b4eec2fbdd8a9db6faed64b40b83257243b0a6a8943880e8c6cd33332dad', 'validated', '{"audio_key":"db3e03697a07dae322e874f8023924402199f578574922988fec0bdea81b6c4e","entity_key":"lx_getting_around_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f094b4eec2fbdd8a9db6faed64b40b83257243b0a6a8943880e8c6cd33332dad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/db3e03697a07dae322e874f8023924402199f578574922988fec0bdea81b6c4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_getting_around_04 -> audio/generated/ko-KR/lexical/db3e03697a07dae322e874f8023924402199f578574922988fec0bdea81b6c4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9e426b66-446d-5cab-b519-5380c2bdcd62', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_getting_around_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '077b6c57af048c3baee67a251f579b5ee41c700b59dba1086ae090b60b9676b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('421710fb-1fc5-5efb-9739-44baff02f6e5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9e426b66-446d-5cab-b519-5380c2bdcd62', 1), '077b6c57af048c3baee67a251f579b5ee41c700b59dba1086ae090b60b9676b8',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/db3e03697a07dae322e874f8023924402199f578574922988fec0bdea81b6c4e.mp3', 862, '2026-09-13 22:05:20.075484', 'f094b4eec2fbdd8a9db6faed64b40b83257243b0a6a8943880e8c6cd33332dad', 'validated', '{"audio_key":"db3e03697a07dae322e874f8023924402199f578574922988fec0bdea81b6c4e","entity_key":"wf_getting_around_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f094b4eec2fbdd8a9db6faed64b40b83257243b0a6a8943880e8c6cd33332dad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/db3e03697a07dae322e874f8023924402199f578574922988fec0bdea81b6c4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_family_and_people_01 -> audio/generated/ko-KR/lexical/e72e25721006cfac91668034e91865c29ad4e303ef0171d5f7fb44526ffcbef7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a4e57090-0a92-5f30-90bc-1862ec1e39de', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_family_and_people_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7659575fd72a872b8d0597a795f362a5f549d3dbfe3895be707aa0418a9bfce5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('61ea792e-694f-5f33-8f7f-3fb91896aa68', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a4e57090-0a92-5f30-90bc-1862ec1e39de', 1), '7659575fd72a872b8d0597a795f362a5f549d3dbfe3895be707aa0418a9bfce5',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e72e25721006cfac91668034e91865c29ad4e303ef0171d5f7fb44526ffcbef7.mp3', 966, '2026-09-13 22:05:20.067310', '62bc93d9f367b8ddb0cc5a5d06bc405a1b0c5b451db0f2c6dce4d3ae6ccac16b', 'validated', '{"audio_key":"e72e25721006cfac91668034e91865c29ad4e303ef0171d5f7fb44526ffcbef7","entity_key":"lx_family_and_people_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"62bc93d9f367b8ddb0cc5a5d06bc405a1b0c5b451db0f2c6dce4d3ae6ccac16b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e72e25721006cfac91668034e91865c29ad4e303ef0171d5f7fb44526ffcbef7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_family_and_people_01 -> audio/generated/ko-KR/lexical/e72e25721006cfac91668034e91865c29ad4e303ef0171d5f7fb44526ffcbef7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('447aa561-93b9-5f18-b128-74e48f3c6105', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_family_and_people_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7659575fd72a872b8d0597a795f362a5f549d3dbfe3895be707aa0418a9bfce5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('42a4c01c-3bc1-5db0-8cf7-1c47ff06b360', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('447aa561-93b9-5f18-b128-74e48f3c6105', 1), '7659575fd72a872b8d0597a795f362a5f549d3dbfe3895be707aa0418a9bfce5',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e72e25721006cfac91668034e91865c29ad4e303ef0171d5f7fb44526ffcbef7.mp3', 966, '2026-09-13 22:05:20.067310', '62bc93d9f367b8ddb0cc5a5d06bc405a1b0c5b451db0f2c6dce4d3ae6ccac16b', 'validated', '{"audio_key":"e72e25721006cfac91668034e91865c29ad4e303ef0171d5f7fb44526ffcbef7","entity_key":"wf_family_and_people_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"62bc93d9f367b8ddb0cc5a5d06bc405a1b0c5b451db0f2c6dce4d3ae6ccac16b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e72e25721006cfac91668034e91865c29ad4e303ef0171d5f7fb44526ffcbef7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_time_and_schedule_01 -> audio/generated/ko-KR/lexical/efd7e65f115981fc2f435a89018c2b7aa851415a6fc4959670eaceeb39189831.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b33cccb9-ce42-5723-ab7b-cfa11a7b1317', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_time_and_schedule_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a658dc1b94077c9f96de7fc7a9423236b261a382d412a60779472a55f48b6235'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c77eea22-0a59-56e3-bb94-aeaa4f081bd2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b33cccb9-ce42-5723-ab7b-cfa11a7b1317', 1), 'a658dc1b94077c9f96de7fc7a9423236b261a382d412a60779472a55f48b6235',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/efd7e65f115981fc2f435a89018c2b7aa851415a6fc4959670eaceeb39189831.mp3', 966, '2026-09-13 22:05:21.034101', '484e616ba4aed94953c30b9ab0eed81e525cedbba92fcfa01ff9bfb2e24104a9', 'validated', '{"audio_key":"efd7e65f115981fc2f435a89018c2b7aa851415a6fc4959670eaceeb39189831","entity_key":"lx_time_and_schedule_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"484e616ba4aed94953c30b9ab0eed81e525cedbba92fcfa01ff9bfb2e24104a9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/efd7e65f115981fc2f435a89018c2b7aa851415a6fc4959670eaceeb39189831.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_time_and_schedule_01 -> audio/generated/ko-KR/lexical/efd7e65f115981fc2f435a89018c2b7aa851415a6fc4959670eaceeb39189831.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a20312d9-b923-5449-8ae4-32aa0e295753', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_time_and_schedule_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a658dc1b94077c9f96de7fc7a9423236b261a382d412a60779472a55f48b6235'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b24ccc9b-bc78-5485-8397-45d35d44ff19', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a20312d9-b923-5449-8ae4-32aa0e295753', 1), 'a658dc1b94077c9f96de7fc7a9423236b261a382d412a60779472a55f48b6235',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/efd7e65f115981fc2f435a89018c2b7aa851415a6fc4959670eaceeb39189831.mp3', 966, '2026-09-13 22:05:21.034101', '484e616ba4aed94953c30b9ab0eed81e525cedbba92fcfa01ff9bfb2e24104a9', 'validated', '{"audio_key":"efd7e65f115981fc2f435a89018c2b7aa851415a6fc4959670eaceeb39189831","entity_key":"wf_time_and_schedule_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"484e616ba4aed94953c30b9ab0eed81e525cedbba92fcfa01ff9bfb2e24104a9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/efd7e65f115981fc2f435a89018c2b7aa851415a6fc4959670eaceeb39189831.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_cafe_orders_02 -> audio/generated/ko-KR/lexical/f0e38f48fc9e9d24fc66fecde4ca1d045cfd70474b1acab973fa6184613156f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c33054e8-5fb8-5b10-97c2-83a5b543d5c6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_cafe_orders_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e7edc957ce601f5ff7c7d79ad426251c59edf1afbb4d6f1266e98515bc354c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5dd50045-6bd4-5122-b62c-7c466b044d8d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c33054e8-5fb8-5b10-97c2-83a5b543d5c6', 1), '2e7edc957ce601f5ff7c7d79ad426251c59edf1afbb4d6f1266e98515bc354c0',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f0e38f48fc9e9d24fc66fecde4ca1d045cfd70474b1acab973fa6184613156f9.mp3', 914, '2026-09-13 21:05:46.602222', '2f9802a53540c4ace6c52971d8cff70a96d7c6a392c828baa0e451e35d9c3196', 'validated', '{"audio_key":"f0e38f48fc9e9d24fc66fecde4ca1d045cfd70474b1acab973fa6184613156f9","entity_key":"lx_cafe_orders_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2f9802a53540c4ace6c52971d8cff70a96d7c6a392c828baa0e451e35d9c3196","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f0e38f48fc9e9d24fc66fecde4ca1d045cfd70474b1acab973fa6184613156f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_cafe_orders_02 -> audio/generated/ko-KR/lexical/f0e38f48fc9e9d24fc66fecde4ca1d045cfd70474b1acab973fa6184613156f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('82276c8b-dd5a-57d6-abb6-309a2d366208', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_cafe_orders_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e7edc957ce601f5ff7c7d79ad426251c59edf1afbb4d6f1266e98515bc354c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca2e5029-bdab-52d3-9b97-c99021ab7407', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('82276c8b-dd5a-57d6-abb6-309a2d366208', 1), '2e7edc957ce601f5ff7c7d79ad426251c59edf1afbb4d6f1266e98515bc354c0',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f0e38f48fc9e9d24fc66fecde4ca1d045cfd70474b1acab973fa6184613156f9.mp3', 914, '2026-09-13 21:05:46.602222', '2f9802a53540c4ace6c52971d8cff70a96d7c6a392c828baa0e451e35d9c3196', 'validated', '{"audio_key":"f0e38f48fc9e9d24fc66fecde4ca1d045cfd70474b1acab973fa6184613156f9","entity_key":"wf_cafe_orders_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2f9802a53540c4ace6c52971d8cff70a96d7c6a392c828baa0e451e35d9c3196","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f0e38f48fc9e9d24fc66fecde4ca1d045cfd70474b1acab973fa6184613156f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_identity_and_work_04 -> audio/generated/ko-KR/lexical/fc39eb0f55000f03ef5efe6a1c0bd6e4530c7defb5aace5a92058ad58f216a32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('610a7331-9d34-5fcc-883f-0e37827de75b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_identity_and_work_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6029e20ce4d2a72a3dc536a71f23928f3d03a3f82a42c316b76f1b190ca3d1a4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e6e1488-aa8c-5aee-99d5-1df104ed00d2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('610a7331-9d34-5fcc-883f-0e37827de75b', 1), '6029e20ce4d2a72a3dc536a71f23928f3d03a3f82a42c316b76f1b190ca3d1a4',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/fc39eb0f55000f03ef5efe6a1c0bd6e4530c7defb5aace5a92058ad58f216a32.mp3', 1149, '2026-09-13 22:05:21.044739', 'f84c090f4c546a6817bb79398900bfdbdafe2b72934cf683cbd582a0aac672e1', 'validated', '{"audio_key":"fc39eb0f55000f03ef5efe6a1c0bd6e4530c7defb5aace5a92058ad58f216a32","entity_key":"lx_identity_and_work_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f84c090f4c546a6817bb79398900bfdbdafe2b72934cf683cbd582a0aac672e1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/fc39eb0f55000f03ef5efe6a1c0bd6e4530c7defb5aace5a92058ad58f216a32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_identity_and_work_04 -> audio/generated/ko-KR/lexical/fc39eb0f55000f03ef5efe6a1c0bd6e4530c7defb5aace5a92058ad58f216a32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c408a1cb-faf1-5e30-a18f-2d062e4bd021', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_identity_and_work_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6029e20ce4d2a72a3dc536a71f23928f3d03a3f82a42c316b76f1b190ca3d1a4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e92c44d-1c49-507b-9f24-295d8aef9d37', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c408a1cb-faf1-5e30-a18f-2d062e4bd021', 1), '6029e20ce4d2a72a3dc536a71f23928f3d03a3f82a42c316b76f1b190ca3d1a4',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/fc39eb0f55000f03ef5efe6a1c0bd6e4530c7defb5aace5a92058ad58f216a32.mp3', 1149, '2026-09-13 22:05:21.044739', 'f84c090f4c546a6817bb79398900bfdbdafe2b72934cf683cbd582a0aac672e1', 'validated', '{"audio_key":"fc39eb0f55000f03ef5efe6a1c0bd6e4530c7defb5aace5a92058ad58f216a32","entity_key":"wf_identity_and_work_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f84c090f4c546a6817bb79398900bfdbdafe2b72934cf683cbd582a0aac672e1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/fc39eb0f55000f03ef5efe6a1c0bd6e4530c7defb5aace5a92058ad58f216a32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_likes_and_dislikes_04 -> audio/generated/ko-KR/utterances/0b663d983b66a6190382167fdf3ec4325126a8729545c926ea473c35fb8f5bc4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c3dfaef7-91fc-5d62-be6e-7b737da1b620', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_likes_and_dislikes_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d201e00b573b58807a1979f3f0f572c9cc015c5f6e171bbb27d23d315869d1d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32b60b61-97b1-58cc-b424-213da97b491d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c3dfaef7-91fc-5d62-be6e-7b737da1b620', 1), '1d201e00b573b58807a1979f3f0f572c9cc015c5f6e171bbb27d23d315869d1d',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/0b663d983b66a6190382167fdf3ec4325126a8729545c926ea473c35fb8f5bc4.mp3', 1697, '2026-09-13 22:05:22.056265', '0133f62456e9e6da3cac4a81c9252163d93d2387937d66742d520f59c51ed439', 'validated', '{"audio_key":"0b663d983b66a6190382167fdf3ec4325126a8729545c926ea473c35fb8f5bc4","entity_key":"u_likes_and_dislikes_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0133f62456e9e6da3cac4a81c9252163d93d2387937d66742d520f59c51ed439","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/0b663d983b66a6190382167fdf3ec4325126a8729545c926ea473c35fb8f5bc4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_likes_and_dislikes_02_listen -> audio/generated/ko-KR/utterances/0b663d983b66a6190382167fdf3ec4325126a8729545c926ea473c35fb8f5bc4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1582d231-4859-5a42-a129-6015b22b4f93', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_likes_and_dislikes_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d201e00b573b58807a1979f3f0f572c9cc015c5f6e171bbb27d23d315869d1d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('868be98f-5a1d-59a7-9a23-e61499c687a7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1582d231-4859-5a42-a129-6015b22b4f93', 1), '1d201e00b573b58807a1979f3f0f572c9cc015c5f6e171bbb27d23d315869d1d',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/0b663d983b66a6190382167fdf3ec4325126a8729545c926ea473c35fb8f5bc4.mp3', 1697, '2026-09-13 22:05:22.056265', '0133f62456e9e6da3cac4a81c9252163d93d2387937d66742d520f59c51ed439', 'validated', '{"audio_key":"0b663d983b66a6190382167fdf3ec4325126a8729545c926ea473c35fb8f5bc4","entity_key":"e_likes_and_dislikes_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0133f62456e9e6da3cac4a81c9252163d93d2387937d66742d520f59c51ed439","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/0b663d983b66a6190382167fdf3ec4325126a8729545c926ea473c35fb8f5bc4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_identity_and_work_04 -> audio/generated/ko-KR/utterances/0cd2af05b4673df1af103fde08609d2453c6c6b87e269c869d90a036549625df.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0d6e2bba-bfb7-54ce-a09d-e0c168c4e154', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_identity_and_work_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd9e7f4a4da125ce5d3a2e551accb36968b93901e1608d885ead70c47bc990dfc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6779509-d8a1-59a8-917d-ae5b39e0873a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0d6e2bba-bfb7-54ce-a09d-e0c168c4e154', 1), 'd9e7f4a4da125ce5d3a2e551accb36968b93901e1608d885ead70c47bc990dfc',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/0cd2af05b4673df1af103fde08609d2453c6c6b87e269c869d90a036549625df.mp3', 1802, '2026-09-13 22:05:22.157459', '7b94f1852d0cdbdb3951bc79f7d24799bf6bdd935c25e09177591dc135770a97', 'validated', '{"audio_key":"0cd2af05b4673df1af103fde08609d2453c6c6b87e269c869d90a036549625df","entity_key":"u_identity_and_work_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7b94f1852d0cdbdb3951bc79f7d24799bf6bdd935c25e09177591dc135770a97","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/0cd2af05b4673df1af103fde08609d2453c6c6b87e269c869d90a036549625df.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_identity_and_work_02_listen -> audio/generated/ko-KR/utterances/0cd2af05b4673df1af103fde08609d2453c6c6b87e269c869d90a036549625df.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f4991ec4-b9c7-502c-95b7-f845f31617a0', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_identity_and_work_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd9e7f4a4da125ce5d3a2e551accb36968b93901e1608d885ead70c47bc990dfc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9920d48e-5df1-53ce-92ab-5a6f9b03c7e9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f4991ec4-b9c7-502c-95b7-f845f31617a0', 1), 'd9e7f4a4da125ce5d3a2e551accb36968b93901e1608d885ead70c47bc990dfc',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/0cd2af05b4673df1af103fde08609d2453c6c6b87e269c869d90a036549625df.mp3', 1802, '2026-09-13 22:05:22.157459', '7b94f1852d0cdbdb3951bc79f7d24799bf6bdd935c25e09177591dc135770a97', 'validated', '{"audio_key":"0cd2af05b4673df1af103fde08609d2453c6c6b87e269c869d90a036549625df","entity_key":"e_identity_and_work_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7b94f1852d0cdbdb3951bc79f7d24799bf6bdd935c25e09177591dc135770a97","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/0cd2af05b4673df1af103fde08609d2453c6c6b87e269c869d90a036549625df.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a1_day_out_capstone_01 -> audio/generated/ko-KR/utterances/123def61704720fdf45306ed79b984e0badce7aa69683ce1fcf6d6187b90f0af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b0eef4f2-aad7-5bf3-adb8-db8c2e65c777', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a1_day_out_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b71cda822f72f38b6df9c9d1fb649243357ed2989fbe8aac8dfd4181f7ab627'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('603c7f04-105d-5797-8d9f-d84354105d0e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b0eef4f2-aad7-5bf3-adb8-db8c2e65c777', 1), '2b71cda822f72f38b6df9c9d1fb649243357ed2989fbe8aac8dfd4181f7ab627',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/123def61704720fdf45306ed79b984e0badce7aa69683ce1fcf6d6187b90f0af.mp3', 2220, '2026-09-13 22:05:23.145265', 'a67599e81dde3e6e1ef9fc65baca3eb57e3c0790b25c5050117dd84db659c2e2', 'validated', '{"audio_key":"123def61704720fdf45306ed79b984e0badce7aa69683ce1fcf6d6187b90f0af","entity_key":"u_a1_day_out_capstone_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a67599e81dde3e6e1ef9fc65baca3eb57e3c0790b25c5050117dd84db659c2e2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/123def61704720fdf45306ed79b984e0badce7aa69683ce1fcf6d6187b90f0af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cafe_orders_02 -> audio/generated/ko-KR/utterances/1f97b8ddcc3588868c81a881d6ec871e3babbe001d6bab43c97eea55d5f91f30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f2f3c4c9-12fe-5e88-9592-9c6728412151', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cafe_orders_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6c9b6f28aa52604206d98b6cdd9d8748c9f5f75ab82ec90579eeeae48f9278a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e89a4070-5f72-5052-a6b9-59825c029d2e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f2f3c4c9-12fe-5e88-9592-9c6728412151', 1), '6c9b6f28aa52604206d98b6cdd9d8748c9f5f75ab82ec90579eeeae48f9278a7',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/1f97b8ddcc3588868c81a881d6ec871e3babbe001d6bab43c97eea55d5f91f30.mp3', 1280, '2026-09-13 22:05:23.129077', 'b2d4681675be8c066810dccc2e3b15e06eefb63c7e1c90930627b1848c1868c9', 'validated', '{"audio_key":"1f97b8ddcc3588868c81a881d6ec871e3babbe001d6bab43c97eea55d5f91f30","entity_key":"u_cafe_orders_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b2d4681675be8c066810dccc2e3b15e06eefb63c7e1c90930627b1848c1868c9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/1f97b8ddcc3588868c81a881d6ec871e3babbe001d6bab43c97eea55d5f91f30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_cafe_orders_01_listen -> audio/generated/ko-KR/utterances/1f97b8ddcc3588868c81a881d6ec871e3babbe001d6bab43c97eea55d5f91f30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0f09c540-daa7-53ae-8c41-0f7f330ee8a3', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_cafe_orders_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6c9b6f28aa52604206d98b6cdd9d8748c9f5f75ab82ec90579eeeae48f9278a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a36f6425-a8f2-5caa-ba80-a6e2d407562d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0f09c540-daa7-53ae-8c41-0f7f330ee8a3', 1), '6c9b6f28aa52604206d98b6cdd9d8748c9f5f75ab82ec90579eeeae48f9278a7',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/1f97b8ddcc3588868c81a881d6ec871e3babbe001d6bab43c97eea55d5f91f30.mp3', 1280, '2026-09-13 22:05:23.129077', 'b2d4681675be8c066810dccc2e3b15e06eefb63c7e1c90930627b1848c1868c9', 'validated', '{"audio_key":"1f97b8ddcc3588868c81a881d6ec871e3babbe001d6bab43c97eea55d5f91f30","entity_key":"e_cafe_orders_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b2d4681675be8c066810dccc2e3b15e06eefb63c7e1c90930627b1848c1868c9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/1f97b8ddcc3588868c81a881d6ec871e3babbe001d6bab43c97eea55d5f91f30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_where_things_are_03 -> audio/generated/ko-KR/utterances/20a56cb36f99d654ae95865ceaeaf41fe55e06702dc430c98a0a91fd70093aff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('89ef450b-a69b-547a-8828-e8abb260f592', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_where_things_are_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97286d500575cfe48e1da00a351ce3322189d8407b8638b3ed89cadf0d0dbadf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba2d86d8-ddd8-52fa-9d3b-2c0f33233a3a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('89ef450b-a69b-547a-8828-e8abb260f592', 1), '97286d500575cfe48e1da00a351ce3322189d8407b8638b3ed89cadf0d0dbadf',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/20a56cb36f99d654ae95865ceaeaf41fe55e06702dc430c98a0a91fd70093aff.mp3', 1619, '2026-09-13 22:05:24.200699', 'af4bf5ff4bed12dc1ef0077956a41a44e09155c45d3bc2a977a20567674327a2', 'validated', '{"audio_key":"20a56cb36f99d654ae95865ceaeaf41fe55e06702dc430c98a0a91fd70093aff","entity_key":"u_where_things_are_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"af4bf5ff4bed12dc1ef0077956a41a44e09155c45d3bc2a977a20567674327a2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/20a56cb36f99d654ae95865ceaeaf41fe55e06702dc430c98a0a91fd70093aff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a1_day_out_capstone_02 -> audio/generated/ko-KR/utterances/2ccdaad81b1196ce8acdccac90b54c787938eafe4f56357444ac34230cfa731a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9962e7fb-9c91-5a12-a3ac-2850a8b0493e', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a1_day_out_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4189177d1045cf2bfb99b6fd00a0cfd3e122bb50eb0da3d1bb1915b09f9eedbf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3f3526f-9b3e-5337-bfd5-dd5bb1df66c8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9962e7fb-9c91-5a12-a3ac-2850a8b0493e', 1), '4189177d1045cf2bfb99b6fd00a0cfd3e122bb50eb0da3d1bb1915b09f9eedbf',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/2ccdaad81b1196ce8acdccac90b54c787938eafe4f56357444ac34230cfa731a.mp3', 2272, '2026-09-13 22:05:24.482040', 'ce39182a4d382ab0b3b8abd3b451f3761e7c435fe540cc70298621feb1c1137c', 'validated', '{"audio_key":"2ccdaad81b1196ce8acdccac90b54c787938eafe4f56357444ac34230cfa731a","entity_key":"u_a1_day_out_capstone_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ce39182a4d382ab0b3b8abd3b451f3761e7c435fe540cc70298621feb1c1137c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/2ccdaad81b1196ce8acdccac90b54c787938eafe4f56357444ac34230cfa731a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_a1_day_out_capstone_01_listen -> audio/generated/ko-KR/utterances/2ccdaad81b1196ce8acdccac90b54c787938eafe4f56357444ac34230cfa731a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0e21f48b-3d74-50c3-82e4-3dfa29e12be2', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_a1_day_out_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4189177d1045cf2bfb99b6fd00a0cfd3e122bb50eb0da3d1bb1915b09f9eedbf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9921374-00f5-54dc-9786-acf542bdd470', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0e21f48b-3d74-50c3-82e4-3dfa29e12be2', 1), '4189177d1045cf2bfb99b6fd00a0cfd3e122bb50eb0da3d1bb1915b09f9eedbf',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/2ccdaad81b1196ce8acdccac90b54c787938eafe4f56357444ac34230cfa731a.mp3', 2272, '2026-09-13 22:05:24.482040', 'ce39182a4d382ab0b3b8abd3b451f3761e7c435fe540cc70298621feb1c1137c', 'validated', '{"audio_key":"2ccdaad81b1196ce8acdccac90b54c787938eafe4f56357444ac34230cfa731a","entity_key":"e_a1_day_out_capstone_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ce39182a4d382ab0b3b8abd3b451f3761e7c435fe540cc70298621feb1c1137c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/2ccdaad81b1196ce8acdccac90b54c787938eafe4f56357444ac34230cfa731a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_family_and_people_04 -> audio/generated/ko-KR/utterances/2faec4f62a09d410f5b558c0309e7ff730bbd78307f98ecaf29e0772971ef111.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ae6bf6fa-b7db-5e7f-a781-32651d364300', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_family_and_people_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e804138777bc6edc56bcf92ecd40143538227a8cbaf93f6aa78df6fbb92f0dd2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec806d35-9e00-5220-9843-82d527e1a20b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ae6bf6fa-b7db-5e7f-a781-32651d364300', 1), 'e804138777bc6edc56bcf92ecd40143538227a8cbaf93f6aa78df6fbb92f0dd2',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/2faec4f62a09d410f5b558c0309e7ff730bbd78307f98ecaf29e0772971ef111.mp3', 1697, '2026-09-13 22:05:25.223591', 'bce01bf26ec7635843efff975b507d01c9097b21462b3daeda3b36d89e196526', 'validated', '{"audio_key":"2faec4f62a09d410f5b558c0309e7ff730bbd78307f98ecaf29e0772971ef111","entity_key":"u_family_and_people_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bce01bf26ec7635843efff975b507d01c9097b21462b3daeda3b36d89e196526","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/2faec4f62a09d410f5b558c0309e7ff730bbd78307f98ecaf29e0772971ef111.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_family_and_people_02_listen -> audio/generated/ko-KR/utterances/2faec4f62a09d410f5b558c0309e7ff730bbd78307f98ecaf29e0772971ef111.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6d8490ec-b3b0-50f7-a8c1-80c2e069d2b3', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_family_and_people_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e804138777bc6edc56bcf92ecd40143538227a8cbaf93f6aa78df6fbb92f0dd2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54f044fb-22cb-55cf-af83-3f9c7a5a2b98', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6d8490ec-b3b0-50f7-a8c1-80c2e069d2b3', 1), 'e804138777bc6edc56bcf92ecd40143538227a8cbaf93f6aa78df6fbb92f0dd2',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/2faec4f62a09d410f5b558c0309e7ff730bbd78307f98ecaf29e0772971ef111.mp3', 1697, '2026-09-13 22:05:25.223591', 'bce01bf26ec7635843efff975b507d01c9097b21462b3daeda3b36d89e196526', 'validated', '{"audio_key":"2faec4f62a09d410f5b558c0309e7ff730bbd78307f98ecaf29e0772971ef111","entity_key":"e_family_and_people_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bce01bf26ec7635843efff975b507d01c9097b21462b3daeda3b36d89e196526","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/2faec4f62a09d410f5b558c0309e7ff730bbd78307f98ecaf29e0772971ef111.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_likes_and_dislikes_02 -> audio/generated/ko-KR/utterances/30c1ee34764ee71b65124cd7ad7512248560d0c41d78ace7027e167fc3a740fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('557a826b-595b-5269-9bd6-25100f86959f', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_likes_and_dislikes_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b37afa174dd945e7f17bb1c2f9c74eef6650d8b5a3f7d723eeeea627fa294855'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c34c6b2-4ca0-5f3d-b556-06ea30d82022', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('557a826b-595b-5269-9bd6-25100f86959f', 1), 'b37afa174dd945e7f17bb1c2f9c74eef6650d8b5a3f7d723eeeea627fa294855',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/30c1ee34764ee71b65124cd7ad7512248560d0c41d78ace7027e167fc3a740fc.mp3', 1384, '2026-09-13 22:05:25.495424', '6e40e9bb28ca4546dfa955bef8a942b5a30c04d8f2075edddb9904178ddb5f34', 'validated', '{"audio_key":"30c1ee34764ee71b65124cd7ad7512248560d0c41d78ace7027e167fc3a740fc","entity_key":"u_likes_and_dislikes_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6e40e9bb28ca4546dfa955bef8a942b5a30c04d8f2075edddb9904178ddb5f34","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/30c1ee34764ee71b65124cd7ad7512248560d0c41d78ace7027e167fc3a740fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_likes_and_dislikes_01_listen -> audio/generated/ko-KR/utterances/30c1ee34764ee71b65124cd7ad7512248560d0c41d78ace7027e167fc3a740fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d2d9e61a-6ef3-5f74-9a64-10ce6826b3bc', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_likes_and_dislikes_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b37afa174dd945e7f17bb1c2f9c74eef6650d8b5a3f7d723eeeea627fa294855'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('66c028d2-23a2-5a77-8ebf-83d91019db8a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d2d9e61a-6ef3-5f74-9a64-10ce6826b3bc', 1), 'b37afa174dd945e7f17bb1c2f9c74eef6650d8b5a3f7d723eeeea627fa294855',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/30c1ee34764ee71b65124cd7ad7512248560d0c41d78ace7027e167fc3a740fc.mp3', 1384, '2026-09-13 22:05:25.495424', '6e40e9bb28ca4546dfa955bef8a942b5a30c04d8f2075edddb9904178ddb5f34', 'validated', '{"audio_key":"30c1ee34764ee71b65124cd7ad7512248560d0c41d78ace7027e167fc3a740fc","entity_key":"e_likes_and_dislikes_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6e40e9bb28ca4546dfa955bef8a942b5a30c04d8f2075edddb9904178ddb5f34","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/30c1ee34764ee71b65124cd7ad7512248560d0c41d78ace7027e167fc3a740fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_daily_routine_01 -> audio/generated/ko-KR/utterances/38915d45450c133ea75ff111808027061b8cf15f3d53cd738fd2a0516b6d1db1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9c911f0c-4e9c-575e-bdec-f060ddba69f0', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_daily_routine_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b52bbc2c3bb8b7c41273aaf37463b546a8eeb54d82e5c874627a0bb5098bfe0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26c15952-a021-53e0-9a79-1f139ba06a51', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9c911f0c-4e9c-575e-bdec-f060ddba69f0', 1), '4b52bbc2c3bb8b7c41273aaf37463b546a8eeb54d82e5c874627a0bb5098bfe0',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/38915d45450c133ea75ff111808027061b8cf15f3d53cd738fd2a0516b6d1db1.mp3', 1332, '2026-09-13 22:05:26.256211', '4206d79229e70177702dcf5a373da7f21c782cd9be204b2ef7ccf7e122864002', 'validated', '{"audio_key":"38915d45450c133ea75ff111808027061b8cf15f3d53cd738fd2a0516b6d1db1","entity_key":"u_daily_routine_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4206d79229e70177702dcf5a373da7f21c782cd9be204b2ef7ccf7e122864002","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/38915d45450c133ea75ff111808027061b8cf15f3d53cd738fd2a0516b6d1db1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_identity_and_work_01 -> audio/generated/ko-KR/utterances/3ed3cf01f63f141d8f26270d34496657f45d13dc73ec2066013a18b849e70a37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6fa8b687-ece2-5f87-af7b-4eacd580f197', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_identity_and_work_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '43a8c905a494fb5c38e1720b12045bf3363df3c508d75646c466a4b2dc64331d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3395e292-a157-5197-8714-98498c784f24', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6fa8b687-ece2-5f87-af7b-4eacd580f197', 1), '43a8c905a494fb5c38e1720b12045bf3363df3c508d75646c466a4b2dc64331d',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/3ed3cf01f63f141d8f26270d34496657f45d13dc73ec2066013a18b849e70a37.mp3', 1515, '2026-09-13 22:05:26.487792', '64f87f6f5bc6a00c50ba9b2379e2dd55d35d0d57f475e2a1f812bf17a7b20536', 'validated', '{"audio_key":"3ed3cf01f63f141d8f26270d34496657f45d13dc73ec2066013a18b849e70a37","entity_key":"u_identity_and_work_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"64f87f6f5bc6a00c50ba9b2379e2dd55d35d0d57f475e2a1f812bf17a7b20536","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/3ed3cf01f63f141d8f26270d34496657f45d13dc73ec2066013a18b849e70a37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cafe_orders_04 -> audio/generated/ko-KR/utterances/516b53d189252839eb8fe59fa1aca430db1ec1a26ebf7886660c94a1d4aef5dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('700d2054-e613-5b79-a3ef-cfd13fb6adf9', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cafe_orders_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04e4e2264f69a1160c57bfc5ea844a22fd6d6f4a237006232f499d9cebc3c6e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae8a3c4b-c1aa-532d-ba47-84cbc871bab2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('700d2054-e613-5b79-a3ef-cfd13fb6adf9', 1), '04e4e2264f69a1160c57bfc5ea844a22fd6d6f4a237006232f499d9cebc3c6e8',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/516b53d189252839eb8fe59fa1aca430db1ec1a26ebf7886660c94a1d4aef5dd.mp3', 1436, '2026-09-13 22:05:27.314824', 'f0d49e8de8cc5b54c2abb11cac63e115c3c56b3f73177ebf7e4fc2261bc50006', 'validated', '{"audio_key":"516b53d189252839eb8fe59fa1aca430db1ec1a26ebf7886660c94a1d4aef5dd","entity_key":"u_cafe_orders_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f0d49e8de8cc5b54c2abb11cac63e115c3c56b3f73177ebf7e4fc2261bc50006","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/516b53d189252839eb8fe59fa1aca430db1ec1a26ebf7886660c94a1d4aef5dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_cafe_orders_02_listen -> audio/generated/ko-KR/utterances/516b53d189252839eb8fe59fa1aca430db1ec1a26ebf7886660c94a1d4aef5dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('409d632a-6a98-577d-8abe-612668ffefc0', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_cafe_orders_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04e4e2264f69a1160c57bfc5ea844a22fd6d6f4a237006232f499d9cebc3c6e8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4097014e-2ba8-5183-9a89-f89e034bd04c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('409d632a-6a98-577d-8abe-612668ffefc0', 1), '04e4e2264f69a1160c57bfc5ea844a22fd6d6f4a237006232f499d9cebc3c6e8',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/516b53d189252839eb8fe59fa1aca430db1ec1a26ebf7886660c94a1d4aef5dd.mp3', 1436, '2026-09-13 22:05:27.314824', 'f0d49e8de8cc5b54c2abb11cac63e115c3c56b3f73177ebf7e4fc2261bc50006', 'validated', '{"audio_key":"516b53d189252839eb8fe59fa1aca430db1ec1a26ebf7886660c94a1d4aef5dd","entity_key":"e_cafe_orders_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f0d49e8de8cc5b54c2abb11cac63e115c3c56b3f73177ebf7e4fc2261bc50006","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/516b53d189252839eb8fe59fa1aca430db1ec1a26ebf7886660c94a1d4aef5dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a1_day_out_capstone_03 -> audio/generated/ko-KR/utterances/57ad814ded3ed7d318fbda6d2270dc053d752a8641bd2e5748ddb18c22e9aae3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('95fafde1-e3fd-557f-8ac2-201a24f65cf6', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a1_day_out_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8441f3514c15164032b9d4c5b59fc2c6f148a357e935934b2cf515cefcb9ccc7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df77fee0-3fff-5728-a74a-736b3df214a1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('95fafde1-e3fd-557f-8ac2-201a24f65cf6', 1), '8441f3514c15164032b9d4c5b59fc2c6f148a357e935934b2cf515cefcb9ccc7',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/57ad814ded3ed7d318fbda6d2270dc053d752a8641bd2e5748ddb18c22e9aae3.mp3', 1619, '2026-09-13 22:05:27.563034', 'e91eb1aacf8a5da66370bf3f4a6dbe5e1b2c08a49b262e27377b275546022e39', 'validated', '{"audio_key":"57ad814ded3ed7d318fbda6d2270dc053d752a8641bd2e5748ddb18c22e9aae3","entity_key":"u_a1_day_out_capstone_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e91eb1aacf8a5da66370bf3f4a6dbe5e1b2c08a49b262e27377b275546022e39","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/57ad814ded3ed7d318fbda6d2270dc053d752a8641bd2e5748ddb18c22e9aae3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_shopping_basics_03 -> audio/generated/ko-KR/utterances/6236bf9fb6f38e54fe597a8dc2df1fcdfec4b8b33c335b5ca51b73dde1a836e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9bb79779-d589-590b-b2fa-5fd561be4865', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_shopping_basics_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '05528d0b5f775119ff5f2770093144bed74e1a098b2c11953db7949f7a1fcacc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('876663a0-7e1e-57cb-a103-775aed9f83d6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9bb79779-d589-590b-b2fa-5fd561be4865', 1), '05528d0b5f775119ff5f2770093144bed74e1a098b2c11953db7949f7a1fcacc',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/6236bf9fb6f38e54fe597a8dc2df1fcdfec4b8b33c335b5ca51b73dde1a836e6.mp3', 1436, '2026-09-13 22:05:28.305140', '0f2ab3158df31a53d4838e7e45553f375c23ead154c48d790c4525acf8bcc3ce', 'validated', '{"audio_key":"6236bf9fb6f38e54fe597a8dc2df1fcdfec4b8b33c335b5ca51b73dde1a836e6","entity_key":"u_shopping_basics_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0f2ab3158df31a53d4838e7e45553f375c23ead154c48d790c4525acf8bcc3ce","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/6236bf9fb6f38e54fe597a8dc2df1fcdfec4b8b33c335b5ca51b73dde1a836e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cafe_orders_03 -> audio/generated/ko-KR/utterances/6585af6f8a82ebbf097445598a3802daf37c8cb6782e8c5bbe1b67a07d4ec793.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4ff39e0d-1f72-5125-8d79-d9d778859f15', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cafe_orders_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '567946c95ef68bc431f86171d9fc44fc43c9f9c0aec9777b46735351f48ca972'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2cdf987d-c950-5f91-b812-f6da462ba23d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4ff39e0d-1f72-5125-8d79-d9d778859f15', 1), '567946c95ef68bc431f86171d9fc44fc43c9f9c0aec9777b46735351f48ca972',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/6585af6f8a82ebbf097445598a3802daf37c8cb6782e8c5bbe1b67a07d4ec793.mp3', 1436, '2026-09-13 22:05:28.566284', '54b9f6cd7ca087c5c52dfafc3011e93c24e3ebe27b6bfd396c56034e4beff7db', 'validated', '{"audio_key":"6585af6f8a82ebbf097445598a3802daf37c8cb6782e8c5bbe1b67a07d4ec793","entity_key":"u_cafe_orders_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"54b9f6cd7ca087c5c52dfafc3011e93c24e3ebe27b6bfd396c56034e4beff7db","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/6585af6f8a82ebbf097445598a3802daf37c8cb6782e8c5bbe1b67a07d4ec793.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_time_and_schedule_04 -> audio/generated/ko-KR/utterances/6f122bf6a07aa1ea7c5b31f190814e489dcff9fb06a999cd41de23c3366985ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('890f60e8-bd81-59b3-a7ac-c409fcd77f7d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_time_and_schedule_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90f3f8f2cedce8263fc6aa207c128d983fbd3f9651bab6f2d6354885ae122989'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('100c789e-bec2-5f36-899b-7349d24b5121', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('890f60e8-bd81-59b3-a7ac-c409fcd77f7d', 1), '90f3f8f2cedce8263fc6aa207c128d983fbd3f9651bab6f2d6354885ae122989',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/6f122bf6a07aa1ea7c5b31f190814e489dcff9fb06a999cd41de23c3366985ba.mp3', 1619, '2026-09-13 22:05:29.310416', '8d1f1d2e4cdfa423b62b47c3e3399b414da65316ed988aee39e44e64968c2078', 'validated', '{"audio_key":"6f122bf6a07aa1ea7c5b31f190814e489dcff9fb06a999cd41de23c3366985ba","entity_key":"u_time_and_schedule_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8d1f1d2e4cdfa423b62b47c3e3399b414da65316ed988aee39e44e64968c2078","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/6f122bf6a07aa1ea7c5b31f190814e489dcff9fb06a999cd41de23c3366985ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_time_and_schedule_02_listen -> audio/generated/ko-KR/utterances/6f122bf6a07aa1ea7c5b31f190814e489dcff9fb06a999cd41de23c3366985ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0592e451-19fb-531d-97c1-fb3309bb508e', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_time_and_schedule_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90f3f8f2cedce8263fc6aa207c128d983fbd3f9651bab6f2d6354885ae122989'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('93abf728-c104-5ae0-9068-61ac1a59f94d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0592e451-19fb-531d-97c1-fb3309bb508e', 1), '90f3f8f2cedce8263fc6aa207c128d983fbd3f9651bab6f2d6354885ae122989',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/6f122bf6a07aa1ea7c5b31f190814e489dcff9fb06a999cd41de23c3366985ba.mp3', 1619, '2026-09-13 22:05:29.310416', '8d1f1d2e4cdfa423b62b47c3e3399b414da65316ed988aee39e44e64968c2078', 'validated', '{"audio_key":"6f122bf6a07aa1ea7c5b31f190814e489dcff9fb06a999cd41de23c3366985ba","entity_key":"e_time_and_schedule_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8d1f1d2e4cdfa423b62b47c3e3399b414da65316ed988aee39e44e64968c2078","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/6f122bf6a07aa1ea7c5b31f190814e489dcff9fb06a999cd41de23c3366985ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_identity_and_work_02 -> audio/generated/ko-KR/utterances/7677c959447ff1488ead99575762071beb766a7d16e191c2f282cfe1a16b0920.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9a087e8d-33b3-5bc8-9184-ed74d6fb0be4', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_identity_and_work_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fccbcd00e62af54c060fee99e93b326e739b6792d52a772ccfc026ced16565f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aaa537a9-bce4-5023-8c8e-4b165986b5a0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9a087e8d-33b3-5bc8-9184-ed74d6fb0be4', 1), 'fccbcd00e62af54c060fee99e93b326e739b6792d52a772ccfc026ced16565f4',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7677c959447ff1488ead99575762071beb766a7d16e191c2f282cfe1a16b0920.mp3', 1854, '2026-09-13 22:05:29.659932', '36029ce9991c8181abbdb03da5f8a017a47e5f3032e2b1e5ca6f739d7c125349', 'validated', '{"audio_key":"7677c959447ff1488ead99575762071beb766a7d16e191c2f282cfe1a16b0920","entity_key":"u_identity_and_work_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"36029ce9991c8181abbdb03da5f8a017a47e5f3032e2b1e5ca6f739d7c125349","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7677c959447ff1488ead99575762071beb766a7d16e191c2f282cfe1a16b0920.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_identity_and_work_01_listen -> audio/generated/ko-KR/utterances/7677c959447ff1488ead99575762071beb766a7d16e191c2f282cfe1a16b0920.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1bb8a6ac-3a6e-54f2-9bb7-9d5aec70bc08', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_identity_and_work_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fccbcd00e62af54c060fee99e93b326e739b6792d52a772ccfc026ced16565f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3048678-f852-5db8-a8af-ad3a8c3ff09f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1bb8a6ac-3a6e-54f2-9bb7-9d5aec70bc08', 1), 'fccbcd00e62af54c060fee99e93b326e739b6792d52a772ccfc026ced16565f4',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7677c959447ff1488ead99575762071beb766a7d16e191c2f282cfe1a16b0920.mp3', 1854, '2026-09-13 22:05:29.659932', '36029ce9991c8181abbdb03da5f8a017a47e5f3032e2b1e5ca6f739d7c125349', 'validated', '{"audio_key":"7677c959447ff1488ead99575762071beb766a7d16e191c2f282cfe1a16b0920","entity_key":"e_identity_and_work_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"36029ce9991c8181abbdb03da5f8a017a47e5f3032e2b1e5ca6f739d7c125349","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7677c959447ff1488ead99575762071beb766a7d16e191c2f282cfe1a16b0920.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_daily_routine_02 -> audio/generated/ko-KR/utterances/7fe30626ef95556c02bf74739cbab5b3ca4655b83a966dc8ec78355941de1c95.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2d3fbb68-d640-5e19-b246-81f0d583481b', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_daily_routine_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c9348da870dd4e9c6dd3f7917713083350ab1d5ef0bd1fe04d1a8200c4cdb4f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eadb1af9-e0de-5f0b-b22c-ee32a558d87f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2d3fbb68-d640-5e19-b246-81f0d583481b', 1), 'c9348da870dd4e9c6dd3f7917713083350ab1d5ef0bd1fe04d1a8200c4cdb4f4',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7fe30626ef95556c02bf74739cbab5b3ca4655b83a966dc8ec78355941de1c95.mp3', 1515, '2026-09-13 22:05:30.297431', '8675f25f912f9265f1f49aeeeb19031f77b5d2c254b5f329371418a7bfcf5290', 'validated', '{"audio_key":"7fe30626ef95556c02bf74739cbab5b3ca4655b83a966dc8ec78355941de1c95","entity_key":"u_daily_routine_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8675f25f912f9265f1f49aeeeb19031f77b5d2c254b5f329371418a7bfcf5290","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7fe30626ef95556c02bf74739cbab5b3ca4655b83a966dc8ec78355941de1c95.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_daily_routine_01_listen -> audio/generated/ko-KR/utterances/7fe30626ef95556c02bf74739cbab5b3ca4655b83a966dc8ec78355941de1c95.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('661bd4af-bb55-5ede-b375-9c731bb512cc', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_daily_routine_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c9348da870dd4e9c6dd3f7917713083350ab1d5ef0bd1fe04d1a8200c4cdb4f4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6b902fb-4bd8-551a-a552-95a1b5203c99', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('661bd4af-bb55-5ede-b375-9c731bb512cc', 1), 'c9348da870dd4e9c6dd3f7917713083350ab1d5ef0bd1fe04d1a8200c4cdb4f4',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7fe30626ef95556c02bf74739cbab5b3ca4655b83a966dc8ec78355941de1c95.mp3', 1515, '2026-09-13 22:05:30.297431', '8675f25f912f9265f1f49aeeeb19031f77b5d2c254b5f329371418a7bfcf5290', 'validated', '{"audio_key":"7fe30626ef95556c02bf74739cbab5b3ca4655b83a966dc8ec78355941de1c95","entity_key":"e_daily_routine_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8675f25f912f9265f1f49aeeeb19031f77b5d2c254b5f329371418a7bfcf5290","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7fe30626ef95556c02bf74739cbab5b3ca4655b83a966dc8ec78355941de1c95.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_daily_routine_04 -> audio/generated/ko-KR/utterances/8054c7baec63ae912cef488d9b6ace9b4c37642928a6cb2574a1c2db6ae0a0ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1771343d-3357-5d6e-8084-2634450bb550', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_daily_routine_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf333e43b0f3da6e68eecae0011695dd70a7356602328c743fc813af6a2300ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1cd4d6f9-a35a-569f-b1d7-f5b463e107c3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1771343d-3357-5d6e-8084-2634450bb550', 1), 'bf333e43b0f3da6e68eecae0011695dd70a7356602328c743fc813af6a2300ff',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/8054c7baec63ae912cef488d9b6ace9b4c37642928a6cb2574a1c2db6ae0a0ad.mp3', 1280, '2026-09-13 22:05:30.635942', 'c552ddd7d07cafee72177b875783655b80e86956ea1f352424b2397ac4dea273', 'validated', '{"audio_key":"8054c7baec63ae912cef488d9b6ace9b4c37642928a6cb2574a1c2db6ae0a0ad","entity_key":"u_daily_routine_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c552ddd7d07cafee72177b875783655b80e86956ea1f352424b2397ac4dea273","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/8054c7baec63ae912cef488d9b6ace9b4c37642928a6cb2574a1c2db6ae0a0ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_daily_routine_02_listen -> audio/generated/ko-KR/utterances/8054c7baec63ae912cef488d9b6ace9b4c37642928a6cb2574a1c2db6ae0a0ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e1f3ede7-5a93-566d-804c-d3d61fb349bd', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_daily_routine_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf333e43b0f3da6e68eecae0011695dd70a7356602328c743fc813af6a2300ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1471b80f-fd13-5d51-a149-6cc3b09f40f0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e1f3ede7-5a93-566d-804c-d3d61fb349bd', 1), 'bf333e43b0f3da6e68eecae0011695dd70a7356602328c743fc813af6a2300ff',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/8054c7baec63ae912cef488d9b6ace9b4c37642928a6cb2574a1c2db6ae0a0ad.mp3', 1280, '2026-09-13 22:05:30.635942', 'c552ddd7d07cafee72177b875783655b80e86956ea1f352424b2397ac4dea273', 'validated', '{"audio_key":"8054c7baec63ae912cef488d9b6ace9b4c37642928a6cb2574a1c2db6ae0a0ad","entity_key":"e_daily_routine_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c552ddd7d07cafee72177b875783655b80e86956ea1f352424b2397ac4dea273","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/8054c7baec63ae912cef488d9b6ace9b4c37642928a6cb2574a1c2db6ae0a0ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_getting_around_02 -> audio/generated/ko-KR/utterances/855868b7cdb4ec2d972a612663261e4f94b7dcd410f6ee98329b4d282560bfab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a7ea40d3-8796-5bd7-ab8d-2db108821b73', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_getting_around_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '49b647e2c6d19f197b52d016f62f2db28e177385115d4b4b8e39228d5037c352'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3bd0b6ff-6774-56f3-8410-f9eaa00b6271', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a7ea40d3-8796-5bd7-ab8d-2db108821b73', 1), '49b647e2c6d19f197b52d016f62f2db28e177385115d4b4b8e39228d5037c352',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/855868b7cdb4ec2d972a612663261e4f94b7dcd410f6ee98329b4d282560bfab.mp3', 1515, '2026-09-13 22:05:31.279264', '0cbac637e66d19be911ff87702cdb45db9baa96d73b665444e24c110e2acb418', 'validated', '{"audio_key":"855868b7cdb4ec2d972a612663261e4f94b7dcd410f6ee98329b4d282560bfab","entity_key":"u_getting_around_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0cbac637e66d19be911ff87702cdb45db9baa96d73b665444e24c110e2acb418","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/855868b7cdb4ec2d972a612663261e4f94b7dcd410f6ee98329b4d282560bfab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_getting_around_01_listen -> audio/generated/ko-KR/utterances/855868b7cdb4ec2d972a612663261e4f94b7dcd410f6ee98329b4d282560bfab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('d8d2b1c2-3a58-5abf-9eb1-7f5a9aa75856', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_getting_around_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '49b647e2c6d19f197b52d016f62f2db28e177385115d4b4b8e39228d5037c352'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7122f628-0ec6-570d-a3d1-b7a07eb84e7e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('d8d2b1c2-3a58-5abf-9eb1-7f5a9aa75856', 1), '49b647e2c6d19f197b52d016f62f2db28e177385115d4b4b8e39228d5037c352',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/855868b7cdb4ec2d972a612663261e4f94b7dcd410f6ee98329b4d282560bfab.mp3', 1515, '2026-09-13 22:05:31.279264', '0cbac637e66d19be911ff87702cdb45db9baa96d73b665444e24c110e2acb418', 'validated', '{"audio_key":"855868b7cdb4ec2d972a612663261e4f94b7dcd410f6ee98329b4d282560bfab","entity_key":"e_getting_around_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0cbac637e66d19be911ff87702cdb45db9baa96d73b665444e24c110e2acb418","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/855868b7cdb4ec2d972a612663261e4f94b7dcd410f6ee98329b4d282560bfab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_likes_and_dislikes_03 -> audio/generated/ko-KR/utterances/895f79a91fc99d879aa8476e9aeee0aecf934b12f553fb7fdef6108879e80fe1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a0c80d3d-63e0-5644-a4d6-7f4680bfbaed', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_likes_and_dislikes_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54b55b15adb50ee84bd6344bd5fed770a5c9ac82019d9db68c04bd848ca548a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e1fe8cb-6ade-5dac-972d-297a4c7ec1cf', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a0c80d3d-63e0-5644-a4d6-7f4680bfbaed', 1), '54b55b15adb50ee84bd6344bd5fed770a5c9ac82019d9db68c04bd848ca548a6',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/895f79a91fc99d879aa8476e9aeee0aecf934b12f553fb7fdef6108879e80fe1.mp3', 1619, '2026-09-13 22:05:31.719492', 'aa8759b65149f10de046c1b427b0899362b03d7a57d27c19a49e7a6a51a93291', 'validated', '{"audio_key":"895f79a91fc99d879aa8476e9aeee0aecf934b12f553fb7fdef6108879e80fe1","entity_key":"u_likes_and_dislikes_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"aa8759b65149f10de046c1b427b0899362b03d7a57d27c19a49e7a6a51a93291","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/895f79a91fc99d879aa8476e9aeee0aecf934b12f553fb7fdef6108879e80fe1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_likes_and_dislikes_01 -> audio/generated/ko-KR/utterances/8f6453f778d83659d675e3da7571685b11bd31e2e4f945f8bacec6a1c1700276.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a6457b37-8675-533e-9794-7e2474d66d57', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_likes_and_dislikes_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e7445fe4cc4a44709fb9646e494dca8c069f43a80d1e977680119de99310d52a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54b1797b-64d6-5441-9df8-ef402799c752', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a6457b37-8675-533e-9794-7e2474d66d57', 1), 'e7445fe4cc4a44709fb9646e494dca8c069f43a80d1e977680119de99310d52a',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/8f6453f778d83659d675e3da7571685b11bd31e2e4f945f8bacec6a1c1700276.mp3', 1750, '2026-09-13 22:05:32.335345', '943eef403ee7d8943a69457cae5bb7ad79dea7d0c5fd56f9e1d191c28f15482e', 'validated', '{"audio_key":"8f6453f778d83659d675e3da7571685b11bd31e2e4f945f8bacec6a1c1700276","entity_key":"u_likes_and_dislikes_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"943eef403ee7d8943a69457cae5bb7ad79dea7d0c5fd56f9e1d191c28f15482e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/8f6453f778d83659d675e3da7571685b11bd31e2e4f945f8bacec6a1c1700276.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_getting_around_01 -> audio/generated/ko-KR/utterances/9a5a40833483494efd454f20d7d98d8513b011bb1914232cb3df492555ef06db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('db067abb-aeb4-5035-b5ff-7ca1212c1b02', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_getting_around_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb6d9d2eb413c675104adc8c83e5f136753f50b3da8ff1adbe7e11bd8fc42662'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e61d4e2-6b30-576c-b3be-b1d57a49c98d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('db067abb-aeb4-5035-b5ff-7ca1212c1b02', 1), 'eb6d9d2eb413c675104adc8c83e5f136753f50b3da8ff1adbe7e11bd8fc42662',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/9a5a40833483494efd454f20d7d98d8513b011bb1914232cb3df492555ef06db.mp3', 1567, '2026-09-13 22:05:32.706974', 'ada800f25acb7fcd82523d0374343f2189b39c485b36d34f3182a2f469bc9fbb', 'validated', '{"audio_key":"9a5a40833483494efd454f20d7d98d8513b011bb1914232cb3df492555ef06db","entity_key":"u_getting_around_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ada800f25acb7fcd82523d0374343f2189b39c485b36d34f3182a2f469bc9fbb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/9a5a40833483494efd454f20d7d98d8513b011bb1914232cb3df492555ef06db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_shopping_basics_01 -> audio/generated/ko-KR/utterances/a62166e501a8201a508e80dd712aed665f484a475f139c9e8ca4d8bca6377014.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('78592789-d26c-5845-9d78-d6cef48ce36f', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_shopping_basics_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4fe2937d40d44d789bb732432b14180e959029618b70df77469741758a43868'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4b9a75c-8ad9-58c0-b5e5-35d6795e4891', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('78592789-d26c-5845-9d78-d6cef48ce36f', 1), 'e4fe2937d40d44d789bb732432b14180e959029618b70df77469741758a43868',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/a62166e501a8201a508e80dd712aed665f484a475f139c9e8ca4d8bca6377014.mp3', 1488, '2026-09-13 22:05:33.322217', 'ec2f7ce6f24518ffbbe7d28c01e0cc325c90bfd077d45299342c5ce76e26bb73', 'validated', '{"audio_key":"a62166e501a8201a508e80dd712aed665f484a475f139c9e8ca4d8bca6377014","entity_key":"u_shopping_basics_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ec2f7ce6f24518ffbbe7d28c01e0cc325c90bfd077d45299342c5ce76e26bb73","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/a62166e501a8201a508e80dd712aed665f484a475f139c9e8ca4d8bca6377014.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_where_things_are_04 -> audio/generated/ko-KR/utterances/ac0e8e6d97ee25ff6c0d55660aa65315142d0a66f0e363d922b6beac96e15d43.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('791d44d2-bb67-51a8-9ec4-7e05d5aece04', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_where_things_are_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da587f240939e10288c82757d2e862eb0647d80fa9a6ffacae81d4ccb40b86f0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3478fc11-404d-54e7-a439-1ff5cde20705', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('791d44d2-bb67-51a8-9ec4-7e05d5aece04', 1), 'da587f240939e10288c82757d2e862eb0647d80fa9a6ffacae81d4ccb40b86f0',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/ac0e8e6d97ee25ff6c0d55660aa65315142d0a66f0e363d922b6beac96e15d43.mp3', 1488, '2026-09-13 22:05:33.679699', '73a1eb6ed3f737650e35e0659f8ff728e4b2ba6b0a736306e33d2f2caeeac5d3', 'validated', '{"audio_key":"ac0e8e6d97ee25ff6c0d55660aa65315142d0a66f0e363d922b6beac96e15d43","entity_key":"u_where_things_are_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"73a1eb6ed3f737650e35e0659f8ff728e4b2ba6b0a736306e33d2f2caeeac5d3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/ac0e8e6d97ee25ff6c0d55660aa65315142d0a66f0e363d922b6beac96e15d43.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_where_things_are_02_listen -> audio/generated/ko-KR/utterances/ac0e8e6d97ee25ff6c0d55660aa65315142d0a66f0e363d922b6beac96e15d43.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1a7ae4e6-73d3-571b-950b-c06eff867018', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_where_things_are_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da587f240939e10288c82757d2e862eb0647d80fa9a6ffacae81d4ccb40b86f0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4032d5b4-5f31-5f0d-9407-c5d882a5b04e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1a7ae4e6-73d3-571b-950b-c06eff867018', 1), 'da587f240939e10288c82757d2e862eb0647d80fa9a6ffacae81d4ccb40b86f0',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/ac0e8e6d97ee25ff6c0d55660aa65315142d0a66f0e363d922b6beac96e15d43.mp3', 1488, '2026-09-13 22:05:33.679699', '73a1eb6ed3f737650e35e0659f8ff728e4b2ba6b0a736306e33d2f2caeeac5d3', 'validated', '{"audio_key":"ac0e8e6d97ee25ff6c0d55660aa65315142d0a66f0e363d922b6beac96e15d43","entity_key":"e_where_things_are_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"73a1eb6ed3f737650e35e0659f8ff728e4b2ba6b0a736306e33d2f2caeeac5d3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/ac0e8e6d97ee25ff6c0d55660aa65315142d0a66f0e363d922b6beac96e15d43.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_time_and_schedule_01 -> audio/generated/ko-KR/utterances/b03a3d30f4721baef9cad68ba0198e90fee0feb04e56b7b7c09d5d94fccee22c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9aac3cf0-35dc-55e6-9996-a40e43f8550c', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_time_and_schedule_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd3801cf6db95557ee0d4878d3841158ed0755253a0e8957da3efc26c249446ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e3ff294-b234-542a-adda-5097d198b2d4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9aac3cf0-35dc-55e6-9996-a40e43f8550c', 1), 'd3801cf6db95557ee0d4878d3841158ed0755253a0e8957da3efc26c249446ad',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/b03a3d30f4721baef9cad68ba0198e90fee0feb04e56b7b7c09d5d94fccee22c.mp3', 1515, '2026-09-13 22:05:34.315227', '8b47c60092f5f5266d53774cb6b37ff548a28400b5092d9b3ef466b9c2a70fa4', 'validated', '{"audio_key":"b03a3d30f4721baef9cad68ba0198e90fee0feb04e56b7b7c09d5d94fccee22c","entity_key":"u_time_and_schedule_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8b47c60092f5f5266d53774cb6b37ff548a28400b5092d9b3ef466b9c2a70fa4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/b03a3d30f4721baef9cad68ba0198e90fee0feb04e56b7b7c09d5d94fccee22c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_family_and_people_02 -> audio/generated/ko-KR/utterances/ba226b1def3ac8de4500a3769ba2c5bf2b9ed21e1aeaf7b44fe51532f4f82766.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('205ef730-3d8d-529f-a44e-9bf899fc67e9', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_family_and_people_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4d019cfa6551aa9cc5c6b48304217bb7f6175bf22eaa4461f59e17ee4f913da4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a1bf1fc-5dfd-57e3-8919-e86c384b5bfa', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('205ef730-3d8d-529f-a44e-9bf899fc67e9', 1), '4d019cfa6551aa9cc5c6b48304217bb7f6175bf22eaa4461f59e17ee4f913da4',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/ba226b1def3ac8de4500a3769ba2c5bf2b9ed21e1aeaf7b44fe51532f4f82766.mp3', 1697, '2026-09-13 22:05:34.724033', 'cb099e98746c37362d0349eab4cd68be9487ee8075b7c05477d7050e233ce0b3', 'validated', '{"audio_key":"ba226b1def3ac8de4500a3769ba2c5bf2b9ed21e1aeaf7b44fe51532f4f82766","entity_key":"u_family_and_people_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cb099e98746c37362d0349eab4cd68be9487ee8075b7c05477d7050e233ce0b3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/ba226b1def3ac8de4500a3769ba2c5bf2b9ed21e1aeaf7b44fe51532f4f82766.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_family_and_people_01_listen -> audio/generated/ko-KR/utterances/ba226b1def3ac8de4500a3769ba2c5bf2b9ed21e1aeaf7b44fe51532f4f82766.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('800bcd6f-50c1-5d15-8470-0916be47d17d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_family_and_people_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4d019cfa6551aa9cc5c6b48304217bb7f6175bf22eaa4461f59e17ee4f913da4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80e38d05-e3d3-5184-b429-47a649b6bb16', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('800bcd6f-50c1-5d15-8470-0916be47d17d', 1), '4d019cfa6551aa9cc5c6b48304217bb7f6175bf22eaa4461f59e17ee4f913da4',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/ba226b1def3ac8de4500a3769ba2c5bf2b9ed21e1aeaf7b44fe51532f4f82766.mp3', 1697, '2026-09-13 22:05:34.724033', 'cb099e98746c37362d0349eab4cd68be9487ee8075b7c05477d7050e233ce0b3', 'validated', '{"audio_key":"ba226b1def3ac8de4500a3769ba2c5bf2b9ed21e1aeaf7b44fe51532f4f82766","entity_key":"e_family_and_people_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cb099e98746c37362d0349eab4cd68be9487ee8075b7c05477d7050e233ce0b3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/ba226b1def3ac8de4500a3769ba2c5bf2b9ed21e1aeaf7b44fe51532f4f82766.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_cafe_orders_01 -> audio/generated/ko-KR/utterances/ba4f22d72c60bbdcb31f255f6f9efa657265c65b6ff9117fa38593dd3881f218.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2a45a4f0-714f-5fe2-a713-169593c793ba', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_cafe_orders_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae1e358bac3eb55c30c99ae7b114df38339b3fefd2f826b76e04550cf440e83b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('147cb3b2-453e-53f4-89a3-b2132e705ef7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2a45a4f0-714f-5fe2-a713-169593c793ba', 1), 'ae1e358bac3eb55c30c99ae7b114df38339b3fefd2f826b76e04550cf440e83b',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/ba4f22d72c60bbdcb31f255f6f9efa657265c65b6ff9117fa38593dd3881f218.mp3', 1567, '2026-09-13 22:05:35.374592', '14e8c81e9ee6afb83e5ab891837e8e4e41d3854ef7f751875da1f8af9f3c9b14', 'validated', '{"audio_key":"ba4f22d72c60bbdcb31f255f6f9efa657265c65b6ff9117fa38593dd3881f218","entity_key":"u_cafe_orders_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"14e8c81e9ee6afb83e5ab891837e8e4e41d3854ef7f751875da1f8af9f3c9b14","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/ba4f22d72c60bbdcb31f255f6f9efa657265c65b6ff9117fa38593dd3881f218.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_shopping_basics_02 -> audio/generated/ko-KR/utterances/bf12fbcede13a2ef71502bb6ad56b3c51076e3d9dc829fcad85e323a3b96249b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c06ce876-d8b4-5767-9526-c42c84a98c16', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_shopping_basics_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b332361b479b105b2a370da3b15a39e8b53dccc78b078f31389185a9a725c272'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('23972ed1-a8b5-5518-ab5c-f672c75b7316', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c06ce876-d8b4-5767-9526-c42c84a98c16', 1), 'b332361b479b105b2a370da3b15a39e8b53dccc78b078f31389185a9a725c272',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/bf12fbcede13a2ef71502bb6ad56b3c51076e3d9dc829fcad85e323a3b96249b.mp3', 1280, '2026-09-13 22:05:35.913005', '39076dadeea970c50cb35a15bc3123943bc34fc76ce2177366a42f19ca776b04', 'validated', '{"audio_key":"bf12fbcede13a2ef71502bb6ad56b3c51076e3d9dc829fcad85e323a3b96249b","entity_key":"u_shopping_basics_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"39076dadeea970c50cb35a15bc3123943bc34fc76ce2177366a42f19ca776b04","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/bf12fbcede13a2ef71502bb6ad56b3c51076e3d9dc829fcad85e323a3b96249b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_shopping_basics_01_listen -> audio/generated/ko-KR/utterances/bf12fbcede13a2ef71502bb6ad56b3c51076e3d9dc829fcad85e323a3b96249b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e3c97d0b-6f0e-5028-adcb-54300a42b8ae', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_shopping_basics_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b332361b479b105b2a370da3b15a39e8b53dccc78b078f31389185a9a725c272'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53dfcc42-b8c2-5aa4-958a-acbf7baa710b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e3c97d0b-6f0e-5028-adcb-54300a42b8ae', 1), 'b332361b479b105b2a370da3b15a39e8b53dccc78b078f31389185a9a725c272',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/bf12fbcede13a2ef71502bb6ad56b3c51076e3d9dc829fcad85e323a3b96249b.mp3', 1280, '2026-09-13 22:05:35.913005', '39076dadeea970c50cb35a15bc3123943bc34fc76ce2177366a42f19ca776b04', 'validated', '{"audio_key":"bf12fbcede13a2ef71502bb6ad56b3c51076e3d9dc829fcad85e323a3b96249b","entity_key":"e_shopping_basics_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"39076dadeea970c50cb35a15bc3123943bc34fc76ce2177366a42f19ca776b04","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/bf12fbcede13a2ef71502bb6ad56b3c51076e3d9dc829fcad85e323a3b96249b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_where_things_are_01 -> audio/generated/ko-KR/utterances/bf96b410bd21d14c5876a663120247b9f743249a19f2872d493821255a9bfff5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9e1cf610-8b00-55e5-b94a-1d9ac1909d13', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_where_things_are_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4facd51bc0586ed0973addae98bea35a3854bdeb9821f0699f6e9bdfd4b02edd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f138dba-ff27-585a-aeba-c89e47c59bac', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9e1cf610-8b00-55e5-b94a-1d9ac1909d13', 1), '4facd51bc0586ed0973addae98bea35a3854bdeb9821f0699f6e9bdfd4b02edd',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/bf96b410bd21d14c5876a663120247b9f743249a19f2872d493821255a9bfff5.mp3', 1515, '2026-09-13 22:05:36.352595', '14e26faac7daf4d59ada2e0b73f721b701eb82a45b3e01cc8cc080599280b23a', 'validated', '{"audio_key":"bf96b410bd21d14c5876a663120247b9f743249a19f2872d493821255a9bfff5","entity_key":"u_where_things_are_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"14e26faac7daf4d59ada2e0b73f721b701eb82a45b3e01cc8cc080599280b23a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/bf96b410bd21d14c5876a663120247b9f743249a19f2872d493821255a9bfff5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_getting_around_04 -> audio/generated/ko-KR/utterances/bff20c9a30b5668015871c399b880965776f42e3127fa4ecc0481d802f7e34fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('87c5b319-4f6d-5d92-b91f-a8af5b0646bc', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_getting_around_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f20b559432d26b890e8d80066676f6f87c78879682313a2257679d9be4f5ff5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8612a7c6-63a7-5c3b-b4a0-d333f967f621', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('87c5b319-4f6d-5d92-b91f-a8af5b0646bc', 1), '3f20b559432d26b890e8d80066676f6f87c78879682313a2257679d9be4f5ff5',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/bff20c9a30b5668015871c399b880965776f42e3127fa4ecc0481d802f7e34fe.mp3', 2324, '2026-09-13 22:05:37.025270', '3ec9d9d3142edf24cc554eea0542c322ebc8a835defd1de9244f5fef2ee33909', 'validated', '{"audio_key":"bff20c9a30b5668015871c399b880965776f42e3127fa4ecc0481d802f7e34fe","entity_key":"u_getting_around_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3ec9d9d3142edf24cc554eea0542c322ebc8a835defd1de9244f5fef2ee33909","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/bff20c9a30b5668015871c399b880965776f42e3127fa4ecc0481d802f7e34fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_getting_around_02_listen -> audio/generated/ko-KR/utterances/bff20c9a30b5668015871c399b880965776f42e3127fa4ecc0481d802f7e34fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('140046e0-d724-5fb7-b514-1bbad7a99427', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_getting_around_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f20b559432d26b890e8d80066676f6f87c78879682313a2257679d9be4f5ff5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a31e26ff-47c9-51ff-93d4-6d999abc6798', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('140046e0-d724-5fb7-b514-1bbad7a99427', 1), '3f20b559432d26b890e8d80066676f6f87c78879682313a2257679d9be4f5ff5',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/bff20c9a30b5668015871c399b880965776f42e3127fa4ecc0481d802f7e34fe.mp3', 2324, '2026-09-13 22:05:37.025270', '3ec9d9d3142edf24cc554eea0542c322ebc8a835defd1de9244f5fef2ee33909', 'validated', '{"audio_key":"bff20c9a30b5668015871c399b880965776f42e3127fa4ecc0481d802f7e34fe","entity_key":"e_getting_around_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3ec9d9d3142edf24cc554eea0542c322ebc8a835defd1de9244f5fef2ee33909","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/bff20c9a30b5668015871c399b880965776f42e3127fa4ecc0481d802f7e34fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_shopping_basics_04 -> audio/generated/ko-KR/utterances/c2b82abd9308c73911fd3bd3bce5a663347cf6c2082da31c1f0639297fa88c68.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e0298d96-cc01-5ca3-89c2-88e411719af1', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_shopping_basics_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e5ffe5e8c1d6339d6bcf553ee9ea7d681f1b7a39962110e44da3c4a68513fa63'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('524956ff-f514-552e-be53-7fc64fd03b6e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e0298d96-cc01-5ca3-89c2-88e411719af1', 1), 'e5ffe5e8c1d6339d6bcf553ee9ea7d681f1b7a39962110e44da3c4a68513fa63',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c2b82abd9308c73911fd3bd3bce5a663347cf6c2082da31c1f0639297fa88c68.mp3', 1488, '2026-09-13 22:05:37.361597', '3a9223485a9782c4ddca419e14d9bb83c2b14fe30c670ae0d187128fcac8d756', 'validated', '{"audio_key":"c2b82abd9308c73911fd3bd3bce5a663347cf6c2082da31c1f0639297fa88c68","entity_key":"u_shopping_basics_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3a9223485a9782c4ddca419e14d9bb83c2b14fe30c670ae0d187128fcac8d756","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c2b82abd9308c73911fd3bd3bce5a663347cf6c2082da31c1f0639297fa88c68.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_shopping_basics_02_listen -> audio/generated/ko-KR/utterances/c2b82abd9308c73911fd3bd3bce5a663347cf6c2082da31c1f0639297fa88c68.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2c28b86c-ce59-5cb8-9a61-bf3f0914e0cf', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_shopping_basics_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e5ffe5e8c1d6339d6bcf553ee9ea7d681f1b7a39962110e44da3c4a68513fa63'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62689b2e-27b0-506f-bbff-f128e12e9708', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2c28b86c-ce59-5cb8-9a61-bf3f0914e0cf', 1), 'e5ffe5e8c1d6339d6bcf553ee9ea7d681f1b7a39962110e44da3c4a68513fa63',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c2b82abd9308c73911fd3bd3bce5a663347cf6c2082da31c1f0639297fa88c68.mp3', 1488, '2026-09-13 22:05:37.361597', '3a9223485a9782c4ddca419e14d9bb83c2b14fe30c670ae0d187128fcac8d756', 'validated', '{"audio_key":"c2b82abd9308c73911fd3bd3bce5a663347cf6c2082da31c1f0639297fa88c68","entity_key":"e_shopping_basics_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3a9223485a9782c4ddca419e14d9bb83c2b14fe30c670ae0d187128fcac8d756","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c2b82abd9308c73911fd3bd3bce5a663347cf6c2082da31c1f0639297fa88c68.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_getting_around_03 -> audio/generated/ko-KR/utterances/d43ad8d8d58d7bf228f54972c60ccd3468e4b5b2a1b63effb13ba09b6b2f2975.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('12a410f2-3b97-54eb-ab01-d51669e7ff92', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_getting_around_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd244c734119c96700731eddc5f750c978f9aff91474ce08a2570dd07c023e39a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ecb0a53-9974-5269-b211-e3b16480b6db', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('12a410f2-3b97-54eb-ab01-d51669e7ff92', 1), 'd244c734119c96700731eddc5f750c978f9aff91474ce08a2570dd07c023e39a',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d43ad8d8d58d7bf228f54972c60ccd3468e4b5b2a1b63effb13ba09b6b2f2975.mp3', 1488, '2026-09-13 22:05:38.017146', 'f27ae962906d302db90c839aa46ce3ebac83e5954282424234a41b120f0e8e5a', 'validated', '{"audio_key":"d43ad8d8d58d7bf228f54972c60ccd3468e4b5b2a1b63effb13ba09b6b2f2975","entity_key":"u_getting_around_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f27ae962906d302db90c839aa46ce3ebac83e5954282424234a41b120f0e8e5a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d43ad8d8d58d7bf228f54972c60ccd3468e4b5b2a1b63effb13ba09b6b2f2975.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_time_and_schedule_02 -> audio/generated/ko-KR/utterances/d7711970285b5e2d388e825f73475317da31d1414a6dd4e4291635c01d256593.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f18820fd-cce6-5fdd-ab1c-8d4dfe7af662', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_time_and_schedule_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1cb15077820b1183d8b2ef37cca49802559fdde2c1beafa3168e631df4377fe2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1dd59d0c-5a60-5b0b-b051-7547a5d5fc24', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f18820fd-cce6-5fdd-ab1c-8d4dfe7af662', 1), '1cb15077820b1183d8b2ef37cca49802559fdde2c1beafa3168e631df4377fe2',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d7711970285b5e2d388e825f73475317da31d1414a6dd4e4291635c01d256593.mp3', 1201, '2026-09-13 22:05:38.317552', '8ebfa7ff31e431914e897a1542604259d9750974c0d3ecbd6ffa79aeb22d5579', 'validated', '{"audio_key":"d7711970285b5e2d388e825f73475317da31d1414a6dd4e4291635c01d256593","entity_key":"u_time_and_schedule_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8ebfa7ff31e431914e897a1542604259d9750974c0d3ecbd6ffa79aeb22d5579","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d7711970285b5e2d388e825f73475317da31d1414a6dd4e4291635c01d256593.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_time_and_schedule_01_listen -> audio/generated/ko-KR/utterances/d7711970285b5e2d388e825f73475317da31d1414a6dd4e4291635c01d256593.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('78f9c76f-9681-5c08-924c-334f3312cf01', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_time_and_schedule_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1cb15077820b1183d8b2ef37cca49802559fdde2c1beafa3168e631df4377fe2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21e9b44e-d6ea-54e1-bbf6-c445925cd9cf', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('78f9c76f-9681-5c08-924c-334f3312cf01', 1), '1cb15077820b1183d8b2ef37cca49802559fdde2c1beafa3168e631df4377fe2',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d7711970285b5e2d388e825f73475317da31d1414a6dd4e4291635c01d256593.mp3', 1201, '2026-09-13 22:05:38.317552', '8ebfa7ff31e431914e897a1542604259d9750974c0d3ecbd6ffa79aeb22d5579', 'validated', '{"audio_key":"d7711970285b5e2d388e825f73475317da31d1414a6dd4e4291635c01d256593","entity_key":"e_time_and_schedule_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8ebfa7ff31e431914e897a1542604259d9750974c0d3ecbd6ffa79aeb22d5579","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d7711970285b5e2d388e825f73475317da31d1414a6dd4e4291635c01d256593.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_time_and_schedule_03 -> audio/generated/ko-KR/utterances/d807567e2c1492454f07c9ea766f3f4798cf52c736a2eb97f21616248270e1e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cbe66a33-ffe6-570b-b192-e28b86ef2de1', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_time_and_schedule_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fcc2422335099525b95165f85d9a426fdb56155a20e4b3bf0159f283c90f25b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba858c2d-f6ca-5cc1-9357-20ab2cb45931', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cbe66a33-ffe6-570b-b192-e28b86ef2de1', 1), 'fcc2422335099525b95165f85d9a426fdb56155a20e4b3bf0159f283c90f25b9',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d807567e2c1492454f07c9ea766f3f4798cf52c736a2eb97f21616248270e1e4.mp3', 1515, '2026-09-13 22:05:38.997369', 'b20379e39a83833d892d38a9e23595f54419a7d97caf5ea22b994d5f901cad1e', 'validated', '{"audio_key":"d807567e2c1492454f07c9ea766f3f4798cf52c736a2eb97f21616248270e1e4","entity_key":"u_time_and_schedule_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b20379e39a83833d892d38a9e23595f54419a7d97caf5ea22b994d5f901cad1e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d807567e2c1492454f07c9ea766f3f4798cf52c736a2eb97f21616248270e1e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_family_and_people_01 -> audio/generated/ko-KR/utterances/d8edf3d3027f1a5ca81698022c539ee4c823bd6201d9cfcf0b981e99f2bd0893.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ed6ae49d-2260-5a13-b05a-9d495c4c7606', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_family_and_people_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '59e2ad288497ddf3ebb209b310d6a86f3c81b47b5195d92d7ab1942c21f78e62'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da9f7e44-df2c-578b-8d65-4e38cf1aa035', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ed6ae49d-2260-5a13-b05a-9d495c4c7606', 1), '59e2ad288497ddf3ebb209b310d6a86f3c81b47b5195d92d7ab1942c21f78e62',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d8edf3d3027f1a5ca81698022c539ee4c823bd6201d9cfcf0b981e99f2bd0893.mp3', 1384, '2026-09-13 22:05:39.320151', 'df3cb30999c92fd96d1f4194f2dd9e1b80c92abc5456756861e6873459311270', 'validated', '{"audio_key":"d8edf3d3027f1a5ca81698022c539ee4c823bd6201d9cfcf0b981e99f2bd0893","entity_key":"u_family_and_people_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"df3cb30999c92fd96d1f4194f2dd9e1b80c92abc5456756861e6873459311270","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d8edf3d3027f1a5ca81698022c539ee4c823bd6201d9cfcf0b981e99f2bd0893.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_daily_routine_03 -> audio/generated/ko-KR/utterances/d9c20d5a8adf2632e476f2cd9f3e4bfeb7b2d279db27d5b63b5a761ecc174bb5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b90f0f97-4fbf-5b01-b02d-2d205ad6bcf2', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_daily_routine_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '49d8faadfb2edf872f1cc766c8bf7d726cf7260996b66619291954b4dd23a970'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b12b2c6d-7b64-541f-9b9c-24c092be44b3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b90f0f97-4fbf-5b01-b02d-2d205ad6bcf2', 1), '49d8faadfb2edf872f1cc766c8bf7d726cf7260996b66619291954b4dd23a970',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d9c20d5a8adf2632e476f2cd9f3e4bfeb7b2d279db27d5b63b5a761ecc174bb5.mp3', 1567, '2026-09-13 22:05:39.996567', '1af621c434cb9e34b11f0a857eaaa284a5534b061232cf564ef60dbd02d12215', 'validated', '{"audio_key":"d9c20d5a8adf2632e476f2cd9f3e4bfeb7b2d279db27d5b63b5a761ecc174bb5","entity_key":"u_daily_routine_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1af621c434cb9e34b11f0a857eaaa284a5534b061232cf564ef60dbd02d12215","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d9c20d5a8adf2632e476f2cd9f3e4bfeb7b2d279db27d5b63b5a761ecc174bb5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_family_and_people_03 -> audio/generated/ko-KR/utterances/e02eb410e98164cda39a1c622f20a393f2e7a46853d55fbe3dcbfa9c428e5626.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('545b9ecc-f650-5057-8fdd-c2f05bb77e02', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_family_and_people_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc9237b6cf8b535048b3baef2db7bf4af43af1e830c4df3a1935b53455c8b53b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce2a6f51-80c9-5330-95d6-3281af103cb6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('545b9ecc-f650-5057-8fdd-c2f05bb77e02', 1), 'cc9237b6cf8b535048b3baef2db7bf4af43af1e830c4df3a1935b53455c8b53b',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/e02eb410e98164cda39a1c622f20a393f2e7a46853d55fbe3dcbfa9c428e5626.mp3', 1750, '2026-09-13 22:05:40.405622', '30a06c1c80eeaa819b9187c4a71291fb96b2e9a76978f5f804d2727b7711665a', 'validated', '{"audio_key":"e02eb410e98164cda39a1c622f20a393f2e7a46853d55fbe3dcbfa9c428e5626","entity_key":"u_family_and_people_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"30a06c1c80eeaa819b9187c4a71291fb96b2e9a76978f5f804d2727b7711665a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/e02eb410e98164cda39a1c622f20a393f2e7a46853d55fbe3dcbfa9c428e5626.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a1_day_out_capstone_04 -> audio/generated/ko-KR/utterances/e3bc3c7a718f1f9e6dee70d42b5ec77d2e311c1a76c5ae9c29b3f4b14702b299.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e343e70e-a06c-5aef-8056-b56ec7f4e0ec', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a1_day_out_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '229c17a2344fa456cecf068ddae82a7a355387461149acf26af8e949944d4912'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f59a22d-2c07-5d95-bc0e-1a017cbead17', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e343e70e-a06c-5aef-8056-b56ec7f4e0ec', 1), '229c17a2344fa456cecf068ddae82a7a355387461149acf26af8e949944d4912',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/e3bc3c7a718f1f9e6dee70d42b5ec77d2e311c1a76c5ae9c29b3f4b14702b299.mp3', 2768, '2026-09-13 22:05:41.109734', '65d25addfbdef742646058fc51a2aabb49edb4abbcdc88b8bc2139fd692a73be', 'validated', '{"audio_key":"e3bc3c7a718f1f9e6dee70d42b5ec77d2e311c1a76c5ae9c29b3f4b14702b299","entity_key":"u_a1_day_out_capstone_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"65d25addfbdef742646058fc51a2aabb49edb4abbcdc88b8bc2139fd692a73be","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/e3bc3c7a718f1f9e6dee70d42b5ec77d2e311c1a76c5ae9c29b3f4b14702b299.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_a1_day_out_capstone_02_listen -> audio/generated/ko-KR/utterances/e3bc3c7a718f1f9e6dee70d42b5ec77d2e311c1a76c5ae9c29b3f4b14702b299.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9113e6c5-2ac6-5f57-809a-af038da0894d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_a1_day_out_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '229c17a2344fa456cecf068ddae82a7a355387461149acf26af8e949944d4912'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c88ad03-26c7-56bc-9951-3e7b1a99775d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9113e6c5-2ac6-5f57-809a-af038da0894d', 1), '229c17a2344fa456cecf068ddae82a7a355387461149acf26af8e949944d4912',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/e3bc3c7a718f1f9e6dee70d42b5ec77d2e311c1a76c5ae9c29b3f4b14702b299.mp3', 2768, '2026-09-13 22:05:41.109734', '65d25addfbdef742646058fc51a2aabb49edb4abbcdc88b8bc2139fd692a73be', 'validated', '{"audio_key":"e3bc3c7a718f1f9e6dee70d42b5ec77d2e311c1a76c5ae9c29b3f4b14702b299","entity_key":"e_a1_day_out_capstone_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"65d25addfbdef742646058fc51a2aabb49edb4abbcdc88b8bc2139fd692a73be","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/e3bc3c7a718f1f9e6dee70d42b5ec77d2e311c1a76c5ae9c29b3f4b14702b299.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_identity_and_work_03 -> audio/generated/ko-KR/utterances/eef47246d6ce27a6830f4d01b4a65c93b66bd37d07778adb8d5593f49789ebef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a9b86c85-e217-506f-9ffa-07777b42aa00', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_identity_and_work_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4c8e544dfe301d06503ad76d69efb80826f504b87b0a2cdbf3c0fea4bee456c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6fc5a57b-5867-541a-96b3-bf9cc29be902', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a9b86c85-e217-506f-9ffa-07777b42aa00', 1), 'a4c8e544dfe301d06503ad76d69efb80826f504b87b0a2cdbf3c0fea4bee456c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/eef47246d6ce27a6830f4d01b4a65c93b66bd37d07778adb8d5593f49789ebef.mp3', 1619, '2026-09-13 21:06:07.532630', 'fe458c7abe75d18d0c5b8ccacecd79ce45f07ce16533925d52245f69a2d7640d', 'validated', '{"audio_key":"eef47246d6ce27a6830f4d01b4a65c93b66bd37d07778adb8d5593f49789ebef","entity_key":"u_identity_and_work_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fe458c7abe75d18d0c5b8ccacecd79ce45f07ce16533925d52245f69a2d7640d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/eef47246d6ce27a6830f4d01b4a65c93b66bd37d07778adb8d5593f49789ebef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_where_things_are_02 -> audio/generated/ko-KR/utterances/fbbc69b3c7cba9b0e6bdf276e82512b94b4d3a18b2fc9bc51bce2a3c0290ac39.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c5a50847-2e4f-5638-bcc3-c3fef1fec071', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_where_things_are_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c8b69e87de36558d3f4953794dc35380ba672c5434c5cf617e1ff90ddc79d58'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46544de2-0341-570a-896d-acdb98f02578', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c5a50847-2e4f-5638-bcc3-c3fef1fec071', 1), '0c8b69e87de36558d3f4953794dc35380ba672c5434c5cf617e1ff90ddc79d58',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/fbbc69b3c7cba9b0e6bdf276e82512b94b4d3a18b2fc9bc51bce2a3c0290ac39.mp3', 1567, '2026-09-13 22:05:41.420112', '428006a37c4c6c074c63f81234199dc00ddb95a8af5a7a34bed571b855b10fa5', 'validated', '{"audio_key":"fbbc69b3c7cba9b0e6bdf276e82512b94b4d3a18b2fc9bc51bce2a3c0290ac39","entity_key":"u_where_things_are_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"428006a37c4c6c074c63f81234199dc00ddb95a8af5a7a34bed571b855b10fa5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/fbbc69b3c7cba9b0e6bdf276e82512b94b4d3a18b2fc9bc51bce2a3c0290ac39.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_where_things_are_01_listen -> audio/generated/ko-KR/utterances/fbbc69b3c7cba9b0e6bdf276e82512b94b4d3a18b2fc9bc51bce2a3c0290ac39.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('db686f4c-d47c-5cea-8267-1638767f932c', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_where_things_are_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c8b69e87de36558d3f4953794dc35380ba672c5434c5cf617e1ff90ddc79d58'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf13f6c9-95d9-563e-bf94-56e2cee396aa', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('db686f4c-d47c-5cea-8267-1638767f932c', 1), '0c8b69e87de36558d3f4953794dc35380ba672c5434c5cf617e1ff90ddc79d58',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/fbbc69b3c7cba9b0e6bdf276e82512b94b4d3a18b2fc9bc51bce2a3c0290ac39.mp3', 1567, '2026-09-13 22:05:41.420112', '428006a37c4c6c074c63f81234199dc00ddb95a8af5a7a34bed571b855b10fa5', 'validated', '{"audio_key":"fbbc69b3c7cba9b0e6bdf276e82512b94b4d3a18b2fc9bc51bce2a3c0290ac39","entity_key":"e_where_things_are_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"428006a37c4c6c074c63f81234199dc00ddb95a8af5a7a34bed571b855b10fa5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/fbbc69b3c7cba9b0e6bdf276e82512b94b4d3a18b2fc9bc51bce2a3c0290ac39.mp3"}'
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

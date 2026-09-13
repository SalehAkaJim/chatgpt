-- Generated audio link import for ko-KR B1
-- Source manifest: audio/manifests/ko/B1.json
-- Generated rows: 260
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'ko' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'ko-KR' LIMIT 1);
START TRANSACTION;

-- d_opinions_and_evidence_02:1 -> audio/generated/ko-KR/dialogues/03f522abbc0482b2252551dafe190e240e8f6869036419d7563f3b10623f438d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3f708b87-d2f8-57cb-a0fe-6d7a1e57c3cd', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_evidence_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd941a92750cb0393e90d8750fbea5eaf71fa5ee641a1fc1a593a30d1e3ca87d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8cc1377-0eb3-5331-86b1-f325209468ce', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3f708b87-d2f8-57cb-a0fe-6d7a1e57c3cd', 1), 'cd941a92750cb0393e90d8750fbea5eaf71fa5ee641a1fc1a593a30d1e3ca87d',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/03f522abbc0482b2252551dafe190e240e8f6869036419d7563f3b10623f438d.mp3', 2089, '2026-09-13 22:59:02.158619', '1a1505c6dd8bbc8783da4c612e53a61baf4b8f61777d60e12adcc5a6919a827c', 'validated', '{"audio_key":"03f522abbc0482b2252551dafe190e240e8f6869036419d7563f3b10623f438d","entity_key":"d_opinions_and_evidence_02:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1a1505c6dd8bbc8783da4c612e53a61baf4b8f61777d60e12adcc5a6919a827c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/03f522abbc0482b2252551dafe190e240e8f6869036419d7563f3b10623f438d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_and_solutions_02:3 -> audio/generated/ko-KR/dialogues/045c0b20c13daaf738aaa9d6b3279968e9202e952220b37b80644f86f71809f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6551f11e-3af7-5176-8485-c5385941c32d', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_and_solutions_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa6eb33cc6c1b68f0362b3c1ed53477a3f85a423bec98102740b1b78f05dd517'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b0a49814-16f3-5787-8e8e-c8a2cc52703a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6551f11e-3af7-5176-8485-c5385941c32d', 1), 'fa6eb33cc6c1b68f0362b3c1ed53477a3f85a423bec98102740b1b78f05dd517',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/045c0b20c13daaf738aaa9d6b3279968e9202e952220b37b80644f86f71809f8.mp3', 2873, '2026-09-13 22:59:02.264635', 'ee7371e7071c5aef3c921800aad7e562fc4dd2b39447326b172b03bab6250568', 'validated', '{"audio_key":"045c0b20c13daaf738aaa9d6b3279968e9202e952220b37b80644f86f71809f8","entity_key":"d_problems_and_solutions_02:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ee7371e7071c5aef3c921800aad7e562fc4dd2b39447326b172b03bab6250568","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/045c0b20c13daaf738aaa9d6b3279968e9202e952220b37b80644f86f71809f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_seoul_project_capstone_02:4 -> audio/generated/ko-KR/dialogues/072bcc8804068ea745e265116e69ff40e5a7e8ef21e9cafeeb1dd7db9c84601a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('657a7ca2-aea4-50ea-a8ab-4b8f59ec1fa9', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_seoul_project_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70d8cee59249e8699a704566e9f4ce519d5aee0ce64fccfe5c613a0f07b3b607'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('952f77c4-96de-5c0a-8fb1-1f4c6c6d7961', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('657a7ca2-aea4-50ea-a8ab-4b8f59ec1fa9', 1), '70d8cee59249e8699a704566e9f4ce519d5aee0ce64fccfe5c613a0f07b3b607',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/072bcc8804068ea745e265116e69ff40e5a7e8ef21e9cafeeb1dd7db9c84601a.mp3', 2873, '2026-09-13 22:59:03.462558', 'dfa402cfc0c2099f02e5cea4772524fb5b28063405cd66343ba3dbbcbab1f5b6', 'validated', '{"audio_key":"072bcc8804068ea745e265116e69ff40e5a7e8ef21e9cafeeb1dd7db9c84601a","entity_key":"d_b1_seoul_project_capstone_02:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dfa402cfc0c2099f02e5cea4772524fb5b28063405cd66343ba3dbbcbab1f5b6","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/072bcc8804068ea745e265116e69ff40e5a7e8ef21e9cafeeb1dd7db9c84601a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conditions_and_consequences_01:3 -> audio/generated/ko-KR/dialogues/09fc81ff4fe11b574655a32b82352441b2aa0f37659da4c2b4981000ff9f5cd4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eb5674ef-f5a4-5441-8d1d-a3dec3658186', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conditions_and_consequences_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '742b9a4ba21e8036eac55ce9ac879944f6e546b29f0f7bd2b4ffc0ea613c5a39'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a7b4b59-bafd-5514-8efa-322a67d024af', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eb5674ef-f5a4-5441-8d1d-a3dec3658186', 1), '742b9a4ba21e8036eac55ce9ac879944f6e546b29f0f7bd2b4ffc0ea613c5a39',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/09fc81ff4fe11b574655a32b82352441b2aa0f37659da4c2b4981000ff9f5cd4.mp3', 1488, '2026-09-13 22:59:03.296102', '4b8d1a47aacca983b09a12eff775909f3755e60cb60f9623f8c77c72ee7d0ccf', 'validated', '{"audio_key":"09fc81ff4fe11b574655a32b82352441b2aa0f37659da4c2b4981000ff9f5cd4","entity_key":"d_conditions_and_consequences_01:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4b8d1a47aacca983b09a12eff775909f3755e60cb60f9623f8c77c72ee7d0ccf","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/09fc81ff4fe11b574655a32b82352441b2aa0f37659da4c2b4981000ff9f5cd4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_storytelling_sequence_01:3 -> audio/generated/ko-KR/dialogues/0e38de85001c4715a5fd27e89bfb3c8e6d1042a9fc40e0c7eba4f9f217e94ba9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0cab5f64-e7d3-5ae8-9a68-ebcba61f820b', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_storytelling_sequence_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c560530df428f1ecaa588dda6b954e4a1f61bebb87741c20e7797d245a11a70b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c306a15d-97e7-53c0-af05-055e63e9925e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0cab5f64-e7d3-5ae8-9a68-ebcba61f820b', 1), 'c560530df428f1ecaa588dda6b954e4a1f61bebb87741c20e7797d245a11a70b',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/0e38de85001c4715a5fd27e89bfb3c8e6d1042a9fc40e0c7eba4f9f217e94ba9.mp3', 1567, '2026-09-13 22:59:04.396996', '9f69fd16f5afec294f61abd3cd8d5707c6bf95da11ef00bb5def542037c7b015', 'validated', '{"audio_key":"0e38de85001c4715a5fd27e89bfb3c8e6d1042a9fc40e0c7eba4f9f217e94ba9","entity_key":"d_storytelling_sequence_01:3","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9f69fd16f5afec294f61abd3cd8d5707c6bf95da11ef00bb5def542037c7b015","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/0e38de85001c4715a5fd27e89bfb3c8e6d1042a9fc40e0c7eba4f9f217e94ba9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_and_effort_02:1 -> audio/generated/ko-KR/dialogues/11aa027c3ea005ac5547ab31af25972d7a99b3f7d123df8e93f9a3d5fc300c40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b5736b3d-5e67-5d41-85a4-a47aaf1e9ccc', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_and_effort_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '54803f8be8ceca5b51776460d4a35ab9e8078db4a7dde4f50923bdbdef769c51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5656691b-409e-5030-a677-f3ee566e64b3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b5736b3d-5e67-5d41-85a4-a47aaf1e9ccc', 1), '54803f8be8ceca5b51776460d4a35ab9e8078db4a7dde4f50923bdbdef769c51',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/11aa027c3ea005ac5547ab31af25972d7a99b3f7d123df8e93f9a3d5fc300c40.mp3', 2089, '2026-09-13 22:59:04.619580', '56ab6d328d24d416073fe2bda7c3dcc53d1fff8d16a6495474bab4929c52b77e', 'validated', '{"audio_key":"11aa027c3ea005ac5547ab31af25972d7a99b3f7d123df8e93f9a3d5fc300c40","entity_key":"d_goals_and_effort_02:1","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"56ab6d328d24d416073fe2bda7c3dcc53d1fff8d16a6495474bab4929c52b77e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/11aa027c3ea005ac5547ab31af25972d7a99b3f7d123df8e93f9a3d5fc300c40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_seoul_project_capstone_02:1 -> audio/generated/ko-KR/dialogues/124e04d5463258b995989f617948658ffb6ff8db36e45acc2141a52529f98a00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('534338aa-135a-547a-a011-e9b7190ec5b7', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_seoul_project_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd135b839be487ffe588c9f7196c68dc7057cca041fc29d253498778d0ed556dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e6a3d671-80ab-5743-841b-bf8ba2acf426', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('534338aa-135a-547a-a011-e9b7190ec5b7', 1), 'd135b839be487ffe588c9f7196c68dc7057cca041fc29d253498778d0ed556dd',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/124e04d5463258b995989f617948658ffb6ff8db36e45acc2141a52529f98a00.mp3', 1515, '2026-09-13 22:59:05.497372', '8a6a3b18f20d74b309ffbf63f13d561c8f79073ec5f0ddda6c3386588fa8472f', 'validated', '{"audio_key":"124e04d5463258b995989f617948658ffb6ff8db36e45acc2141a52529f98a00","entity_key":"d_b1_seoul_project_capstone_02:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8a6a3b18f20d74b309ffbf63f13d561c8f79073ec5f0ddda6c3386588fa8472f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/124e04d5463258b995989f617948658ffb6ff8db36e45acc2141a52529f98a00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_nuance_01:4 -> audio/generated/ko-KR/dialogues/14d3ebb235fd4506865c4c16ee1d0bec9d00f71bdb2a0c1229a7a2916a1dcfdf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('00659308-4db5-5e0f-8688-cc4d15819081', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_nuance_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbeb53832af8e4d7d980fb7e678df822f1cb30e0afba4d870a3193d00db03313'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5e1e953-9a62-5c23-922e-55b0930d74df', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('00659308-4db5-5e0f-8688-cc4d15819081', 1), 'dbeb53832af8e4d7d980fb7e678df822f1cb30e0afba4d870a3193d00db03313',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/14d3ebb235fd4506865c4c16ee1d0bec9d00f71bdb2a0c1229a7a2916a1dcfdf.mp3', 1697, '2026-09-13 22:59:05.790446', 'b81109e599c60e1063924af36a8d22264c80783b0148bdbc12c7e49784715eb5', 'validated', '{"audio_key":"14d3ebb235fd4506865c4c16ee1d0bec9d00f71bdb2a0c1229a7a2916a1dcfdf","entity_key":"d_social_nuance_01:4","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b81109e599c60e1063924af36a8d22264c80783b0148bdbc12c7e49784715eb5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/14d3ebb235fd4506865c4c16ee1d0bec9d00f71bdb2a0c1229a7a2916a1dcfdf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experiences_and_change_01:3 -> audio/generated/ko-KR/dialogues/1ca9c38c1d986322c55968ba73d080c506125fcb7c8bf124274c5984b4671cca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('de828d27-9af5-5761-8678-b21c942f5198', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experiences_and_change_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7d6ed7cca563d649f12d34b85f7c25da603618e7725c7323c945ec01217c6649'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('062db4fa-bb87-54bb-bd00-4dfed4085af2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('de828d27-9af5-5761-8678-b21c942f5198', 1), '7d6ed7cca563d649f12d34b85f7c25da603618e7725c7323c945ec01217c6649',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/1ca9c38c1d986322c55968ba73d080c506125fcb7c8bf124274c5984b4671cca.mp3', 1384, '2026-09-13 22:59:06.613888', '380f1467dfb254489c92e678713c64fe494a1bda86c842b9fe806feb28c74c20', 'validated', '{"audio_key":"1ca9c38c1d986322c55968ba73d080c506125fcb7c8bf124274c5984b4671cca","entity_key":"d_experiences_and_change_01:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"380f1467dfb254489c92e678713c64fe494a1bda86c842b9fe806feb28c74c20","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/1ca9c38c1d986322c55968ba73d080c506125fcb7c8bf124274c5984b4671cca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_and_solutions_01:4 -> audio/generated/ko-KR/dialogues/1ce797493dbc2a2a4763d90886bcfa3931af21ce3fa25427caca820b7558a19b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d3f0e0bc-88e7-50d1-8c1c-108773749538', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_and_solutions_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd73be00f2a7de357139e4f28cc271ffebc8f027042a6734b8f729ed506f41765'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('612f3e6e-e2d8-53dc-aed3-2fbef64abf2c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d3f0e0bc-88e7-50d1-8c1c-108773749538', 1), 'd73be00f2a7de357139e4f28cc271ffebc8f027042a6734b8f729ed506f41765',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/1ce797493dbc2a2a4763d90886bcfa3931af21ce3fa25427caca820b7558a19b.mp3', 2403, '2026-09-13 22:59:06.966065', 'c5bc0b57e9e7720aa5694e26a707da9c705aa708680aaed87cf320faf3a14747', 'validated', '{"audio_key":"1ce797493dbc2a2a4763d90886bcfa3931af21ce3fa25427caca820b7558a19b","entity_key":"d_problems_and_solutions_01:4","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c5bc0b57e9e7720aa5694e26a707da9c705aa708680aaed87cf320faf3a14747","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/1ce797493dbc2a2a4763d90886bcfa3931af21ce3fa25427caca820b7558a19b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conditions_and_consequences_01:4 -> audio/generated/ko-KR/dialogues/2067e4941632163ae66f6612842b1109270e4dff29ae204378a243964a3c4c62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('29a93f22-c0a7-5f14-8824-6638ec00008a', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conditions_and_consequences_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '865af2b4a807677c020145bb144a06fa0f872783867686a3e6650408917ea38c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('55fbcf3b-570b-5979-91b0-73beee57a7c0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('29a93f22-c0a7-5f14-8824-6638ec00008a', 1), '865af2b4a807677c020145bb144a06fa0f872783867686a3e6650408917ea38c',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2067e4941632163ae66f6612842b1109270e4dff29ae204378a243964a3c4c62.mp3', 2220, '2026-09-13 22:59:07.852967', '9a5b942607d49a542e0df5bcc3169699538d246e286a4c4ae35c20ccd0401c77', 'validated', '{"audio_key":"2067e4941632163ae66f6612842b1109270e4dff29ae204378a243964a3c4c62","entity_key":"d_conditions_and_consequences_01:4","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9a5b942607d49a542e0df5bcc3169699538d246e286a4c4ae35c20ccd0401c77","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/2067e4941632163ae66f6612842b1109270e4dff29ae204378a243964a3c4c62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_and_sources_02:3 -> audio/generated/ko-KR/dialogues/22e026cdd00fcb24c12ac4072eddc458ab0fa3a984a13cd248d4a4cb8c09063a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('625358a4-b803-5f8f-972c-6bd8e3b49a5f', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_and_sources_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40d7e2f08e1ec16b73ec51b831c366168dc638cb4d663fc5bb92fbbe7b3a291a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('98af7ee0-ea45-555b-ad33-25aa226df788', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('625358a4-b803-5f8f-972c-6bd8e3b49a5f', 1), '40d7e2f08e1ec16b73ec51b831c366168dc638cb4d663fc5bb92fbbe7b3a291a',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/22e026cdd00fcb24c12ac4072eddc458ab0fa3a984a13cd248d4a4cb8c09063a.mp3', 1436, '2026-09-13 22:59:08.082699', 'b5602a03fb7bde3876b9f6692c1c8d54b0130b1281733971362f4dcae477c747', 'validated', '{"audio_key":"22e026cdd00fcb24c12ac4072eddc458ab0fa3a984a13cd248d4a4cb8c09063a","entity_key":"d_media_and_sources_02:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b5602a03fb7bde3876b9f6692c1c8d54b0130b1281733971362f4dcae477c747","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/22e026cdd00fcb24c12ac4072eddc458ab0fa3a984a13cd248d4a4cb8c09063a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_information_02:4 -> audio/generated/ko-KR/dialogues/233074e08f4f0d9e66ad48e7e7701fb6b48a29cac1940cbe10fa3f8af81da2ec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eac81b2f-5555-5e7d-89bb-b34d084e64b7', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_information_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d80f50d4a873f87d93dd53ff50e8baf9f733f4223673ea97fcd96307614c2b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce1fd787-9342-5d65-bb4a-d4a0f189f939', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eac81b2f-5555-5e7d-89bb-b34d084e64b7', 1), '8d80f50d4a873f87d93dd53ff50e8baf9f733f4223673ea97fcd96307614c2b6',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/233074e08f4f0d9e66ad48e7e7701fb6b48a29cac1940cbe10fa3f8af81da2ec.mp3', 2220, '2026-09-13 22:59:09.066783', '72f3a8dde5b7257a3cb91843d54c4dad3b28ff566826241e2a97efbbc93cecf9', 'validated', '{"audio_key":"233074e08f4f0d9e66ad48e7e7701fb6b48a29cac1940cbe10fa3f8af81da2ec","entity_key":"d_reported_information_02:4","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"72f3a8dde5b7257a3cb91843d54c4dad3b28ff566826241e2a97efbbc93cecf9","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/233074e08f4f0d9e66ad48e7e7701fb6b48a29cac1940cbe10fa3f8af81da2ec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_nuance_01:2 -> audio/generated/ko-KR/dialogues/266d7bb286cdd2c845e2608fa40374339218d5c0516e9ecfdffa2b00edc584e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6933e486-95d0-560f-986a-41bf2cd6ebfa', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_nuance_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2bfdc2dcb83001c29c83dd58f1196fd4efcfd8bb500418c2da292dec32f14a67'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89319e1d-5838-5833-92d7-b02abcf2ba34', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6933e486-95d0-560f-986a-41bf2cd6ebfa', 1), '2bfdc2dcb83001c29c83dd58f1196fd4efcfd8bb500418c2da292dec32f14a67',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/266d7bb286cdd2c845e2608fa40374339218d5c0516e9ecfdffa2b00edc584e9.mp3', 2351, '2026-09-13 22:59:09.238403', '8c32452bd2bee3527bf1117c50419f4cb349147df2f977b23814dc0c93010ade', 'validated', '{"audio_key":"266d7bb286cdd2c845e2608fa40374339218d5c0516e9ecfdffa2b00edc584e9","entity_key":"d_social_nuance_01:2","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8c32452bd2bee3527bf1117c50419f4cb349147df2f977b23814dc0c93010ade","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/266d7bb286cdd2c845e2608fa40374339218d5c0516e9ecfdffa2b00edc584e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_evidence_01:4 -> audio/generated/ko-KR/dialogues/270b6888c6a84e069b9232ceaffcae9732ff1232f46266ba89e9202caa972f62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('49120a1c-d0e5-58d3-becf-81900e4b0cd6', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_evidence_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aad1cd62f5f449d6b039213d52bf289f0cd22ea9c8059d0e6ee7c649e26a3988'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d05c7a0e-3e12-546c-8d1b-50f4df5c742a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('49120a1c-d0e5-58d3-becf-81900e4b0cd6', 1), 'aad1cd62f5f449d6b039213d52bf289f0cd22ea9c8059d0e6ee7c649e26a3988',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/270b6888c6a84e069b9232ceaffcae9732ff1232f46266ba89e9202caa972f62.mp3', 2533, '2026-09-13 22:59:10.297204', '86a286d2711c85194b993381c88db9358cba312ea0bfc2e8059bbf7be280fa78', 'validated', '{"audio_key":"270b6888c6a84e069b9232ceaffcae9732ff1232f46266ba89e9202caa972f62","entity_key":"d_opinions_and_evidence_01:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"86a286d2711c85194b993381c88db9358cba312ea0bfc2e8059bbf7be280fa78","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/270b6888c6a84e069b9232ceaffcae9732ff1232f46266ba89e9202caa972f62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_and_effort_01:4 -> audio/generated/ko-KR/dialogues/28607529e0ffbc6d3e580341595e3b43cacc1307da1b490db3c453e67d2fead7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('15140999-d9e1-5313-a099-8e6b256eeaec', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_and_effort_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5615dfbbfee85272abeb7dace2a1d5724d7fc6d635471e43bf65e3c5211ff705'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e2495f7-5a39-53d2-9537-35466014cccf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('15140999-d9e1-5313-a099-8e6b256eeaec', 1), '5615dfbbfee85272abeb7dace2a1d5724d7fc6d635471e43bf65e3c5211ff705',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/28607529e0ffbc6d3e580341595e3b43cacc1307da1b490db3c453e67d2fead7.mp3', 2272, '2026-09-13 22:59:10.419085', '2b053f6c831019e7b9c98ed9fc6244375854f8764721dfd634dc64feb272ec86', 'validated', '{"audio_key":"28607529e0ffbc6d3e580341595e3b43cacc1307da1b490db3c453e67d2fead7","entity_key":"d_goals_and_effort_01:4","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2b053f6c831019e7b9c98ed9fc6244375854f8764721dfd634dc64feb272ec86","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/28607529e0ffbc6d3e580341595e3b43cacc1307da1b490db3c453e67d2fead7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_and_sources_01:2 -> audio/generated/ko-KR/dialogues/29f7a5bb513aa972d2ee0286cdbab580d71d05163a064dd881cadb0c510b2173.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7f1dced7-4700-540e-a345-95a831ecfc57', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_and_sources_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ba63cbe6214fdd59d6d5edd548cdd6c622fa209bd68df1cbc13782daab40766'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('885d7c3b-5024-586e-ab96-8dd49e1dc3a0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7f1dced7-4700-540e-a345-95a831ecfc57', 1), '4ba63cbe6214fdd59d6d5edd548cdd6c622fa209bd68df1cbc13782daab40766',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/29f7a5bb513aa972d2ee0286cdbab580d71d05163a064dd881cadb0c510b2173.mp3', 3343, '2026-09-13 22:59:11.641908', '42667a554c1088d413ebbdb29df5a3b8de560a3a61876466d25cb2bc44ae98da', 'validated', '{"audio_key":"29f7a5bb513aa972d2ee0286cdbab580d71d05163a064dd881cadb0c510b2173","entity_key":"d_media_and_sources_01:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"42667a554c1088d413ebbdb29df5a3b8de560a3a61876466d25cb2bc44ae98da","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/29f7a5bb513aa972d2ee0286cdbab580d71d05163a064dd881cadb0c510b2173.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_storytelling_sequence_01:4 -> audio/generated/ko-KR/dialogues/2a1e51b07f1c9c9365d27a8f193808e433b205191c593420d6cd976159aafd37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cbfae50b-62de-51c9-aa96-6b09a49fafe2', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_storytelling_sequence_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6cd2bcc542c0bfd15aa440bfe08fbb9c123258fb17c4c21cb37f73b0d188c78'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('352f6585-6bc5-5efa-8ed1-ec868da5ebb5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cbfae50b-62de-51c9-aa96-6b09a49fafe2', 1), 'd6cd2bcc542c0bfd15aa440bfe08fbb9c123258fb17c4c21cb37f73b0d188c78',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2a1e51b07f1c9c9365d27a8f193808e433b205191c593420d6cd976159aafd37.mp3', 2507, '2026-09-13 22:59:11.777722', 'ae802afbbf585d88174629e44b754d891c923d034490aa4725ad1e1d2b2d1ad9', 'validated', '{"audio_key":"2a1e51b07f1c9c9365d27a8f193808e433b205191c593420d6cd976159aafd37","entity_key":"d_storytelling_sequence_01:4","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ae802afbbf585d88174629e44b754d891c923d034490aa4725ad1e1d2b2d1ad9","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/2a1e51b07f1c9c9365d27a8f193808e433b205191c593420d6cd976159aafd37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_and_solutions_01:1 -> audio/generated/ko-KR/dialogues/2a9b08a2df0e6ac4ac2346ae34fbeda02f63cc67b11b5c61731db024e588ad58.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a74a8994-31ad-5446-8530-08aab8d83a53', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_and_solutions_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0f465318176139fbe8d1cf1764ec7b73222a71956c19b8f345c4b0534aafaad9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac2fb54f-bfbc-506d-b175-a9858d1af099', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a74a8994-31ad-5446-8530-08aab8d83a53', 1), '0f465318176139fbe8d1cf1764ec7b73222a71956c19b8f345c4b0534aafaad9',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2a9b08a2df0e6ac4ac2346ae34fbeda02f63cc67b11b5c61731db024e588ad58.mp3', 2272, '2026-09-13 22:59:12.793505', '6c08363b000590537fc32d33e54ddce34d21e9a28b40d22b17ce7936ffbc98cf', 'validated', '{"audio_key":"2a9b08a2df0e6ac4ac2346ae34fbeda02f63cc67b11b5c61731db024e588ad58","entity_key":"d_problems_and_solutions_01:1","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6c08363b000590537fc32d33e54ddce34d21e9a28b40d22b17ce7936ffbc98cf","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/2a9b08a2df0e6ac4ac2346ae34fbeda02f63cc67b11b5c61731db024e588ad58.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_storytelling_sequence_01:1 -> audio/generated/ko-KR/dialogues/2c1a0a0ab57f180426590ba33ec40137bb36a4b72613ca933dbd136208b5bf1f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1256ac79-fbd1-5bdb-bd52-f41a1d5a23d7', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_storytelling_sequence_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '98f4c310d919fa8d8c8d1a44c01f125a91a0268d33dcf253456c95f732036865'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c06b0662-4cc0-5200-9091-dffdc8a89d46', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1256ac79-fbd1-5bdb-bd52-f41a1d5a23d7', 1), '98f4c310d919fa8d8c8d1a44c01f125a91a0268d33dcf253456c95f732036865',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2c1a0a0ab57f180426590ba33ec40137bb36a4b72613ca933dbd136208b5bf1f.mp3', 1985, '2026-09-13 22:59:12.932745', '5cb74de9990655836ddf23d006205897ab7ea733d56f73eadf5cde3de704efa1', 'validated', '{"audio_key":"2c1a0a0ab57f180426590ba33ec40137bb36a4b72613ca933dbd136208b5bf1f","entity_key":"d_storytelling_sequence_01:1","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5cb74de9990655836ddf23d006205897ab7ea733d56f73eadf5cde3de704efa1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/2c1a0a0ab57f180426590ba33ec40137bb36a4b72613ca933dbd136208b5bf1f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conditions_and_consequences_02:2 -> audio/generated/ko-KR/dialogues/2e03cae5064c9644b2413c1a5ab7ab39ead17da921987b4005bb37bdfc3d939b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b1d2a78f-4bca-5a75-b46c-d79e9664d5fa', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conditions_and_consequences_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eed5d460a07c66ca35f766b8b3b00dacf54087ec4552dcf13d8da7612ebc4208'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d90e05ee-3739-5208-bd9f-82df67dac495', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b1d2a78f-4bca-5a75-b46c-d79e9664d5fa', 1), 'eed5d460a07c66ca35f766b8b3b00dacf54087ec4552dcf13d8da7612ebc4208',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2e03cae5064c9644b2413c1a5ab7ab39ead17da921987b4005bb37bdfc3d939b.mp3', 2586, '2026-09-13 22:59:13.975907', '4bfa67f7e601ad85a7f8091adf0e9ff53460c77184e56902f7935ac6d218e006', 'validated', '{"audio_key":"2e03cae5064c9644b2413c1a5ab7ab39ead17da921987b4005bb37bdfc3d939b","entity_key":"d_conditions_and_consequences_02:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4bfa67f7e601ad85a7f8091adf0e9ff53460c77184e56902f7935ac6d218e006","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/2e03cae5064c9644b2413c1a5ab7ab39ead17da921987b4005bb37bdfc3d939b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_evidence_01:3 -> audio/generated/ko-KR/dialogues/2eb29932a32c6efc5f157e775c11bd91f6d60a23cd6f51c1a74d0f02fcb4f411.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('769afbea-f2a3-52e4-bf1f-599c0b12563b', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_evidence_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a5cc3feaa87eb5b09d8717d77867c0306186b498f42ae94a3c2c14f8f94d133'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('850a48b0-7f79-500d-80ad-ac58104d60da', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('769afbea-f2a3-52e4-bf1f-599c0b12563b', 1), '0a5cc3feaa87eb5b09d8717d77867c0306186b498f42ae94a3c2c14f8f94d133',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2eb29932a32c6efc5f157e775c11bd91f6d60a23cd6f51c1a74d0f02fcb4f411.mp3', 1567, '2026-09-13 22:59:14.007865', 'd9c32db08fb5f54a4a172a00d0f3519e4cacd37a4e7e7cc0b6a5a25d56b4958a', 'validated', '{"audio_key":"2eb29932a32c6efc5f157e775c11bd91f6d60a23cd6f51c1a74d0f02fcb4f411","entity_key":"d_opinions_and_evidence_01:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d9c32db08fb5f54a4a172a00d0f3519e4cacd37a4e7e7cc0b6a5a25d56b4958a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/2eb29932a32c6efc5f157e775c11bd91f6d60a23cd6f51c1a74d0f02fcb4f411.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_and_effort_01:1 -> audio/generated/ko-KR/dialogues/32cf6b5464d2ad8c2078421030e6d1f4bf739911db6fb05118b21e203b0049e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b83ea029-0cfd-5506-8ee9-1f15daccdc27', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_and_effort_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4cf2e0c56e9663b210871594dfdf0277db947d259fdd54d327f559284e259e2f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0bd93978-b2c7-5886-8b46-47cf29ba30e2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b83ea029-0cfd-5506-8ee9-1f15daccdc27', 1), '4cf2e0c56e9663b210871594dfdf0277db947d259fdd54d327f559284e259e2f',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/32cf6b5464d2ad8c2078421030e6d1f4bf739911db6fb05118b21e203b0049e6.mp3', 1802, '2026-09-13 22:59:15.119883', '3ab7c435e08415c1ff4a65dc95b276f2712742bb8d0e2c2d3a7c4c3d2b8fbe57', 'validated', '{"audio_key":"32cf6b5464d2ad8c2078421030e6d1f4bf739911db6fb05118b21e203b0049e6","entity_key":"d_goals_and_effort_01:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3ab7c435e08415c1ff4a65dc95b276f2712742bb8d0e2c2d3a7c4c3d2b8fbe57","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/32cf6b5464d2ad8c2078421030e6d1f4bf739911db6fb05118b21e203b0049e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_nuance_02:3 -> audio/generated/ko-KR/dialogues/347803539540bdd80c87ef17070329daeeb265543dc9f6d57e1d905f65e1c264.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('874ae178-295e-5b6d-90fb-f0ea2e5e5bde', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_nuance_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '75f5a63612bb72c7f618522cb4219316f713536781b4224f1b76deb767242ebe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2ad6c4d-75d9-55a8-bee3-4a8c078c18a2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('874ae178-295e-5b6d-90fb-f0ea2e5e5bde', 1), '75f5a63612bb72c7f618522cb4219316f713536781b4224f1b76deb767242ebe',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/347803539540bdd80c87ef17070329daeeb265543dc9f6d57e1d905f65e1c264.mp3', 2455, '2026-09-13 22:59:15.201271', '058f6d8f95f91bda6cf7d336961988fd70cfe40f0a3d912d8e06e2d9f07b4316', 'validated', '{"audio_key":"347803539540bdd80c87ef17070329daeeb265543dc9f6d57e1d905f65e1c264","entity_key":"d_social_nuance_02:3","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"058f6d8f95f91bda6cf7d336961988fd70cfe40f0a3d912d8e06e2d9f07b4316","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/347803539540bdd80c87ef17070329daeeb265543dc9f6d57e1d905f65e1c264.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conditions_and_consequences_01:1 -> audio/generated/ko-KR/dialogues/39b7063f6337c057d23ce970018574e12c22ef6279e143000fac590386a70955.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('edbae045-b63b-5c8d-94af-7a05dce4338d', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conditions_and_consequences_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f4b381a40ddca32ca053f7cd292980347463c9532c24e536825e66e6873fe2d4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a1da766-d07b-5305-872d-7abc9c06ef50', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('edbae045-b63b-5c8d-94af-7a05dce4338d', 1), 'f4b381a40ddca32ca053f7cd292980347463c9532c24e536825e66e6873fe2d4',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/39b7063f6337c057d23ce970018574e12c22ef6279e143000fac590386a70955.mp3', 2403, '2026-09-13 22:59:16.336051', '869662abc01d1debb9dc6594b7ffdee64d76b2867053f5f0f653b93d3fecc772', 'validated', '{"audio_key":"39b7063f6337c057d23ce970018574e12c22ef6279e143000fac590386a70955","entity_key":"d_conditions_and_consequences_01:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"869662abc01d1debb9dc6594b7ffdee64d76b2867053f5f0f653b93d3fecc772","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/39b7063f6337c057d23ce970018574e12c22ef6279e143000fac590386a70955.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_seoul_project_capstone_02:2 -> audio/generated/ko-KR/dialogues/3f4ee261ca02010ce73c630b9c532a60f934aef0ed26df8d3347f35e8f9a246e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('946fe4ef-6bc3-54c5-b55c-6a7b772841be', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_seoul_project_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de0b7f1454c2d89bbe2197eef8dc0073b5784a6edcd0c02bb9b8909ec4e4957b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('287df01a-2d99-5272-9867-99c868a4f9b5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('946fe4ef-6bc3-54c5-b55c-6a7b772841be', 1), 'de0b7f1454c2d89bbe2197eef8dc0073b5784a6edcd0c02bb9b8909ec4e4957b',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/3f4ee261ca02010ce73c630b9c532a60f934aef0ed26df8d3347f35e8f9a246e.mp3', 2951, '2026-09-13 22:59:16.402717', 'bdf5ce8f102e909c31a3eac47d68dc10a9192fa68a6eb9898d3dfddb516bc3c2', 'validated', '{"audio_key":"3f4ee261ca02010ce73c630b9c532a60f934aef0ed26df8d3347f35e8f9a246e","entity_key":"d_b1_seoul_project_capstone_02:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bdf5ce8f102e909c31a3eac47d68dc10a9192fa68a6eb9898d3dfddb516bc3c2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/3f4ee261ca02010ce73c630b9c532a60f934aef0ed26df8d3347f35e8f9a246e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_information_02:3 -> audio/generated/ko-KR/dialogues/44a79bfce5659c940c7d6b206f3bc79305ec17dfc44574285c834aeecef1fdf0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b40b0b75-4e2e-5e9f-9fa6-047c3de60042', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_information_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b42ad3c207090c2a069cc8faa34fb8c91e2818592ddc8860953de1a6269df33c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11769084-3d29-50c6-8ddc-661e7e2ef530', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b40b0b75-4e2e-5e9f-9fa6-047c3de60042', 1), 'b42ad3c207090c2a069cc8faa34fb8c91e2818592ddc8860953de1a6269df33c',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/44a79bfce5659c940c7d6b206f3bc79305ec17dfc44574285c834aeecef1fdf0.mp3', 1071, '2026-09-13 22:59:17.415159', 'bac05d53d8a09dccb2c43e85600268e0a2a6d4f05864132d23c28e36ae1a6e70', 'validated', '{"audio_key":"44a79bfce5659c940c7d6b206f3bc79305ec17dfc44574285c834aeecef1fdf0","entity_key":"d_reported_information_02:3","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bac05d53d8a09dccb2c43e85600268e0a2a6d4f05864132d23c28e36ae1a6e70","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/44a79bfce5659c940c7d6b206f3bc79305ec17dfc44574285c834aeecef1fdf0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_and_sources_02:1 -> audio/generated/ko-KR/dialogues/50125ae4bedcab338ea0f824af37dc9d21fa1ca767e837e14e2b10ac6791a65b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('537c41c3-a9d5-59ff-a009-b62f519527d7', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_and_sources_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aa07b1bd8144d1383ef521619605f40a4be2455bcb0784de9541ee5c0e645d0b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1106ee9a-3047-59ba-acf0-292da8e74f54', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('537c41c3-a9d5-59ff-a009-b62f519527d7', 1), 'aa07b1bd8144d1383ef521619605f40a4be2455bcb0784de9541ee5c0e645d0b',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/50125ae4bedcab338ea0f824af37dc9d21fa1ca767e837e14e2b10ac6791a65b.mp3', 2638, '2026-09-13 22:59:17.645491', 'f1631ba88b5594722d1f1c6396735249fd44071cd00d315ab64ebafd0377f816', 'validated', '{"audio_key":"50125ae4bedcab338ea0f824af37dc9d21fa1ca767e837e14e2b10ac6791a65b","entity_key":"d_media_and_sources_02:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f1631ba88b5594722d1f1c6396735249fd44071cd00d315ab64ebafd0377f816","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/50125ae4bedcab338ea0f824af37dc9d21fa1ca767e837e14e2b10ac6791a65b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conditions_and_consequences_01:2 -> audio/generated/ko-KR/dialogues/5019e5343f8494b88d2ca77db64a2cb8968bb80feeac3a464a70b97b9e2de646.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1818bfb7-0e55-5a9b-bac0-c42fff21f28b', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conditions_and_consequences_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd54f09146e7322ac6cdedd01fbe85e3a82c38ce664fdd634e56da55c5a9d4343'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('69257caf-80d7-58b0-a806-4be319345413', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1818bfb7-0e55-5a9b-bac0-c42fff21f28b', 1), 'd54f09146e7322ac6cdedd01fbe85e3a82c38ce664fdd634e56da55c5a9d4343',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/5019e5343f8494b88d2ca77db64a2cb8968bb80feeac3a464a70b97b9e2de646.mp3', 2115, '2026-09-13 22:59:18.571510', '7801ae6eb5151b486fb0f774552d7c6da78dce9e807de254851a51c926a6b851', 'validated', '{"audio_key":"5019e5343f8494b88d2ca77db64a2cb8968bb80feeac3a464a70b97b9e2de646","entity_key":"d_conditions_and_consequences_01:2","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7801ae6eb5151b486fb0f774552d7c6da78dce9e807de254851a51c926a6b851","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/5019e5343f8494b88d2ca77db64a2cb8968bb80feeac3a464a70b97b9e2de646.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_information_01:1 -> audio/generated/ko-KR/dialogues/572688ff8110b08cdc3e9ef771db25e4a9e666508c3a4b936cd275a87cfd5825.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('080bf83f-be19-5960-bb2d-1dedd8257a58', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_information_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a46c9624770305751af549a06ade64a0f01d6b40d5135e5c7c9f1ff7d8cd6bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6341e045-e0fa-5e31-ab04-69385b1606b0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('080bf83f-be19-5960-bb2d-1dedd8257a58', 1), '4a46c9624770305751af549a06ade64a0f01d6b40d5135e5c7c9f1ff7d8cd6bd',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/572688ff8110b08cdc3e9ef771db25e4a9e666508c3a4b936cd275a87cfd5825.mp3', 1671, '2026-09-13 22:59:18.759744', '72fce5fadb725f407631bb1425efa3f823ed921913ae653fb95709357d50b042', 'validated', '{"audio_key":"572688ff8110b08cdc3e9ef771db25e4a9e666508c3a4b936cd275a87cfd5825","entity_key":"d_reported_information_01:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"72fce5fadb725f407631bb1425efa3f823ed921913ae653fb95709357d50b042","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/572688ff8110b08cdc3e9ef771db25e4a9e666508c3a4b936cd275a87cfd5825.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_and_effort_02:3 -> audio/generated/ko-KR/dialogues/57cf022535b8da502ecd48d3aaf82efce7bf17fb16c7af15d9d86df7c8d5a0be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0d6df6ec-2a26-5bc3-a88a-e320468f9235', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_and_effort_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5319ce1b1bb248f444039ac384105b46f415219eb844f1ab3bec76c26d87fab6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b983b040-d281-5df1-80cc-292faf4b0127', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0d6df6ec-2a26-5bc3-a88a-e320468f9235', 1), '5319ce1b1bb248f444039ac384105b46f415219eb844f1ab3bec76c26d87fab6',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/57cf022535b8da502ecd48d3aaf82efce7bf17fb16c7af15d9d86df7c8d5a0be.mp3', 1253, '2026-09-13 22:59:19.613274', 'b58465598bf58782406990626be5e34a8a324f045ec3f4936988388a4069e61b', 'validated', '{"audio_key":"57cf022535b8da502ecd48d3aaf82efce7bf17fb16c7af15d9d86df7c8d5a0be","entity_key":"d_goals_and_effort_02:3","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b58465598bf58782406990626be5e34a8a324f045ec3f4936988388a4069e61b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/57cf022535b8da502ecd48d3aaf82efce7bf17fb16c7af15d9d86df7c8d5a0be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_information_02:2 -> audio/generated/ko-KR/dialogues/59adb392ceae86011b5a8cb99d9fde9b61b60f94aee8fa4e449d7bd144bb9b94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('214b7800-b1e4-54fe-a33b-7f186c25eb94', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_information_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd8318a982da85fedaf43c9209451442a9d1fc89648989fcf3dee3ffd6230d9d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a612f084-55c3-50d1-aa7c-f1c0833c22fc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('214b7800-b1e4-54fe-a33b-7f186c25eb94', 1), 'bd8318a982da85fedaf43c9209451442a9d1fc89648989fcf3dee3ffd6230d9d',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/59adb392ceae86011b5a8cb99d9fde9b61b60f94aee8fa4e449d7bd144bb9b94.mp3', 3056, '2026-09-13 22:59:20.046730', '84e04d40c4662c7a540eb75b328fa8974a1135823dae3b5c0e1096594c37ea76', 'validated', '{"audio_key":"59adb392ceae86011b5a8cb99d9fde9b61b60f94aee8fa4e449d7bd144bb9b94","entity_key":"d_reported_information_02:2","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"84e04d40c4662c7a540eb75b328fa8974a1135823dae3b5c0e1096594c37ea76","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/59adb392ceae86011b5a8cb99d9fde9b61b60f94aee8fa4e449d7bd144bb9b94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_seoul_project_capstone_01:3 -> audio/generated/ko-KR/dialogues/5b0611c2993b616e6e04ebc9c712827f97e104198576bfad9cf98c799ecd869f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f219cf02-703e-554e-8fdd-360fa6c063e4', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_seoul_project_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0cc9c256baa2ece3e894c11567d23d6b90b86933fe16b2865ff730f30b83736'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25844786-e5a4-5f66-88cd-d798e3780bea', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f219cf02-703e-554e-8fdd-360fa6c063e4', 1), 'b0cc9c256baa2ece3e894c11567d23d6b90b86933fe16b2865ff730f30b83736',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/5b0611c2993b616e6e04ebc9c712827f97e104198576bfad9cf98c799ecd869f.mp3', 2037, '2026-09-13 22:59:20.707555', '114c738caf0537efae4d03fee3c13166887ea7eb0973e7c4302dc5766d4f0e1e', 'validated', '{"audio_key":"5b0611c2993b616e6e04ebc9c712827f97e104198576bfad9cf98c799ecd869f","entity_key":"d_b1_seoul_project_capstone_01:3","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"114c738caf0537efae4d03fee3c13166887ea7eb0973e7c4302dc5766d4f0e1e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/5b0611c2993b616e6e04ebc9c712827f97e104198576bfad9cf98c799ecd869f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_and_sources_01:4 -> audio/generated/ko-KR/dialogues/5baa86c8002d47a59b75a24fadaa52deb6adf25da6a445c644fc1be37b733a4b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f5ed64f4-7c03-5232-8f70-47bac9e69636', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_and_sources_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e056be871c90e356f2e4fc2730dbd17d6e571db0cf3846711c5399ddb0f8123c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('807750e0-6d09-527f-a0b7-3b40c39fda90', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f5ed64f4-7c03-5232-8f70-47bac9e69636', 1), 'e056be871c90e356f2e4fc2730dbd17d6e571db0cf3846711c5399ddb0f8123c',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/5baa86c8002d47a59b75a24fadaa52deb6adf25da6a445c644fc1be37b733a4b.mp3', 2742, '2026-09-13 22:59:21.279925', '4e75780bb6b0af3011f125ca93a3c18c800b4270720344f8b7ff273313e0efb1', 'validated', '{"audio_key":"5baa86c8002d47a59b75a24fadaa52deb6adf25da6a445c644fc1be37b733a4b","entity_key":"d_media_and_sources_01:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4e75780bb6b0af3011f125ca93a3c18c800b4270720344f8b7ff273313e0efb1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/5baa86c8002d47a59b75a24fadaa52deb6adf25da6a445c644fc1be37b733a4b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_and_sources_01:1 -> audio/generated/ko-KR/dialogues/5c6d93f06a313ab8229d9feffe104d21b40c0fbaaad9a0510fe0165e122dd864.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('aa08ec37-50a8-5853-ad99-6947e5293de6', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_and_sources_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f1b13ad0641cfa4a5bb6196271d6ec0bc10e2640263220693cbdb6ac1257547'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('68f1a0ac-7c7e-5614-8544-c8eacb4cb90a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('aa08ec37-50a8-5853-ad99-6947e5293de6', 1), '6f1b13ad0641cfa4a5bb6196271d6ec0bc10e2640263220693cbdb6ac1257547',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/5c6d93f06a313ab8229d9feffe104d21b40c0fbaaad9a0510fe0165e122dd864.mp3', 1280, '2026-09-13 22:59:21.770564', 'e81537d0e9d2a65e79fff8e3a10affc3550905b263cec04a3e31a67455426f06', 'validated', '{"audio_key":"5c6d93f06a313ab8229d9feffe104d21b40c0fbaaad9a0510fe0165e122dd864","entity_key":"d_media_and_sources_01:1","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e81537d0e9d2a65e79fff8e3a10affc3550905b263cec04a3e31a67455426f06","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/5c6d93f06a313ab8229d9feffe104d21b40c0fbaaad9a0510fe0165e122dd864.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conditions_and_consequences_02:1 -> audio/generated/ko-KR/dialogues/60165c366dc27cf8b1e9f250d3382bad1bb309b310ef78c3d89df6683475d26a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('80a3915b-0076-5bb4-aac4-ee4483985402', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conditions_and_consequences_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '567bd73860a91a1c302ae78a721c764158f17b14fbff485f6832c3de6337c69f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca60846d-835b-501b-8527-3c44d6b1d9c3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('80a3915b-0076-5bb4-aac4-ee4483985402', 1), '567bd73860a91a1c302ae78a721c764158f17b14fbff485f6832c3de6337c69f',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/60165c366dc27cf8b1e9f250d3382bad1bb309b310ef78c3d89df6683475d26a.mp3', 2168, '2026-09-13 22:59:22.409787', '3bc7ff186eb6508f00a202db6bb0417901ea73ab801f0365ade8ed224c047fa7', 'validated', '{"audio_key":"60165c366dc27cf8b1e9f250d3382bad1bb309b310ef78c3d89df6683475d26a","entity_key":"d_conditions_and_consequences_02:1","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3bc7ff186eb6508f00a202db6bb0417901ea73ab801f0365ade8ed224c047fa7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/60165c366dc27cf8b1e9f250d3382bad1bb309b310ef78c3d89df6683475d26a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experiences_and_change_01:2 -> audio/generated/ko-KR/dialogues/6727665b31157675d61fd5b10623fd6cbef6975933c370c559576ceb5f84cd2f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('29e53ba6-2099-501a-a877-793fa69996d8', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experiences_and_change_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa64d104d44ea7df9602deef254d54445c802e7be6b238cd0fa3eef08d753bc5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc1eef65-aab9-5be2-8470-a5716a50e853', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('29e53ba6-2099-501a-a877-793fa69996d8', 1), 'fa64d104d44ea7df9602deef254d54445c802e7be6b238cd0fa3eef08d753bc5',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6727665b31157675d61fd5b10623fd6cbef6975933c370c559576ceb5f84cd2f.mp3', 2768, '2026-09-13 22:59:22.969778', '800c7a81a05f44e7a563eb748d4091b2c3e943a1adf630cc3a77f7918b93a0f4', 'validated', '{"audio_key":"6727665b31157675d61fd5b10623fd6cbef6975933c370c559576ceb5f84cd2f","entity_key":"d_experiences_and_change_01:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"800c7a81a05f44e7a563eb748d4091b2c3e943a1adf630cc3a77f7918b93a0f4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/6727665b31157675d61fd5b10623fd6cbef6975933c370c559576ceb5f84cd2f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_and_effort_02:2 -> audio/generated/ko-KR/dialogues/689368a89b0d84277bbda43ac3994272b0b9b75a5e63d5505b5a00b0ec3ba722.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8641988e-11de-5ef6-834a-6e1cf0c8b490', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_and_effort_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b458c1494f2688e38727a03fc709363ec407cf03feb5dc458ae79a093ba76d09'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d942f8bd-4f3c-5fcd-9481-fb67543d5e08', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8641988e-11de-5ef6-834a-6e1cf0c8b490', 1), 'b458c1494f2688e38727a03fc709363ec407cf03feb5dc458ae79a093ba76d09',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/689368a89b0d84277bbda43ac3994272b0b9b75a5e63d5505b5a00b0ec3ba722.mp3', 3108, '2026-09-13 22:59:23.708726', '6e2d9ecf474a8c810d8a8a25458002e23613847becc71522f0d02622bd7af3f1', 'validated', '{"audio_key":"689368a89b0d84277bbda43ac3994272b0b9b75a5e63d5505b5a00b0ec3ba722","entity_key":"d_goals_and_effort_02:2","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e2d9ecf474a8c810d8a8a25458002e23613847becc71522f0d02622bd7af3f1","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/689368a89b0d84277bbda43ac3994272b0b9b75a5e63d5505b5a00b0ec3ba722.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_and_sources_01:3 -> audio/generated/ko-KR/dialogues/689b3d3638fda455190c463cc2eaa826c360ce997029d340d9846c3769861d43.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4978badd-6ab3-5239-8584-877d9485d2fd', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_and_sources_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ad77fa39d1c4faec38de4db0789f0ce68560c5631b05fee4347a3859e6a83b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e253703b-9c77-5079-a280-b831d1f8dd72', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4978badd-6ab3-5239-8584-877d9485d2fd', 1), '4ad77fa39d1c4faec38de4db0789f0ce68560c5631b05fee4347a3859e6a83b3',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/689b3d3638fda455190c463cc2eaa826c360ce997029d340d9846c3769861d43.mp3', 1802, '2026-09-13 22:59:24.148353', '1d1942dd5db460efdad0b8afcf1f91a0f96cc3d59fcec76b63c900c3a90355c1', 'validated', '{"audio_key":"689b3d3638fda455190c463cc2eaa826c360ce997029d340d9846c3769861d43","entity_key":"d_media_and_sources_01:3","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1d1942dd5db460efdad0b8afcf1f91a0f96cc3d59fcec76b63c900c3a90355c1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/689b3d3638fda455190c463cc2eaa826c360ce997029d340d9846c3769861d43.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_information_01:2 -> audio/generated/ko-KR/dialogues/6aa99027ebabc41d5101707f6b882a37ce8b17e944e8f97487b611301f656e79.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9cfb49a9-e4db-5690-b72b-506555b37baa', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_information_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee3a193bef43e0a763c2556308bc0eef1c27443b55f0a0c810dea413745ec5b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31b1d166-6d5d-5d2b-a81c-eed02cbe5a2e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9cfb49a9-e4db-5690-b72b-506555b37baa', 1), 'ee3a193bef43e0a763c2556308bc0eef1c27443b55f0a0c810dea413745ec5b8',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6aa99027ebabc41d5101707f6b882a37ce8b17e944e8f97487b611301f656e79.mp3', 2220, '2026-09-13 22:59:24.954680', '90c1dab519e982f489507d79b0599f633f42e526530b8a4b1161f63d0623835d', 'validated', '{"audio_key":"6aa99027ebabc41d5101707f6b882a37ce8b17e944e8f97487b611301f656e79","entity_key":"d_reported_information_01:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"90c1dab519e982f489507d79b0599f633f42e526530b8a4b1161f63d0623835d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/6aa99027ebabc41d5101707f6b882a37ce8b17e944e8f97487b611301f656e79.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_seoul_project_capstone_01:4 -> audio/generated/ko-KR/dialogues/6f6ffa14a48df6e15680241d1c5d1203c8f0a024c734449ba20944d6401fe517.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9e8012c9-2c0d-557a-bbc1-b65c99b1faf2', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_seoul_project_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1308c4bff086f5f95b1ba5cefecf102194c20ca41f17f0d79dea6400bb33bdbd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('90beed89-395c-59eb-b6f0-7f20cf8589c8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9e8012c9-2c0d-557a-bbc1-b65c99b1faf2', 1), '1308c4bff086f5f95b1ba5cefecf102194c20ca41f17f0d79dea6400bb33bdbd',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6f6ffa14a48df6e15680241d1c5d1203c8f0a024c734449ba20944d6401fe517.mp3', 2925, '2026-09-13 22:59:25.419889', '8cae2eb3e00fa6f24f3b5e780d1414c2514399f6a82ef670a01bf6cdd4aa175d', 'validated', '{"audio_key":"6f6ffa14a48df6e15680241d1c5d1203c8f0a024c734449ba20944d6401fe517","entity_key":"d_b1_seoul_project_capstone_01:4","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8cae2eb3e00fa6f24f3b5e780d1414c2514399f6a82ef670a01bf6cdd4aa175d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/6f6ffa14a48df6e15680241d1c5d1203c8f0a024c734449ba20944d6401fe517.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_evidence_02:2 -> audio/generated/ko-KR/dialogues/72b384db61f085cdcd92ee8d01b787b514074c0285ac382f5bc101cd80432748.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fc4d0841-d18b-5cac-b990-61af4f889882', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_evidence_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd8667623a9d3a17fb4f7403af6fe14b14dab0c4862ccdf39107be81e777a0469'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d71139f-0fd3-57a8-9141-88b3d2f65dbf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fc4d0841-d18b-5cac-b990-61af4f889882', 1), 'd8667623a9d3a17fb4f7403af6fe14b14dab0c4862ccdf39107be81e777a0469',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/72b384db61f085cdcd92ee8d01b787b514074c0285ac382f5bc101cd80432748.mp3', 2115, '2026-09-13 22:59:26.112016', 'cc0fb03ee1fd3bab8673b0557ddde2055716776e440ee109cdd62afb145b4c75', 'validated', '{"audio_key":"72b384db61f085cdcd92ee8d01b787b514074c0285ac382f5bc101cd80432748","entity_key":"d_opinions_and_evidence_02:2","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"cc0fb03ee1fd3bab8673b0557ddde2055716776e440ee109cdd62afb145b4c75","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/72b384db61f085cdcd92ee8d01b787b514074c0285ac382f5bc101cd80432748.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_seoul_project_capstone_01:1 -> audio/generated/ko-KR/dialogues/80f2bdb3762fcd6172352ed04ebeb607ea512d9b141d35afe417d2562523f620.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7791538c-1310-5955-b235-b3b99628d520', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_seoul_project_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0755445ee6631a178f62c544d654e255f030382cf5f16f95d6537d8e089425a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3513b66d-e6f4-5bf0-a99b-decc27dbad6f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7791538c-1310-5955-b235-b3b99628d520', 1), '0755445ee6631a178f62c544d654e255f030382cf5f16f95d6537d8e089425a8',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/80f2bdb3762fcd6172352ed04ebeb607ea512d9b141d35afe417d2562523f620.mp3', 1671, '2026-09-13 22:59:26.525697', 'e424512bbd66a11d8ce2e5343e72488b5e5b098280bd7632aafabc26e4fc29bf', 'validated', '{"audio_key":"80f2bdb3762fcd6172352ed04ebeb607ea512d9b141d35afe417d2562523f620","entity_key":"d_b1_seoul_project_capstone_01:1","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e424512bbd66a11d8ce2e5343e72488b5e5b098280bd7632aafabc26e4fc29bf","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/80f2bdb3762fcd6172352ed04ebeb607ea512d9b141d35afe417d2562523f620.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_nuance_01:1 -> audio/generated/ko-KR/dialogues/85c9ee8fea4f313d14458ef2a651cfcd8a650a0e30b8f63f930b9e0c7232c91b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('323a31ff-b068-52d2-900f-05b528760dc2', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_nuance_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6204509c953a76d78f6e3482862bbf0540e90cb9f7a0de6437591b03497ac87b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c02d3cf-4c53-56e3-8366-e488861d9638', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('323a31ff-b068-52d2-900f-05b528760dc2', 1), '6204509c953a76d78f6e3482862bbf0540e90cb9f7a0de6437591b03497ac87b',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/85c9ee8fea4f313d14458ef2a651cfcd8a650a0e30b8f63f930b9e0c7232c91b.mp3', 2324, '2026-09-13 22:59:27.253334', '6e3ba913a346fc4913b0bdbfed629052c4b07739845e69b65f05a3a36f83d3b2', 'validated', '{"audio_key":"85c9ee8fea4f313d14458ef2a651cfcd8a650a0e30b8f63f930b9e0c7232c91b","entity_key":"d_social_nuance_01:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e3ba913a346fc4913b0bdbfed629052c4b07739845e69b65f05a3a36f83d3b2","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/85c9ee8fea4f313d14458ef2a651cfcd8a650a0e30b8f63f930b9e0c7232c91b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_and_solutions_02:1 -> audio/generated/ko-KR/dialogues/8640cc2e1a474b9875544c184622728719eade50383b1c316506acb5290eddd2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0f0039bf-c0f9-5ac5-a923-c917513a0113', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_and_solutions_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7e42d6c136f33fd71b306c2fd0807cfc5b451e0110dd0d36140bd3dc9f21d0fc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91887246-be5c-5ef5-98d9-9a27996b57cf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0f0039bf-c0f9-5ac5-a923-c917513a0113', 1), '7e42d6c136f33fd71b306c2fd0807cfc5b451e0110dd0d36140bd3dc9f21d0fc',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/8640cc2e1a474b9875544c184622728719eade50383b1c316506acb5290eddd2.mp3', 2351, '2026-09-13 22:59:27.729435', '97f7d84208e88f3415295c04cac8bf8a8ea5236805df87878df9339a691b4154', 'validated', '{"audio_key":"8640cc2e1a474b9875544c184622728719eade50383b1c316506acb5290eddd2","entity_key":"d_problems_and_solutions_02:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"97f7d84208e88f3415295c04cac8bf8a8ea5236805df87878df9339a691b4154","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/8640cc2e1a474b9875544c184622728719eade50383b1c316506acb5290eddd2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experiences_and_change_02:3 -> audio/generated/ko-KR/dialogues/86d41aab92796de0308950fa69c8554fe708c2badfa94232b7f60d0224b0ed5d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0baaeb5b-4926-54ff-9146-feba4235d4a7', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experiences_and_change_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a2a9125425722e3c6494dc26a0cad06d026cbb90a3da3642c0591107778812b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('321e2b93-a1e1-549d-bdcd-a27b16d351ab', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0baaeb5b-4926-54ff-9146-feba4235d4a7', 1), '4a2a9125425722e3c6494dc26a0cad06d026cbb90a3da3642c0591107778812b',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/86d41aab92796de0308950fa69c8554fe708c2badfa94232b7f60d0224b0ed5d.mp3', 1384, '2026-09-13 22:59:28.363826', '7a6a6949aa129a56d0535c9cdc486e134cbec94640dfd62c9e3b28d01c59f3f2', 'validated', '{"audio_key":"86d41aab92796de0308950fa69c8554fe708c2badfa94232b7f60d0224b0ed5d","entity_key":"d_experiences_and_change_02:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7a6a6949aa129a56d0535c9cdc486e134cbec94640dfd62c9e3b28d01c59f3f2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/86d41aab92796de0308950fa69c8554fe708c2badfa94232b7f60d0224b0ed5d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_storytelling_sequence_02:4 -> audio/generated/ko-KR/dialogues/878ffd023569e755853134bccbdbaf612e78379f7c14a3dfd71c301ff6959123.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c43a42be-aa81-596d-8f9e-1c1029d6008b', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_storytelling_sequence_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad17fce15bfcee70b40fd538915826e9dc4bbb6b65dc279180792b3e5a74e265'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a10b43e-c1b8-5960-87d8-ee96b462b55e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c43a42be-aa81-596d-8f9e-1c1029d6008b', 1), 'ad17fce15bfcee70b40fd538915826e9dc4bbb6b65dc279180792b3e5a74e265',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/878ffd023569e755853134bccbdbaf612e78379f7c14a3dfd71c301ff6959123.mp3', 2168, '2026-09-13 22:59:28.902353', '7a06852412d50d2ccbd2d3aef8894d41a86b5ae95c5c6ac2140386be3f2eddef', 'validated', '{"audio_key":"878ffd023569e755853134bccbdbaf612e78379f7c14a3dfd71c301ff6959123","entity_key":"d_storytelling_sequence_02:4","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7a06852412d50d2ccbd2d3aef8894d41a86b5ae95c5c6ac2140386be3f2eddef","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/878ffd023569e755853134bccbdbaf612e78379f7c14a3dfd71c301ff6959123.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_nuance_02:4 -> audio/generated/ko-KR/dialogues/8d4308097d10908a987eed623b1cacb658532ba907869182849fa1a97f881dd2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('61e7a634-8d40-5347-82b8-4161790f483a', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_nuance_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '565242c2ad5137dbfb91e09b7327340d6f13719f0e9703b631e23bf75f392175'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7721a3ee-24ad-55ab-9df4-d423fc4d18fc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('61e7a634-8d40-5347-82b8-4161790f483a', 1), '565242c2ad5137dbfb91e09b7327340d6f13719f0e9703b631e23bf75f392175',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/8d4308097d10908a987eed623b1cacb658532ba907869182849fa1a97f881dd2.mp3', 1515, '2026-09-13 22:59:29.450524', '1b36943e4b7e5a342fa8479dc74b53cb59091adfb92a198dc18b959bf1861a0c', 'validated', '{"audio_key":"8d4308097d10908a987eed623b1cacb658532ba907869182849fa1a97f881dd2","entity_key":"d_social_nuance_02:4","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1b36943e4b7e5a342fa8479dc74b53cb59091adfb92a198dc18b959bf1861a0c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/8d4308097d10908a987eed623b1cacb658532ba907869182849fa1a97f881dd2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_storytelling_sequence_02:2 -> audio/generated/ko-KR/dialogues/909f5eb820416926a0946ba03d86b6a36f9421cc293edfd72dcd672bfb552047.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6552ca6d-3280-52f7-943e-5ad1a137ff93', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_storytelling_sequence_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c6aba4bea9c1862a8397e478acf7d021f1e4648f253f9654fd16cd527d0cde4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6214a7d7-91a7-5a05-a16d-fc73a11f8134', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6552ca6d-3280-52f7-943e-5ad1a137ff93', 1), '1c6aba4bea9c1862a8397e478acf7d021f1e4648f253f9654fd16cd527d0cde4',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/909f5eb820416926a0946ba03d86b6a36f9421cc293edfd72dcd672bfb552047.mp3', 2533, '2026-09-13 22:59:30.104740', 'b97bb6cf3525ec97c5631018b630ec9ffa32307c69d4b18d97bc2796518257aa', 'validated', '{"audio_key":"909f5eb820416926a0946ba03d86b6a36f9421cc293edfd72dcd672bfb552047","entity_key":"d_storytelling_sequence_02:2","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b97bb6cf3525ec97c5631018b630ec9ffa32307c69d4b18d97bc2796518257aa","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/909f5eb820416926a0946ba03d86b6a36f9421cc293edfd72dcd672bfb552047.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_evidence_02:3 -> audio/generated/ko-KR/dialogues/95cd68e2c27226ceb8f05a076ca088773710575712da59cd620cc3cbb2a98555.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e3a6b925-0e54-5fef-94be-1e5ffeae84c0', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_evidence_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76799f952d68b6152cc72d0991b9546e1cd72ae3cb7cbf125d84fe4a9d458c81'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48c12fae-b8c3-521e-ba47-f359e5d24631', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e3a6b925-0e54-5fef-94be-1e5ffeae84c0', 1), '76799f952d68b6152cc72d0991b9546e1cd72ae3cb7cbf125d84fe4a9d458c81',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/95cd68e2c27226ceb8f05a076ca088773710575712da59cd620cc3cbb2a98555.mp3', 1280, '2026-09-13 22:59:30.514684', 'dc50013ed42c57c7fe32f3c0e9f8761e75268b58db1e01d1cfb185d6fabaccbd', 'validated', '{"audio_key":"95cd68e2c27226ceb8f05a076ca088773710575712da59cd620cc3cbb2a98555","entity_key":"d_opinions_and_evidence_02:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dc50013ed42c57c7fe32f3c0e9f8761e75268b58db1e01d1cfb185d6fabaccbd","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/95cd68e2c27226ceb8f05a076ca088773710575712da59cd620cc3cbb2a98555.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conditions_and_consequences_02:4 -> audio/generated/ko-KR/dialogues/9785af0aabbb4d63393f946a4cbc4b11337d8f75e622b6c84cb271619f43c2da.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bdc518cb-6cee-5399-8b5f-538170c6c97e', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conditions_and_consequences_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '208b4c5dcc519603fb2e96d90d002495fab830fd3e85d8a2724088616dd48998'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c264bf26-dec5-5576-a520-26e4780ddcbc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bdc518cb-6cee-5399-8b5f-538170c6c97e', 1), '208b4c5dcc519603fb2e96d90d002495fab830fd3e85d8a2724088616dd48998',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9785af0aabbb4d63393f946a4cbc4b11337d8f75e622b6c84cb271619f43c2da.mp3', 2586, '2026-09-13 22:59:31.277931', 'e832218dd83bacbd88cc20741d6f630505a3d93024802c58e48cd71869da00b8', 'validated', '{"audio_key":"9785af0aabbb4d63393f946a4cbc4b11337d8f75e622b6c84cb271619f43c2da","entity_key":"d_conditions_and_consequences_02:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e832218dd83bacbd88cc20741d6f630505a3d93024802c58e48cd71869da00b8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/9785af0aabbb4d63393f946a4cbc4b11337d8f75e622b6c84cb271619f43c2da.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_conditions_and_consequences_02:3 -> audio/generated/ko-KR/dialogues/97b995e9804c77d200c84cec80b46be0965301002bf91a08a66adf707f75bed9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7c88ee20-3861-536e-9009-5c85c923dfe5', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_conditions_and_consequences_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ef8eab9ed020923c13dc99158c4a736a653819ffa98648dbb751627f6d95c47'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed8584ff-182d-5ac2-8eab-b21786660efa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7c88ee20-3861-536e-9009-5c85c923dfe5', 1), '1ef8eab9ed020923c13dc99158c4a736a653819ffa98648dbb751627f6d95c47',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/97b995e9804c77d200c84cec80b46be0965301002bf91a08a66adf707f75bed9.mp3', 1619, '2026-09-13 22:59:31.615701', 'd774f3470039bd0eb1bb08dd60c809b3fa8ec7ca321bb7968934c81afe546df8', 'validated', '{"audio_key":"97b995e9804c77d200c84cec80b46be0965301002bf91a08a66adf707f75bed9","entity_key":"d_conditions_and_consequences_02:3","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d774f3470039bd0eb1bb08dd60c809b3fa8ec7ca321bb7968934c81afe546df8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/97b995e9804c77d200c84cec80b46be0965301002bf91a08a66adf707f75bed9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_storytelling_sequence_02:3 -> audio/generated/ko-KR/dialogues/98ff5e8214d8b6bdc02a2658a3d5dbb7d031bbada204dd715982d1800c42a391.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('44ac7f3d-8a35-5c26-9ab1-0436c8f8967e', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_storytelling_sequence_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61a2ac6c454fffc8b3921e9d754e5c6c2b8a3d9ac09756f99accf190806999f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c005992-7ce9-5b67-a55f-5da867761fac', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('44ac7f3d-8a35-5c26-9ab1-0436c8f8967e', 1), '61a2ac6c454fffc8b3921e9d754e5c6c2b8a3d9ac09756f99accf190806999f1',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/98ff5e8214d8b6bdc02a2658a3d5dbb7d031bbada204dd715982d1800c42a391.mp3', 1332, '2026-09-13 22:59:32.392291', '61644350c402821f4c935e28668e7f003154c14bd41cceb18dedfc116ef650bc', 'validated', '{"audio_key":"98ff5e8214d8b6bdc02a2658a3d5dbb7d031bbada204dd715982d1800c42a391","entity_key":"d_storytelling_sequence_02:3","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"61644350c402821f4c935e28668e7f003154c14bd41cceb18dedfc116ef650bc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/98ff5e8214d8b6bdc02a2658a3d5dbb7d031bbada204dd715982d1800c42a391.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_information_01:4 -> audio/generated/ko-KR/dialogues/9dad1b1e487525e61b58e9eda9429efaeb449f4405b61356b7bc03c1d88068e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0e197937-9fc0-57ef-9d84-f48e39d43b79', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_information_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f7a055a37937de8ffc7d3810709ae64322314e67cfcc863e4ce2b9d22ee6168b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47d478b5-c79e-53bb-ba99-d5e44bd0c50a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0e197937-9fc0-57ef-9d84-f48e39d43b79', 1), 'f7a055a37937de8ffc7d3810709ae64322314e67cfcc863e4ce2b9d22ee6168b',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9dad1b1e487525e61b58e9eda9429efaeb449f4405b61356b7bc03c1d88068e3.mp3', 1933, '2026-09-13 22:59:32.772165', 'f93dcfa9a9e2dcbae722b06ececba4c38dcfbcac549a72557a9f1efba7413485', 'validated', '{"audio_key":"9dad1b1e487525e61b58e9eda9429efaeb449f4405b61356b7bc03c1d88068e3","entity_key":"d_reported_information_01:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f93dcfa9a9e2dcbae722b06ececba4c38dcfbcac549a72557a9f1efba7413485","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/9dad1b1e487525e61b58e9eda9429efaeb449f4405b61356b7bc03c1d88068e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_and_solutions_01:2 -> audio/generated/ko-KR/dialogues/9e514bad06cb57ef94ffaf8673996bba82d7f9fee326d0cc90aa395e615a6460.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c18bd36e-e536-553b-8ec5-fa8bb38dd154', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_and_solutions_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c3a07a440a31fc9f68439228d38c896daff73ae7f6c6864455cd3fb1b7ddff96'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31c2017c-d9f0-5121-942d-2f2433c23213', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c18bd36e-e536-553b-8ec5-fa8bb38dd154', 1), 'c3a07a440a31fc9f68439228d38c896daff73ae7f6c6864455cd3fb1b7ddff96',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9e514bad06cb57ef94ffaf8673996bba82d7f9fee326d0cc90aa395e615a6460.mp3', 2690, '2026-09-13 22:59:33.617646', 'e975f3e71f3d416bb1baf46cc58c18b1c183434af2479f77287f8d94ab7abc40', 'validated', '{"audio_key":"9e514bad06cb57ef94ffaf8673996bba82d7f9fee326d0cc90aa395e615a6460","entity_key":"d_problems_and_solutions_01:2","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e975f3e71f3d416bb1baf46cc58c18b1c183434af2479f77287f8d94ab7abc40","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/9e514bad06cb57ef94ffaf8673996bba82d7f9fee326d0cc90aa395e615a6460.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experiences_and_change_02:1 -> audio/generated/ko-KR/dialogues/9e6328c349bbcbca98539e09899f4ad882c221e047f0081db59fc43bf6c558b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5bbde80b-af41-566d-9151-208b6a8150c3', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experiences_and_change_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0fa9aaf0a2319d0c52ba23fa85b369acf7ca386e5c4d4ee9cf89c88a64524936'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7ff08ed-949d-5748-81e3-05212cfede0c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5bbde80b-af41-566d-9151-208b6a8150c3', 1), '0fa9aaf0a2319d0c52ba23fa85b369acf7ca386e5c4d4ee9cf89c88a64524936',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9e6328c349bbcbca98539e09899f4ad882c221e047f0081db59fc43bf6c558b5.mp3', 2168, '2026-09-13 22:59:33.946509', '857949f9877f30d9dad975ff7809103f00e54e2b13088a875d9adaf553d664ff', 'validated', '{"audio_key":"9e6328c349bbcbca98539e09899f4ad882c221e047f0081db59fc43bf6c558b5","entity_key":"d_experiences_and_change_02:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"857949f9877f30d9dad975ff7809103f00e54e2b13088a875d9adaf553d664ff","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/9e6328c349bbcbca98539e09899f4ad882c221e047f0081db59fc43bf6c558b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_and_solutions_02:2 -> audio/generated/ko-KR/dialogues/a1bdb1b440122dfd3b83cc58623e861ef11b19439ff567c9af3e7448050f00a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('72ec3c4e-3db4-5abd-9971-3ec9a4ab906d', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_and_solutions_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd34952ac478a380ef5eb6dbdf69c505c8fb9832940ce43533d58fb3f0e3c9665'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e35fd7ab-854a-5117-a86f-4b2a18eccfce', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('72ec3c4e-3db4-5abd-9971-3ec9a4ab906d', 1), 'd34952ac478a380ef5eb6dbdf69c505c8fb9832940ce43533d58fb3f0e3c9665',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a1bdb1b440122dfd3b83cc58623e861ef11b19439ff567c9af3e7448050f00a3.mp3', 1906, '2026-09-13 22:59:34.729147', 'd7479dbc4ec675e26ab52f0f8aaf244ed199629d854a360c27a6ae0baffc844f', 'validated', '{"audio_key":"a1bdb1b440122dfd3b83cc58623e861ef11b19439ff567c9af3e7448050f00a3","entity_key":"d_problems_and_solutions_02:2","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d7479dbc4ec675e26ab52f0f8aaf244ed199629d854a360c27a6ae0baffc844f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/a1bdb1b440122dfd3b83cc58623e861ef11b19439ff567c9af3e7448050f00a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_and_sources_02:4 -> audio/generated/ko-KR/dialogues/a3def7b5fb0ad832af144894ec0b5347497d85558a7ded958894154b91a5bc62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c4c0dcb5-5a54-5216-a909-5bba64590976', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_and_sources_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ca76aa4f75541c15f273be7e473a795a2d8614e3c726632e9bcfb0e6fd58d39'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29fc9362-1a12-5406-b1a4-d35f85a6939f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c4c0dcb5-5a54-5216-a909-5bba64590976', 1), '7ca76aa4f75541c15f273be7e473a795a2d8614e3c726632e9bcfb0e6fd58d39',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a3def7b5fb0ad832af144894ec0b5347497d85558a7ded958894154b91a5bc62.mp3', 2742, '2026-09-13 22:59:35.189207', '596c395a52b230f0f92d510ed68d91eba31a174f5c90d6c05aaf81e263465618', 'validated', '{"audio_key":"a3def7b5fb0ad832af144894ec0b5347497d85558a7ded958894154b91a5bc62","entity_key":"d_media_and_sources_02:4","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"596c395a52b230f0f92d510ed68d91eba31a174f5c90d6c05aaf81e263465618","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/a3def7b5fb0ad832af144894ec0b5347497d85558a7ded958894154b91a5bc62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_and_effort_01:2 -> audio/generated/ko-KR/dialogues/af11a1d25af313a973eba18273dbdd3d6d654cc645accb013c4621037b5c208f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5d0a42a8-3cb9-5c04-aaeb-7053bf6e9b66', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_and_effort_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4072cc72d66c5910d723b1fa82796339af68b444f314caa59a5a4206dd5aee1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6b4ec4a-d1f1-5f44-a092-1134f4585300', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5d0a42a8-3cb9-5c04-aaeb-7053bf6e9b66', 1), 'a4072cc72d66c5910d723b1fa82796339af68b444f314caa59a5a4206dd5aee1',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/af11a1d25af313a973eba18273dbdd3d6d654cc645accb013c4621037b5c208f.mp3', 3892, '2026-09-13 22:59:36.131749', '9112d9c4c3a22c81aacbc490ca225a474fbc444ed161cd2d1e89e5ece2c679b8', 'validated', '{"audio_key":"af11a1d25af313a973eba18273dbdd3d6d654cc645accb013c4621037b5c208f","entity_key":"d_goals_and_effort_01:2","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9112d9c4c3a22c81aacbc490ca225a474fbc444ed161cd2d1e89e5ece2c679b8","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/af11a1d25af313a973eba18273dbdd3d6d654cc645accb013c4621037b5c208f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_evidence_01:2 -> audio/generated/ko-KR/dialogues/b868d845c3f46f3b296845e3a3ef9039f18671e8cdee871a335f58c815870da5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d34c137d-042c-52de-8d19-e312fa48c333', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_evidence_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5688f99d47f3ff64a7699b93eecddbc90a33812fbdef87f0e294915d0b62a48b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d114f700-9f0d-56f0-af51-44e126b16acb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d34c137d-042c-52de-8d19-e312fa48c333', 1), '5688f99d47f3ff64a7699b93eecddbc90a33812fbdef87f0e294915d0b62a48b',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b868d845c3f46f3b296845e3a3ef9039f18671e8cdee871a335f58c815870da5.mp3', 3004, '2026-09-13 22:59:36.418154', 'c0b7c6f5da8606a230e6e2d89f94a75c5fed84eb023fd0b29535e5a76a546726', 'validated', '{"audio_key":"b868d845c3f46f3b296845e3a3ef9039f18671e8cdee871a335f58c815870da5","entity_key":"d_opinions_and_evidence_01:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c0b7c6f5da8606a230e6e2d89f94a75c5fed84eb023fd0b29535e5a76a546726","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/b868d845c3f46f3b296845e3a3ef9039f18671e8cdee871a335f58c815870da5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experiences_and_change_02:2 -> audio/generated/ko-KR/dialogues/b89de255a0795978dec86974c55927d08c700c98f46a476ffcee72f312203b1c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d537eb50-c858-51c4-8457-3b1eae517b20', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experiences_and_change_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6231779c4a66ac587de47433e44dcf3e77f84918f64caa03d0e2ab361afd4342'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('acdd23b3-053d-5080-ac43-f3fecedd7cd5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d537eb50-c858-51c4-8457-3b1eae517b20', 1), '6231779c4a66ac587de47433e44dcf3e77f84918f64caa03d0e2ab361afd4342',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b89de255a0795978dec86974c55927d08c700c98f46a476ffcee72f312203b1c.mp3', 3422, '2026-09-13 22:59:37.448768', 'b877547126b27234178d8b1580dfcfb25fe8f67c4091c8ecb1d41629c69b279e', 'validated', '{"audio_key":"b89de255a0795978dec86974c55927d08c700c98f46a476ffcee72f312203b1c","entity_key":"d_experiences_and_change_02:2","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b877547126b27234178d8b1580dfcfb25fe8f67c4091c8ecb1d41629c69b279e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/b89de255a0795978dec86974c55927d08c700c98f46a476ffcee72f312203b1c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_nuance_02:2 -> audio/generated/ko-KR/dialogues/b99296cdb8217f0cf42d8629b60a7fcbf9154a8dd53a86d55bb37eb45ba075d0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('200068c8-47eb-504f-a51d-53cb5ef382fd', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_nuance_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '39124b6161e865957dc6719f1dc6c2fcbd41e53bce9c1a3d842312a931bcf498'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18aa43eb-acbd-5963-a064-2406f92dc1c2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('200068c8-47eb-504f-a51d-53cb5ef382fd', 1), '39124b6161e865957dc6719f1dc6c2fcbd41e53bce9c1a3d842312a931bcf498',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b99296cdb8217f0cf42d8629b60a7fcbf9154a8dd53a86d55bb37eb45ba075d0.mp3', 1515, '2026-09-13 22:59:37.544700', 'a2edc8a563a4184bfeef7a3a04716c7fa1cc409328a8424682f64b0b29c5135f', 'validated', '{"audio_key":"b99296cdb8217f0cf42d8629b60a7fcbf9154a8dd53a86d55bb37eb45ba075d0","entity_key":"d_social_nuance_02:2","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a2edc8a563a4184bfeef7a3a04716c7fa1cc409328a8424682f64b0b29c5135f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/b99296cdb8217f0cf42d8629b60a7fcbf9154a8dd53a86d55bb37eb45ba075d0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_media_and_sources_02:2 -> audio/generated/ko-KR/dialogues/c7caf0c84c3e5c10db406c3f05cd9ffd57ee790d14ef5909a17b88cfb5642a57.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a10fd572-d66c-5eef-9df4-f75cea1d2a33', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_media_and_sources_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32e8b25abbcf3d77d59314741b892642365e1419dd85b1901cb31bc629a46cb3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6b2d9ad3-c1c2-5f79-8b0a-3d8f74f66297', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a10fd572-d66c-5eef-9df4-f75cea1d2a33', 1), '32e8b25abbcf3d77d59314741b892642365e1419dd85b1901cb31bc629a46cb3',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c7caf0c84c3e5c10db406c3f05cd9ffd57ee790d14ef5909a17b88cfb5642a57.mp3', 1854, '2026-09-13 22:59:38.567589', 'd93efe1f42ef0f4f116a5d6c48d871f07762927895a73dd3f4d8aa20d467de43', 'validated', '{"audio_key":"c7caf0c84c3e5c10db406c3f05cd9ffd57ee790d14ef5909a17b88cfb5642a57","entity_key":"d_media_and_sources_02:2","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d93efe1f42ef0f4f116a5d6c48d871f07762927895a73dd3f4d8aa20d467de43","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/c7caf0c84c3e5c10db406c3f05cd9ffd57ee790d14ef5909a17b88cfb5642a57.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_nuance_01:3 -> audio/generated/ko-KR/dialogues/c804576f6590d18d862e050b952aaf4b75cc82f997a58ce34a623da6fc37f945.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8a8f37eb-7a67-5a8c-b75b-62cdf068820b', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_nuance_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4cb39ae7160dca13c2f6554bceabe1053c8456759df2cb0f1650165a5c6975ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52b1ff4b-da34-5cfc-a67f-02d0be46d4ec', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8a8f37eb-7a67-5a8c-b75b-62cdf068820b', 1), '4cb39ae7160dca13c2f6554bceabe1053c8456759df2cb0f1650165a5c6975ae',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c804576f6590d18d862e050b952aaf4b75cc82f997a58ce34a623da6fc37f945.mp3', 2403, '2026-09-13 22:59:38.747517', 'b57ba4e6db55c543c6c46f72676cefb007924f98df7e4cef0bfab595061084a9', 'validated', '{"audio_key":"c804576f6590d18d862e050b952aaf4b75cc82f997a58ce34a623da6fc37f945","entity_key":"d_social_nuance_01:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b57ba4e6db55c543c6c46f72676cefb007924f98df7e4cef0bfab595061084a9","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/c804576f6590d18d862e050b952aaf4b75cc82f997a58ce34a623da6fc37f945.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_seoul_project_capstone_01:2 -> audio/generated/ko-KR/dialogues/cd545ebfafa97116c130ef67528cb9a4f59a38395ad2648642ddb91ceef2fb80.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3f340384-1361-5b7b-b5e1-65ef26dd7908', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_seoul_project_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fcc75490831cd7a46533e64355e17bb3df8d71aa4e89a92037c0705a9a04a6c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3af3415a-b7c4-58a5-a960-e1d805e71e99', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3f340384-1361-5b7b-b5e1-65ef26dd7908', 1), 'fcc75490831cd7a46533e64355e17bb3df8d71aa4e89a92037c0705a9a04a6c3',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/cd545ebfafa97116c130ef67528cb9a4f59a38395ad2648642ddb91ceef2fb80.mp3', 2324, '2026-09-13 22:59:39.912508', 'c8f253a4548e3299d4d56800070d15ae9eff113e7c45f1c8651955a78ebcc1ac', 'validated', '{"audio_key":"cd545ebfafa97116c130ef67528cb9a4f59a38395ad2648642ddb91ceef2fb80","entity_key":"d_b1_seoul_project_capstone_01:2","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c8f253a4548e3299d4d56800070d15ae9eff113e7c45f1c8651955a78ebcc1ac","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/cd545ebfafa97116c130ef67528cb9a4f59a38395ad2648642ddb91ceef2fb80.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_evidence_02:4 -> audio/generated/ko-KR/dialogues/ceb9794fa20de602c7e92d8c08db856cccffce36bf0fe1bda9fba088b794ada1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bbad282d-3b60-5345-86d8-7850e3a541e9', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_evidence_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4534171046347ba63afa54476d1d9a79016040376ee3cf12e957a7e1d3876cdc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce1b7bd4-1b95-511e-b9b1-4b784d686bc4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bbad282d-3b60-5345-86d8-7850e3a541e9', 1), '4534171046347ba63afa54476d1d9a79016040376ee3cf12e957a7e1d3876cdc',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ceb9794fa20de602c7e92d8c08db856cccffce36bf0fe1bda9fba088b794ada1.mp3', 2768, '2026-09-13 22:59:39.955364', '79e417329ab44bd2b41ea41f34c3655ead39532af5b64f51b225b80d71b55c5a', 'validated', '{"audio_key":"ceb9794fa20de602c7e92d8c08db856cccffce36bf0fe1bda9fba088b794ada1","entity_key":"d_opinions_and_evidence_02:4","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"79e417329ab44bd2b41ea41f34c3655ead39532af5b64f51b225b80d71b55c5a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/ceb9794fa20de602c7e92d8c08db856cccffce36bf0fe1bda9fba088b794ada1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_evidence_01:1 -> audio/generated/ko-KR/dialogues/d082f7374c8b0cfffd1d023e1a3698089654f48335aba5de9f44fe0fefb262b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6ba1c414-808a-569d-9da2-09e36513b460', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_evidence_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1bda7d4d3d02c8381bbf62863f27da0633a089035666267bd10c17cf968809b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ced50448-30b5-54c8-acc0-1135047e60f2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6ba1c414-808a-569d-9da2-09e36513b460', 1), 'c1bda7d4d3d02c8381bbf62863f27da0633a089035666267bd10c17cf968809b',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d082f7374c8b0cfffd1d023e1a3698089654f48335aba5de9f44fe0fefb262b7.mp3', 2507, '2026-09-13 22:59:41.204436', 'c2d3624b08106979a41aca0b1a0e85cf1d82da54c99183fbadd1a11dd8a9ca36', 'validated', '{"audio_key":"d082f7374c8b0cfffd1d023e1a3698089654f48335aba5de9f44fe0fefb262b7","entity_key":"d_opinions_and_evidence_01:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c2d3624b08106979a41aca0b1a0e85cf1d82da54c99183fbadd1a11dd8a9ca36","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/d082f7374c8b0cfffd1d023e1a3698089654f48335aba5de9f44fe0fefb262b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_information_01:3 -> audio/generated/ko-KR/dialogues/d8c851a73448583d8942574d5ed9d3ae51147ba41339cca24086a3a39d246301.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c55fa40e-491e-541d-85f8-f9fdf9c0027b', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_information_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8587a45d83c8f4ef79b8ae0e71f354587450bdc883a622e06860153e1968c7b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18b8ef99-890f-5fb6-96b6-a9fae441f2ed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c55fa40e-491e-541d-85f8-f9fdf9c0027b', 1), '8587a45d83c8f4ef79b8ae0e71f354587450bdc883a622e06860153e1968c7b2',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d8c851a73448583d8942574d5ed9d3ae51147ba41339cca24086a3a39d246301.mp3', 1097, '2026-09-13 22:59:41.008916', '68f13ed968b878959bdda529adea19bbff5798b15d35fe0e97c8193ec783fe3f', 'validated', '{"audio_key":"d8c851a73448583d8942574d5ed9d3ae51147ba41339cca24086a3a39d246301","entity_key":"d_reported_information_01:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"68f13ed968b878959bdda529adea19bbff5798b15d35fe0e97c8193ec783fe3f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/d8c851a73448583d8942574d5ed9d3ae51147ba41339cca24086a3a39d246301.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_b1_seoul_project_capstone_02:3 -> audio/generated/ko-KR/dialogues/d9ac7fce173055b5ea96a9f17f17d0a2c33932980846b5fbc872beea4e22c20f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('680cc726-76b5-59fc-8b03-848b7d3520d2', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_b1_seoul_project_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0f5ceca7b2b3775d714fb739b7affcb5583729a006d920ac0bc16b2288516849'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dcb712a0-4f64-5f7a-9f05-98c34fa48da9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('680cc726-76b5-59fc-8b03-848b7d3520d2', 1), '0f5ceca7b2b3775d714fb739b7affcb5583729a006d920ac0bc16b2288516849',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d9ac7fce173055b5ea96a9f17f17d0a2c33932980846b5fbc872beea4e22c20f.mp3', 2168, '2026-09-13 22:59:42.210910', 'bd388f888a78a2f638eb5fa81caaa3f0355f98397b2cfb4955686f44453031be', 'validated', '{"audio_key":"d9ac7fce173055b5ea96a9f17f17d0a2c33932980846b5fbc872beea4e22c20f","entity_key":"d_b1_seoul_project_capstone_02:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bd388f888a78a2f638eb5fa81caaa3f0355f98397b2cfb4955686f44453031be","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/d9ac7fce173055b5ea96a9f17f17d0a2c33932980846b5fbc872beea4e22c20f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_and_effort_01:3 -> audio/generated/ko-KR/dialogues/dd1b98cf49db7c0cb8af9ae25ff5037da9ef0c8f9a914d545034567fbe68c99b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4ad53fe1-0771-542d-8c6d-6388cecce78e', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_and_effort_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a723a70e3db0f0a84b844300f173152f16905c43ae23a0150c6a5c64041d80ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dfc67e11-4335-55e5-a9e9-800fdb26b2ed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4ad53fe1-0771-542d-8c6d-6388cecce78e', 1), 'a723a70e3db0f0a84b844300f173152f16905c43ae23a0150c6a5c64041d80ab',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/dd1b98cf49db7c0cb8af9ae25ff5037da9ef0c8f9a914d545034567fbe68c99b.mp3', 1567, '2026-09-13 22:59:42.313983', 'f94f2d90d920c6a3b85abaa5069a67e30d16d221fbc73643cdc1074578bffcd7', 'validated', '{"audio_key":"dd1b98cf49db7c0cb8af9ae25ff5037da9ef0c8f9a914d545034567fbe68c99b","entity_key":"d_goals_and_effort_01:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f94f2d90d920c6a3b85abaa5069a67e30d16d221fbc73643cdc1074578bffcd7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/dd1b98cf49db7c0cb8af9ae25ff5037da9ef0c8f9a914d545034567fbe68c99b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_storytelling_sequence_01:2 -> audio/generated/ko-KR/dialogues/e0d2704b3e5cb42db1811f6342f3839e8ed53f2907af073023f1e7874ac364c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a908e867-52cb-54df-b2f6-7264e21c8172', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_storytelling_sequence_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08f872697d310dfc0cdabfef7f4edc0646ff05a530ce7b8c1c2acedfe7ca0485'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('395c48e9-6f0a-5af4-af20-717c37b86932', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a908e867-52cb-54df-b2f6-7264e21c8172', 1), '08f872697d310dfc0cdabfef7f4edc0646ff05a530ce7b8c1c2acedfe7ca0485',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e0d2704b3e5cb42db1811f6342f3839e8ed53f2907af073023f1e7874ac364c3.mp3', 2533, '2026-09-13 22:59:43.428950', 'a21b74fc30603a1c109e6c3c350ac0f141834007ac65ed05aaf2fb47077e6858', 'validated', '{"audio_key":"e0d2704b3e5cb42db1811f6342f3839e8ed53f2907af073023f1e7874ac364c3","entity_key":"d_storytelling_sequence_01:2","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a21b74fc30603a1c109e6c3c350ac0f141834007ac65ed05aaf2fb47077e6858","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/e0d2704b3e5cb42db1811f6342f3839e8ed53f2907af073023f1e7874ac364c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experiences_and_change_02:4 -> audio/generated/ko-KR/dialogues/e273a0840cf853aa0ac3f6c86bd2495bbbbeea28d5def87cd98f7977573a626e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8a23769b-3da4-5606-a33e-b072d208cd17', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experiences_and_change_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fbd1d4e2989857ec4e8a7a78c9635dd9e9283d0ba2d328072e105edbbb9586a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46e2d488-918d-54c9-8948-ffe5affa8da9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8a23769b-3da4-5606-a33e-b072d208cd17', 1), 'fbd1d4e2989857ec4e8a7a78c9635dd9e9283d0ba2d328072e105edbbb9586a7',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e273a0840cf853aa0ac3f6c86bd2495bbbbeea28d5def87cd98f7977573a626e.mp3', 2403, '2026-09-13 22:59:43.434384', 'a46e511c40cc2a9b7d91bc67683e75441b62b3980941b16f2ce757f56f0032bc', 'validated', '{"audio_key":"e273a0840cf853aa0ac3f6c86bd2495bbbbeea28d5def87cd98f7977573a626e","entity_key":"d_experiences_and_change_02:4","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a46e511c40cc2a9b7d91bc67683e75441b62b3980941b16f2ce757f56f0032bc","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/e273a0840cf853aa0ac3f6c86bd2495bbbbeea28d5def87cd98f7977573a626e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_and_solutions_01:3 -> audio/generated/ko-KR/dialogues/edac136bce0be38651a7a950e5cc1113a3d3aa50eaf9760dd1ab577fbdaa6a62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dbbe834f-04ad-5f34-838e-7ab7fe70450a', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_and_solutions_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ad47b155d52fde57b8d0d42547abe3976fb6e2a785fd434d78e1494faafc0dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf1414c9-1579-527d-967a-f66ff96ebdba', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dbbe834f-04ad-5f34-838e-7ab7fe70450a', 1), '3ad47b155d52fde57b8d0d42547abe3976fb6e2a785fd434d78e1494faafc0dc',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/edac136bce0be38651a7a950e5cc1113a3d3aa50eaf9760dd1ab577fbdaa6a62.mp3', 1332, '2026-09-13 22:59:44.522228', 'da9aa676785c9b636643bf71adaed213a9e1356b1d9e453baea186546f494fab', 'validated', '{"audio_key":"edac136bce0be38651a7a950e5cc1113a3d3aa50eaf9760dd1ab577fbdaa6a62","entity_key":"d_problems_and_solutions_01:3","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"da9aa676785c9b636643bf71adaed213a9e1356b1d9e453baea186546f494fab","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/edac136bce0be38651a7a950e5cc1113a3d3aa50eaf9760dd1ab577fbdaa6a62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reported_information_02:1 -> audio/generated/ko-KR/dialogues/ee653c81d221275d4a53c9feb5ca909438dc436ee4fe33331edbd304a828863b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0a6fff7c-f08e-535b-b222-d5fd435bbe6b', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reported_information_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b3d89520d23c98c45c6c2508a62769a04d708f5d66349df8f8d817de12c5e5b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46246099-678d-5ebd-9f12-baa491729fcf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0a6fff7c-f08e-535b-b222-d5fd435bbe6b', 1), 'b3d89520d23c98c45c6c2508a62769a04d708f5d66349df8f8d817de12c5e5b9',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ee653c81d221275d4a53c9feb5ca909438dc436ee4fe33331edbd304a828863b.mp3', 1619, '2026-09-13 22:59:44.527324', '7b59f2afb18082258d5d3c7954b602c9cf00eb6616625e6a8ab0822af88f03b1', 'validated', '{"audio_key":"ee653c81d221275d4a53c9feb5ca909438dc436ee4fe33331edbd304a828863b","entity_key":"d_reported_information_02:1","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7b59f2afb18082258d5d3c7954b602c9cf00eb6616625e6a8ab0822af88f03b1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/ee653c81d221275d4a53c9feb5ca909438dc436ee4fe33331edbd304a828863b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_storytelling_sequence_02:1 -> audio/generated/ko-KR/dialogues/eea0dd07e461a8fb7e0a468725d7b185e74b3dd352a986eab4391352d2d70fac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c9582481-7efe-5b4c-ba2b-5f3fcb06b0c0', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_storytelling_sequence_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1066bab6f6d91028d1d8d68c21524b59e471714df1656fdd4386b9f579073439'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e410d5c-4ac0-5a66-8d65-cf3fcf919dd2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c9582481-7efe-5b4c-ba2b-5f3fcb06b0c0', 1), '1066bab6f6d91028d1d8d68c21524b59e471714df1656fdd4386b9f579073439',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/eea0dd07e461a8fb7e0a468725d7b185e74b3dd352a986eab4391352d2d70fac.mp3', 1515, '2026-09-13 22:59:45.656622', '01e00657e0176b968564d3672e5b0dcbe162bbc9205a0f10c62770c561dc2c25', 'validated', '{"audio_key":"eea0dd07e461a8fb7e0a468725d7b185e74b3dd352a986eab4391352d2d70fac","entity_key":"d_storytelling_sequence_02:1","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"01e00657e0176b968564d3672e5b0dcbe162bbc9205a0f10c62770c561dc2c25","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/eea0dd07e461a8fb7e0a468725d7b185e74b3dd352a986eab4391352d2d70fac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experiences_and_change_01:1 -> audio/generated/ko-KR/dialogues/f17cc517a89005856c5220e688e7d201f084f9a7f182a1aa1926975268efabd8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('577fb05c-eb8e-5a8c-975a-ee2202af6963', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experiences_and_change_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d855c32b52ff986bcd802e81d6afe8c086c685efcabcdb6c7811805b4202003'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('984e9ca1-4522-5137-b78b-954b778983ab', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('577fb05c-eb8e-5a8c-975a-ee2202af6963', 1), '6d855c32b52ff986bcd802e81d6afe8c086c685efcabcdb6c7811805b4202003',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f17cc517a89005856c5220e688e7d201f084f9a7f182a1aa1926975268efabd8.mp3', 3004, '2026-09-13 22:59:45.779147', '46c79bfab931b3f1854a4c7b19aafcaa66602931d1b6654870c8707b3e287aa0', 'validated', '{"audio_key":"f17cc517a89005856c5220e688e7d201f084f9a7f182a1aa1926975268efabd8","entity_key":"d_experiences_and_change_01:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"46c79bfab931b3f1854a4c7b19aafcaa66602931d1b6654870c8707b3e287aa0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/f17cc517a89005856c5220e688e7d201f084f9a7f182a1aa1926975268efabd8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_experiences_and_change_01:4 -> audio/generated/ko-KR/dialogues/f4ac3da7ab2c9b495cce86a23c7c2e91effb2fe86a9e3bd55f9d48b1a38f4443.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c5653bd3-44b5-5a8b-b67c-be379f2838f9', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_experiences_and_change_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '840fbed18a826256312671eb79e4007efa7ce2c307ec251659d7dc8533651931'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('603372e1-7b70-5037-b4fa-2569f453194a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c5653bd3-44b5-5a8b-b67c-be379f2838f9', 1), '840fbed18a826256312671eb79e4007efa7ce2c307ec251659d7dc8533651931',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f4ac3da7ab2c9b495cce86a23c7c2e91effb2fe86a9e3bd55f9d48b1a38f4443.mp3', 2742, '2026-09-13 22:59:46.872122', '5c33be8be92350706e50d326b27111ed454a13cc6199a8ddc990d7dcb8c1f97e', 'validated', '{"audio_key":"f4ac3da7ab2c9b495cce86a23c7c2e91effb2fe86a9e3bd55f9d48b1a38f4443","entity_key":"d_experiences_and_change_01:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5c33be8be92350706e50d326b27111ed454a13cc6199a8ddc990d7dcb8c1f97e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/f4ac3da7ab2c9b495cce86a23c7c2e91effb2fe86a9e3bd55f9d48b1a38f4443.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_social_nuance_02:1 -> audio/generated/ko-KR/dialogues/fc2221f838a4c3d76cfa7e03ea826355c65788dfd57329bc0bc7b0086174c402.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('09ba6b8a-a068-5bf9-a086-720733392aec', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_social_nuance_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ed53c8dda9c0c5654dd4a65de7fe0f69f21eb274c6b60ed4e9762e275a00ed7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70940039-df5a-5b0a-bf12-7361b15bc8b9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('09ba6b8a-a068-5bf9-a086-720733392aec', 1), '1ed53c8dda9c0c5654dd4a65de7fe0f69f21eb274c6b60ed4e9762e275a00ed7',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/fc2221f838a4c3d76cfa7e03ea826355c65788dfd57329bc0bc7b0086174c402.mp3', 2089, '2026-09-13 22:59:46.953016', '174c278e04cca13cf46aa9b59d40ec5f246b2d24c72f3c390a5f8f16b44c1d5a', 'validated', '{"audio_key":"fc2221f838a4c3d76cfa7e03ea826355c65788dfd57329bc0bc7b0086174c402","entity_key":"d_social_nuance_02:1","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"174c278e04cca13cf46aa9b59d40ec5f246b2d24c72f3c390a5f8f16b44c1d5a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/fc2221f838a4c3d76cfa7e03ea826355c65788dfd57329bc0bc7b0086174c402.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_goals_and_effort_02:4 -> audio/generated/ko-KR/dialogues/fc6e4ec1cf44769a1167f1ae26796dd559cf44648309aa067bdc0758a97ce613.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8a06229f-228c-5a45-876a-be828b6dc876', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_goals_and_effort_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dab35ee86ee193a090f80d746bfd34a82bdf70db1d5333f55c11a8a62a69caf8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e34ba7b-c76c-51f6-9088-05032fb91d03', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8a06229f-228c-5a45-876a-be828b6dc876', 1), 'dab35ee86ee193a090f80d746bfd34a82bdf70db1d5333f55c11a8a62a69caf8',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/fc6e4ec1cf44769a1167f1ae26796dd559cf44648309aa067bdc0758a97ce613.mp3', 2272, '2026-09-13 22:59:48.051419', '3a650ea699ffdc5770206e8119653fefc6b31d7e842d6286f32afd17719a5c4a', 'validated', '{"audio_key":"fc6e4ec1cf44769a1167f1ae26796dd559cf44648309aa067bdc0758a97ce613","entity_key":"d_goals_and_effort_02:4","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3a650ea699ffdc5770206e8119653fefc6b31d7e842d6286f32afd17719a5c4a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/fc6e4ec1cf44769a1167f1ae26796dd559cf44648309aa067bdc0758a97ce613.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_problems_and_solutions_02:4 -> audio/generated/ko-KR/dialogues/fca651b416471b7456f9aa833aa88445968932e540b61cbd069e0819b6275a25.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('74fb8ab2-f300-5f44-9cd5-f3f3635dc063', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_problems_and_solutions_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '333734e9d7600ed9c67dd41a28088e92c8d03ed2c85f69369d7a8021eb544b59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4e2fe8c-30c0-58a8-b305-58ecb4f8f3a7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('74fb8ab2-f300-5f44-9cd5-f3f3635dc063', 1), '333734e9d7600ed9c67dd41a28088e92c8d03ed2c85f69369d7a8021eb544b59',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/fca651b416471b7456f9aa833aa88445968932e540b61cbd069e0819b6275a25.mp3', 2089, '2026-09-13 22:59:48.165903', '9915a9689d32e1e8644ee68af61fb6c3064b04fa8ef7777e6d126508786fff52', 'validated', '{"audio_key":"fca651b416471b7456f9aa833aa88445968932e540b61cbd069e0819b6275a25","entity_key":"d_problems_and_solutions_02:4","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9915a9689d32e1e8644ee68af61fb6c3064b04fa8ef7777e6d126508786fff52","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/fca651b416471b7456f9aa833aa88445968932e540b61cbd069e0819b6275a25.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_evidence_06 -> audio/generated/ko-KR/lexical/01c5bce1584bb96430f35de2a53b75b5dbd7bf5fab5228ba971fe84b42662356.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b3da236f-7c84-5208-986f-a9ce7a118b03', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_evidence_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1eaed37a207480d88b786dd4aeb41c3c6db1ac8130a4fbb6f5dea535f6b4ff91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6e97e85-cf6d-5236-805b-80b367e509f7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b3da236f-7c84-5208-986f-a9ce7a118b03', 1), '1eaed37a207480d88b786dd4aeb41c3c6db1ac8130a4fbb6f5dea535f6b4ff91',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/01c5bce1584bb96430f35de2a53b75b5dbd7bf5fab5228ba971fe84b42662356.mp3', 914, '2026-09-13 22:24:47.172740', '9e3e5cf41efeec635411d62a4dcf8ac602a77eb612e9481b2a8ff77e04669098', 'validated', '{"audio_key":"01c5bce1584bb96430f35de2a53b75b5dbd7bf5fab5228ba971fe84b42662356","entity_key":"lx_opinions_and_evidence_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9e3e5cf41efeec635411d62a4dcf8ac602a77eb612e9481b2a8ff77e04669098","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/01c5bce1584bb96430f35de2a53b75b5dbd7bf5fab5228ba971fe84b42662356.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_evidence_06 -> audio/generated/ko-KR/lexical/01c5bce1584bb96430f35de2a53b75b5dbd7bf5fab5228ba971fe84b42662356.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c1434d4e-c78f-5c00-8a29-b5070f339e9e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_evidence_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1eaed37a207480d88b786dd4aeb41c3c6db1ac8130a4fbb6f5dea535f6b4ff91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('17f0cd37-2af2-545e-be62-eddb741b6e2f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c1434d4e-c78f-5c00-8a29-b5070f339e9e', 1), '1eaed37a207480d88b786dd4aeb41c3c6db1ac8130a4fbb6f5dea535f6b4ff91',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/01c5bce1584bb96430f35de2a53b75b5dbd7bf5fab5228ba971fe84b42662356.mp3', 914, '2026-09-13 22:24:47.172740', '9e3e5cf41efeec635411d62a4dcf8ac602a77eb612e9481b2a8ff77e04669098', 'validated', '{"audio_key":"01c5bce1584bb96430f35de2a53b75b5dbd7bf5fab5228ba971fe84b42662356","entity_key":"wf_opinions_and_evidence_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9e3e5cf41efeec635411d62a4dcf8ac602a77eb612e9481b2a8ff77e04669098","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/01c5bce1584bb96430f35de2a53b75b5dbd7bf5fab5228ba971fe84b42662356.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_evidence_01 -> audio/generated/ko-KR/lexical/02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0f4e5377-7206-5cef-9bd8-a3e426f1e27b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_evidence_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd7794cf130b736a7916042cc14e3a797206fad2daf25ed41a53aacbb091b1bea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0fcee23e-9a14-581a-95ab-96a84f91fa75', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0f4e5377-7206-5cef-9bd8-a3e426f1e27b', 1), 'd7794cf130b736a7916042cc14e3a797206fad2daf25ed41a53aacbb091b1bea',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d.mp3', 1071, '2026-09-13 22:59:49.131556', '4c6e7d09e6a92a157aa649385f89077452261a799d2a8bad74d13506d58cf155', 'validated', '{"audio_key":"02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d","entity_key":"lx_opinions_and_evidence_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4c6e7d09e6a92a157aa649385f89077452261a799d2a8bad74d13506d58cf155","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_evidence_01 -> audio/generated/ko-KR/lexical/02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('25cc930c-a9a2-535a-b2c7-06bda8f4c0b4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_evidence_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd7794cf130b736a7916042cc14e3a797206fad2daf25ed41a53aacbb091b1bea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b721d6af-ef13-55b8-bd46-d876d5967fc6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('25cc930c-a9a2-535a-b2c7-06bda8f4c0b4', 1), 'd7794cf130b736a7916042cc14e3a797206fad2daf25ed41a53aacbb091b1bea',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d.mp3', 1071, '2026-09-13 22:59:49.131556', '4c6e7d09e6a92a157aa649385f89077452261a799d2a8bad74d13506d58cf155', 'validated', '{"audio_key":"02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d","entity_key":"wf_opinions_and_evidence_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4c6e7d09e6a92a157aa649385f89077452261a799d2a8bad74d13506d58cf155","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_experiences_and_change_06 -> audio/generated/ko-KR/lexical/081866f52bf0985623508c650639d0573eac08d1655ae6cf9cc86c051703b689.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8e67a023-6f83-5e23-b7d5-88ac7bb327be', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_experiences_and_change_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e01793b8616697780ae37d48bd8a692b47d0b30576b2cc8a078a5280e19aee95'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2fc55a0-2d44-5d8f-9766-f3557f314721', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8e67a023-6f83-5e23-b7d5-88ac7bb327be', 1), 'e01793b8616697780ae37d48bd8a692b47d0b30576b2cc8a078a5280e19aee95',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/081866f52bf0985623508c650639d0573eac08d1655ae6cf9cc86c051703b689.mp3', 1018, '2026-09-13 22:59:49.221363', '58b57052934bb6e8d36b6bb7f497eb0d0ed1512a6cd7ecc66c770c7b338d4caa', 'validated', '{"audio_key":"081866f52bf0985623508c650639d0573eac08d1655ae6cf9cc86c051703b689","entity_key":"lx_experiences_and_change_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"58b57052934bb6e8d36b6bb7f497eb0d0ed1512a6cd7ecc66c770c7b338d4caa","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/081866f52bf0985623508c650639d0573eac08d1655ae6cf9cc86c051703b689.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_experiences_and_change_06 -> audio/generated/ko-KR/lexical/081866f52bf0985623508c650639d0573eac08d1655ae6cf9cc86c051703b689.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('10afa370-8d3a-50e7-8884-794df365f7b1', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_experiences_and_change_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e01793b8616697780ae37d48bd8a692b47d0b30576b2cc8a078a5280e19aee95'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36caeaaf-b110-516c-b7b0-fe9579e31888', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('10afa370-8d3a-50e7-8884-794df365f7b1', 1), 'e01793b8616697780ae37d48bd8a692b47d0b30576b2cc8a078a5280e19aee95',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/081866f52bf0985623508c650639d0573eac08d1655ae6cf9cc86c051703b689.mp3', 1018, '2026-09-13 22:59:49.221363', '58b57052934bb6e8d36b6bb7f497eb0d0ed1512a6cd7ecc66c770c7b338d4caa', 'validated', '{"audio_key":"081866f52bf0985623508c650639d0573eac08d1655ae6cf9cc86c051703b689","entity_key":"wf_experiences_and_change_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"58b57052934bb6e8d36b6bb7f497eb0d0ed1512a6cd7ecc66c770c7b338d4caa","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/081866f52bf0985623508c650639d0573eac08d1655ae6cf9cc86c051703b689.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_experiences_and_change_03 -> audio/generated/ko-KR/lexical/0cf777163d9bd6e30a8afc72c556a5c870279e4a0510c5e97de06c8869589963.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d445eb4d-68d0-541b-9b9e-d595eab68aaf', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_experiences_and_change_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5898e8dec122b9adfff545312a543626863334dc13d5b28e35c058ba87286ca5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('224344f0-f2ff-59e3-9a16-35153810cb29', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d445eb4d-68d0-541b-9b9e-d595eab68aaf', 1), '5898e8dec122b9adfff545312a543626863334dc13d5b28e35c058ba87286ca5',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0cf777163d9bd6e30a8afc72c556a5c870279e4a0510c5e97de06c8869589963.mp3', 1253, '2026-09-13 22:59:50.255076', 'c4e1e4721c42a83f68d115b935b5e19b1fe1019ff0f07ed92b0eec97856885e8', 'validated', '{"audio_key":"0cf777163d9bd6e30a8afc72c556a5c870279e4a0510c5e97de06c8869589963","entity_key":"lx_experiences_and_change_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c4e1e4721c42a83f68d115b935b5e19b1fe1019ff0f07ed92b0eec97856885e8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0cf777163d9bd6e30a8afc72c556a5c870279e4a0510c5e97de06c8869589963.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_experiences_and_change_03 -> audio/generated/ko-KR/lexical/0cf777163d9bd6e30a8afc72c556a5c870279e4a0510c5e97de06c8869589963.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3389711c-a1ca-5b9a-96b8-21d6d09a8a0e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_experiences_and_change_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5898e8dec122b9adfff545312a543626863334dc13d5b28e35c058ba87286ca5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5fd1f617-229e-5647-9eef-d13159fcecde', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3389711c-a1ca-5b9a-96b8-21d6d09a8a0e', 1), '5898e8dec122b9adfff545312a543626863334dc13d5b28e35c058ba87286ca5',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0cf777163d9bd6e30a8afc72c556a5c870279e4a0510c5e97de06c8869589963.mp3', 1253, '2026-09-13 22:59:50.255076', 'c4e1e4721c42a83f68d115b935b5e19b1fe1019ff0f07ed92b0eec97856885e8', 'validated', '{"audio_key":"0cf777163d9bd6e30a8afc72c556a5c870279e4a0510c5e97de06c8869589963","entity_key":"wf_experiences_and_change_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c4e1e4721c42a83f68d115b935b5e19b1fe1019ff0f07ed92b0eec97856885e8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0cf777163d9bd6e30a8afc72c556a5c870279e4a0510c5e97de06c8869589963.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_information_01 -> audio/generated/ko-KR/lexical/0e21f6aee47ea3222c12cbed6e026ad15bf161c92e170c1c102475c43abea3c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('10c393ce-4b2d-5d28-8f70-9cac00188fea', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_information_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4adf4bd60c3c162639142d71a4aded7ac7420abd2484f5383d4e6295be101d27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c71d958f-d570-5f77-bdb9-2d05f2bd88da', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('10c393ce-4b2d-5d28-8f70-9cac00188fea', 1), '4adf4bd60c3c162639142d71a4aded7ac7420abd2484f5383d4e6295be101d27',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0e21f6aee47ea3222c12cbed6e026ad15bf161c92e170c1c102475c43abea3c0.mp3', 1018, '2026-09-13 22:59:50.320631', '7c2014cbce78f30b86a7975fa8f099062712964b1d7872d76885eb102c964a33', 'validated', '{"audio_key":"0e21f6aee47ea3222c12cbed6e026ad15bf161c92e170c1c102475c43abea3c0","entity_key":"lx_reported_information_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7c2014cbce78f30b86a7975fa8f099062712964b1d7872d76885eb102c964a33","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0e21f6aee47ea3222c12cbed6e026ad15bf161c92e170c1c102475c43abea3c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_information_01 -> audio/generated/ko-KR/lexical/0e21f6aee47ea3222c12cbed6e026ad15bf161c92e170c1c102475c43abea3c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2f7ad1c2-9158-5faf-9e69-49dca8db953b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_information_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4adf4bd60c3c162639142d71a4aded7ac7420abd2484f5383d4e6295be101d27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e4e526a-4b3e-599d-ba57-f90f1dac223e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2f7ad1c2-9158-5faf-9e69-49dca8db953b', 1), '4adf4bd60c3c162639142d71a4aded7ac7420abd2484f5383d4e6295be101d27',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0e21f6aee47ea3222c12cbed6e026ad15bf161c92e170c1c102475c43abea3c0.mp3', 1018, '2026-09-13 22:59:50.320631', '7c2014cbce78f30b86a7975fa8f099062712964b1d7872d76885eb102c964a33', 'validated', '{"audio_key":"0e21f6aee47ea3222c12cbed6e026ad15bf161c92e170c1c102475c43abea3c0","entity_key":"wf_reported_information_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7c2014cbce78f30b86a7975fa8f099062712964b1d7872d76885eb102c964a33","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0e21f6aee47ea3222c12cbed6e026ad15bf161c92e170c1c102475c43abea3c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_and_sources_01 -> audio/generated/ko-KR/lexical/115cd10e20799d3d4775d5d8129b556ff1ab0a60a148c346de1e4feae6f1a728.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5d21984e-e152-5907-96c4-bfb635cd47a3', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_and_sources_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e2cae5479f040a13ad7201b16b6d795429038f7f374a0f1b5a7c73b2e8a2d41f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fc1387de-7ec6-56bf-97a6-79145d34670d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5d21984e-e152-5907-96c4-bfb635cd47a3', 1), 'e2cae5479f040a13ad7201b16b6d795429038f7f374a0f1b5a7c73b2e8a2d41f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/115cd10e20799d3d4775d5d8129b556ff1ab0a60a148c346de1e4feae6f1a728.mp3', 1018, '2026-09-13 22:59:51.337280', '7763b5320d911a76e4df4b9f2737ebfa4bf0b7403c7a4627a7e5c6f61a71a707', 'validated', '{"audio_key":"115cd10e20799d3d4775d5d8129b556ff1ab0a60a148c346de1e4feae6f1a728","entity_key":"lx_media_and_sources_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7763b5320d911a76e4df4b9f2737ebfa4bf0b7403c7a4627a7e5c6f61a71a707","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/115cd10e20799d3d4775d5d8129b556ff1ab0a60a148c346de1e4feae6f1a728.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_and_sources_01 -> audio/generated/ko-KR/lexical/115cd10e20799d3d4775d5d8129b556ff1ab0a60a148c346de1e4feae6f1a728.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f61cb24b-d6ad-5070-9bc4-45944f4989ed', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_and_sources_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e2cae5479f040a13ad7201b16b6d795429038f7f374a0f1b5a7c73b2e8a2d41f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d573510-57d3-5f51-9c9f-8d61b16ccbb1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f61cb24b-d6ad-5070-9bc4-45944f4989ed', 1), 'e2cae5479f040a13ad7201b16b6d795429038f7f374a0f1b5a7c73b2e8a2d41f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/115cd10e20799d3d4775d5d8129b556ff1ab0a60a148c346de1e4feae6f1a728.mp3', 1018, '2026-09-13 22:59:51.337280', '7763b5320d911a76e4df4b9f2737ebfa4bf0b7403c7a4627a7e5c6f61a71a707', 'validated', '{"audio_key":"115cd10e20799d3d4775d5d8129b556ff1ab0a60a148c346de1e4feae6f1a728","entity_key":"wf_media_and_sources_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7763b5320d911a76e4df4b9f2737ebfa4bf0b7403c7a4627a7e5c6f61a71a707","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/115cd10e20799d3d4775d5d8129b556ff1ab0a60a148c346de1e4feae6f1a728.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_conditions_and_consequences_03 -> audio/generated/ko-KR/lexical/124a67cf8d4bc8b8ad535800426dc5e6e6bcfa78a03400b2066c1dbd145bfb37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('62dcd7d5-4cc0-5616-b514-d0cb9ea02fa6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_conditions_and_consequences_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c34c7883b6c520d78423318f4f8e499588d006069d3c7ce1f687dc7ee1b73aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('44c7f7ca-19ab-509d-af9a-8c1e9088c539', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('62dcd7d5-4cc0-5616-b514-d0cb9ea02fa6', 1), '5c34c7883b6c520d78423318f4f8e499588d006069d3c7ce1f687dc7ee1b73aa',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/124a67cf8d4bc8b8ad535800426dc5e6e6bcfa78a03400b2066c1dbd145bfb37.mp3', 1149, '2026-09-13 22:59:51.357308', '6bfacf773f96c9ee8fe5e0320f8ce3b0e2052f058d25ef9c22af1c6fbfabd27e', 'validated', '{"audio_key":"124a67cf8d4bc8b8ad535800426dc5e6e6bcfa78a03400b2066c1dbd145bfb37","entity_key":"lx_conditions_and_consequences_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6bfacf773f96c9ee8fe5e0320f8ce3b0e2052f058d25ef9c22af1c6fbfabd27e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/124a67cf8d4bc8b8ad535800426dc5e6e6bcfa78a03400b2066c1dbd145bfb37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_conditions_and_consequences_03 -> audio/generated/ko-KR/lexical/124a67cf8d4bc8b8ad535800426dc5e6e6bcfa78a03400b2066c1dbd145bfb37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('39101ee7-0e96-5fb4-ae32-32b3bde1379e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_conditions_and_consequences_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c34c7883b6c520d78423318f4f8e499588d006069d3c7ce1f687dc7ee1b73aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('237d8ec0-8112-56ff-aac3-4155b8ddfffb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('39101ee7-0e96-5fb4-ae32-32b3bde1379e', 1), '5c34c7883b6c520d78423318f4f8e499588d006069d3c7ce1f687dc7ee1b73aa',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/124a67cf8d4bc8b8ad535800426dc5e6e6bcfa78a03400b2066c1dbd145bfb37.mp3', 1149, '2026-09-13 22:59:51.357308', '6bfacf773f96c9ee8fe5e0320f8ce3b0e2052f058d25ef9c22af1c6fbfabd27e', 'validated', '{"audio_key":"124a67cf8d4bc8b8ad535800426dc5e6e6bcfa78a03400b2066c1dbd145bfb37","entity_key":"wf_conditions_and_consequences_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6bfacf773f96c9ee8fe5e0320f8ce3b0e2052f058d25ef9c22af1c6fbfabd27e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/124a67cf8d4bc8b8ad535800426dc5e6e6bcfa78a03400b2066c1dbd145bfb37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_social_nuance_03 -> audio/generated/ko-KR/lexical/13554729936e7dca2745794d861d0910e43b1a9d7de5eede8706bbfb3ccc6dbc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5e87fed5-6e0f-5a0e-8f75-9d9a29bf3f8e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_social_nuance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4557af22bfe7c8c10b12f6c6386ded5d77e54d1e8105b26dce567c6db996bb9a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c24b1347-dd43-5c39-99eb-231943a18255', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5e87fed5-6e0f-5a0e-8f75-9d9a29bf3f8e', 1), '4557af22bfe7c8c10b12f6c6386ded5d77e54d1e8105b26dce567c6db996bb9a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/13554729936e7dca2745794d861d0910e43b1a9d7de5eede8706bbfb3ccc6dbc.mp3', 1097, '2026-09-13 22:59:52.328971', '53b3995d021aaf1c084b130286d5091aeb38039a30df85b082f1795f84c69ba4', 'validated', '{"audio_key":"13554729936e7dca2745794d861d0910e43b1a9d7de5eede8706bbfb3ccc6dbc","entity_key":"lx_social_nuance_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"53b3995d021aaf1c084b130286d5091aeb38039a30df85b082f1795f84c69ba4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/13554729936e7dca2745794d861d0910e43b1a9d7de5eede8706bbfb3ccc6dbc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_social_nuance_03 -> audio/generated/ko-KR/lexical/13554729936e7dca2745794d861d0910e43b1a9d7de5eede8706bbfb3ccc6dbc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('11b3bc71-4ec3-5592-bd13-f6818f72f068', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_social_nuance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4557af22bfe7c8c10b12f6c6386ded5d77e54d1e8105b26dce567c6db996bb9a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c876ba2-bea2-59ec-b8ac-b1eced689769', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('11b3bc71-4ec3-5592-bd13-f6818f72f068', 1), '4557af22bfe7c8c10b12f6c6386ded5d77e54d1e8105b26dce567c6db996bb9a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/13554729936e7dca2745794d861d0910e43b1a9d7de5eede8706bbfb3ccc6dbc.mp3', 1097, '2026-09-13 22:59:52.328971', '53b3995d021aaf1c084b130286d5091aeb38039a30df85b082f1795f84c69ba4', 'validated', '{"audio_key":"13554729936e7dca2745794d861d0910e43b1a9d7de5eede8706bbfb3ccc6dbc","entity_key":"wf_social_nuance_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"53b3995d021aaf1c084b130286d5091aeb38039a30df85b082f1795f84c69ba4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/13554729936e7dca2745794d861d0910e43b1a9d7de5eede8706bbfb3ccc6dbc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_information_06 -> audio/generated/ko-KR/lexical/1a659ddf6506ae70463b273b68ed7c06ac95d44e24ff00ddd8fd8be8d1184677.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8495afd5-8743-5e77-8be1-a476caa88b4d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_information_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58977b8705722edc164c7758798de8d41ca178f98e5f4c3a7c40cc3afd54160b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4388ee46-e51c-5817-a9e5-a0327d4e6b4b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8495afd5-8743-5e77-8be1-a476caa88b4d', 1), '58977b8705722edc164c7758798de8d41ca178f98e5f4c3a7c40cc3afd54160b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1a659ddf6506ae70463b273b68ed7c06ac95d44e24ff00ddd8fd8be8d1184677.mp3', 914, '2026-09-13 22:59:52.378827', '706e8479bfe5fcf9f9b474dff4a045d5da7f714f8de60ea9ed47a41b1e4fedb5', 'validated', '{"audio_key":"1a659ddf6506ae70463b273b68ed7c06ac95d44e24ff00ddd8fd8be8d1184677","entity_key":"lx_reported_information_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"706e8479bfe5fcf9f9b474dff4a045d5da7f714f8de60ea9ed47a41b1e4fedb5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1a659ddf6506ae70463b273b68ed7c06ac95d44e24ff00ddd8fd8be8d1184677.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_information_06 -> audio/generated/ko-KR/lexical/1a659ddf6506ae70463b273b68ed7c06ac95d44e24ff00ddd8fd8be8d1184677.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7897a6ad-b6ce-5225-a48a-caa78e54981d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_information_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58977b8705722edc164c7758798de8d41ca178f98e5f4c3a7c40cc3afd54160b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('801aa1a8-8fc0-51b6-a730-bd4ced1a7bd0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7897a6ad-b6ce-5225-a48a-caa78e54981d', 1), '58977b8705722edc164c7758798de8d41ca178f98e5f4c3a7c40cc3afd54160b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1a659ddf6506ae70463b273b68ed7c06ac95d44e24ff00ddd8fd8be8d1184677.mp3', 914, '2026-09-13 22:59:52.378827', '706e8479bfe5fcf9f9b474dff4a045d5da7f714f8de60ea9ed47a41b1e4fedb5', 'validated', '{"audio_key":"1a659ddf6506ae70463b273b68ed7c06ac95d44e24ff00ddd8fd8be8d1184677","entity_key":"wf_reported_information_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"706e8479bfe5fcf9f9b474dff4a045d5da7f714f8de60ea9ed47a41b1e4fedb5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1a659ddf6506ae70463b273b68ed7c06ac95d44e24ff00ddd8fd8be8d1184677.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_evidence_04 -> audio/generated/ko-KR/lexical/27b91576b45303a2ca4757987fb97a01d96fdd14c436aa384fc10d2e221c9b38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fdcded50-259c-5f70-b86c-a4c1dd314b25', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_evidence_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a204c3bdd36dba938b09449c7986efb67ce379d534df54b2d62dfa861cd4c0bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d405bbf-e5ff-5907-8c69-69d54a80d32f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fdcded50-259c-5f70-b86c-a4c1dd314b25', 1), 'a204c3bdd36dba938b09449c7986efb67ce379d534df54b2d62dfa861cd4c0bd',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/27b91576b45303a2ca4757987fb97a01d96fdd14c436aa384fc10d2e221c9b38.mp3', 1071, '2026-09-13 22:59:53.369679', '71e784abc9fd19e0b029307fa4d2da9c1131ec751154d73ff9df309cd7a566e1', 'validated', '{"audio_key":"27b91576b45303a2ca4757987fb97a01d96fdd14c436aa384fc10d2e221c9b38","entity_key":"lx_opinions_and_evidence_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"71e784abc9fd19e0b029307fa4d2da9c1131ec751154d73ff9df309cd7a566e1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/27b91576b45303a2ca4757987fb97a01d96fdd14c436aa384fc10d2e221c9b38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_evidence_04 -> audio/generated/ko-KR/lexical/27b91576b45303a2ca4757987fb97a01d96fdd14c436aa384fc10d2e221c9b38.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b6735999-a942-5092-a40c-79913dc2c0b6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_evidence_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a204c3bdd36dba938b09449c7986efb67ce379d534df54b2d62dfa861cd4c0bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f68e2b9-5226-5397-9c7a-8115a6f0d299', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b6735999-a942-5092-a40c-79913dc2c0b6', 1), 'a204c3bdd36dba938b09449c7986efb67ce379d534df54b2d62dfa861cd4c0bd',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/27b91576b45303a2ca4757987fb97a01d96fdd14c436aa384fc10d2e221c9b38.mp3', 1071, '2026-09-13 22:59:53.369679', '71e784abc9fd19e0b029307fa4d2da9c1131ec751154d73ff9df309cd7a566e1', 'validated', '{"audio_key":"27b91576b45303a2ca4757987fb97a01d96fdd14c436aa384fc10d2e221c9b38","entity_key":"wf_opinions_and_evidence_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"71e784abc9fd19e0b029307fa4d2da9c1131ec751154d73ff9df309cd7a566e1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/27b91576b45303a2ca4757987fb97a01d96fdd14c436aa384fc10d2e221c9b38.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b1_seoul_project_capstone_01 -> audio/generated/ko-KR/lexical/33f68061b17c39f527ad7accd6b5a1e5d074efbba061351d3673a36fe65264b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1d58a0ca-0d0b-5bd3-99da-c5a7a00d6b1e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b1_seoul_project_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '829a277fc72022a6ce357df65f7c43ed810117b2f8e2cf2d66087f0ac2fca10e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87cbe762-496c-5b5e-b394-49f699716f42', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1d58a0ca-0d0b-5bd3-99da-c5a7a00d6b1e', 1), '829a277fc72022a6ce357df65f7c43ed810117b2f8e2cf2d66087f0ac2fca10e',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/33f68061b17c39f527ad7accd6b5a1e5d074efbba061351d3673a36fe65264b5.mp3', 1018, '2026-09-13 22:59:53.389226', '1a0a74de41b8d30444a5e0401dd4ee97fa7d681b47d110aa8209fb37a84e0793', 'validated', '{"audio_key":"33f68061b17c39f527ad7accd6b5a1e5d074efbba061351d3673a36fe65264b5","entity_key":"lx_b1_seoul_project_capstone_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1a0a74de41b8d30444a5e0401dd4ee97fa7d681b47d110aa8209fb37a84e0793","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/33f68061b17c39f527ad7accd6b5a1e5d074efbba061351d3673a36fe65264b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b1_seoul_project_capstone_01 -> audio/generated/ko-KR/lexical/33f68061b17c39f527ad7accd6b5a1e5d074efbba061351d3673a36fe65264b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('71bebc8a-c80b-5c9d-8bd0-b183f329e120', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b1_seoul_project_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '829a277fc72022a6ce357df65f7c43ed810117b2f8e2cf2d66087f0ac2fca10e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8b37285-1366-50aa-9eae-909a2cb61602', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('71bebc8a-c80b-5c9d-8bd0-b183f329e120', 1), '829a277fc72022a6ce357df65f7c43ed810117b2f8e2cf2d66087f0ac2fca10e',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/33f68061b17c39f527ad7accd6b5a1e5d074efbba061351d3673a36fe65264b5.mp3', 1018, '2026-09-13 22:59:53.389226', '1a0a74de41b8d30444a5e0401dd4ee97fa7d681b47d110aa8209fb37a84e0793', 'validated', '{"audio_key":"33f68061b17c39f527ad7accd6b5a1e5d074efbba061351d3673a36fe65264b5","entity_key":"wf_b1_seoul_project_capstone_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1a0a74de41b8d30444a5e0401dd4ee97fa7d681b47d110aa8209fb37a84e0793","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/33f68061b17c39f527ad7accd6b5a1e5d074efbba061351d3673a36fe65264b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b1_seoul_project_capstone_03 -> audio/generated/ko-KR/lexical/3abb8f5e0db1ff65836643cb9b659be2087157bbd12800f9e1e408b61e68aa13.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ffa0483b-da35-53cb-913a-8b749bf624e0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b1_seoul_project_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6416867e472594899d643f676df1c0e5baa1b6335df82c9681ba6aa53fe1fe7d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f4db303-681c-5c7d-8e39-ac08bf647d15', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ffa0483b-da35-53cb-913a-8b749bf624e0', 1), '6416867e472594899d643f676df1c0e5baa1b6335df82c9681ba6aa53fe1fe7d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/3abb8f5e0db1ff65836643cb9b659be2087157bbd12800f9e1e408b61e68aa13.mp3', 966, '2026-09-13 22:59:54.459871', 'e0d38b8c0109f872e9db947c348c2bffa877bfe29b5873cefbe6e8fa5e9c241a', 'validated', '{"audio_key":"3abb8f5e0db1ff65836643cb9b659be2087157bbd12800f9e1e408b61e68aa13","entity_key":"lx_b1_seoul_project_capstone_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e0d38b8c0109f872e9db947c348c2bffa877bfe29b5873cefbe6e8fa5e9c241a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/3abb8f5e0db1ff65836643cb9b659be2087157bbd12800f9e1e408b61e68aa13.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b1_seoul_project_capstone_03 -> audio/generated/ko-KR/lexical/3abb8f5e0db1ff65836643cb9b659be2087157bbd12800f9e1e408b61e68aa13.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('764eb3f7-ef36-5b66-ae19-f29671cf62e4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b1_seoul_project_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6416867e472594899d643f676df1c0e5baa1b6335df82c9681ba6aa53fe1fe7d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc729f42-d504-58e5-8222-479c1d5ff887', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('764eb3f7-ef36-5b66-ae19-f29671cf62e4', 1), '6416867e472594899d643f676df1c0e5baa1b6335df82c9681ba6aa53fe1fe7d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/3abb8f5e0db1ff65836643cb9b659be2087157bbd12800f9e1e408b61e68aa13.mp3', 966, '2026-09-13 22:59:54.459871', 'e0d38b8c0109f872e9db947c348c2bffa877bfe29b5873cefbe6e8fa5e9c241a', 'validated', '{"audio_key":"3abb8f5e0db1ff65836643cb9b659be2087157bbd12800f9e1e408b61e68aa13","entity_key":"wf_b1_seoul_project_capstone_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e0d38b8c0109f872e9db947c348c2bffa877bfe29b5873cefbe6e8fa5e9c241a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/3abb8f5e0db1ff65836643cb9b659be2087157bbd12800f9e1e408b61e68aa13.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_evidence_05 -> audio/generated/ko-KR/lexical/42ae5da019423b22965462053050f61d2379483824b2467c489a2c90e6071245.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a89f3c2b-a32a-50e9-8f6e-da0df02352bf', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_evidence_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '48143506f5b6317f54cbf128183ec78d12a764040ad32a649b48edb2a9489e7c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a718069-75bf-563f-8305-3bf1dd98bd62', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a89f3c2b-a32a-50e9-8f6e-da0df02352bf', 1), '48143506f5b6317f54cbf128183ec78d12a764040ad32a649b48edb2a9489e7c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/42ae5da019423b22965462053050f61d2379483824b2467c489a2c90e6071245.mp3', 1071, '2026-09-13 22:59:54.416134', 'ba209822bb57a6ea1ae52b5ea732a1b741ff5da7a95d7320e0ed98e38704f2c7', 'validated', '{"audio_key":"42ae5da019423b22965462053050f61d2379483824b2467c489a2c90e6071245","entity_key":"lx_opinions_and_evidence_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ba209822bb57a6ea1ae52b5ea732a1b741ff5da7a95d7320e0ed98e38704f2c7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/42ae5da019423b22965462053050f61d2379483824b2467c489a2c90e6071245.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_evidence_05 -> audio/generated/ko-KR/lexical/42ae5da019423b22965462053050f61d2379483824b2467c489a2c90e6071245.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0f8afee2-5741-5270-aa45-02ab9e4a5ae2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_evidence_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '48143506f5b6317f54cbf128183ec78d12a764040ad32a649b48edb2a9489e7c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bddc3f81-aa64-5c37-bb5b-723e06769a59', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0f8afee2-5741-5270-aa45-02ab9e4a5ae2', 1), '48143506f5b6317f54cbf128183ec78d12a764040ad32a649b48edb2a9489e7c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/42ae5da019423b22965462053050f61d2379483824b2467c489a2c90e6071245.mp3', 1071, '2026-09-13 22:59:54.416134', 'ba209822bb57a6ea1ae52b5ea732a1b741ff5da7a95d7320e0ed98e38704f2c7', 'validated', '{"audio_key":"42ae5da019423b22965462053050f61d2379483824b2467c489a2c90e6071245","entity_key":"wf_opinions_and_evidence_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ba209822bb57a6ea1ae52b5ea732a1b741ff5da7a95d7320e0ed98e38704f2c7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/42ae5da019423b22965462053050f61d2379483824b2467c489a2c90e6071245.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_experiences_and_change_05 -> audio/generated/ko-KR/lexical/46a88f991393f3949f2531059c018ed2bc84242674216ca7cf55726cd8a30e2c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ec5eecc6-0726-5151-8732-318fffb62a59', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_experiences_and_change_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '23a9f0224cc40ec08adbcb959e34e7dca175fbfa6b79e8a24adc18ce7d8bb608'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28e72d65-605f-5c92-b2c8-fc82ab37bdcb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ec5eecc6-0726-5151-8732-318fffb62a59', 1), '23a9f0224cc40ec08adbcb959e34e7dca175fbfa6b79e8a24adc18ce7d8bb608',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/46a88f991393f3949f2531059c018ed2bc84242674216ca7cf55726cd8a30e2c.mp3', 966, '2026-09-13 22:59:55.453069', '9151f8efbe0e007058ed055d492c5a4cf370094f5487caea17f5d309e9665b36', 'validated', '{"audio_key":"46a88f991393f3949f2531059c018ed2bc84242674216ca7cf55726cd8a30e2c","entity_key":"lx_experiences_and_change_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9151f8efbe0e007058ed055d492c5a4cf370094f5487caea17f5d309e9665b36","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/46a88f991393f3949f2531059c018ed2bc84242674216ca7cf55726cd8a30e2c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_experiences_and_change_05 -> audio/generated/ko-KR/lexical/46a88f991393f3949f2531059c018ed2bc84242674216ca7cf55726cd8a30e2c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('00bdf6c0-f2a5-5cdb-a671-d5e15c284e46', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_experiences_and_change_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '23a9f0224cc40ec08adbcb959e34e7dca175fbfa6b79e8a24adc18ce7d8bb608'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd7814c1-4ebf-5198-8eb4-1604dba91d6c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('00bdf6c0-f2a5-5cdb-a671-d5e15c284e46', 1), '23a9f0224cc40ec08adbcb959e34e7dca175fbfa6b79e8a24adc18ce7d8bb608',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/46a88f991393f3949f2531059c018ed2bc84242674216ca7cf55726cd8a30e2c.mp3', 966, '2026-09-13 22:59:55.453069', '9151f8efbe0e007058ed055d492c5a4cf370094f5487caea17f5d309e9665b36', 'validated', '{"audio_key":"46a88f991393f3949f2531059c018ed2bc84242674216ca7cf55726cd8a30e2c","entity_key":"wf_experiences_and_change_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9151f8efbe0e007058ed055d492c5a4cf370094f5487caea17f5d309e9665b36","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/46a88f991393f3949f2531059c018ed2bc84242674216ca7cf55726cd8a30e2c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_problems_and_solutions_02 -> audio/generated/ko-KR/lexical/48091c3f7d0339459d53fe64735c6c796e705543e5b40bbb8eae5eff9c7cd048.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('078ae0cf-10fd-5324-8436-dcc741382bb7', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_problems_and_solutions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b84254868f623d278671ec7d0be7566b9601ca8f14cb2373f3b3376312a7ec87'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f2d05fcb-a61e-579e-b383-8e6b6b9e09d3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('078ae0cf-10fd-5324-8436-dcc741382bb7', 1), 'b84254868f623d278671ec7d0be7566b9601ca8f14cb2373f3b3376312a7ec87',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/48091c3f7d0339459d53fe64735c6c796e705543e5b40bbb8eae5eff9c7cd048.mp3', 862, '2026-09-13 22:59:55.499724', '28fcd6a70f9872642aa15d3bb146daa0588fee8010108e2231b1ec3049e4d4bf', 'validated', '{"audio_key":"48091c3f7d0339459d53fe64735c6c796e705543e5b40bbb8eae5eff9c7cd048","entity_key":"lx_problems_and_solutions_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"28fcd6a70f9872642aa15d3bb146daa0588fee8010108e2231b1ec3049e4d4bf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/48091c3f7d0339459d53fe64735c6c796e705543e5b40bbb8eae5eff9c7cd048.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_problems_and_solutions_02 -> audio/generated/ko-KR/lexical/48091c3f7d0339459d53fe64735c6c796e705543e5b40bbb8eae5eff9c7cd048.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a01d439b-9acc-5183-8dcc-1c0594175200', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_problems_and_solutions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b84254868f623d278671ec7d0be7566b9601ca8f14cb2373f3b3376312a7ec87'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('913d23b3-ec53-50b4-b4f6-e197c1414bc2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a01d439b-9acc-5183-8dcc-1c0594175200', 1), 'b84254868f623d278671ec7d0be7566b9601ca8f14cb2373f3b3376312a7ec87',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/48091c3f7d0339459d53fe64735c6c796e705543e5b40bbb8eae5eff9c7cd048.mp3', 862, '2026-09-13 22:59:55.499724', '28fcd6a70f9872642aa15d3bb146daa0588fee8010108e2231b1ec3049e4d4bf', 'validated', '{"audio_key":"48091c3f7d0339459d53fe64735c6c796e705543e5b40bbb8eae5eff9c7cd048","entity_key":"wf_problems_and_solutions_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"28fcd6a70f9872642aa15d3bb146daa0588fee8010108e2231b1ec3049e4d4bf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/48091c3f7d0339459d53fe64735c6c796e705543e5b40bbb8eae5eff9c7cd048.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_social_nuance_05 -> audio/generated/ko-KR/lexical/4edc3c50c5fcc7e3b502b7882719948d36e8599d428c45d3b4fc402703581b60.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('eb464b97-f247-5337-be7e-1d20a985eb46', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_social_nuance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b06afc40b9b98abc40e2c033878bb6c04af5d3cdfd8ccdbab2f12201a2ca3f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33f7fdb6-995f-516b-9b7c-0af1db4573cf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('eb464b97-f247-5337-be7e-1d20a985eb46', 1), '4b06afc40b9b98abc40e2c033878bb6c04af5d3cdfd8ccdbab2f12201a2ca3f3',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4edc3c50c5fcc7e3b502b7882719948d36e8599d428c45d3b4fc402703581b60.mp3', 1097, '2026-09-13 22:59:56.537493', '9bcf775095ed20f968b4a084b219c968f5c64cb1f2644a54854011a3db1e4de5', 'validated', '{"audio_key":"4edc3c50c5fcc7e3b502b7882719948d36e8599d428c45d3b4fc402703581b60","entity_key":"lx_social_nuance_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9bcf775095ed20f968b4a084b219c968f5c64cb1f2644a54854011a3db1e4de5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4edc3c50c5fcc7e3b502b7882719948d36e8599d428c45d3b4fc402703581b60.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_social_nuance_05 -> audio/generated/ko-KR/lexical/4edc3c50c5fcc7e3b502b7882719948d36e8599d428c45d3b4fc402703581b60.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3f8caa12-b0ce-59a2-83a4-1867aa34ae93', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_social_nuance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b06afc40b9b98abc40e2c033878bb6c04af5d3cdfd8ccdbab2f12201a2ca3f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5c23e16-48be-591e-8929-423066d4252d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3f8caa12-b0ce-59a2-83a4-1867aa34ae93', 1), '4b06afc40b9b98abc40e2c033878bb6c04af5d3cdfd8ccdbab2f12201a2ca3f3',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4edc3c50c5fcc7e3b502b7882719948d36e8599d428c45d3b4fc402703581b60.mp3', 1097, '2026-09-13 22:59:56.537493', '9bcf775095ed20f968b4a084b219c968f5c64cb1f2644a54854011a3db1e4de5', 'validated', '{"audio_key":"4edc3c50c5fcc7e3b502b7882719948d36e8599d428c45d3b4fc402703581b60","entity_key":"wf_social_nuance_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9bcf775095ed20f968b4a084b219c968f5c64cb1f2644a54854011a3db1e4de5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4edc3c50c5fcc7e3b502b7882719948d36e8599d428c45d3b4fc402703581b60.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_evidence_02 -> audio/generated/ko-KR/lexical/4fe1cd7f1c25bbbf59ba41c554edcf3e16de43e27cc577dd1192c6781cbefca4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('aae4be1e-80ae-514f-a8de-f1bc99f22fe5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_evidence_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9fe4df9d3af2057c3d1ef9182f285f0c9d775e49d7d575847d8031c187cae5c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e91ac424-29bc-55f6-8483-fffd49bacd02', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('aae4be1e-80ae-514f-a8de-f1bc99f22fe5', 1), '9fe4df9d3af2057c3d1ef9182f285f0c9d775e49d7d575847d8031c187cae5c7',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4fe1cd7f1c25bbbf59ba41c554edcf3e16de43e27cc577dd1192c6781cbefca4.mp3', 1253, '2026-09-13 22:59:56.605247', '357ce3a4038bc0c47168bc4d94875c87ea67adf6b73996316d8a0ca18d4e00bb', 'validated', '{"audio_key":"4fe1cd7f1c25bbbf59ba41c554edcf3e16de43e27cc577dd1192c6781cbefca4","entity_key":"lx_opinions_and_evidence_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"357ce3a4038bc0c47168bc4d94875c87ea67adf6b73996316d8a0ca18d4e00bb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4fe1cd7f1c25bbbf59ba41c554edcf3e16de43e27cc577dd1192c6781cbefca4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_evidence_02 -> audio/generated/ko-KR/lexical/4fe1cd7f1c25bbbf59ba41c554edcf3e16de43e27cc577dd1192c6781cbefca4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1f24fb81-47e2-5aa1-8951-2c1013534abe', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_evidence_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9fe4df9d3af2057c3d1ef9182f285f0c9d775e49d7d575847d8031c187cae5c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df52bd6f-d26b-53fa-9c5f-e706c1e1a7c0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1f24fb81-47e2-5aa1-8951-2c1013534abe', 1), '9fe4df9d3af2057c3d1ef9182f285f0c9d775e49d7d575847d8031c187cae5c7',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4fe1cd7f1c25bbbf59ba41c554edcf3e16de43e27cc577dd1192c6781cbefca4.mp3', 1253, '2026-09-13 22:59:56.605247', '357ce3a4038bc0c47168bc4d94875c87ea67adf6b73996316d8a0ca18d4e00bb', 'validated', '{"audio_key":"4fe1cd7f1c25bbbf59ba41c554edcf3e16de43e27cc577dd1192c6781cbefca4","entity_key":"wf_opinions_and_evidence_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"357ce3a4038bc0c47168bc4d94875c87ea67adf6b73996316d8a0ca18d4e00bb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4fe1cd7f1c25bbbf59ba41c554edcf3e16de43e27cc577dd1192c6781cbefca4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_evidence_03 -> audio/generated/ko-KR/lexical/55190f0dab7d6e07c83a2f638732de7d0e8a32ad66d68fff756925dcbb9027fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('89ef9842-bb1c-59ac-8ae2-72bd3620dd38', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_evidence_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '359027c169a8afa3896feed914d3e99b85eb285724ae3f3244ecf12978915797'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f667a25e-adf8-574b-864d-55875dc0da84', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('89ef9842-bb1c-59ac-8ae2-72bd3620dd38', 1), '359027c169a8afa3896feed914d3e99b85eb285724ae3f3244ecf12978915797',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/55190f0dab7d6e07c83a2f638732de7d0e8a32ad66d68fff756925dcbb9027fb.mp3', 966, '2026-09-13 22:59:57.602191', '17aad326120d704aa8a60f8915fdbedfeec38708a847dac17788e774cb642479', 'validated', '{"audio_key":"55190f0dab7d6e07c83a2f638732de7d0e8a32ad66d68fff756925dcbb9027fb","entity_key":"lx_opinions_and_evidence_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"17aad326120d704aa8a60f8915fdbedfeec38708a847dac17788e774cb642479","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/55190f0dab7d6e07c83a2f638732de7d0e8a32ad66d68fff756925dcbb9027fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_evidence_03 -> audio/generated/ko-KR/lexical/55190f0dab7d6e07c83a2f638732de7d0e8a32ad66d68fff756925dcbb9027fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d52e882c-533b-5d9b-8b8d-7e93d5216401', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_evidence_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '359027c169a8afa3896feed914d3e99b85eb285724ae3f3244ecf12978915797'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9cae8a0b-2baf-5134-8fed-f6c939130929', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d52e882c-533b-5d9b-8b8d-7e93d5216401', 1), '359027c169a8afa3896feed914d3e99b85eb285724ae3f3244ecf12978915797',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/55190f0dab7d6e07c83a2f638732de7d0e8a32ad66d68fff756925dcbb9027fb.mp3', 966, '2026-09-13 22:59:57.602191', '17aad326120d704aa8a60f8915fdbedfeec38708a847dac17788e774cb642479', 'validated', '{"audio_key":"55190f0dab7d6e07c83a2f638732de7d0e8a32ad66d68fff756925dcbb9027fb","entity_key":"wf_opinions_and_evidence_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"17aad326120d704aa8a60f8915fdbedfeec38708a847dac17788e774cb642479","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/55190f0dab7d6e07c83a2f638732de7d0e8a32ad66d68fff756925dcbb9027fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_goals_and_effort_01 -> audio/generated/ko-KR/lexical/57d446a056ce3bd2690fcc4a4856aefd2322482d07679685b4c1784d829cb256.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c970d2a2-5f4b-5e36-90cf-7b7cdc96881d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_goals_and_effort_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3182dd7d3d31e49a00b946d7651b21a13beed68948e0a1a40c2444718d98503c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7fcaffd-4823-5fb1-981b-8f5c387d993d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c970d2a2-5f4b-5e36-90cf-7b7cdc96881d', 1), '3182dd7d3d31e49a00b946d7651b21a13beed68948e0a1a40c2444718d98503c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/57d446a056ce3bd2690fcc4a4856aefd2322482d07679685b4c1784d829cb256.mp3', 1018, '2026-09-13 22:59:57.680138', '9c54ef982b390a7b5a87a6690983cef368eb78611245d548d5baab0f3ed17f89', 'validated', '{"audio_key":"57d446a056ce3bd2690fcc4a4856aefd2322482d07679685b4c1784d829cb256","entity_key":"lx_goals_and_effort_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9c54ef982b390a7b5a87a6690983cef368eb78611245d548d5baab0f3ed17f89","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/57d446a056ce3bd2690fcc4a4856aefd2322482d07679685b4c1784d829cb256.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_goals_and_effort_01 -> audio/generated/ko-KR/lexical/57d446a056ce3bd2690fcc4a4856aefd2322482d07679685b4c1784d829cb256.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('94ffc17b-6399-5186-bfd0-4bc505d5d483', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_goals_and_effort_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3182dd7d3d31e49a00b946d7651b21a13beed68948e0a1a40c2444718d98503c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd283a31-0466-5bf5-8b8c-6eebfe6a14d4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('94ffc17b-6399-5186-bfd0-4bc505d5d483', 1), '3182dd7d3d31e49a00b946d7651b21a13beed68948e0a1a40c2444718d98503c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/57d446a056ce3bd2690fcc4a4856aefd2322482d07679685b4c1784d829cb256.mp3', 1018, '2026-09-13 22:59:57.680138', '9c54ef982b390a7b5a87a6690983cef368eb78611245d548d5baab0f3ed17f89', 'validated', '{"audio_key":"57d446a056ce3bd2690fcc4a4856aefd2322482d07679685b4c1784d829cb256","entity_key":"wf_goals_and_effort_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9c54ef982b390a7b5a87a6690983cef368eb78611245d548d5baab0f3ed17f89","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/57d446a056ce3bd2690fcc4a4856aefd2322482d07679685b4c1784d829cb256.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_storytelling_sequence_01 -> audio/generated/ko-KR/lexical/5b81ccb90bac420855d0a2fb3141239b495c8e5b71fd0ee385e8b261a6773f3e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dd45ea1e-06af-5431-9c97-7bd756a34f40', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_storytelling_sequence_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '946f8147acaaf499e924272e089f3e0d915b5e8ee06ee5a95d8e91f1c06e9d5c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34776c1c-1e22-54f4-9b34-118f208e1c87', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dd45ea1e-06af-5431-9c97-7bd756a34f40', 1), '946f8147acaaf499e924272e089f3e0d915b5e8ee06ee5a95d8e91f1c06e9d5c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5b81ccb90bac420855d0a2fb3141239b495c8e5b71fd0ee385e8b261a6773f3e.mp3', 1097, '2026-09-13 22:59:58.646676', '183e234bc131987663855c6a4ae3a5f7a07b2e683f4b22ac42d85e622163b869', 'validated', '{"audio_key":"5b81ccb90bac420855d0a2fb3141239b495c8e5b71fd0ee385e8b261a6773f3e","entity_key":"lx_storytelling_sequence_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"183e234bc131987663855c6a4ae3a5f7a07b2e683f4b22ac42d85e622163b869","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5b81ccb90bac420855d0a2fb3141239b495c8e5b71fd0ee385e8b261a6773f3e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_storytelling_sequence_01 -> audio/generated/ko-KR/lexical/5b81ccb90bac420855d0a2fb3141239b495c8e5b71fd0ee385e8b261a6773f3e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0d464f4d-f6c6-506e-8c8d-3868f53500f3', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_storytelling_sequence_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '946f8147acaaf499e924272e089f3e0d915b5e8ee06ee5a95d8e91f1c06e9d5c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af7ae6a7-87b2-5690-ba30-8ff3e82075b3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0d464f4d-f6c6-506e-8c8d-3868f53500f3', 1), '946f8147acaaf499e924272e089f3e0d915b5e8ee06ee5a95d8e91f1c06e9d5c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5b81ccb90bac420855d0a2fb3141239b495c8e5b71fd0ee385e8b261a6773f3e.mp3', 1097, '2026-09-13 22:59:58.646676', '183e234bc131987663855c6a4ae3a5f7a07b2e683f4b22ac42d85e622163b869', 'validated', '{"audio_key":"5b81ccb90bac420855d0a2fb3141239b495c8e5b71fd0ee385e8b261a6773f3e","entity_key":"wf_storytelling_sequence_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"183e234bc131987663855c6a4ae3a5f7a07b2e683f4b22ac42d85e622163b869","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5b81ccb90bac420855d0a2fb3141239b495c8e5b71fd0ee385e8b261a6773f3e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_conditions_and_consequences_01 -> audio/generated/ko-KR/lexical/5ed91757dc69133864e4de7bb205f416ee06ff61dacbdc82726a3111ed3d8a57.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('73055f10-f059-5916-a889-2813d1538961', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_conditions_and_consequences_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '291ac97193c19dda0897c31282dd0096315a0888493ac1bc58fca7ce022ca7fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc7be34a-9bf3-5f5c-bdde-9fce7eab092d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('73055f10-f059-5916-a889-2813d1538961', 1), '291ac97193c19dda0897c31282dd0096315a0888493ac1bc58fca7ce022ca7fd',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5ed91757dc69133864e4de7bb205f416ee06ff61dacbdc82726a3111ed3d8a57.mp3', 1018, '2026-09-13 22:59:58.704812', '59257fe853ba3eceb61808c36362505cf6287de50527091b78d8fd63ba9eca64', 'validated', '{"audio_key":"5ed91757dc69133864e4de7bb205f416ee06ff61dacbdc82726a3111ed3d8a57","entity_key":"lx_conditions_and_consequences_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"59257fe853ba3eceb61808c36362505cf6287de50527091b78d8fd63ba9eca64","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5ed91757dc69133864e4de7bb205f416ee06ff61dacbdc82726a3111ed3d8a57.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_conditions_and_consequences_01 -> audio/generated/ko-KR/lexical/5ed91757dc69133864e4de7bb205f416ee06ff61dacbdc82726a3111ed3d8a57.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('87b7c29e-7105-5d3a-bcf2-ae0332ee2d17', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_conditions_and_consequences_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '291ac97193c19dda0897c31282dd0096315a0888493ac1bc58fca7ce022ca7fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a465d4a-7428-532d-8064-0e7831685445', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('87b7c29e-7105-5d3a-bcf2-ae0332ee2d17', 1), '291ac97193c19dda0897c31282dd0096315a0888493ac1bc58fca7ce022ca7fd',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5ed91757dc69133864e4de7bb205f416ee06ff61dacbdc82726a3111ed3d8a57.mp3', 1018, '2026-09-13 22:59:58.704812', '59257fe853ba3eceb61808c36362505cf6287de50527091b78d8fd63ba9eca64', 'validated', '{"audio_key":"5ed91757dc69133864e4de7bb205f416ee06ff61dacbdc82726a3111ed3d8a57","entity_key":"wf_conditions_and_consequences_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"59257fe853ba3eceb61808c36362505cf6287de50527091b78d8fd63ba9eca64","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5ed91757dc69133864e4de7bb205f416ee06ff61dacbdc82726a3111ed3d8a57.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_information_03 -> audio/generated/ko-KR/lexical/60d091348d85fc9002cdaf077c2f801e78ea85d4ac1b5627a6630210a2690a4b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f8727fd7-5e4a-5288-99c7-cce47cd23c7a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_information_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa543a9d6cf324986fbddb6c88daa7ef9429d0666ed9171203019529a656be77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1bbdce8b-ee72-5c78-991b-50e57d476e37', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f8727fd7-5e4a-5288-99c7-cce47cd23c7a', 1), 'fa543a9d6cf324986fbddb6c88daa7ef9429d0666ed9171203019529a656be77',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/60d091348d85fc9002cdaf077c2f801e78ea85d4ac1b5627a6630210a2690a4b.mp3', 1149, '2026-09-13 22:59:59.895775', '5295e99837f6e1ce96f7e50ea90ac8e9b0e69047708934f75020fe1734f3f890', 'validated', '{"audio_key":"60d091348d85fc9002cdaf077c2f801e78ea85d4ac1b5627a6630210a2690a4b","entity_key":"lx_reported_information_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5295e99837f6e1ce96f7e50ea90ac8e9b0e69047708934f75020fe1734f3f890","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/60d091348d85fc9002cdaf077c2f801e78ea85d4ac1b5627a6630210a2690a4b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_information_03 -> audio/generated/ko-KR/lexical/60d091348d85fc9002cdaf077c2f801e78ea85d4ac1b5627a6630210a2690a4b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c322378e-f001-539b-92f1-1a46e4f72722', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_information_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa543a9d6cf324986fbddb6c88daa7ef9429d0666ed9171203019529a656be77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3ef2c87-c39a-5099-8134-66c2db40c9e4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c322378e-f001-539b-92f1-1a46e4f72722', 1), 'fa543a9d6cf324986fbddb6c88daa7ef9429d0666ed9171203019529a656be77',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/60d091348d85fc9002cdaf077c2f801e78ea85d4ac1b5627a6630210a2690a4b.mp3', 1149, '2026-09-13 22:59:59.895775', '5295e99837f6e1ce96f7e50ea90ac8e9b0e69047708934f75020fe1734f3f890', 'validated', '{"audio_key":"60d091348d85fc9002cdaf077c2f801e78ea85d4ac1b5627a6630210a2690a4b","entity_key":"wf_reported_information_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5295e99837f6e1ce96f7e50ea90ac8e9b0e69047708934f75020fe1734f3f890","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/60d091348d85fc9002cdaf077c2f801e78ea85d4ac1b5627a6630210a2690a4b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b1_seoul_project_capstone_05 -> audio/generated/ko-KR/lexical/652e12f690239c579638dc4d6c177d407cdf426d33164c01fefaadbb697d9473.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('690edcb2-d843-5d61-8df9-40a1ec75f4ff', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b1_seoul_project_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b85fef8d642e328a9cacfbb0377dccbde5a274abd3b0cd31b9dbeb40a1c1f519'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22621bdc-9a46-5670-b048-13a3bf5779c0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('690edcb2-d843-5d61-8df9-40a1ec75f4ff', 1), 'b85fef8d642e328a9cacfbb0377dccbde5a274abd3b0cd31b9dbeb40a1c1f519',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/652e12f690239c579638dc4d6c177d407cdf426d33164c01fefaadbb697d9473.mp3', 1201, '2026-09-13 22:59:59.755281', '0c20470141bfa92a3fdb97b8ac0059030a99d992ee32a09e9e074b7676cd0d77', 'validated', '{"audio_key":"652e12f690239c579638dc4d6c177d407cdf426d33164c01fefaadbb697d9473","entity_key":"lx_b1_seoul_project_capstone_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0c20470141bfa92a3fdb97b8ac0059030a99d992ee32a09e9e074b7676cd0d77","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/652e12f690239c579638dc4d6c177d407cdf426d33164c01fefaadbb697d9473.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b1_seoul_project_capstone_05 -> audio/generated/ko-KR/lexical/652e12f690239c579638dc4d6c177d407cdf426d33164c01fefaadbb697d9473.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fcaa96c8-183b-54f8-9d0d-0f11c3eb7f05', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b1_seoul_project_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b85fef8d642e328a9cacfbb0377dccbde5a274abd3b0cd31b9dbeb40a1c1f519'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('93c31531-b7d7-55cb-9aec-8b8c8a6969b9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fcaa96c8-183b-54f8-9d0d-0f11c3eb7f05', 1), 'b85fef8d642e328a9cacfbb0377dccbde5a274abd3b0cd31b9dbeb40a1c1f519',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/652e12f690239c579638dc4d6c177d407cdf426d33164c01fefaadbb697d9473.mp3', 1201, '2026-09-13 22:59:59.755281', '0c20470141bfa92a3fdb97b8ac0059030a99d992ee32a09e9e074b7676cd0d77', 'validated', '{"audio_key":"652e12f690239c579638dc4d6c177d407cdf426d33164c01fefaadbb697d9473","entity_key":"wf_b1_seoul_project_capstone_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0c20470141bfa92a3fdb97b8ac0059030a99d992ee32a09e9e074b7676cd0d77","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/652e12f690239c579638dc4d6c177d407cdf426d33164c01fefaadbb697d9473.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_social_nuance_04 -> audio/generated/ko-KR/lexical/68f32bc57e1890538e6468f2cdd58fe3b9f4c96cd195570073e828fcacef3f62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('41fbb4d5-ecb1-5ef3-bd9b-12e0848c177e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_social_nuance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0d7b29bb8fee6469928053e553c996b853ae836795c21767a7347d11ee9de6f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('00ced27a-e60f-5700-ae1b-5e6e69b370db', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('41fbb4d5-ecb1-5ef3-bd9b-12e0848c177e', 1), 'b0d7b29bb8fee6469928053e553c996b853ae836795c21767a7347d11ee9de6f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/68f32bc57e1890538e6468f2cdd58fe3b9f4c96cd195570073e828fcacef3f62.mp3', 1149, '2026-09-13 23:00:00.807325', '2c352da460864d19a96633ea7ba2310234fc22abd2c61ad913e2d64673d603ef', 'validated', '{"audio_key":"68f32bc57e1890538e6468f2cdd58fe3b9f4c96cd195570073e828fcacef3f62","entity_key":"lx_social_nuance_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2c352da460864d19a96633ea7ba2310234fc22abd2c61ad913e2d64673d603ef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/68f32bc57e1890538e6468f2cdd58fe3b9f4c96cd195570073e828fcacef3f62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_social_nuance_04 -> audio/generated/ko-KR/lexical/68f32bc57e1890538e6468f2cdd58fe3b9f4c96cd195570073e828fcacef3f62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8473beb7-a4ea-55a9-a584-d0453dfd3272', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_social_nuance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0d7b29bb8fee6469928053e553c996b853ae836795c21767a7347d11ee9de6f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b9ea36b-ce6d-5709-add6-b2dbbedf5b4a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8473beb7-a4ea-55a9-a584-d0453dfd3272', 1), 'b0d7b29bb8fee6469928053e553c996b853ae836795c21767a7347d11ee9de6f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/68f32bc57e1890538e6468f2cdd58fe3b9f4c96cd195570073e828fcacef3f62.mp3', 1149, '2026-09-13 23:00:00.807325', '2c352da460864d19a96633ea7ba2310234fc22abd2c61ad913e2d64673d603ef', 'validated', '{"audio_key":"68f32bc57e1890538e6468f2cdd58fe3b9f4c96cd195570073e828fcacef3f62","entity_key":"wf_social_nuance_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2c352da460864d19a96633ea7ba2310234fc22abd2c61ad913e2d64673d603ef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/68f32bc57e1890538e6468f2cdd58fe3b9f4c96cd195570073e828fcacef3f62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_information_04 -> audio/generated/ko-KR/lexical/6ab0311fbae743b613b9a61578bc3aa7dcf2a8f7c06dec72085a9d9fbd46eb78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('27a3e2b2-19f1-52d6-9e17-85c769fb3370', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_information_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1aacb54c499242964cc07e606bd5b1d628a56b6dd22267ae14202fbd35884fc4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fde3d3c1-3f98-5bf8-8585-1f25e7f73a66', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('27a3e2b2-19f1-52d6-9e17-85c769fb3370', 1), '1aacb54c499242964cc07e606bd5b1d628a56b6dd22267ae14202fbd35884fc4',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6ab0311fbae743b613b9a61578bc3aa7dcf2a8f7c06dec72085a9d9fbd46eb78.mp3', 966, '2026-09-13 23:00:00.937988', '87e18ef54b13ef059102fabf94112cd9659963c0166beb37f83e1d178d45b358', 'validated', '{"audio_key":"6ab0311fbae743b613b9a61578bc3aa7dcf2a8f7c06dec72085a9d9fbd46eb78","entity_key":"lx_reported_information_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"87e18ef54b13ef059102fabf94112cd9659963c0166beb37f83e1d178d45b358","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6ab0311fbae743b613b9a61578bc3aa7dcf2a8f7c06dec72085a9d9fbd46eb78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_information_04 -> audio/generated/ko-KR/lexical/6ab0311fbae743b613b9a61578bc3aa7dcf2a8f7c06dec72085a9d9fbd46eb78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('540419f0-8f9a-5700-8463-079d35d63ed0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_information_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1aacb54c499242964cc07e606bd5b1d628a56b6dd22267ae14202fbd35884fc4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a0820d8-6eef-57ee-b6fe-e003faba17ff', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('540419f0-8f9a-5700-8463-079d35d63ed0', 1), '1aacb54c499242964cc07e606bd5b1d628a56b6dd22267ae14202fbd35884fc4',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6ab0311fbae743b613b9a61578bc3aa7dcf2a8f7c06dec72085a9d9fbd46eb78.mp3', 966, '2026-09-13 23:00:00.937988', '87e18ef54b13ef059102fabf94112cd9659963c0166beb37f83e1d178d45b358', 'validated', '{"audio_key":"6ab0311fbae743b613b9a61578bc3aa7dcf2a8f7c06dec72085a9d9fbd46eb78","entity_key":"wf_reported_information_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"87e18ef54b13ef059102fabf94112cd9659963c0166beb37f83e1d178d45b358","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6ab0311fbae743b613b9a61578bc3aa7dcf2a8f7c06dec72085a9d9fbd46eb78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_and_sources_06 -> audio/generated/ko-KR/lexical/6ff31cda13b14266c20e0110e7519a5a872955bb055b9e6b359fedc2dcbbe771.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('965bee6d-c933-5bd3-98b4-54cbffcb9757', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_and_sources_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '81227391e5628414baa0f29cb13b28e85a262a1a1a473e5ab0a83dd3a7a0ef5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8599eaca-263d-5d2f-ab57-4c63c710fa95', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('965bee6d-c933-5bd3-98b4-54cbffcb9757', 1), '81227391e5628414baa0f29cb13b28e85a262a1a1a473e5ab0a83dd3a7a0ef5a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6ff31cda13b14266c20e0110e7519a5a872955bb055b9e6b359fedc2dcbbe771.mp3', 1201, '2026-09-13 23:00:01.909313', 'e2905dd6afb5745b027be3217b5d70fa4edf6b1027b695d576d3c830bedbf89f', 'validated', '{"audio_key":"6ff31cda13b14266c20e0110e7519a5a872955bb055b9e6b359fedc2dcbbe771","entity_key":"lx_media_and_sources_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e2905dd6afb5745b027be3217b5d70fa4edf6b1027b695d576d3c830bedbf89f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6ff31cda13b14266c20e0110e7519a5a872955bb055b9e6b359fedc2dcbbe771.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_and_sources_06 -> audio/generated/ko-KR/lexical/6ff31cda13b14266c20e0110e7519a5a872955bb055b9e6b359fedc2dcbbe771.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fc3747ee-1f03-50e6-892b-79123a81518f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_and_sources_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '81227391e5628414baa0f29cb13b28e85a262a1a1a473e5ab0a83dd3a7a0ef5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb0499b1-6191-5e72-a63f-65de61f5c8a8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fc3747ee-1f03-50e6-892b-79123a81518f', 1), '81227391e5628414baa0f29cb13b28e85a262a1a1a473e5ab0a83dd3a7a0ef5a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6ff31cda13b14266c20e0110e7519a5a872955bb055b9e6b359fedc2dcbbe771.mp3', 1201, '2026-09-13 23:00:01.909313', 'e2905dd6afb5745b027be3217b5d70fa4edf6b1027b695d576d3c830bedbf89f', 'validated', '{"audio_key":"6ff31cda13b14266c20e0110e7519a5a872955bb055b9e6b359fedc2dcbbe771","entity_key":"wf_media_and_sources_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e2905dd6afb5745b027be3217b5d70fa4edf6b1027b695d576d3c830bedbf89f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6ff31cda13b14266c20e0110e7519a5a872955bb055b9e6b359fedc2dcbbe771.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_storytelling_sequence_04 -> audio/generated/ko-KR/lexical/7538317fdfa9bc931bb856db36fa271d84bbdafb7ccce01a4d49bfe69cccf4f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dabf0b0e-6bf8-5e63-b32b-a77487c4576b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_storytelling_sequence_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5efc47bf97f93630f9577da483db0c57b6b19ea99ebb37cf9380d26d2ec124bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('85f13939-e615-53f3-8a34-8fd02413ccea', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dabf0b0e-6bf8-5e63-b32b-a77487c4576b', 1), '5efc47bf97f93630f9577da483db0c57b6b19ea99ebb37cf9380d26d2ec124bf',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7538317fdfa9bc931bb856db36fa271d84bbdafb7ccce01a4d49bfe69cccf4f5.mp3', 1201, '2026-09-13 23:00:01.981621', '1aa02526487fa62554e94513751d85b70f83b2140b39a7777555df8342a364ae', 'validated', '{"audio_key":"7538317fdfa9bc931bb856db36fa271d84bbdafb7ccce01a4d49bfe69cccf4f5","entity_key":"lx_storytelling_sequence_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1aa02526487fa62554e94513751d85b70f83b2140b39a7777555df8342a364ae","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7538317fdfa9bc931bb856db36fa271d84bbdafb7ccce01a4d49bfe69cccf4f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_storytelling_sequence_04 -> audio/generated/ko-KR/lexical/7538317fdfa9bc931bb856db36fa271d84bbdafb7ccce01a4d49bfe69cccf4f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b0665fd3-9603-56a2-8f43-25374546619f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_storytelling_sequence_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5efc47bf97f93630f9577da483db0c57b6b19ea99ebb37cf9380d26d2ec124bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5296686-8c8e-5d92-b1d0-233e25b0917d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b0665fd3-9603-56a2-8f43-25374546619f', 1), '5efc47bf97f93630f9577da483db0c57b6b19ea99ebb37cf9380d26d2ec124bf',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7538317fdfa9bc931bb856db36fa271d84bbdafb7ccce01a4d49bfe69cccf4f5.mp3', 1201, '2026-09-13 23:00:01.981621', '1aa02526487fa62554e94513751d85b70f83b2140b39a7777555df8342a364ae', 'validated', '{"audio_key":"7538317fdfa9bc931bb856db36fa271d84bbdafb7ccce01a4d49bfe69cccf4f5","entity_key":"wf_storytelling_sequence_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1aa02526487fa62554e94513751d85b70f83b2140b39a7777555df8342a364ae","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7538317fdfa9bc931bb856db36fa271d84bbdafb7ccce01a4d49bfe69cccf4f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_social_nuance_02 -> audio/generated/ko-KR/lexical/75fa821ab24ca68c540a836f4cbdfd6ede91bf9999ce8e1c331ac844da8768e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('87566da3-45f8-51a0-8591-7b532d91453e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_social_nuance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc6314d04dbd1563ff5a34b8a4be0ff0a26c8b2058ac5eff392fdf20a5d328bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6df7ed5-2d31-5fed-8e47-e2d920417d6d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('87566da3-45f8-51a0-8591-7b532d91453e', 1), 'cc6314d04dbd1563ff5a34b8a4be0ff0a26c8b2058ac5eff392fdf20a5d328bb',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/75fa821ab24ca68c540a836f4cbdfd6ede91bf9999ce8e1c331ac844da8768e6.mp3', 966, '2026-09-13 23:00:02.979420', 'fa6af1ad0c81f755600b27c17e89bd76f265f86212cd765afbd02a53c1f4c82d', 'validated', '{"audio_key":"75fa821ab24ca68c540a836f4cbdfd6ede91bf9999ce8e1c331ac844da8768e6","entity_key":"lx_social_nuance_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fa6af1ad0c81f755600b27c17e89bd76f265f86212cd765afbd02a53c1f4c82d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/75fa821ab24ca68c540a836f4cbdfd6ede91bf9999ce8e1c331ac844da8768e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_social_nuance_02 -> audio/generated/ko-KR/lexical/75fa821ab24ca68c540a836f4cbdfd6ede91bf9999ce8e1c331ac844da8768e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('349540d2-4f63-5d0b-b836-90b6cb95a7c9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_social_nuance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc6314d04dbd1563ff5a34b8a4be0ff0a26c8b2058ac5eff392fdf20a5d328bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac42902b-72a6-532b-9cd3-7c9b4d5464b5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('349540d2-4f63-5d0b-b836-90b6cb95a7c9', 1), 'cc6314d04dbd1563ff5a34b8a4be0ff0a26c8b2058ac5eff392fdf20a5d328bb',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/75fa821ab24ca68c540a836f4cbdfd6ede91bf9999ce8e1c331ac844da8768e6.mp3', 966, '2026-09-13 23:00:02.979420', 'fa6af1ad0c81f755600b27c17e89bd76f265f86212cd765afbd02a53c1f4c82d', 'validated', '{"audio_key":"75fa821ab24ca68c540a836f4cbdfd6ede91bf9999ce8e1c331ac844da8768e6","entity_key":"wf_social_nuance_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fa6af1ad0c81f755600b27c17e89bd76f265f86212cd765afbd02a53c1f4c82d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/75fa821ab24ca68c540a836f4cbdfd6ede91bf9999ce8e1c331ac844da8768e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_conditions_and_consequences_04 -> audio/generated/ko-KR/lexical/76c320f745f118e62b1d9cc34f18feab9f3a6728153b2245267c7e37a373947e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d352903e-28e3-56a2-9228-f279ed82d44f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_conditions_and_consequences_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10f0209f371a19c52da280b7cbf11104c6e9abfd59d963e5c704fe39320f4c27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b56fa54-7318-511f-ac16-b6760e397fbc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d352903e-28e3-56a2-9228-f279ed82d44f', 1), '10f0209f371a19c52da280b7cbf11104c6e9abfd59d963e5c704fe39320f4c27',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/76c320f745f118e62b1d9cc34f18feab9f3a6728153b2245267c7e37a373947e.mp3', 966, '2026-09-13 23:00:03.026903', '72b4207d6958715cab1857307893f8f77226ac6e2d2cacf8b4fab7b831833823', 'validated', '{"audio_key":"76c320f745f118e62b1d9cc34f18feab9f3a6728153b2245267c7e37a373947e","entity_key":"lx_conditions_and_consequences_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"72b4207d6958715cab1857307893f8f77226ac6e2d2cacf8b4fab7b831833823","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/76c320f745f118e62b1d9cc34f18feab9f3a6728153b2245267c7e37a373947e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_conditions_and_consequences_04 -> audio/generated/ko-KR/lexical/76c320f745f118e62b1d9cc34f18feab9f3a6728153b2245267c7e37a373947e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('42fcd5cb-c13f-5921-9814-94cb890f6ad4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_conditions_and_consequences_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10f0209f371a19c52da280b7cbf11104c6e9abfd59d963e5c704fe39320f4c27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e91f0c8-14a2-59be-b6b3-eaa7b49da46f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('42fcd5cb-c13f-5921-9814-94cb890f6ad4', 1), '10f0209f371a19c52da280b7cbf11104c6e9abfd59d963e5c704fe39320f4c27',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/76c320f745f118e62b1d9cc34f18feab9f3a6728153b2245267c7e37a373947e.mp3', 966, '2026-09-13 23:00:03.026903', '72b4207d6958715cab1857307893f8f77226ac6e2d2cacf8b4fab7b831833823', 'validated', '{"audio_key":"76c320f745f118e62b1d9cc34f18feab9f3a6728153b2245267c7e37a373947e","entity_key":"wf_conditions_and_consequences_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"72b4207d6958715cab1857307893f8f77226ac6e2d2cacf8b4fab7b831833823","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/76c320f745f118e62b1d9cc34f18feab9f3a6728153b2245267c7e37a373947e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_problems_and_solutions_01 -> audio/generated/ko-KR/lexical/7a853d55fdc70216499f370bba90bf26e2a0a8fec3b45f9608d606cd8ce47e42.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('45ba468a-fb85-50fe-a693-395f23112e6c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_problems_and_solutions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc0fca46ae9a48794dbdb6b3695ebd909536ed85259b211408d502a026b6dc88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c98ca48e-0722-5f23-86ab-0432d09e3884', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('45ba468a-fb85-50fe-a693-395f23112e6c', 1), 'bc0fca46ae9a48794dbdb6b3695ebd909536ed85259b211408d502a026b6dc88',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7a853d55fdc70216499f370bba90bf26e2a0a8fec3b45f9608d606cd8ce47e42.mp3', 1071, '2026-09-13 23:00:04.070014', 'f69239cad0398ecb4dc89c2582caae5c5bc056fb33763567a948e2b930389eac', 'validated', '{"audio_key":"7a853d55fdc70216499f370bba90bf26e2a0a8fec3b45f9608d606cd8ce47e42","entity_key":"lx_problems_and_solutions_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f69239cad0398ecb4dc89c2582caae5c5bc056fb33763567a948e2b930389eac","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7a853d55fdc70216499f370bba90bf26e2a0a8fec3b45f9608d606cd8ce47e42.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_problems_and_solutions_01 -> audio/generated/ko-KR/lexical/7a853d55fdc70216499f370bba90bf26e2a0a8fec3b45f9608d606cd8ce47e42.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a3154b90-48af-537f-9d33-404d0ad0d6dd', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_problems_and_solutions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc0fca46ae9a48794dbdb6b3695ebd909536ed85259b211408d502a026b6dc88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6390cba2-0500-5a60-a448-e94cd8c3bc23', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a3154b90-48af-537f-9d33-404d0ad0d6dd', 1), 'bc0fca46ae9a48794dbdb6b3695ebd909536ed85259b211408d502a026b6dc88',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7a853d55fdc70216499f370bba90bf26e2a0a8fec3b45f9608d606cd8ce47e42.mp3', 1071, '2026-09-13 23:00:04.070014', 'f69239cad0398ecb4dc89c2582caae5c5bc056fb33763567a948e2b930389eac', 'validated', '{"audio_key":"7a853d55fdc70216499f370bba90bf26e2a0a8fec3b45f9608d606cd8ce47e42","entity_key":"wf_problems_and_solutions_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f69239cad0398ecb4dc89c2582caae5c5bc056fb33763567a948e2b930389eac","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7a853d55fdc70216499f370bba90bf26e2a0a8fec3b45f9608d606cd8ce47e42.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_problems_and_solutions_05 -> audio/generated/ko-KR/lexical/7f60cc333f218069afb914d8f39ef5c41072133d11b66cc5883cdc3be721161b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9f975787-9493-5426-bf91-df45b690db74', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_problems_and_solutions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'baaff05e434f85e30d888fad9d2ea56c27823f3a5453d63e6ea85353ec10b356'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3e40249-e1a3-59ec-ab7a-93abffe45a7e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9f975787-9493-5426-bf91-df45b690db74', 1), 'baaff05e434f85e30d888fad9d2ea56c27823f3a5453d63e6ea85353ec10b356',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7f60cc333f218069afb914d8f39ef5c41072133d11b66cc5883cdc3be721161b.mp3', 914, '2026-09-13 23:00:04.095388', 'f910370ab81fcf52e41cbcb7f57158f63b6193fd257eec98c85e700c438b21ba', 'validated', '{"audio_key":"7f60cc333f218069afb914d8f39ef5c41072133d11b66cc5883cdc3be721161b","entity_key":"lx_problems_and_solutions_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f910370ab81fcf52e41cbcb7f57158f63b6193fd257eec98c85e700c438b21ba","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7f60cc333f218069afb914d8f39ef5c41072133d11b66cc5883cdc3be721161b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_problems_and_solutions_05 -> audio/generated/ko-KR/lexical/7f60cc333f218069afb914d8f39ef5c41072133d11b66cc5883cdc3be721161b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2a4bf37e-cd22-56b0-a07e-4d12a5634fad', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_problems_and_solutions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'baaff05e434f85e30d888fad9d2ea56c27823f3a5453d63e6ea85353ec10b356'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf1c2a2d-6edf-5737-8c93-fb4238ab7546', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2a4bf37e-cd22-56b0-a07e-4d12a5634fad', 1), 'baaff05e434f85e30d888fad9d2ea56c27823f3a5453d63e6ea85353ec10b356',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7f60cc333f218069afb914d8f39ef5c41072133d11b66cc5883cdc3be721161b.mp3', 914, '2026-09-13 23:00:04.095388', 'f910370ab81fcf52e41cbcb7f57158f63b6193fd257eec98c85e700c438b21ba', 'validated', '{"audio_key":"7f60cc333f218069afb914d8f39ef5c41072133d11b66cc5883cdc3be721161b","entity_key":"wf_problems_and_solutions_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f910370ab81fcf52e41cbcb7f57158f63b6193fd257eec98c85e700c438b21ba","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7f60cc333f218069afb914d8f39ef5c41072133d11b66cc5883cdc3be721161b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_information_05 -> audio/generated/ko-KR/lexical/84e258484705e8b6d25bdffa7d8edf0116a575ce20c0d57dfc5612e351a59c30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c9301044-cc62-56a7-836a-c4f53ff8bfc6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_information_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04cb148e65f2f00223d6c24222752a8ad3379a58531f19e6afe6f23c830b33d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b14cdda-08d9-51e7-b1b8-cba1ec9cf640', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c9301044-cc62-56a7-836a-c4f53ff8bfc6', 1), '04cb148e65f2f00223d6c24222752a8ad3379a58531f19e6afe6f23c830b33d6',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/84e258484705e8b6d25bdffa7d8edf0116a575ce20c0d57dfc5612e351a59c30.mp3', 1280, '2026-09-13 23:00:05.138450', 'd48a00610186aaefe32e4e06c512d7f79fd78e11e9f1bcd67db2bc00024db692', 'validated', '{"audio_key":"84e258484705e8b6d25bdffa7d8edf0116a575ce20c0d57dfc5612e351a59c30","entity_key":"lx_reported_information_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d48a00610186aaefe32e4e06c512d7f79fd78e11e9f1bcd67db2bc00024db692","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/84e258484705e8b6d25bdffa7d8edf0116a575ce20c0d57dfc5612e351a59c30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_information_05 -> audio/generated/ko-KR/lexical/84e258484705e8b6d25bdffa7d8edf0116a575ce20c0d57dfc5612e351a59c30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bad5bd9d-b6a3-5d2b-869f-5b6ab742111a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_information_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04cb148e65f2f00223d6c24222752a8ad3379a58531f19e6afe6f23c830b33d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d091b0a5-c4aa-5f9d-a39d-5acfdb5e5e14', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bad5bd9d-b6a3-5d2b-869f-5b6ab742111a', 1), '04cb148e65f2f00223d6c24222752a8ad3379a58531f19e6afe6f23c830b33d6',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/84e258484705e8b6d25bdffa7d8edf0116a575ce20c0d57dfc5612e351a59c30.mp3', 1280, '2026-09-13 23:00:05.138450', 'd48a00610186aaefe32e4e06c512d7f79fd78e11e9f1bcd67db2bc00024db692', 'validated', '{"audio_key":"84e258484705e8b6d25bdffa7d8edf0116a575ce20c0d57dfc5612e351a59c30","entity_key":"wf_reported_information_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d48a00610186aaefe32e4e06c512d7f79fd78e11e9f1bcd67db2bc00024db692","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/84e258484705e8b6d25bdffa7d8edf0116a575ce20c0d57dfc5612e351a59c30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_problems_and_solutions_06 -> audio/generated/ko-KR/lexical/8b464438b672acc71b4c060f7560b8b13e08b43e0462f131ff5ca1533185dfb3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6d978485-a7cb-54ee-add6-a96404fe9fed', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_problems_and_solutions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '515a4984156aa49376f221dcf04fd8505ca88a2b45e1874bb7a72a0ea8ac714b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52884c9e-92b5-55eb-a6ca-169e57aae55a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6d978485-a7cb-54ee-add6-a96404fe9fed', 1), '515a4984156aa49376f221dcf04fd8505ca88a2b45e1874bb7a72a0ea8ac714b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8b464438b672acc71b4c060f7560b8b13e08b43e0462f131ff5ca1533185dfb3.mp3', 1201, '2026-09-13 23:00:05.220391', '31fb1773704e8b29858026e48fec9e96a3bd47314e88dc68ea16172368d1990b', 'validated', '{"audio_key":"8b464438b672acc71b4c060f7560b8b13e08b43e0462f131ff5ca1533185dfb3","entity_key":"lx_problems_and_solutions_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"31fb1773704e8b29858026e48fec9e96a3bd47314e88dc68ea16172368d1990b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8b464438b672acc71b4c060f7560b8b13e08b43e0462f131ff5ca1533185dfb3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_problems_and_solutions_06 -> audio/generated/ko-KR/lexical/8b464438b672acc71b4c060f7560b8b13e08b43e0462f131ff5ca1533185dfb3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1e481603-15d8-558c-b0d2-2bfe25167eb2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_problems_and_solutions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '515a4984156aa49376f221dcf04fd8505ca88a2b45e1874bb7a72a0ea8ac714b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('427aabd9-e241-541d-b47c-48cac6ef34da', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1e481603-15d8-558c-b0d2-2bfe25167eb2', 1), '515a4984156aa49376f221dcf04fd8505ca88a2b45e1874bb7a72a0ea8ac714b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8b464438b672acc71b4c060f7560b8b13e08b43e0462f131ff5ca1533185dfb3.mp3', 1201, '2026-09-13 23:00:05.220391', '31fb1773704e8b29858026e48fec9e96a3bd47314e88dc68ea16172368d1990b', 'validated', '{"audio_key":"8b464438b672acc71b4c060f7560b8b13e08b43e0462f131ff5ca1533185dfb3","entity_key":"wf_problems_and_solutions_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"31fb1773704e8b29858026e48fec9e96a3bd47314e88dc68ea16172368d1990b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8b464438b672acc71b4c060f7560b8b13e08b43e0462f131ff5ca1533185dfb3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_conditions_and_consequences_02 -> audio/generated/ko-KR/lexical/8c24edb5c894342b163020a6e9e04bab446b8047f967662c8631c9ccd09bcd2f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('639771f2-99d9-5657-853b-ba525017b2c8', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_conditions_and_consequences_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '109383e344db8ae54a47c140e43b12fd1809e15469e42b9aba848f2f0fd758ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c841042a-b9e9-5b96-a650-5cfcc75f5570', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('639771f2-99d9-5657-853b-ba525017b2c8', 1), '109383e344db8ae54a47c140e43b12fd1809e15469e42b9aba848f2f0fd758ca',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8c24edb5c894342b163020a6e9e04bab446b8047f967662c8631c9ccd09bcd2f.mp3', 1071, '2026-09-13 23:00:06.219872', 'c60af65afcc00f08a66c7834975792a094df05ecd93409002daabf09d044c92c', 'validated', '{"audio_key":"8c24edb5c894342b163020a6e9e04bab446b8047f967662c8631c9ccd09bcd2f","entity_key":"lx_conditions_and_consequences_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c60af65afcc00f08a66c7834975792a094df05ecd93409002daabf09d044c92c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8c24edb5c894342b163020a6e9e04bab446b8047f967662c8631c9ccd09bcd2f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_conditions_and_consequences_02 -> audio/generated/ko-KR/lexical/8c24edb5c894342b163020a6e9e04bab446b8047f967662c8631c9ccd09bcd2f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b92116d7-221d-59e0-8afc-7988097049e5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_conditions_and_consequences_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '109383e344db8ae54a47c140e43b12fd1809e15469e42b9aba848f2f0fd758ca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('225cabf7-81f6-58b9-9006-967b57e0997c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b92116d7-221d-59e0-8afc-7988097049e5', 1), '109383e344db8ae54a47c140e43b12fd1809e15469e42b9aba848f2f0fd758ca',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8c24edb5c894342b163020a6e9e04bab446b8047f967662c8631c9ccd09bcd2f.mp3', 1071, '2026-09-13 23:00:06.219872', 'c60af65afcc00f08a66c7834975792a094df05ecd93409002daabf09d044c92c', 'validated', '{"audio_key":"8c24edb5c894342b163020a6e9e04bab446b8047f967662c8631c9ccd09bcd2f","entity_key":"wf_conditions_and_consequences_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c60af65afcc00f08a66c7834975792a094df05ecd93409002daabf09d044c92c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8c24edb5c894342b163020a6e9e04bab446b8047f967662c8631c9ccd09bcd2f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_experiences_and_change_02 -> audio/generated/ko-KR/lexical/91168b047731053af2568c13728b10911486a4af095edcff81e97cc31d595516.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('62413c8d-4f5e-566d-ae7d-05c21c2a844f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_experiences_and_change_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04694ae7655dfa6742aa25f2575b421f7d92ced3277cb0295860195df9673f65'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e95dd0d-3e85-5df4-b06d-0e1fddfb30d5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('62413c8d-4f5e-566d-ae7d-05c21c2a844f', 1), '04694ae7655dfa6742aa25f2575b421f7d92ced3277cb0295860195df9673f65',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/91168b047731053af2568c13728b10911486a4af095edcff81e97cc31d595516.mp3', 1071, '2026-09-13 23:00:06.252986', 'ef0231f8418d5706073c7a951202793a0a8e2b547415d26e27c5c36fb5b5ec6f', 'validated', '{"audio_key":"91168b047731053af2568c13728b10911486a4af095edcff81e97cc31d595516","entity_key":"lx_experiences_and_change_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ef0231f8418d5706073c7a951202793a0a8e2b547415d26e27c5c36fb5b5ec6f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/91168b047731053af2568c13728b10911486a4af095edcff81e97cc31d595516.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_experiences_and_change_02 -> audio/generated/ko-KR/lexical/91168b047731053af2568c13728b10911486a4af095edcff81e97cc31d595516.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('513bb4b3-91b3-5223-8e93-6bb3715cc1b1', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_experiences_and_change_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '04694ae7655dfa6742aa25f2575b421f7d92ced3277cb0295860195df9673f65'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('179b4c94-1ad8-5093-84fc-4ea26f6398c3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('513bb4b3-91b3-5223-8e93-6bb3715cc1b1', 1), '04694ae7655dfa6742aa25f2575b421f7d92ced3277cb0295860195df9673f65',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/91168b047731053af2568c13728b10911486a4af095edcff81e97cc31d595516.mp3', 1071, '2026-09-13 23:00:06.252986', 'ef0231f8418d5706073c7a951202793a0a8e2b547415d26e27c5c36fb5b5ec6f', 'validated', '{"audio_key":"91168b047731053af2568c13728b10911486a4af095edcff81e97cc31d595516","entity_key":"wf_experiences_and_change_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ef0231f8418d5706073c7a951202793a0a8e2b547415d26e27c5c36fb5b5ec6f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/91168b047731053af2568c13728b10911486a4af095edcff81e97cc31d595516.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_problems_and_solutions_04 -> audio/generated/ko-KR/lexical/931cbd75f29e8f01e8ceb0ddf4f0f43ecb3907db0d2be25bb33e69c896ee569f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5f8952b0-6461-5792-b8f0-aac9c670fac3', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_problems_and_solutions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4a801d526fb251193b08479970c3ea99a127e018341aa39892512ee4cc5b044'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e591343-de16-57e0-b3ef-f0219fb61806', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5f8952b0-6461-5792-b8f0-aac9c670fac3', 1), 'a4a801d526fb251193b08479970c3ea99a127e018341aa39892512ee4cc5b044',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/931cbd75f29e8f01e8ceb0ddf4f0f43ecb3907db0d2be25bb33e69c896ee569f.mp3', 1071, '2026-09-13 23:00:07.199671', '9485ea4494325382a88eb4629b2d10b1c7994f6ee670c6c8ff84a43e5e59486b', 'validated', '{"audio_key":"931cbd75f29e8f01e8ceb0ddf4f0f43ecb3907db0d2be25bb33e69c896ee569f","entity_key":"lx_problems_and_solutions_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9485ea4494325382a88eb4629b2d10b1c7994f6ee670c6c8ff84a43e5e59486b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/931cbd75f29e8f01e8ceb0ddf4f0f43ecb3907db0d2be25bb33e69c896ee569f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_problems_and_solutions_04 -> audio/generated/ko-KR/lexical/931cbd75f29e8f01e8ceb0ddf4f0f43ecb3907db0d2be25bb33e69c896ee569f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('277b3067-0229-5835-8659-47625f5956fe', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_problems_and_solutions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4a801d526fb251193b08479970c3ea99a127e018341aa39892512ee4cc5b044'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4be5b77-10ab-5803-8c65-4508560ddc6d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('277b3067-0229-5835-8659-47625f5956fe', 1), 'a4a801d526fb251193b08479970c3ea99a127e018341aa39892512ee4cc5b044',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/931cbd75f29e8f01e8ceb0ddf4f0f43ecb3907db0d2be25bb33e69c896ee569f.mp3', 1071, '2026-09-13 23:00:07.199671', '9485ea4494325382a88eb4629b2d10b1c7994f6ee670c6c8ff84a43e5e59486b', 'validated', '{"audio_key":"931cbd75f29e8f01e8ceb0ddf4f0f43ecb3907db0d2be25bb33e69c896ee569f","entity_key":"wf_problems_and_solutions_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9485ea4494325382a88eb4629b2d10b1c7994f6ee670c6c8ff84a43e5e59486b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/931cbd75f29e8f01e8ceb0ddf4f0f43ecb3907db0d2be25bb33e69c896ee569f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b1_seoul_project_capstone_06 -> audio/generated/ko-KR/lexical/959bf1ede0451bc9913acd4a0d992e5bb968d8d8575f2211b427b8b82966dd6a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0f879f31-ff2b-5368-a825-ad653c16d8b1', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b1_seoul_project_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af90f5c05b02bfdbef7d26de14258685671e0c077f6b4804dc9581586967e003'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab9f7376-c0b1-5310-9b66-dec2c4c81004', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0f879f31-ff2b-5368-a825-ad653c16d8b1', 1), 'af90f5c05b02bfdbef7d26de14258685671e0c077f6b4804dc9581586967e003',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/959bf1ede0451bc9913acd4a0d992e5bb968d8d8575f2211b427b8b82966dd6a.mp3', 1149, '2026-09-13 23:00:07.364828', 'c1c3052cac77e2e0269db1d3cff2327466d50fe2d14b3f924d2f678683be22a4', 'validated', '{"audio_key":"959bf1ede0451bc9913acd4a0d992e5bb968d8d8575f2211b427b8b82966dd6a","entity_key":"lx_b1_seoul_project_capstone_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c1c3052cac77e2e0269db1d3cff2327466d50fe2d14b3f924d2f678683be22a4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/959bf1ede0451bc9913acd4a0d992e5bb968d8d8575f2211b427b8b82966dd6a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b1_seoul_project_capstone_06 -> audio/generated/ko-KR/lexical/959bf1ede0451bc9913acd4a0d992e5bb968d8d8575f2211b427b8b82966dd6a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bff5e336-43a6-540c-bb21-e2e67cf5f895', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b1_seoul_project_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'af90f5c05b02bfdbef7d26de14258685671e0c077f6b4804dc9581586967e003'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9767f86-d073-595c-b795-160135aae31e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bff5e336-43a6-540c-bb21-e2e67cf5f895', 1), 'af90f5c05b02bfdbef7d26de14258685671e0c077f6b4804dc9581586967e003',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/959bf1ede0451bc9913acd4a0d992e5bb968d8d8575f2211b427b8b82966dd6a.mp3', 1149, '2026-09-13 23:00:07.364828', 'c1c3052cac77e2e0269db1d3cff2327466d50fe2d14b3f924d2f678683be22a4', 'validated', '{"audio_key":"959bf1ede0451bc9913acd4a0d992e5bb968d8d8575f2211b427b8b82966dd6a","entity_key":"wf_b1_seoul_project_capstone_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c1c3052cac77e2e0269db1d3cff2327466d50fe2d14b3f924d2f678683be22a4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/959bf1ede0451bc9913acd4a0d992e5bb968d8d8575f2211b427b8b82966dd6a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_storytelling_sequence_06 -> audio/generated/ko-KR/lexical/985802ca454762fe2efffcde63c2259e0a81d6b7ac8b78fa4a20d7ca8f93dd74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fd3cba67-4adb-5a60-baa7-bef5abaf30bf', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_storytelling_sequence_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1a5375588e265b035a5cbaa78d30dc1f3e4b4f3d007dd370e7699a848c5c650'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cbdf9260-716b-527e-a37e-4878d93ebdc5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fd3cba67-4adb-5a60-baa7-bef5abaf30bf', 1), 'a1a5375588e265b035a5cbaa78d30dc1f3e4b4f3d007dd370e7699a848c5c650',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/985802ca454762fe2efffcde63c2259e0a81d6b7ac8b78fa4a20d7ca8f93dd74.mp3', 1018, '2026-09-13 23:00:08.241743', '1b96ede21a9ecd4709f985024612b7eddb825eddbebb70e59783491d101ea98b', 'validated', '{"audio_key":"985802ca454762fe2efffcde63c2259e0a81d6b7ac8b78fa4a20d7ca8f93dd74","entity_key":"lx_storytelling_sequence_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1b96ede21a9ecd4709f985024612b7eddb825eddbebb70e59783491d101ea98b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/985802ca454762fe2efffcde63c2259e0a81d6b7ac8b78fa4a20d7ca8f93dd74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_storytelling_sequence_06 -> audio/generated/ko-KR/lexical/985802ca454762fe2efffcde63c2259e0a81d6b7ac8b78fa4a20d7ca8f93dd74.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('92b12feb-16a6-5b88-b0ac-fb7014904692', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_storytelling_sequence_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1a5375588e265b035a5cbaa78d30dc1f3e4b4f3d007dd370e7699a848c5c650'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae8fe7bc-c24e-5f4b-b003-46eb26b376b3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('92b12feb-16a6-5b88-b0ac-fb7014904692', 1), 'a1a5375588e265b035a5cbaa78d30dc1f3e4b4f3d007dd370e7699a848c5c650',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/985802ca454762fe2efffcde63c2259e0a81d6b7ac8b78fa4a20d7ca8f93dd74.mp3', 1018, '2026-09-13 23:00:08.241743', '1b96ede21a9ecd4709f985024612b7eddb825eddbebb70e59783491d101ea98b', 'validated', '{"audio_key":"985802ca454762fe2efffcde63c2259e0a81d6b7ac8b78fa4a20d7ca8f93dd74","entity_key":"wf_storytelling_sequence_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1b96ede21a9ecd4709f985024612b7eddb825eddbebb70e59783491d101ea98b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/985802ca454762fe2efffcde63c2259e0a81d6b7ac8b78fa4a20d7ca8f93dd74.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_goals_and_effort_05 -> audio/generated/ko-KR/lexical/9a30ad5b43eda3a936660532e0624de9bec6bd39a270104a938602f445bf44f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('619d5c4f-6db7-5aa4-83d3-6809516a7e70', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_goals_and_effort_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f790fbbcb9de62d947ddcbba140091292961de7a0d01c94d77f3f86205bc4eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d4e6e5e-aeac-5001-a013-0679fd9af6be', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('619d5c4f-6db7-5aa4-83d3-6809516a7e70', 1), '2f790fbbcb9de62d947ddcbba140091292961de7a0d01c94d77f3f86205bc4eb',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/9a30ad5b43eda3a936660532e0624de9bec6bd39a270104a938602f445bf44f9.mp3', 1018, '2026-09-13 23:00:08.410030', 'f6f6824d59f7ebdb4b2d2319760a3a3a61f068c9694c66052e82d05bf46b979c', 'validated', '{"audio_key":"9a30ad5b43eda3a936660532e0624de9bec6bd39a270104a938602f445bf44f9","entity_key":"lx_goals_and_effort_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f6f6824d59f7ebdb4b2d2319760a3a3a61f068c9694c66052e82d05bf46b979c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/9a30ad5b43eda3a936660532e0624de9bec6bd39a270104a938602f445bf44f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_goals_and_effort_05 -> audio/generated/ko-KR/lexical/9a30ad5b43eda3a936660532e0624de9bec6bd39a270104a938602f445bf44f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3d3a55fa-cb79-5425-a0a4-296643e6d256', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_goals_and_effort_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f790fbbcb9de62d947ddcbba140091292961de7a0d01c94d77f3f86205bc4eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e688ebd9-6c1c-5100-98ff-df213cb288de', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3d3a55fa-cb79-5425-a0a4-296643e6d256', 1), '2f790fbbcb9de62d947ddcbba140091292961de7a0d01c94d77f3f86205bc4eb',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/9a30ad5b43eda3a936660532e0624de9bec6bd39a270104a938602f445bf44f9.mp3', 1018, '2026-09-13 23:00:08.410030', 'f6f6824d59f7ebdb4b2d2319760a3a3a61f068c9694c66052e82d05bf46b979c', 'validated', '{"audio_key":"9a30ad5b43eda3a936660532e0624de9bec6bd39a270104a938602f445bf44f9","entity_key":"wf_goals_and_effort_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f6f6824d59f7ebdb4b2d2319760a3a3a61f068c9694c66052e82d05bf46b979c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/9a30ad5b43eda3a936660532e0624de9bec6bd39a270104a938602f445bf44f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reported_information_02 -> audio/generated/ko-KR/lexical/9ffc8839a38fbcc99f8d1520aa9ad3becb4e5efeec4f41341aa621b9b061a563.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('60f1724a-a65d-5c78-a2f8-e598e8aaef86', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reported_information_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '648fb8dfcf63ca8c8cb61de5f473571ad84c2c88d92067bb22c14bd6564429ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc938b0b-eec4-5802-81bc-c138388afd1a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('60f1724a-a65d-5c78-a2f8-e598e8aaef86', 1), '648fb8dfcf63ca8c8cb61de5f473571ad84c2c88d92067bb22c14bd6564429ec',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/9ffc8839a38fbcc99f8d1520aa9ad3becb4e5efeec4f41341aa621b9b061a563.mp3', 966, '2026-09-13 23:00:09.305729', '340ad6b9c04e253a595ff30c6c628b5d9eddf3d7fc1a9b5b7fd9b938bd4126dc', 'validated', '{"audio_key":"9ffc8839a38fbcc99f8d1520aa9ad3becb4e5efeec4f41341aa621b9b061a563","entity_key":"lx_reported_information_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"340ad6b9c04e253a595ff30c6c628b5d9eddf3d7fc1a9b5b7fd9b938bd4126dc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/9ffc8839a38fbcc99f8d1520aa9ad3becb4e5efeec4f41341aa621b9b061a563.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reported_information_02 -> audio/generated/ko-KR/lexical/9ffc8839a38fbcc99f8d1520aa9ad3becb4e5efeec4f41341aa621b9b061a563.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('61731f02-bd51-509a-8bd8-d5bb1970d71d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reported_information_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '648fb8dfcf63ca8c8cb61de5f473571ad84c2c88d92067bb22c14bd6564429ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e1d0495-152e-59ef-a209-55c496fd4923', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('61731f02-bd51-509a-8bd8-d5bb1970d71d', 1), '648fb8dfcf63ca8c8cb61de5f473571ad84c2c88d92067bb22c14bd6564429ec',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/9ffc8839a38fbcc99f8d1520aa9ad3becb4e5efeec4f41341aa621b9b061a563.mp3', 966, '2026-09-13 23:00:09.305729', '340ad6b9c04e253a595ff30c6c628b5d9eddf3d7fc1a9b5b7fd9b938bd4126dc', 'validated', '{"audio_key":"9ffc8839a38fbcc99f8d1520aa9ad3becb4e5efeec4f41341aa621b9b061a563","entity_key":"wf_reported_information_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"340ad6b9c04e253a595ff30c6c628b5d9eddf3d7fc1a9b5b7fd9b938bd4126dc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/9ffc8839a38fbcc99f8d1520aa9ad3becb4e5efeec4f41341aa621b9b061a563.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b1_seoul_project_capstone_02 -> audio/generated/ko-KR/lexical/a0843661cfa27744e570c72026527771789f80ccf266e36242c226c533d17531.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a62671be-3da7-5dda-a135-5ccb084a934c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b1_seoul_project_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '662fbb8d7bdeae8019f65e48e030ae8c9b3b364da03d3bc023e052ccb817f903'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('19075b33-308d-5e59-b817-41eeb6d59fea', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a62671be-3da7-5dda-a135-5ccb084a934c', 1), '662fbb8d7bdeae8019f65e48e030ae8c9b3b364da03d3bc023e052ccb817f903',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a0843661cfa27744e570c72026527771789f80ccf266e36242c226c533d17531.mp3', 1018, '2026-09-13 23:00:09.415345', 'f1a880cf7c2b599f3dc336589cdc448b949af71cb470fc2fe3ce685898bb229d', 'validated', '{"audio_key":"a0843661cfa27744e570c72026527771789f80ccf266e36242c226c533d17531","entity_key":"lx_b1_seoul_project_capstone_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f1a880cf7c2b599f3dc336589cdc448b949af71cb470fc2fe3ce685898bb229d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a0843661cfa27744e570c72026527771789f80ccf266e36242c226c533d17531.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b1_seoul_project_capstone_02 -> audio/generated/ko-KR/lexical/a0843661cfa27744e570c72026527771789f80ccf266e36242c226c533d17531.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('96ccbdfe-b72a-5b10-80a0-68d783324da2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b1_seoul_project_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '662fbb8d7bdeae8019f65e48e030ae8c9b3b364da03d3bc023e052ccb817f903'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ec88a86-9e42-55fb-9a21-9203bdfbbd7e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('96ccbdfe-b72a-5b10-80a0-68d783324da2', 1), '662fbb8d7bdeae8019f65e48e030ae8c9b3b364da03d3bc023e052ccb817f903',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a0843661cfa27744e570c72026527771789f80ccf266e36242c226c533d17531.mp3', 1018, '2026-09-13 23:00:09.415345', 'f1a880cf7c2b599f3dc336589cdc448b949af71cb470fc2fe3ce685898bb229d', 'validated', '{"audio_key":"a0843661cfa27744e570c72026527771789f80ccf266e36242c226c533d17531","entity_key":"wf_b1_seoul_project_capstone_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f1a880cf7c2b599f3dc336589cdc448b949af71cb470fc2fe3ce685898bb229d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a0843661cfa27744e570c72026527771789f80ccf266e36242c226c533d17531.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_b1_seoul_project_capstone_04 -> audio/generated/ko-KR/lexical/a6a888cb1573c0330a5f466d314a5243c76b1da39d49fc7f1aa71364cb6cb1e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('664cc1aa-2b5c-5ee6-885f-1793e915a694', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_b1_seoul_project_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec3119447758fa2b25a4e1eba93791fdc3137e528554db36760bacc18533c40a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9b0768d-f972-5e99-8844-32a7a4b7a8c3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('664cc1aa-2b5c-5ee6-885f-1793e915a694', 1), 'ec3119447758fa2b25a4e1eba93791fdc3137e528554db36760bacc18533c40a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a6a888cb1573c0330a5f466d314a5243c76b1da39d49fc7f1aa71364cb6cb1e7.mp3', 1097, '2026-09-13 23:00:10.349505', '36cce51c0717634f2bb908984e4abd21c0df24839c220b9395ba2a3bcb64eeed', 'validated', '{"audio_key":"a6a888cb1573c0330a5f466d314a5243c76b1da39d49fc7f1aa71364cb6cb1e7","entity_key":"lx_b1_seoul_project_capstone_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"36cce51c0717634f2bb908984e4abd21c0df24839c220b9395ba2a3bcb64eeed","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a6a888cb1573c0330a5f466d314a5243c76b1da39d49fc7f1aa71364cb6cb1e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_b1_seoul_project_capstone_04 -> audio/generated/ko-KR/lexical/a6a888cb1573c0330a5f466d314a5243c76b1da39d49fc7f1aa71364cb6cb1e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c03435c0-e46f-5ed9-8179-d50742721727', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_b1_seoul_project_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec3119447758fa2b25a4e1eba93791fdc3137e528554db36760bacc18533c40a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a62d728-a31e-5c32-bbfc-16c23cd590f0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c03435c0-e46f-5ed9-8179-d50742721727', 1), 'ec3119447758fa2b25a4e1eba93791fdc3137e528554db36760bacc18533c40a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a6a888cb1573c0330a5f466d314a5243c76b1da39d49fc7f1aa71364cb6cb1e7.mp3', 1097, '2026-09-13 23:00:10.349505', '36cce51c0717634f2bb908984e4abd21c0df24839c220b9395ba2a3bcb64eeed', 'validated', '{"audio_key":"a6a888cb1573c0330a5f466d314a5243c76b1da39d49fc7f1aa71364cb6cb1e7","entity_key":"wf_b1_seoul_project_capstone_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"36cce51c0717634f2bb908984e4abd21c0df24839c220b9395ba2a3bcb64eeed","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a6a888cb1573c0330a5f466d314a5243c76b1da39d49fc7f1aa71364cb6cb1e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_goals_and_effort_03 -> audio/generated/ko-KR/lexical/a6ef47a9434782e6f7031df605a3412bbbae30adc4d6271f1912251cb95cc41a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9222c48c-a3a6-5b5a-a5e2-584c0680ec2e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_goals_and_effort_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e709c7a9c091424d582a758964008cb844b9258a96bc24811c69b4600740b6de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec879baa-07cd-5ab7-bc6d-59e413b7e035', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9222c48c-a3a6-5b5a-a5e2-584c0680ec2e', 1), 'e709c7a9c091424d582a758964008cb844b9258a96bc24811c69b4600740b6de',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a6ef47a9434782e6f7031df605a3412bbbae30adc4d6271f1912251cb95cc41a.mp3', 1018, '2026-09-13 23:00:10.508619', 'bd19a5954fbe3127ba6578ad55df51a449fe3f1cb4d2a14b47629658e1a857d0', 'validated', '{"audio_key":"a6ef47a9434782e6f7031df605a3412bbbae30adc4d6271f1912251cb95cc41a","entity_key":"lx_goals_and_effort_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bd19a5954fbe3127ba6578ad55df51a449fe3f1cb4d2a14b47629658e1a857d0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a6ef47a9434782e6f7031df605a3412bbbae30adc4d6271f1912251cb95cc41a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_goals_and_effort_03 -> audio/generated/ko-KR/lexical/a6ef47a9434782e6f7031df605a3412bbbae30adc4d6271f1912251cb95cc41a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0c565087-3dce-51e6-9935-4fb47e26375d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_goals_and_effort_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e709c7a9c091424d582a758964008cb844b9258a96bc24811c69b4600740b6de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('caf56867-341f-546f-a1f5-31b8977f9161', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0c565087-3dce-51e6-9935-4fb47e26375d', 1), 'e709c7a9c091424d582a758964008cb844b9258a96bc24811c69b4600740b6de',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a6ef47a9434782e6f7031df605a3412bbbae30adc4d6271f1912251cb95cc41a.mp3', 1018, '2026-09-13 23:00:10.508619', 'bd19a5954fbe3127ba6578ad55df51a449fe3f1cb4d2a14b47629658e1a857d0', 'validated', '{"audio_key":"a6ef47a9434782e6f7031df605a3412bbbae30adc4d6271f1912251cb95cc41a","entity_key":"wf_goals_and_effort_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bd19a5954fbe3127ba6578ad55df51a449fe3f1cb4d2a14b47629658e1a857d0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a6ef47a9434782e6f7031df605a3412bbbae30adc4d6271f1912251cb95cc41a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_experiences_and_change_04 -> audio/generated/ko-KR/lexical/b180347a1ced75c3e3339b8b21e68a08eb6602e0aa2e8796ba8da60b9a06006f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c4e86e30-c0a7-5c92-8599-cb2f54adea9b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_experiences_and_change_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '33810ef71c9f207f93907a9f854604beb3da373ff2098b6c45550d8b0ddd0641'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e27d3dd4-bd49-55a4-814f-b2dc75079000', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c4e86e30-c0a7-5c92-8599-cb2f54adea9b', 1), '33810ef71c9f207f93907a9f854604beb3da373ff2098b6c45550d8b0ddd0641',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b180347a1ced75c3e3339b8b21e68a08eb6602e0aa2e8796ba8da60b9a06006f.mp3', 1332, '2026-09-13 23:00:11.436988', '3363862665e79dec4d7cb1353f8f5cb3d2bbdcf254f2a75612f018c602d979c4', 'validated', '{"audio_key":"b180347a1ced75c3e3339b8b21e68a08eb6602e0aa2e8796ba8da60b9a06006f","entity_key":"lx_experiences_and_change_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3363862665e79dec4d7cb1353f8f5cb3d2bbdcf254f2a75612f018c602d979c4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b180347a1ced75c3e3339b8b21e68a08eb6602e0aa2e8796ba8da60b9a06006f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_experiences_and_change_04 -> audio/generated/ko-KR/lexical/b180347a1ced75c3e3339b8b21e68a08eb6602e0aa2e8796ba8da60b9a06006f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('994e4dc2-6c19-5350-8451-00748835b254', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_experiences_and_change_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '33810ef71c9f207f93907a9f854604beb3da373ff2098b6c45550d8b0ddd0641'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('42558037-495f-5502-a9e9-ca18e05d35fd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('994e4dc2-6c19-5350-8451-00748835b254', 1), '33810ef71c9f207f93907a9f854604beb3da373ff2098b6c45550d8b0ddd0641',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b180347a1ced75c3e3339b8b21e68a08eb6602e0aa2e8796ba8da60b9a06006f.mp3', 1332, '2026-09-13 23:00:11.436988', '3363862665e79dec4d7cb1353f8f5cb3d2bbdcf254f2a75612f018c602d979c4', 'validated', '{"audio_key":"b180347a1ced75c3e3339b8b21e68a08eb6602e0aa2e8796ba8da60b9a06006f","entity_key":"wf_experiences_and_change_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3363862665e79dec4d7cb1353f8f5cb3d2bbdcf254f2a75612f018c602d979c4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b180347a1ced75c3e3339b8b21e68a08eb6602e0aa2e8796ba8da60b9a06006f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_goals_and_effort_04 -> audio/generated/ko-KR/lexical/b221c36419f521c64c3c38aa5f258eb64123b7197afccf926fcd6c10902c20fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5ade3588-4efd-5531-9ceb-d7693b1b116e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_goals_and_effort_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2b2802271ace0be7328eb3badb568de6bc793a7bcb7e0007ec066807f9bd909'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b9ebf2f-0548-50ad-9968-ace142f3a8e8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5ade3588-4efd-5531-9ceb-d7693b1b116e', 1), 'b2b2802271ace0be7328eb3badb568de6bc793a7bcb7e0007ec066807f9bd909',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b221c36419f521c64c3c38aa5f258eb64123b7197afccf926fcd6c10902c20fe.mp3', 966, '2026-09-13 23:00:11.522617', '0801bd61336f8e82ad8baed7cde81733ee5f9a5fc51bc59d299339a9b9d6e208', 'validated', '{"audio_key":"b221c36419f521c64c3c38aa5f258eb64123b7197afccf926fcd6c10902c20fe","entity_key":"lx_goals_and_effort_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0801bd61336f8e82ad8baed7cde81733ee5f9a5fc51bc59d299339a9b9d6e208","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b221c36419f521c64c3c38aa5f258eb64123b7197afccf926fcd6c10902c20fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_goals_and_effort_04 -> audio/generated/ko-KR/lexical/b221c36419f521c64c3c38aa5f258eb64123b7197afccf926fcd6c10902c20fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e7523cf2-2a52-5996-a106-9b139c9b7f7e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_goals_and_effort_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2b2802271ace0be7328eb3badb568de6bc793a7bcb7e0007ec066807f9bd909'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95c7812c-5a88-59c1-ba67-1e8021fa28bd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e7523cf2-2a52-5996-a106-9b139c9b7f7e', 1), 'b2b2802271ace0be7328eb3badb568de6bc793a7bcb7e0007ec066807f9bd909',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b221c36419f521c64c3c38aa5f258eb64123b7197afccf926fcd6c10902c20fe.mp3', 966, '2026-09-13 23:00:11.522617', '0801bd61336f8e82ad8baed7cde81733ee5f9a5fc51bc59d299339a9b9d6e208', 'validated', '{"audio_key":"b221c36419f521c64c3c38aa5f258eb64123b7197afccf926fcd6c10902c20fe","entity_key":"wf_goals_and_effort_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0801bd61336f8e82ad8baed7cde81733ee5f9a5fc51bc59d299339a9b9d6e208","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b221c36419f521c64c3c38aa5f258eb64123b7197afccf926fcd6c10902c20fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_goals_and_effort_02 -> audio/generated/ko-KR/lexical/b56f0259533f78f04d5b8a82b4c50c3dfc779f81fa1b2c6096c3b8ddc5014ece.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2ffe8aac-efbc-5b9c-b4d4-a2b605a17051', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_goals_and_effort_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1119b060db74766fb336d6e022aa4bcb4d704d4776f640b0048007b9d62a1e1c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('516bbe3e-46b2-5b51-8d89-2d7804903d93', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2ffe8aac-efbc-5b9c-b4d4-a2b605a17051', 1), '1119b060db74766fb336d6e022aa4bcb4d704d4776f640b0048007b9d62a1e1c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b56f0259533f78f04d5b8a82b4c50c3dfc779f81fa1b2c6096c3b8ddc5014ece.mp3', 966, '2026-09-13 23:00:12.512004', 'bbc87fa6e697276dc5cfc90e52bebc54a9332bb582626ed7d65a9afc8ab51006', 'validated', '{"audio_key":"b56f0259533f78f04d5b8a82b4c50c3dfc779f81fa1b2c6096c3b8ddc5014ece","entity_key":"lx_goals_and_effort_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bbc87fa6e697276dc5cfc90e52bebc54a9332bb582626ed7d65a9afc8ab51006","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b56f0259533f78f04d5b8a82b4c50c3dfc779f81fa1b2c6096c3b8ddc5014ece.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_goals_and_effort_02 -> audio/generated/ko-KR/lexical/b56f0259533f78f04d5b8a82b4c50c3dfc779f81fa1b2c6096c3b8ddc5014ece.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('67a26e20-c4ef-5c90-b19d-edabf7bba54b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_goals_and_effort_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1119b060db74766fb336d6e022aa4bcb4d704d4776f640b0048007b9d62a1e1c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58c16ec1-2bf3-5f7d-b4da-2ea30a1538f2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('67a26e20-c4ef-5c90-b19d-edabf7bba54b', 1), '1119b060db74766fb336d6e022aa4bcb4d704d4776f640b0048007b9d62a1e1c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b56f0259533f78f04d5b8a82b4c50c3dfc779f81fa1b2c6096c3b8ddc5014ece.mp3', 966, '2026-09-13 23:00:12.512004', 'bbc87fa6e697276dc5cfc90e52bebc54a9332bb582626ed7d65a9afc8ab51006', 'validated', '{"audio_key":"b56f0259533f78f04d5b8a82b4c50c3dfc779f81fa1b2c6096c3b8ddc5014ece","entity_key":"wf_goals_and_effort_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bbc87fa6e697276dc5cfc90e52bebc54a9332bb582626ed7d65a9afc8ab51006","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b56f0259533f78f04d5b8a82b4c50c3dfc779f81fa1b2c6096c3b8ddc5014ece.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_storytelling_sequence_05 -> audio/generated/ko-KR/lexical/b6610588e91b5e974e9c1340fa2c06a504b92e7ad8a87763c07bfe1146d1f4a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3128a94f-637e-5972-8468-46c6909f9fd1', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_storytelling_sequence_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eaee887b30c38d735354efa7fc82bfc55fd61daf0a65f3b4a9b9a88660c53520'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e865a37-3507-5b55-b855-01043f554421', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3128a94f-637e-5972-8468-46c6909f9fd1', 1), 'eaee887b30c38d735354efa7fc82bfc55fd61daf0a65f3b4a9b9a88660c53520',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b6610588e91b5e974e9c1340fa2c06a504b92e7ad8a87763c07bfe1146d1f4a3.mp3', 1071, '2026-09-13 23:00:12.596784', '9d27b73542a756418d834f7bc369be19c62d10587ac60e0dab49f4fdd8c254da', 'validated', '{"audio_key":"b6610588e91b5e974e9c1340fa2c06a504b92e7ad8a87763c07bfe1146d1f4a3","entity_key":"lx_storytelling_sequence_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9d27b73542a756418d834f7bc369be19c62d10587ac60e0dab49f4fdd8c254da","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b6610588e91b5e974e9c1340fa2c06a504b92e7ad8a87763c07bfe1146d1f4a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_storytelling_sequence_05 -> audio/generated/ko-KR/lexical/b6610588e91b5e974e9c1340fa2c06a504b92e7ad8a87763c07bfe1146d1f4a3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f79ac5a6-da96-538f-b76a-742f2bf8a0aa', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_storytelling_sequence_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eaee887b30c38d735354efa7fc82bfc55fd61daf0a65f3b4a9b9a88660c53520'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22ad6468-2669-57c0-8f55-5be1a919314f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f79ac5a6-da96-538f-b76a-742f2bf8a0aa', 1), 'eaee887b30c38d735354efa7fc82bfc55fd61daf0a65f3b4a9b9a88660c53520',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b6610588e91b5e974e9c1340fa2c06a504b92e7ad8a87763c07bfe1146d1f4a3.mp3', 1071, '2026-09-13 23:00:12.596784', '9d27b73542a756418d834f7bc369be19c62d10587ac60e0dab49f4fdd8c254da', 'validated', '{"audio_key":"b6610588e91b5e974e9c1340fa2c06a504b92e7ad8a87763c07bfe1146d1f4a3","entity_key":"wf_storytelling_sequence_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9d27b73542a756418d834f7bc369be19c62d10587ac60e0dab49f4fdd8c254da","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b6610588e91b5e974e9c1340fa2c06a504b92e7ad8a87763c07bfe1146d1f4a3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_experiences_and_change_01 -> audio/generated/ko-KR/lexical/b846e3c580e6fe500ca6c736236211694a4c99b9e8f73f9bc6ec83efe39af72a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4dba5a7c-66bf-551f-ae43-c5ad2e9ee524', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_experiences_and_change_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35e71a5db7e3493cf6ffd40656c82e8bda1004e33cd26e8c9741be8816222ac7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba70f969-e217-5a60-b3ac-b372ab08a455', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4dba5a7c-66bf-551f-ae43-c5ad2e9ee524', 1), '35e71a5db7e3493cf6ffd40656c82e8bda1004e33cd26e8c9741be8816222ac7',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b846e3c580e6fe500ca6c736236211694a4c99b9e8f73f9bc6ec83efe39af72a.mp3', 1071, '2026-09-13 22:25:07.193864', 'a76f5a99e9dc840dff41101dbfadc26e7d95d214966dd5a5dbd731ba294fb32a', 'validated', '{"audio_key":"b846e3c580e6fe500ca6c736236211694a4c99b9e8f73f9bc6ec83efe39af72a","entity_key":"lx_experiences_and_change_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a76f5a99e9dc840dff41101dbfadc26e7d95d214966dd5a5dbd731ba294fb32a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b846e3c580e6fe500ca6c736236211694a4c99b9e8f73f9bc6ec83efe39af72a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_experiences_and_change_01 -> audio/generated/ko-KR/lexical/b846e3c580e6fe500ca6c736236211694a4c99b9e8f73f9bc6ec83efe39af72a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f0e65796-ed1c-54d7-a566-fb07fa87752e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_experiences_and_change_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35e71a5db7e3493cf6ffd40656c82e8bda1004e33cd26e8c9741be8816222ac7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87bd6f5d-f40e-5562-8e04-b095d590172a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f0e65796-ed1c-54d7-a566-fb07fa87752e', 1), '35e71a5db7e3493cf6ffd40656c82e8bda1004e33cd26e8c9741be8816222ac7',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b846e3c580e6fe500ca6c736236211694a4c99b9e8f73f9bc6ec83efe39af72a.mp3', 1071, '2026-09-13 22:25:07.193864', 'a76f5a99e9dc840dff41101dbfadc26e7d95d214966dd5a5dbd731ba294fb32a', 'validated', '{"audio_key":"b846e3c580e6fe500ca6c736236211694a4c99b9e8f73f9bc6ec83efe39af72a","entity_key":"wf_experiences_and_change_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a76f5a99e9dc840dff41101dbfadc26e7d95d214966dd5a5dbd731ba294fb32a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b846e3c580e6fe500ca6c736236211694a4c99b9e8f73f9bc6ec83efe39af72a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_social_nuance_01 -> audio/generated/ko-KR/lexical/bfdbcb0de36a8e5c8b81b091011dec94f27953d3e76ec4c405e99e0c0e054089.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('16a9a704-0dbc-599b-b81c-a6dde55ed61f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_social_nuance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea0fa3f3ef6be62f820b339ea49fc35e57d9c67919795e7c5a530c78eec4fc1f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('10d3f3f9-8d59-5100-99c0-edbc2c312f49', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('16a9a704-0dbc-599b-b81c-a6dde55ed61f', 1), 'ea0fa3f3ef6be62f820b339ea49fc35e57d9c67919795e7c5a530c78eec4fc1f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bfdbcb0de36a8e5c8b81b091011dec94f27953d3e76ec4c405e99e0c0e054089.mp3', 914, '2026-09-13 23:00:13.542061', 'efe9b9483e2cb5ad43ec58f19bc683a6b60614c077d4cc8b2f6e064106e91d16', 'validated', '{"audio_key":"bfdbcb0de36a8e5c8b81b091011dec94f27953d3e76ec4c405e99e0c0e054089","entity_key":"lx_social_nuance_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"efe9b9483e2cb5ad43ec58f19bc683a6b60614c077d4cc8b2f6e064106e91d16","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bfdbcb0de36a8e5c8b81b091011dec94f27953d3e76ec4c405e99e0c0e054089.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_social_nuance_01 -> audio/generated/ko-KR/lexical/bfdbcb0de36a8e5c8b81b091011dec94f27953d3e76ec4c405e99e0c0e054089.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('91742628-b79b-56d6-9f55-38c3c74cf858', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_social_nuance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea0fa3f3ef6be62f820b339ea49fc35e57d9c67919795e7c5a530c78eec4fc1f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('383c6ba5-d2b5-5413-9278-1450de6b3c88', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('91742628-b79b-56d6-9f55-38c3c74cf858', 1), 'ea0fa3f3ef6be62f820b339ea49fc35e57d9c67919795e7c5a530c78eec4fc1f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bfdbcb0de36a8e5c8b81b091011dec94f27953d3e76ec4c405e99e0c0e054089.mp3', 914, '2026-09-13 23:00:13.542061', 'efe9b9483e2cb5ad43ec58f19bc683a6b60614c077d4cc8b2f6e064106e91d16', 'validated', '{"audio_key":"bfdbcb0de36a8e5c8b81b091011dec94f27953d3e76ec4c405e99e0c0e054089","entity_key":"wf_social_nuance_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"efe9b9483e2cb5ad43ec58f19bc683a6b60614c077d4cc8b2f6e064106e91d16","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bfdbcb0de36a8e5c8b81b091011dec94f27953d3e76ec4c405e99e0c0e054089.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_storytelling_sequence_03 -> audio/generated/ko-KR/lexical/c9800e220431fd3b28e30048ebf4714ce320dc2176557bdbacfa8e4030e793fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9ca088ed-38cd-5e2e-baba-e1b8162a0cf1', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_storytelling_sequence_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de3915c860a22269990f42fc4a2e92738e591c2d6372af93e70cdb4f0ca5355f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e0a2a574-d189-52a7-bb46-a2984b67fa15', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9ca088ed-38cd-5e2e-baba-e1b8162a0cf1', 1), 'de3915c860a22269990f42fc4a2e92738e591c2d6372af93e70cdb4f0ca5355f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/c9800e220431fd3b28e30048ebf4714ce320dc2176557bdbacfa8e4030e793fc.mp3', 1097, '2026-09-13 23:00:13.622584', 'f88519d65a206cc4ae1fe06f50183b2e0204f463bc0bed4afc5d4990853a2acf', 'validated', '{"audio_key":"c9800e220431fd3b28e30048ebf4714ce320dc2176557bdbacfa8e4030e793fc","entity_key":"lx_storytelling_sequence_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f88519d65a206cc4ae1fe06f50183b2e0204f463bc0bed4afc5d4990853a2acf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/c9800e220431fd3b28e30048ebf4714ce320dc2176557bdbacfa8e4030e793fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_storytelling_sequence_03 -> audio/generated/ko-KR/lexical/c9800e220431fd3b28e30048ebf4714ce320dc2176557bdbacfa8e4030e793fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dbf91567-3fee-5616-883c-32579b73c120', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_storytelling_sequence_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de3915c860a22269990f42fc4a2e92738e591c2d6372af93e70cdb4f0ca5355f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ded3808-b719-57b1-a652-3deca8061922', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dbf91567-3fee-5616-883c-32579b73c120', 1), 'de3915c860a22269990f42fc4a2e92738e591c2d6372af93e70cdb4f0ca5355f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/c9800e220431fd3b28e30048ebf4714ce320dc2176557bdbacfa8e4030e793fc.mp3', 1097, '2026-09-13 23:00:13.622584', 'f88519d65a206cc4ae1fe06f50183b2e0204f463bc0bed4afc5d4990853a2acf', 'validated', '{"audio_key":"c9800e220431fd3b28e30048ebf4714ce320dc2176557bdbacfa8e4030e793fc","entity_key":"wf_storytelling_sequence_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f88519d65a206cc4ae1fe06f50183b2e0204f463bc0bed4afc5d4990853a2acf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/c9800e220431fd3b28e30048ebf4714ce320dc2176557bdbacfa8e4030e793fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_storytelling_sequence_02 -> audio/generated/ko-KR/lexical/cef4e35e9f720d84624b94c4947f316dfdac5837f03c52e9f542a431cab2ce54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('49271765-c106-5b92-aa2c-6c1eb23245c0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_storytelling_sequence_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f93566e821b3c50bae9fa7ad56654cb0274ac6e96686b18325903edc49b7b75d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0fb69dec-b44d-574b-9a30-5ffc8799bd58', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('49271765-c106-5b92-aa2c-6c1eb23245c0', 1), 'f93566e821b3c50bae9fa7ad56654cb0274ac6e96686b18325903edc49b7b75d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/cef4e35e9f720d84624b94c4947f316dfdac5837f03c52e9f542a431cab2ce54.mp3', 1018, '2026-09-13 23:00:14.512721', '2ece01c46242f037fa82958f9146e3b11e51533973652ee14e8fd4116f6eb5f4', 'validated', '{"audio_key":"cef4e35e9f720d84624b94c4947f316dfdac5837f03c52e9f542a431cab2ce54","entity_key":"lx_storytelling_sequence_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2ece01c46242f037fa82958f9146e3b11e51533973652ee14e8fd4116f6eb5f4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/cef4e35e9f720d84624b94c4947f316dfdac5837f03c52e9f542a431cab2ce54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_storytelling_sequence_02 -> audio/generated/ko-KR/lexical/cef4e35e9f720d84624b94c4947f316dfdac5837f03c52e9f542a431cab2ce54.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('224b32fe-2718-5e63-8524-49c7da12c597', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_storytelling_sequence_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f93566e821b3c50bae9fa7ad56654cb0274ac6e96686b18325903edc49b7b75d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1080f1e8-7bc3-5229-a3ca-d4900f7a92ea', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('224b32fe-2718-5e63-8524-49c7da12c597', 1), 'f93566e821b3c50bae9fa7ad56654cb0274ac6e96686b18325903edc49b7b75d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/cef4e35e9f720d84624b94c4947f316dfdac5837f03c52e9f542a431cab2ce54.mp3', 1018, '2026-09-13 23:00:14.512721', '2ece01c46242f037fa82958f9146e3b11e51533973652ee14e8fd4116f6eb5f4', 'validated', '{"audio_key":"cef4e35e9f720d84624b94c4947f316dfdac5837f03c52e9f542a431cab2ce54","entity_key":"wf_storytelling_sequence_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2ece01c46242f037fa82958f9146e3b11e51533973652ee14e8fd4116f6eb5f4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/cef4e35e9f720d84624b94c4947f316dfdac5837f03c52e9f542a431cab2ce54.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_and_sources_04 -> audio/generated/ko-KR/lexical/cf897b89eba31236f99f43828595e6017cbc7507410e30666244c94faec1dbb0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4ec6eeeb-cf2c-5fca-a7a0-363ea3b459d2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_and_sources_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '817d68fde8418413891bc6fd9ecf06a9cb5715115cd8f77eda72617f9b6c89af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('23548762-1643-598b-a6c3-4c9b3f0bde15', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4ec6eeeb-cf2c-5fca-a7a0-363ea3b459d2', 1), '817d68fde8418413891bc6fd9ecf06a9cb5715115cd8f77eda72617f9b6c89af',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/cf897b89eba31236f99f43828595e6017cbc7507410e30666244c94faec1dbb0.mp3', 1071, '2026-09-13 23:00:14.785692', '6c2dbf48a373005262176eb98d04e4f218289c2595d73a61a689b9764e1fa114', 'validated', '{"audio_key":"cf897b89eba31236f99f43828595e6017cbc7507410e30666244c94faec1dbb0","entity_key":"lx_media_and_sources_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6c2dbf48a373005262176eb98d04e4f218289c2595d73a61a689b9764e1fa114","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/cf897b89eba31236f99f43828595e6017cbc7507410e30666244c94faec1dbb0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_and_sources_04 -> audio/generated/ko-KR/lexical/cf897b89eba31236f99f43828595e6017cbc7507410e30666244c94faec1dbb0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bb3d515e-1fc3-5fa1-b772-17823a53c65c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_and_sources_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '817d68fde8418413891bc6fd9ecf06a9cb5715115cd8f77eda72617f9b6c89af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('03cd6d66-1823-5ea5-b5d7-b9c8649f20aa', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bb3d515e-1fc3-5fa1-b772-17823a53c65c', 1), '817d68fde8418413891bc6fd9ecf06a9cb5715115cd8f77eda72617f9b6c89af',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/cf897b89eba31236f99f43828595e6017cbc7507410e30666244c94faec1dbb0.mp3', 1071, '2026-09-13 23:00:14.785692', '6c2dbf48a373005262176eb98d04e4f218289c2595d73a61a689b9764e1fa114', 'validated', '{"audio_key":"cf897b89eba31236f99f43828595e6017cbc7507410e30666244c94faec1dbb0","entity_key":"wf_media_and_sources_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6c2dbf48a373005262176eb98d04e4f218289c2595d73a61a689b9764e1fa114","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/cf897b89eba31236f99f43828595e6017cbc7507410e30666244c94faec1dbb0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_and_sources_05 -> audio/generated/ko-KR/lexical/d6eef7e9b2fbd1022e664b97a8fcf8361f5f42873f7aebce4b81edc534d3a076.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('112866bb-1da7-5190-a218-abb219b0d36a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_and_sources_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d3f8525c293cb927496f307d3c18dcc2bbb5692d2def7010205b9024e4a4b89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('76ee4d34-d5e8-5897-afe0-0386c2d450fc', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('112866bb-1da7-5190-a218-abb219b0d36a', 1), '0d3f8525c293cb927496f307d3c18dcc2bbb5692d2def7010205b9024e4a4b89',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/d6eef7e9b2fbd1022e664b97a8fcf8361f5f42873f7aebce4b81edc534d3a076.mp3', 1149, '2026-09-13 23:00:15.587225', 'eab2d780fb9fd0b497af89f520b2920877ca6dfad3479ac92679094418561603', 'validated', '{"audio_key":"d6eef7e9b2fbd1022e664b97a8fcf8361f5f42873f7aebce4b81edc534d3a076","entity_key":"lx_media_and_sources_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"eab2d780fb9fd0b497af89f520b2920877ca6dfad3479ac92679094418561603","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/d6eef7e9b2fbd1022e664b97a8fcf8361f5f42873f7aebce4b81edc534d3a076.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_and_sources_05 -> audio/generated/ko-KR/lexical/d6eef7e9b2fbd1022e664b97a8fcf8361f5f42873f7aebce4b81edc534d3a076.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('331a847b-7970-54ee-8d21-3d9ee53349f2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_and_sources_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d3f8525c293cb927496f307d3c18dcc2bbb5692d2def7010205b9024e4a4b89'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e486d37a-8b91-519e-83fc-f0271fed6e48', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('331a847b-7970-54ee-8d21-3d9ee53349f2', 1), '0d3f8525c293cb927496f307d3c18dcc2bbb5692d2def7010205b9024e4a4b89',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/d6eef7e9b2fbd1022e664b97a8fcf8361f5f42873f7aebce4b81edc534d3a076.mp3', 1149, '2026-09-13 23:00:15.587225', 'eab2d780fb9fd0b497af89f520b2920877ca6dfad3479ac92679094418561603', 'validated', '{"audio_key":"d6eef7e9b2fbd1022e664b97a8fcf8361f5f42873f7aebce4b81edc534d3a076","entity_key":"wf_media_and_sources_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"eab2d780fb9fd0b497af89f520b2920877ca6dfad3479ac92679094418561603","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/d6eef7e9b2fbd1022e664b97a8fcf8361f5f42873f7aebce4b81edc534d3a076.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_goals_and_effort_06 -> audio/generated/ko-KR/lexical/da209c3e42523ca6f0e707f12c7685793d49db6547eef5d9d79886d83e93840a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a365c584-1294-5b19-8b02-fc526cf4054a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_goals_and_effort_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ce364fc9c6f2a1ce188c75e47cb65405daac0431e657e2bfdb1324b0aca1dfa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec3ad132-eacd-55be-a8f5-ef1f114a4287', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a365c584-1294-5b19-8b02-fc526cf4054a', 1), '9ce364fc9c6f2a1ce188c75e47cb65405daac0431e657e2bfdb1324b0aca1dfa',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/da209c3e42523ca6f0e707f12c7685793d49db6547eef5d9d79886d83e93840a.mp3', 1071, '2026-09-13 23:00:15.826446', '6430410590087909b4f83aa382f941c14969261ca1f304d5174f63047344937f', 'validated', '{"audio_key":"da209c3e42523ca6f0e707f12c7685793d49db6547eef5d9d79886d83e93840a","entity_key":"lx_goals_and_effort_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6430410590087909b4f83aa382f941c14969261ca1f304d5174f63047344937f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/da209c3e42523ca6f0e707f12c7685793d49db6547eef5d9d79886d83e93840a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_goals_and_effort_06 -> audio/generated/ko-KR/lexical/da209c3e42523ca6f0e707f12c7685793d49db6547eef5d9d79886d83e93840a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('06539d17-0325-5fae-b8b2-0701bfadf949', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_goals_and_effort_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ce364fc9c6f2a1ce188c75e47cb65405daac0431e657e2bfdb1324b0aca1dfa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4e6ed8a-9501-5d3d-81e1-ecd427ff6830', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('06539d17-0325-5fae-b8b2-0701bfadf949', 1), '9ce364fc9c6f2a1ce188c75e47cb65405daac0431e657e2bfdb1324b0aca1dfa',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/da209c3e42523ca6f0e707f12c7685793d49db6547eef5d9d79886d83e93840a.mp3', 1071, '2026-09-13 23:00:15.826446', '6430410590087909b4f83aa382f941c14969261ca1f304d5174f63047344937f', 'validated', '{"audio_key":"da209c3e42523ca6f0e707f12c7685793d49db6547eef5d9d79886d83e93840a","entity_key":"wf_goals_and_effort_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6430410590087909b4f83aa382f941c14969261ca1f304d5174f63047344937f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/da209c3e42523ca6f0e707f12c7685793d49db6547eef5d9d79886d83e93840a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_conditions_and_consequences_06 -> audio/generated/ko-KR/lexical/dcf5711a0e24dafac0a5fec67dbda136f5055276d3849735845891f1d7e1f642.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a09a8554-87aa-523d-baf0-ce4fcfa4dcd0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_conditions_and_consequences_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b7c8ef4933c71a834692ad399ce3bebea220c971708eeb592a4c0916b9556899'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30ad56f0-7fe1-5c26-835d-df3c6b5269ef', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a09a8554-87aa-523d-baf0-ce4fcfa4dcd0', 1), 'b7c8ef4933c71a834692ad399ce3bebea220c971708eeb592a4c0916b9556899',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/dcf5711a0e24dafac0a5fec67dbda136f5055276d3849735845891f1d7e1f642.mp3', 835, '2026-09-13 23:00:16.619406', '59b941ac2b495f0c003a808aa0be8db30fcaf2727185e38e0ab740fa7e59bddd', 'validated', '{"audio_key":"dcf5711a0e24dafac0a5fec67dbda136f5055276d3849735845891f1d7e1f642","entity_key":"lx_conditions_and_consequences_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"59b941ac2b495f0c003a808aa0be8db30fcaf2727185e38e0ab740fa7e59bddd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/dcf5711a0e24dafac0a5fec67dbda136f5055276d3849735845891f1d7e1f642.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_conditions_and_consequences_06 -> audio/generated/ko-KR/lexical/dcf5711a0e24dafac0a5fec67dbda136f5055276d3849735845891f1d7e1f642.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cff99db5-4ce6-5c92-8665-90b825b8ea7a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_conditions_and_consequences_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b7c8ef4933c71a834692ad399ce3bebea220c971708eeb592a4c0916b9556899'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b25934aa-3e5a-5ea3-853d-817f409eafb4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cff99db5-4ce6-5c92-8665-90b825b8ea7a', 1), 'b7c8ef4933c71a834692ad399ce3bebea220c971708eeb592a4c0916b9556899',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/dcf5711a0e24dafac0a5fec67dbda136f5055276d3849735845891f1d7e1f642.mp3', 835, '2026-09-13 23:00:16.619406', '59b941ac2b495f0c003a808aa0be8db30fcaf2727185e38e0ab740fa7e59bddd', 'validated', '{"audio_key":"dcf5711a0e24dafac0a5fec67dbda136f5055276d3849735845891f1d7e1f642","entity_key":"wf_conditions_and_consequences_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"59b941ac2b495f0c003a808aa0be8db30fcaf2727185e38e0ab740fa7e59bddd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/dcf5711a0e24dafac0a5fec67dbda136f5055276d3849735845891f1d7e1f642.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_and_sources_02 -> audio/generated/ko-KR/lexical/e56f1733e172fbf81a7b111f0f4c23dd376885c65a0c67ad536e6e4b46e713c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3187ac61-2310-50ae-8f50-e24c65020085', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_and_sources_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f896d183072b81262d9cb7dd602e79aab229932d46ce0ccbff462e5628c5e94'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b3969d6-ee0e-5b9c-b14b-e8d547fe942c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3187ac61-2310-50ae-8f50-e24c65020085', 1), '1f896d183072b81262d9cb7dd602e79aab229932d46ce0ccbff462e5628c5e94',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e56f1733e172fbf81a7b111f0f4c23dd376885c65a0c67ad536e6e4b46e713c0.mp3', 966, '2026-09-13 23:00:16.797781', 'ddb2e05059e11df9f622caead2b54b2b9caf13b325a59583d38c757f7eed4252', 'validated', '{"audio_key":"e56f1733e172fbf81a7b111f0f4c23dd376885c65a0c67ad536e6e4b46e713c0","entity_key":"lx_media_and_sources_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ddb2e05059e11df9f622caead2b54b2b9caf13b325a59583d38c757f7eed4252","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e56f1733e172fbf81a7b111f0f4c23dd376885c65a0c67ad536e6e4b46e713c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_and_sources_02 -> audio/generated/ko-KR/lexical/e56f1733e172fbf81a7b111f0f4c23dd376885c65a0c67ad536e6e4b46e713c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2091a489-a826-5fec-b04a-4b65dd189a7a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_and_sources_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f896d183072b81262d9cb7dd602e79aab229932d46ce0ccbff462e5628c5e94'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6130c502-e188-591b-b452-1627dae77fb3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2091a489-a826-5fec-b04a-4b65dd189a7a', 1), '1f896d183072b81262d9cb7dd602e79aab229932d46ce0ccbff462e5628c5e94',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e56f1733e172fbf81a7b111f0f4c23dd376885c65a0c67ad536e6e4b46e713c0.mp3', 966, '2026-09-13 23:00:16.797781', 'ddb2e05059e11df9f622caead2b54b2b9caf13b325a59583d38c757f7eed4252', 'validated', '{"audio_key":"e56f1733e172fbf81a7b111f0f4c23dd376885c65a0c67ad536e6e4b46e713c0","entity_key":"wf_media_and_sources_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ddb2e05059e11df9f622caead2b54b2b9caf13b325a59583d38c757f7eed4252","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e56f1733e172fbf81a7b111f0f4c23dd376885c65a0c67ad536e6e4b46e713c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_problems_and_solutions_03 -> audio/generated/ko-KR/lexical/e5fa11157f1353b7dd04b88117b556fb3a6d6946f2c01d2509324177a7f91e7a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fc089a7f-9059-507b-b327-b0e00d4a9070', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_problems_and_solutions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '774be83e44842779b3fdf0c596689dbcbecbe99521ecd59f02bcd5d2deb7c6fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('050b6c2b-051c-53ca-b1fd-28f8a8e98ea8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fc089a7f-9059-507b-b327-b0e00d4a9070', 1), '774be83e44842779b3fdf0c596689dbcbecbe99521ecd59f02bcd5d2deb7c6fa',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e5fa11157f1353b7dd04b88117b556fb3a6d6946f2c01d2509324177a7f91e7a.mp3', 1018, '2026-09-13 23:00:17.663772', 'cf66aab17462d456c71b62b4a16301fad0def2c92dad6110d00bf1013cccecb4', 'validated', '{"audio_key":"e5fa11157f1353b7dd04b88117b556fb3a6d6946f2c01d2509324177a7f91e7a","entity_key":"lx_problems_and_solutions_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cf66aab17462d456c71b62b4a16301fad0def2c92dad6110d00bf1013cccecb4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e5fa11157f1353b7dd04b88117b556fb3a6d6946f2c01d2509324177a7f91e7a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_problems_and_solutions_03 -> audio/generated/ko-KR/lexical/e5fa11157f1353b7dd04b88117b556fb3a6d6946f2c01d2509324177a7f91e7a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f48523fc-ba6e-5c0b-8f1e-826ff360a4dd', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_problems_and_solutions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '774be83e44842779b3fdf0c596689dbcbecbe99521ecd59f02bcd5d2deb7c6fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2eec58af-12a9-5c0f-8711-75fa8260bc47', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f48523fc-ba6e-5c0b-8f1e-826ff360a4dd', 1), '774be83e44842779b3fdf0c596689dbcbecbe99521ecd59f02bcd5d2deb7c6fa',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e5fa11157f1353b7dd04b88117b556fb3a6d6946f2c01d2509324177a7f91e7a.mp3', 1018, '2026-09-13 23:00:17.663772', 'cf66aab17462d456c71b62b4a16301fad0def2c92dad6110d00bf1013cccecb4', 'validated', '{"audio_key":"e5fa11157f1353b7dd04b88117b556fb3a6d6946f2c01d2509324177a7f91e7a","entity_key":"wf_problems_and_solutions_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cf66aab17462d456c71b62b4a16301fad0def2c92dad6110d00bf1013cccecb4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e5fa11157f1353b7dd04b88117b556fb3a6d6946f2c01d2509324177a7f91e7a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_media_and_sources_03 -> audio/generated/ko-KR/lexical/e8fa9f2a5bf37004b50288b055c359c6d7f2870a6e81347e20cb82bbc2ce2379.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('cbfdb4a3-986e-52ec-9e6f-1774db0bf65f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_media_and_sources_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c087c91deb495f97dbc6485da69046ffa4198ecebcc01883a70ef85ce7f75008'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6bb8ebe-9286-5c66-8de1-41c7c82aa623', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('cbfdb4a3-986e-52ec-9e6f-1774db0bf65f', 1), 'c087c91deb495f97dbc6485da69046ffa4198ecebcc01883a70ef85ce7f75008',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e8fa9f2a5bf37004b50288b055c359c6d7f2870a6e81347e20cb82bbc2ce2379.mp3', 862, '2026-09-13 23:00:17.812648', '31ed6d977834599c91f2aa3aa1b4942692d12fb882ae3d85f3bfde0676b38c77', 'validated', '{"audio_key":"e8fa9f2a5bf37004b50288b055c359c6d7f2870a6e81347e20cb82bbc2ce2379","entity_key":"lx_media_and_sources_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"31ed6d977834599c91f2aa3aa1b4942692d12fb882ae3d85f3bfde0676b38c77","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e8fa9f2a5bf37004b50288b055c359c6d7f2870a6e81347e20cb82bbc2ce2379.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_media_and_sources_03 -> audio/generated/ko-KR/lexical/e8fa9f2a5bf37004b50288b055c359c6d7f2870a6e81347e20cb82bbc2ce2379.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a68f2cf1-e2d1-53dc-965d-c76f0d268457', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_media_and_sources_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c087c91deb495f97dbc6485da69046ffa4198ecebcc01883a70ef85ce7f75008'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a44b2bc-ff9c-51c6-a9d8-56fc936f9ba9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a68f2cf1-e2d1-53dc-965d-c76f0d268457', 1), 'c087c91deb495f97dbc6485da69046ffa4198ecebcc01883a70ef85ce7f75008',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e8fa9f2a5bf37004b50288b055c359c6d7f2870a6e81347e20cb82bbc2ce2379.mp3', 862, '2026-09-13 23:00:17.812648', '31ed6d977834599c91f2aa3aa1b4942692d12fb882ae3d85f3bfde0676b38c77', 'validated', '{"audio_key":"e8fa9f2a5bf37004b50288b055c359c6d7f2870a6e81347e20cb82bbc2ce2379","entity_key":"wf_media_and_sources_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"31ed6d977834599c91f2aa3aa1b4942692d12fb882ae3d85f3bfde0676b38c77","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e8fa9f2a5bf37004b50288b055c359c6d7f2870a6e81347e20cb82bbc2ce2379.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_social_nuance_06 -> audio/generated/ko-KR/lexical/f4b1856504ec9effad9e9f9744b98f23185ee0604aabcc4ea318474438b58ab6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a48b0c96-3c0b-5140-80a2-44eb0ed225e2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_social_nuance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f66851df1259c05487100929b0d7776dfa9f764b5b4a8c248a9c2447eab30455'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9048bb8b-d133-5e05-8b03-007356b4a67b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a48b0c96-3c0b-5140-80a2-44eb0ed225e2', 1), 'f66851df1259c05487100929b0d7776dfa9f764b5b4a8c248a9c2447eab30455',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f4b1856504ec9effad9e9f9744b98f23185ee0604aabcc4ea318474438b58ab6.mp3', 1567, '2026-09-13 23:00:18.743577', '829137dab16eac0650a916955f12fe05bad976da22daca7aa3996c9d6595c8df', 'validated', '{"audio_key":"f4b1856504ec9effad9e9f9744b98f23185ee0604aabcc4ea318474438b58ab6","entity_key":"lx_social_nuance_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"829137dab16eac0650a916955f12fe05bad976da22daca7aa3996c9d6595c8df","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f4b1856504ec9effad9e9f9744b98f23185ee0604aabcc4ea318474438b58ab6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_social_nuance_06 -> audio/generated/ko-KR/lexical/f4b1856504ec9effad9e9f9744b98f23185ee0604aabcc4ea318474438b58ab6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('162c9067-f1ab-5d5b-8772-c85d9d7c47c8', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_social_nuance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f66851df1259c05487100929b0d7776dfa9f764b5b4a8c248a9c2447eab30455'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd6a59d2-9dec-570b-b644-3399518c14a7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('162c9067-f1ab-5d5b-8772-c85d9d7c47c8', 1), 'f66851df1259c05487100929b0d7776dfa9f764b5b4a8c248a9c2447eab30455',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f4b1856504ec9effad9e9f9744b98f23185ee0604aabcc4ea318474438b58ab6.mp3', 1567, '2026-09-13 23:00:18.743577', '829137dab16eac0650a916955f12fe05bad976da22daca7aa3996c9d6595c8df', 'validated', '{"audio_key":"f4b1856504ec9effad9e9f9744b98f23185ee0604aabcc4ea318474438b58ab6","entity_key":"wf_social_nuance_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"829137dab16eac0650a916955f12fe05bad976da22daca7aa3996c9d6595c8df","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f4b1856504ec9effad9e9f9744b98f23185ee0604aabcc4ea318474438b58ab6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_conditions_and_consequences_05 -> audio/generated/ko-KR/lexical/f79e6632fe6d6be6b84e75a692a8fd8c202b8b5faf4249662b88a273c8190fd8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2223cdeb-b3c5-5aa1-8e78-b48829ebc864', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_conditions_and_consequences_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0925aa90ecffa7d68ff7837a8061fc0727ed11f2ac486e261ce991adc65577ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('04df5f53-86ef-5dcd-bf17-231e2bb4ed7e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2223cdeb-b3c5-5aa1-8e78-b48829ebc864', 1), '0925aa90ecffa7d68ff7837a8061fc0727ed11f2ac486e261ce991adc65577ed',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f79e6632fe6d6be6b84e75a692a8fd8c202b8b5faf4249662b88a273c8190fd8.mp3', 1018, '2026-09-13 23:00:18.817578', '161b36bd62f0ba602e77a2adb5c0f779be13a2be20d91155ba3de520ecb1aa84', 'validated', '{"audio_key":"f79e6632fe6d6be6b84e75a692a8fd8c202b8b5faf4249662b88a273c8190fd8","entity_key":"lx_conditions_and_consequences_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"161b36bd62f0ba602e77a2adb5c0f779be13a2be20d91155ba3de520ecb1aa84","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f79e6632fe6d6be6b84e75a692a8fd8c202b8b5faf4249662b88a273c8190fd8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_conditions_and_consequences_05 -> audio/generated/ko-KR/lexical/f79e6632fe6d6be6b84e75a692a8fd8c202b8b5faf4249662b88a273c8190fd8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ca757a2d-2368-5ae9-8458-08e326a8547b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_conditions_and_consequences_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0925aa90ecffa7d68ff7837a8061fc0727ed11f2ac486e261ce991adc65577ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28f65b4b-3e2b-5363-9e88-cb60beaeadc2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ca757a2d-2368-5ae9-8458-08e326a8547b', 1), '0925aa90ecffa7d68ff7837a8061fc0727ed11f2ac486e261ce991adc65577ed',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f79e6632fe6d6be6b84e75a692a8fd8c202b8b5faf4249662b88a273c8190fd8.mp3', 1018, '2026-09-13 23:00:18.817578', '161b36bd62f0ba602e77a2adb5c0f779be13a2be20d91155ba3de520ecb1aa84', 'validated', '{"audio_key":"f79e6632fe6d6be6b84e75a692a8fd8c202b8b5faf4249662b88a273c8190fd8","entity_key":"wf_conditions_and_consequences_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"161b36bd62f0ba602e77a2adb5c0f779be13a2be20d91155ba3de520ecb1aa84","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f79e6632fe6d6be6b84e75a692a8fd8c202b8b5faf4249662b88a273c8190fd8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_storytelling_sequence_01 -> audio/generated/ko-KR/utterances/0ad9acd0dcb2fa88c97ecf92c77a723c56ea36fe9912eb33059ced7bf213138f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bf8059d1-20df-550f-9b4c-074d0a9c3222', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_storytelling_sequence_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0b82f992629dc2d661535f90782e009f57045f8d206287a76cd085f3a1ae695'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ddc1dec9-1799-5864-b4ae-649fda8775de', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bf8059d1-20df-550f-9b4c-074d0a9c3222', 1), 'b0b82f992629dc2d661535f90782e009f57045f8d206287a76cd085f3a1ae695',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/0ad9acd0dcb2fa88c97ecf92c77a723c56ea36fe9912eb33059ced7bf213138f.mp3', 2586, '2026-09-13 23:00:20.013576', '9e02ee7e112a60186d11739347e269d01bb7a38f797c32f071fcc70e4dd3a7cd', 'validated', '{"audio_key":"0ad9acd0dcb2fa88c97ecf92c77a723c56ea36fe9912eb33059ced7bf213138f","entity_key":"u_storytelling_sequence_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9e02ee7e112a60186d11739347e269d01bb7a38f797c32f071fcc70e4dd3a7cd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/0ad9acd0dcb2fa88c97ecf92c77a723c56ea36fe9912eb33059ced7bf213138f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_social_nuance_02 -> audio/generated/ko-KR/utterances/124f3f08cc6f7dbd9b331f71a3241a61d54d82318b0253b0e444a33d28e543c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6323b240-0d0d-54f8-9f57-0e69d25a1e8e', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_social_nuance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd9efed8a06ee9e89022313a21ccf3f73a4a597921cc129f8f4a00438a40bbc07'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('060c169c-7ca4-5540-bbdc-ff27c8cd8ef6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6323b240-0d0d-54f8-9f57-0e69d25a1e8e', 1), 'd9efed8a06ee9e89022313a21ccf3f73a4a597921cc129f8f4a00438a40bbc07',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/124f3f08cc6f7dbd9b331f71a3241a61d54d82318b0253b0e444a33d28e543c4.mp3', 3840, '2026-09-13 23:00:20.182338', 'c00280cab2acb804882ada3e24220887293d7ce20fc0abacdf8e6acebc8409e2', 'validated', '{"audio_key":"124f3f08cc6f7dbd9b331f71a3241a61d54d82318b0253b0e444a33d28e543c4","entity_key":"u_social_nuance_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c00280cab2acb804882ada3e24220887293d7ce20fc0abacdf8e6acebc8409e2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/124f3f08cc6f7dbd9b331f71a3241a61d54d82318b0253b0e444a33d28e543c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_social_nuance_01_listen -> audio/generated/ko-KR/utterances/124f3f08cc6f7dbd9b331f71a3241a61d54d82318b0253b0e444a33d28e543c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e2f7b868-d303-54a1-ab7f-b1e042be118a', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_social_nuance_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd9efed8a06ee9e89022313a21ccf3f73a4a597921cc129f8f4a00438a40bbc07'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d2898bc-6140-54fb-9beb-0c7de2153407', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e2f7b868-d303-54a1-ab7f-b1e042be118a', 1), 'd9efed8a06ee9e89022313a21ccf3f73a4a597921cc129f8f4a00438a40bbc07',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/124f3f08cc6f7dbd9b331f71a3241a61d54d82318b0253b0e444a33d28e543c4.mp3', 3840, '2026-09-13 23:00:20.182338', 'c00280cab2acb804882ada3e24220887293d7ce20fc0abacdf8e6acebc8409e2', 'validated', '{"audio_key":"124f3f08cc6f7dbd9b331f71a3241a61d54d82318b0253b0e444a33d28e543c4","entity_key":"e_social_nuance_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c00280cab2acb804882ada3e24220887293d7ce20fc0abacdf8e6acebc8409e2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/124f3f08cc6f7dbd9b331f71a3241a61d54d82318b0253b0e444a33d28e543c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_experiences_and_change_04 -> audio/generated/ko-KR/utterances/182ed07fab36f7b3a68c12c808ed6b0ad210b66f845a8da5f8c9305a77e58a5e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9f9051f8-ad32-5ecb-9e0b-a214ae2327fc', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_experiences_and_change_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4eae851e7704d08fdebbe9bac855a2c1b89ba1e0dce784d484d82e8d1acd4014'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a837a0c-e99e-5d53-b2c6-7e140ec699a9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9f9051f8-ad32-5ecb-9e0b-a214ae2327fc', 1), '4eae851e7704d08fdebbe9bac855a2c1b89ba1e0dce784d484d82e8d1acd4014',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/182ed07fab36f7b3a68c12c808ed6b0ad210b66f845a8da5f8c9305a77e58a5e.mp3', 2951, '2026-09-13 23:00:21.276428', '491aaf29d64d95c577e13c12e110434ddd49c88d44c1bcb2496b3b8d9b975c6c', 'validated', '{"audio_key":"182ed07fab36f7b3a68c12c808ed6b0ad210b66f845a8da5f8c9305a77e58a5e","entity_key":"u_experiences_and_change_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"491aaf29d64d95c577e13c12e110434ddd49c88d44c1bcb2496b3b8d9b975c6c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/182ed07fab36f7b3a68c12c808ed6b0ad210b66f845a8da5f8c9305a77e58a5e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_experiences_and_change_02_listen -> audio/generated/ko-KR/utterances/182ed07fab36f7b3a68c12c808ed6b0ad210b66f845a8da5f8c9305a77e58a5e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('94a6d40b-ffa0-528e-a111-6e431ad6898a', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_experiences_and_change_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4eae851e7704d08fdebbe9bac855a2c1b89ba1e0dce784d484d82e8d1acd4014'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7227c537-01e6-51a8-955f-412b939c05e0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('94a6d40b-ffa0-528e-a111-6e431ad6898a', 1), '4eae851e7704d08fdebbe9bac855a2c1b89ba1e0dce784d484d82e8d1acd4014',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/182ed07fab36f7b3a68c12c808ed6b0ad210b66f845a8da5f8c9305a77e58a5e.mp3', 2951, '2026-09-13 23:00:21.276428', '491aaf29d64d95c577e13c12e110434ddd49c88d44c1bcb2496b3b8d9b975c6c', 'validated', '{"audio_key":"182ed07fab36f7b3a68c12c808ed6b0ad210b66f845a8da5f8c9305a77e58a5e","entity_key":"e_experiences_and_change_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"491aaf29d64d95c577e13c12e110434ddd49c88d44c1bcb2496b3b8d9b975c6c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/182ed07fab36f7b3a68c12c808ed6b0ad210b66f845a8da5f8c9305a77e58a5e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_experiences_and_change_03 -> audio/generated/ko-KR/utterances/184afd644dad32c821a71e58559e84281aead736953af138f2dcab5120a7913e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d9affb86-d105-5ab1-ac17-2c81a4ed2c86', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_experiences_and_change_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a76f1433fda72aa630e387f6dd9f7fbafecd3ffccbbb8f0063de38d144eec86'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09d043fc-40a5-5200-ac4a-78ff5065ecba', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d9affb86-d105-5ab1-ac17-2c81a4ed2c86', 1), '4a76f1433fda72aa630e387f6dd9f7fbafecd3ffccbbb8f0063de38d144eec86',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/184afd644dad32c821a71e58559e84281aead736953af138f2dcab5120a7913e.mp3', 3186, '2026-09-13 23:00:21.410497', 'b44cd0cff54f967e45ea142545808dc906ea10839117674f9819f779dbff8783', 'validated', '{"audio_key":"184afd644dad32c821a71e58559e84281aead736953af138f2dcab5120a7913e","entity_key":"u_experiences_and_change_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b44cd0cff54f967e45ea142545808dc906ea10839117674f9819f779dbff8783","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/184afd644dad32c821a71e58559e84281aead736953af138f2dcab5120a7913e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b1_seoul_project_capstone_02 -> audio/generated/ko-KR/utterances/197407de603941c1b725a20185e8b0fde797472b22d3a95e2a3df0f02f583eff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5e409ab4-fd37-5cf3-852f-bec9565d0029', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b1_seoul_project_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1830109bb71f64f6483208b3d27b4db9093b744e148287d70ab3168d14cd9f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3bdd95e3-db60-5722-b40a-740ad71eef42', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5e409ab4-fd37-5cf3-852f-bec9565d0029', 1), 'c1830109bb71f64f6483208b3d27b4db9093b744e148287d70ab3168d14cd9f2',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/197407de603941c1b725a20185e8b0fde797472b22d3a95e2a3df0f02f583eff.mp3', 3526, '2026-09-13 23:00:22.586470', '0623b17a4a6064d7a7ae4dc3f0049cde72c728fe6298ace7a3dc1eb9def134e4', 'validated', '{"audio_key":"197407de603941c1b725a20185e8b0fde797472b22d3a95e2a3df0f02f583eff","entity_key":"u_b1_seoul_project_capstone_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0623b17a4a6064d7a7ae4dc3f0049cde72c728fe6298ace7a3dc1eb9def134e4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/197407de603941c1b725a20185e8b0fde797472b22d3a95e2a3df0f02f583eff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_b1_seoul_project_capstone_01_listen -> audio/generated/ko-KR/utterances/197407de603941c1b725a20185e8b0fde797472b22d3a95e2a3df0f02f583eff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6d65ac17-e683-52b6-8927-f3d599172c7c', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_b1_seoul_project_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1830109bb71f64f6483208b3d27b4db9093b744e148287d70ab3168d14cd9f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee1b2a26-5e8c-5014-a1fb-e45117757ead', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6d65ac17-e683-52b6-8927-f3d599172c7c', 1), 'c1830109bb71f64f6483208b3d27b4db9093b744e148287d70ab3168d14cd9f2',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/197407de603941c1b725a20185e8b0fde797472b22d3a95e2a3df0f02f583eff.mp3', 3526, '2026-09-13 23:00:22.586470', '0623b17a4a6064d7a7ae4dc3f0049cde72c728fe6298ace7a3dc1eb9def134e4', 'validated', '{"audio_key":"197407de603941c1b725a20185e8b0fde797472b22d3a95e2a3df0f02f583eff","entity_key":"e_b1_seoul_project_capstone_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0623b17a4a6064d7a7ae4dc3f0049cde72c728fe6298ace7a3dc1eb9def134e4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/197407de603941c1b725a20185e8b0fde797472b22d3a95e2a3df0f02f583eff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_social_nuance_03 -> audio/generated/ko-KR/utterances/1f8528fb6cef9b8200a42ed0388279930f47a4798394dbfc8fd569ef4f6640a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7cc5392a-5303-5735-8a35-f481b9327a76', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_social_nuance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a50a43cb473bb245c811ed387d33d83e6339ae2f2c1bd4be785c1acf1e6c49bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('99c703c2-fea0-555c-864d-7fde602810af', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7cc5392a-5303-5735-8a35-f481b9327a76', 1), 'a50a43cb473bb245c811ed387d33d83e6339ae2f2c1bd4be785c1acf1e6c49bb',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/1f8528fb6cef9b8200a42ed0388279930f47a4798394dbfc8fd569ef4f6640a6.mp3', 3004, '2026-09-13 23:00:22.631974', 'd812f040b7ff969be91bdfc407e238f4063b2e49db04fcca34d3215d4dc717f5', 'validated', '{"audio_key":"1f8528fb6cef9b8200a42ed0388279930f47a4798394dbfc8fd569ef4f6640a6","entity_key":"u_social_nuance_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d812f040b7ff969be91bdfc407e238f4063b2e49db04fcca34d3215d4dc717f5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/1f8528fb6cef9b8200a42ed0388279930f47a4798394dbfc8fd569ef4f6640a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b1_seoul_project_capstone_04 -> audio/generated/ko-KR/utterances/2b74fc4cf81e124ba2e959d6ac033e3d7a4b36ce2af07d7d5ddc13f97a380d78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4bcefbce-5eb0-5466-9886-565d6f16c79e', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b1_seoul_project_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bdc6298322dc37ab75de5a7290cb51cc96576fe5c4adda97d583289d99bd91a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58176b81-bd92-54d9-88a1-7baf8138d1dc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4bcefbce-5eb0-5466-9886-565d6f16c79e', 1), 'bdc6298322dc37ab75de5a7290cb51cc96576fe5c4adda97d583289d99bd91a0',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/2b74fc4cf81e124ba2e959d6ac033e3d7a4b36ce2af07d7d5ddc13f97a380d78.mp3', 3186, '2026-09-13 23:00:23.851107', 'f8ba5d51e11cab0eb896eaa1ef2eac90b48b3e3517d8f0961fa8d266a23c5918', 'validated', '{"audio_key":"2b74fc4cf81e124ba2e959d6ac033e3d7a4b36ce2af07d7d5ddc13f97a380d78","entity_key":"u_b1_seoul_project_capstone_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f8ba5d51e11cab0eb896eaa1ef2eac90b48b3e3517d8f0961fa8d266a23c5918","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/2b74fc4cf81e124ba2e959d6ac033e3d7a4b36ce2af07d7d5ddc13f97a380d78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_b1_seoul_project_capstone_02_listen -> audio/generated/ko-KR/utterances/2b74fc4cf81e124ba2e959d6ac033e3d7a4b36ce2af07d7d5ddc13f97a380d78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3827559b-f7a4-584c-b33d-dad3c13a0280', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_b1_seoul_project_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bdc6298322dc37ab75de5a7290cb51cc96576fe5c4adda97d583289d99bd91a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b70ddb9-cf33-566c-8f36-7867da5ed524', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3827559b-f7a4-584c-b33d-dad3c13a0280', 1), 'bdc6298322dc37ab75de5a7290cb51cc96576fe5c4adda97d583289d99bd91a0',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/2b74fc4cf81e124ba2e959d6ac033e3d7a4b36ce2af07d7d5ddc13f97a380d78.mp3', 3186, '2026-09-13 23:00:23.851107', 'f8ba5d51e11cab0eb896eaa1ef2eac90b48b3e3517d8f0961fa8d266a23c5918', 'validated', '{"audio_key":"2b74fc4cf81e124ba2e959d6ac033e3d7a4b36ce2af07d7d5ddc13f97a380d78","entity_key":"e_b1_seoul_project_capstone_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f8ba5d51e11cab0eb896eaa1ef2eac90b48b3e3517d8f0961fa8d266a23c5918","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/2b74fc4cf81e124ba2e959d6ac033e3d7a4b36ce2af07d7d5ddc13f97a380d78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_information_04 -> audio/generated/ko-KR/utterances/3021d5ce35db8ff12ea9c8c8f79b1661fa5aa540cc0b504477d698bbcb413582.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0d1cec76-7e00-5270-8fd6-d2f63c099364', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_information_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a58b542085bfe5f718bb769d9c6624ced633e422cd4689b26107cd546ea4fd5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dcdc8aa0-951f-5bc6-addd-46323e84764e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0d1cec76-7e00-5270-8fd6-d2f63c099364', 1), '1a58b542085bfe5f718bb769d9c6624ced633e422cd4689b26107cd546ea4fd5',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/3021d5ce35db8ff12ea9c8c8f79b1661fa5aa540cc0b504477d698bbcb413582.mp3', 2403, '2026-09-13 23:00:23.943934', 'ee6e184905f5005470799d769c904ed3bb867f8c8018ab3d609e4905afe70152', 'validated', '{"audio_key":"3021d5ce35db8ff12ea9c8c8f79b1661fa5aa540cc0b504477d698bbcb413582","entity_key":"u_reported_information_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ee6e184905f5005470799d769c904ed3bb867f8c8018ab3d609e4905afe70152","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/3021d5ce35db8ff12ea9c8c8f79b1661fa5aa540cc0b504477d698bbcb413582.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_reported_information_02_listen -> audio/generated/ko-KR/utterances/3021d5ce35db8ff12ea9c8c8f79b1661fa5aa540cc0b504477d698bbcb413582.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('31f1484a-396b-5b1f-b50c-11ba3eb36936', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_reported_information_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a58b542085bfe5f718bb769d9c6624ced633e422cd4689b26107cd546ea4fd5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('613798e3-d479-5525-b7fc-8f8afff31130', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('31f1484a-396b-5b1f-b50c-11ba3eb36936', 1), '1a58b542085bfe5f718bb769d9c6624ced633e422cd4689b26107cd546ea4fd5',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/3021d5ce35db8ff12ea9c8c8f79b1661fa5aa540cc0b504477d698bbcb413582.mp3', 2403, '2026-09-13 23:00:23.943934', 'ee6e184905f5005470799d769c904ed3bb867f8c8018ab3d609e4905afe70152', 'validated', '{"audio_key":"3021d5ce35db8ff12ea9c8c8f79b1661fa5aa540cc0b504477d698bbcb413582","entity_key":"e_reported_information_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ee6e184905f5005470799d769c904ed3bb867f8c8018ab3d609e4905afe70152","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/3021d5ce35db8ff12ea9c8c8f79b1661fa5aa540cc0b504477d698bbcb413582.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_information_02 -> audio/generated/ko-KR/utterances/370c30572db7af7e747c230ba80c837ca5fc73150c5ee03a6c207ace39b38a49.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('66840cc8-d46f-5f93-a52f-ed31ac529cd8', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_information_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a581f70199214bf2e0f354617aa991960f7244ca870b6779fa29d0edf8743d35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd4a0e60-1c79-5fca-b3c6-5b51c575431b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('66840cc8-d46f-5f93-a52f-ed31ac529cd8', 1), 'a581f70199214bf2e0f354617aa991960f7244ca870b6779fa29d0edf8743d35',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/370c30572db7af7e747c230ba80c837ca5fc73150c5ee03a6c207ace39b38a49.mp3', 2351, '2026-09-13 23:00:25.144084', 'f7d9a78bd22e03bf083c6f5353c4909439522921c6c1590694e628d067f5cce7', 'validated', '{"audio_key":"370c30572db7af7e747c230ba80c837ca5fc73150c5ee03a6c207ace39b38a49","entity_key":"u_reported_information_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f7d9a78bd22e03bf083c6f5353c4909439522921c6c1590694e628d067f5cce7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/370c30572db7af7e747c230ba80c837ca5fc73150c5ee03a6c207ace39b38a49.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_reported_information_01_listen -> audio/generated/ko-KR/utterances/370c30572db7af7e747c230ba80c837ca5fc73150c5ee03a6c207ace39b38a49.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('61f3c1b8-099f-5f49-b921-902298e85d89', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_reported_information_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a581f70199214bf2e0f354617aa991960f7244ca870b6779fa29d0edf8743d35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec077c76-e6bb-50d0-848b-108034bb99c3', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('61f3c1b8-099f-5f49-b921-902298e85d89', 1), 'a581f70199214bf2e0f354617aa991960f7244ca870b6779fa29d0edf8743d35',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/370c30572db7af7e747c230ba80c837ca5fc73150c5ee03a6c207ace39b38a49.mp3', 2351, '2026-09-13 23:00:25.144084', 'f7d9a78bd22e03bf083c6f5353c4909439522921c6c1590694e628d067f5cce7', 'validated', '{"audio_key":"370c30572db7af7e747c230ba80c837ca5fc73150c5ee03a6c207ace39b38a49","entity_key":"e_reported_information_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f7d9a78bd22e03bf083c6f5353c4909439522921c6c1590694e628d067f5cce7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/370c30572db7af7e747c230ba80c837ca5fc73150c5ee03a6c207ace39b38a49.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_goals_and_effort_02 -> audio/generated/ko-KR/utterances/3871a7e2d277f2df2e5e18ff0cdd06bd8d0d8ac2b54cbaf89d6bc9a3813b6a4f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a47f0efb-d5bb-5913-ad78-cfdf9cfec106', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_goals_and_effort_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '082935ad9fe4ec92c65b519f24e47181465c37d15eddfa6647adeee0e4affd42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('efe19fa3-4ea2-5676-9d4b-851073730b51', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a47f0efb-d5bb-5913-ad78-cfdf9cfec106', 1), '082935ad9fe4ec92c65b519f24e47181465c37d15eddfa6647adeee0e4affd42',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/3871a7e2d277f2df2e5e18ff0cdd06bd8d0d8ac2b54cbaf89d6bc9a3813b6a4f.mp3', 3186, '2026-09-13 23:00:25.261871', '4af501643dda80f74f643ab24100cdee18a80c0d01e3bf111dd36b9a54cadcc9', 'validated', '{"audio_key":"3871a7e2d277f2df2e5e18ff0cdd06bd8d0d8ac2b54cbaf89d6bc9a3813b6a4f","entity_key":"u_goals_and_effort_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4af501643dda80f74f643ab24100cdee18a80c0d01e3bf111dd36b9a54cadcc9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/3871a7e2d277f2df2e5e18ff0cdd06bd8d0d8ac2b54cbaf89d6bc9a3813b6a4f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_goals_and_effort_01_listen -> audio/generated/ko-KR/utterances/3871a7e2d277f2df2e5e18ff0cdd06bd8d0d8ac2b54cbaf89d6bc9a3813b6a4f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8821eecc-6ce6-53cc-85ed-a2b2d4bc0d35', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_goals_and_effort_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '082935ad9fe4ec92c65b519f24e47181465c37d15eddfa6647adeee0e4affd42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77cfb8a7-0c66-550f-be32-a109d1920082', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8821eecc-6ce6-53cc-85ed-a2b2d4bc0d35', 1), '082935ad9fe4ec92c65b519f24e47181465c37d15eddfa6647adeee0e4affd42',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/3871a7e2d277f2df2e5e18ff0cdd06bd8d0d8ac2b54cbaf89d6bc9a3813b6a4f.mp3', 3186, '2026-09-13 23:00:25.261871', '4af501643dda80f74f643ab24100cdee18a80c0d01e3bf111dd36b9a54cadcc9', 'validated', '{"audio_key":"3871a7e2d277f2df2e5e18ff0cdd06bd8d0d8ac2b54cbaf89d6bc9a3813b6a4f","entity_key":"e_goals_and_effort_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4af501643dda80f74f643ab24100cdee18a80c0d01e3bf111dd36b9a54cadcc9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/3871a7e2d277f2df2e5e18ff0cdd06bd8d0d8ac2b54cbaf89d6bc9a3813b6a4f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b1_seoul_project_capstone_01 -> audio/generated/ko-KR/utterances/3f3fa404c719a401c0e3b4b1c02fbd7013c29a07efea2eb3d38ad6adff9f7bc3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('39a2f333-8c4d-524c-b39f-63ba0df3adfc', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b1_seoul_project_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '18a31e845ad31294e726fd9eae3599139886c3561ff50f5fa13ce6d145670f57'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('096570a1-f2ed-57aa-9413-f85512d4f216', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('39a2f333-8c4d-524c-b39f-63ba0df3adfc', 1), '18a31e845ad31294e726fd9eae3599139886c3561ff50f5fa13ce6d145670f57',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/3f3fa404c719a401c0e3b4b1c02fbd7013c29a07efea2eb3d38ad6adff9f7bc3.mp3', 2925, '2026-09-13 23:00:26.402524', '8d2f847dc02c71bf0f09c7c50dfdfd276d5be141d67ab8548cf36e342e59c2e7', 'validated', '{"audio_key":"3f3fa404c719a401c0e3b4b1c02fbd7013c29a07efea2eb3d38ad6adff9f7bc3","entity_key":"u_b1_seoul_project_capstone_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8d2f847dc02c71bf0f09c7c50dfdfd276d5be141d67ab8548cf36e342e59c2e7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/3f3fa404c719a401c0e3b4b1c02fbd7013c29a07efea2eb3d38ad6adff9f7bc3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_and_sources_01 -> audio/generated/ko-KR/utterances/40fb3487852412c7764302f731f7e867875f3771ae89eeab4afe6ad900fddfb5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('60ee5b86-7a16-5ce5-9dd7-f886dbd4a103', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_and_sources_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cde11eeb9065bed4e38e73afbe78a5e083a94f9849a8ffde8ccf57341ce1b922'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee625d3b-8e69-56e4-a509-b2c50beb4ed1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('60ee5b86-7a16-5ce5-9dd7-f886dbd4a103', 1), 'cde11eeb9065bed4e38e73afbe78a5e083a94f9849a8ffde8ccf57341ce1b922',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/40fb3487852412c7764302f731f7e867875f3771ae89eeab4afe6ad900fddfb5.mp3', 2690, '2026-09-13 23:00:26.477820', 'b510e1cff14fad68fe604704021168d7be436a3c5669167f19f7fe1634810535', 'validated', '{"audio_key":"40fb3487852412c7764302f731f7e867875f3771ae89eeab4afe6ad900fddfb5","entity_key":"u_media_and_sources_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b510e1cff14fad68fe604704021168d7be436a3c5669167f19f7fe1634810535","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/40fb3487852412c7764302f731f7e867875f3771ae89eeab4afe6ad900fddfb5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_experiences_and_change_01 -> audio/generated/ko-KR/utterances/5a47ee64e2b163eb20e3a3c941573b8486add39891fe52851b93575e44663939.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ce6f6599-5caf-5614-83dd-9c36e5cbb775', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_experiences_and_change_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd259c3cf974980d1f34563f788de2ae9beca589c3df32139c78097fa5319f2eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2ec3cbb-08d8-58bd-bc93-727b6fa9596a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ce6f6599-5caf-5614-83dd-9c36e5cbb775', 1), 'd259c3cf974980d1f34563f788de2ae9beca589c3df32139c78097fa5319f2eb',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5a47ee64e2b163eb20e3a3c941573b8486add39891fe52851b93575e44663939.mp3', 3369, '2026-09-13 23:00:27.710427', '6dd57797bd6fde0750ecba9a9e4b04f126d441476658f9a21ce8716284b94bf6', 'validated', '{"audio_key":"5a47ee64e2b163eb20e3a3c941573b8486add39891fe52851b93575e44663939","entity_key":"u_experiences_and_change_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6dd57797bd6fde0750ecba9a9e4b04f126d441476658f9a21ce8716284b94bf6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5a47ee64e2b163eb20e3a3c941573b8486add39891fe52851b93575e44663939.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_problems_and_solutions_03 -> audio/generated/ko-KR/utterances/638621eca849e6d1d9d8494c281b9c438241481ccd07d542c1acc4f5530f482a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('20a2508c-b04f-5988-8ae2-d775bbafcedc', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_problems_and_solutions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a79c3b05b3126e8216f71c2236780e002ab04b44dc341bdcaa695b6cdf2c0989'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a09122a-7743-58cb-990d-7fc4b243c659', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('20a2508c-b04f-5988-8ae2-d775bbafcedc', 1), 'a79c3b05b3126e8216f71c2236780e002ab04b44dc341bdcaa695b6cdf2c0989',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/638621eca849e6d1d9d8494c281b9c438241481ccd07d542c1acc4f5530f482a.mp3', 2768, '2026-09-13 23:00:27.742324', 'e9c4dacaa4ea1465d46fdd2d66636da277c4440a81382bce7e513ac461fca88d', 'validated', '{"audio_key":"638621eca849e6d1d9d8494c281b9c438241481ccd07d542c1acc4f5530f482a","entity_key":"u_problems_and_solutions_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e9c4dacaa4ea1465d46fdd2d66636da277c4440a81382bce7e513ac461fca88d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/638621eca849e6d1d9d8494c281b9c438241481ccd07d542c1acc4f5530f482a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_problems_and_solutions_02 -> audio/generated/ko-KR/utterances/647589376dfead5c4a1af7a148169aea0ae6b44bf71f0655c61a8f2c2e9c86c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('28e7f657-4433-5884-8267-1e0aac2fcad0', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_problems_and_solutions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc470ea7397633cd69e657b609b704ac140c24589bec9a3cdb79ddcc6588515f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e049014-1ef6-5ac9-96a6-351a2026e02b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('28e7f657-4433-5884-8267-1e0aac2fcad0', 1), 'fc470ea7397633cd69e657b609b704ac140c24589bec9a3cdb79ddcc6588515f',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/647589376dfead5c4a1af7a148169aea0ae6b44bf71f0655c61a8f2c2e9c86c1.mp3', 3369, '2026-09-13 23:00:28.954857', '38ab9526c9f47652745e041784ddfd05a82edd5869dfae62d1ac014a75385003', 'validated', '{"audio_key":"647589376dfead5c4a1af7a148169aea0ae6b44bf71f0655c61a8f2c2e9c86c1","entity_key":"u_problems_and_solutions_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"38ab9526c9f47652745e041784ddfd05a82edd5869dfae62d1ac014a75385003","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/647589376dfead5c4a1af7a148169aea0ae6b44bf71f0655c61a8f2c2e9c86c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_problems_and_solutions_01_listen -> audio/generated/ko-KR/utterances/647589376dfead5c4a1af7a148169aea0ae6b44bf71f0655c61a8f2c2e9c86c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('95c6b905-7071-508c-b1a6-34bdfc4f4df9', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_problems_and_solutions_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc470ea7397633cd69e657b609b704ac140c24589bec9a3cdb79ddcc6588515f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aed5b552-2e8c-5ddf-9811-61acecf74646', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('95c6b905-7071-508c-b1a6-34bdfc4f4df9', 1), 'fc470ea7397633cd69e657b609b704ac140c24589bec9a3cdb79ddcc6588515f',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/647589376dfead5c4a1af7a148169aea0ae6b44bf71f0655c61a8f2c2e9c86c1.mp3', 3369, '2026-09-13 23:00:28.954857', '38ab9526c9f47652745e041784ddfd05a82edd5869dfae62d1ac014a75385003', 'validated', '{"audio_key":"647589376dfead5c4a1af7a148169aea0ae6b44bf71f0655c61a8f2c2e9c86c1","entity_key":"e_problems_and_solutions_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"38ab9526c9f47652745e041784ddfd05a82edd5869dfae62d1ac014a75385003","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/647589376dfead5c4a1af7a148169aea0ae6b44bf71f0655c61a8f2c2e9c86c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_conditions_and_consequences_01 -> audio/generated/ko-KR/utterances/6b92a7100a2548ef2794bc80132a93bc79d9f232d8fd4cb9558ffd9fc9ea8b4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d24d6600-cd9d-50cc-a191-2db7305eaa3b', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_conditions_and_consequences_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c85e86e78b08ded5fa037f19e89874ebea719ce785aaaf8edc3c52d3ccd8678'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fdb44ced-55bd-5376-a368-5d2f10b06419', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d24d6600-cd9d-50cc-a191-2db7305eaa3b', 1), '9c85e86e78b08ded5fa037f19e89874ebea719ce785aaaf8edc3c52d3ccd8678',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/6b92a7100a2548ef2794bc80132a93bc79d9f232d8fd4cb9558ffd9fc9ea8b4d.mp3', 1671, '2026-09-13 23:00:28.882675', '58937ec612bcd2a0f225ee60956ccbafed5fbe333553b3f720b1e1b1cff2edd4', 'validated', '{"audio_key":"6b92a7100a2548ef2794bc80132a93bc79d9f232d8fd4cb9558ffd9fc9ea8b4d","entity_key":"u_conditions_and_consequences_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"58937ec612bcd2a0f225ee60956ccbafed5fbe333553b3f720b1e1b1cff2edd4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/6b92a7100a2548ef2794bc80132a93bc79d9f232d8fd4cb9558ffd9fc9ea8b4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_b1_seoul_project_capstone_03 -> audio/generated/ko-KR/utterances/6e98b404de7babe9ded4803d7c0adbd5d78a724344295fa8e202c5d2c37d47a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('43747539-b687-52cc-a535-ac0d62d4fd50', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_b1_seoul_project_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '461d947c16bb28f03dff6b68f660c15f2b4485d59fc8653f45c65f2aeae415e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7c5b4ec-baf7-558e-b9f5-dddb239e1168', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('43747539-b687-52cc-a535-ac0d62d4fd50', 1), '461d947c16bb28f03dff6b68f660c15f2b4485d59fc8653f45c65f2aeae415e4',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/6e98b404de7babe9ded4803d7c0adbd5d78a724344295fa8e202c5d2c37d47a0.mp3', 3944, '2026-09-13 23:00:30.321538', '8fd659baf3f42cace4b7cc87686f1df2851bf1b23f05153730c792e7fb7d7e41', 'validated', '{"audio_key":"6e98b404de7babe9ded4803d7c0adbd5d78a724344295fa8e202c5d2c37d47a0","entity_key":"u_b1_seoul_project_capstone_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8fd659baf3f42cace4b7cc87686f1df2851bf1b23f05153730c792e7fb7d7e41","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/6e98b404de7babe9ded4803d7c0adbd5d78a724344295fa8e202c5d2c37d47a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_and_sources_02 -> audio/generated/ko-KR/utterances/727e2d303dc3b7096f597cd2cdd4e7de03c7f8ee9c7be8b8e1555e07e9850ef0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('81ac0b9f-49a2-591d-8c28-02382e4ee8dc', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_and_sources_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '99c5019a556e7139afd60a7a91ee66a7233693912a300f8daf513050118bf757'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05725272-9d7e-5c99-b5b8-229a12f3d12b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('81ac0b9f-49a2-591d-8c28-02382e4ee8dc', 1), '99c5019a556e7139afd60a7a91ee66a7233693912a300f8daf513050118bf757',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/727e2d303dc3b7096f597cd2cdd4e7de03c7f8ee9c7be8b8e1555e07e9850ef0.mp3', 3526, '2026-09-13 23:00:30.277487', '91e8f86fdd22ba5166e7f9863727afed828daaf6a95ec6650a1953142c7bfaa0', 'validated', '{"audio_key":"727e2d303dc3b7096f597cd2cdd4e7de03c7f8ee9c7be8b8e1555e07e9850ef0","entity_key":"u_media_and_sources_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"91e8f86fdd22ba5166e7f9863727afed828daaf6a95ec6650a1953142c7bfaa0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/727e2d303dc3b7096f597cd2cdd4e7de03c7f8ee9c7be8b8e1555e07e9850ef0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_media_and_sources_01_listen -> audio/generated/ko-KR/utterances/727e2d303dc3b7096f597cd2cdd4e7de03c7f8ee9c7be8b8e1555e07e9850ef0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4475b1fb-ee91-58c5-9207-69e2277db795', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_media_and_sources_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '99c5019a556e7139afd60a7a91ee66a7233693912a300f8daf513050118bf757'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7971572e-4605-5537-bf70-e0ed24121fc0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4475b1fb-ee91-58c5-9207-69e2277db795', 1), '99c5019a556e7139afd60a7a91ee66a7233693912a300f8daf513050118bf757',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/727e2d303dc3b7096f597cd2cdd4e7de03c7f8ee9c7be8b8e1555e07e9850ef0.mp3', 3526, '2026-09-13 23:00:30.277487', '91e8f86fdd22ba5166e7f9863727afed828daaf6a95ec6650a1953142c7bfaa0', 'validated', '{"audio_key":"727e2d303dc3b7096f597cd2cdd4e7de03c7f8ee9c7be8b8e1555e07e9850ef0","entity_key":"e_media_and_sources_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"91e8f86fdd22ba5166e7f9863727afed828daaf6a95ec6650a1953142c7bfaa0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/727e2d303dc3b7096f597cd2cdd4e7de03c7f8ee9c7be8b8e1555e07e9850ef0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_conditions_and_consequences_03 -> audio/generated/ko-KR/utterances/751cbdc2b9755b2417511ba1c23e827ee22019ef3bce4c6b56d26e5c8379e968.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b022023c-a62d-5233-bbd9-f301e9c20504', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_conditions_and_consequences_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '806dec3aa7f405c11bcbbbf9f1063c460b1b84d538430a2517af635fb2afd588'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('362d1a87-a461-57fb-a9fc-2c834ff28caf', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b022023c-a62d-5233-bbd9-f301e9c20504', 1), '806dec3aa7f405c11bcbbbf9f1063c460b1b84d538430a2517af635fb2afd588',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/751cbdc2b9755b2417511ba1c23e827ee22019ef3bce4c6b56d26e5c8379e968.mp3', 2690, '2026-09-13 23:00:31.510012', '326b0e10c2ddaae40a6e33aec188f788bce3e95ae6d6194556b937e124cf7c17', 'validated', '{"audio_key":"751cbdc2b9755b2417511ba1c23e827ee22019ef3bce4c6b56d26e5c8379e968","entity_key":"u_conditions_and_consequences_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"326b0e10c2ddaae40a6e33aec188f788bce3e95ae6d6194556b937e124cf7c17","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/751cbdc2b9755b2417511ba1c23e827ee22019ef3bce4c6b56d26e5c8379e968.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_conditions_and_consequences_04 -> audio/generated/ko-KR/utterances/7603dc59a03ce160ee37d939dfa687a9a61ecfe77f2550b8aab0aabe7b3f9816.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d4f6e358-f08e-58a7-8fc9-7b69f5eadc82', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_conditions_and_consequences_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4aa6799f9eb6988fd116140953eb7ed654f6117db674924b0ba3289bfa0261ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('06f62a47-5bcd-57c0-91ed-672e2fea3f56', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d4f6e358-f08e-58a7-8fc9-7b69f5eadc82', 1), '4aa6799f9eb6988fd116140953eb7ed654f6117db674924b0ba3289bfa0261ce',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7603dc59a03ce160ee37d939dfa687a9a61ecfe77f2550b8aab0aabe7b3f9816.mp3', 2455, '2026-09-13 23:00:31.454122', '1c6db253ff0bee04dbdf4dd07ba9cc8414d66a4f49659cf8760387ddd9429022', 'validated', '{"audio_key":"7603dc59a03ce160ee37d939dfa687a9a61ecfe77f2550b8aab0aabe7b3f9816","entity_key":"u_conditions_and_consequences_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1c6db253ff0bee04dbdf4dd07ba9cc8414d66a4f49659cf8760387ddd9429022","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7603dc59a03ce160ee37d939dfa687a9a61ecfe77f2550b8aab0aabe7b3f9816.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_conditions_and_consequences_02_listen -> audio/generated/ko-KR/utterances/7603dc59a03ce160ee37d939dfa687a9a61ecfe77f2550b8aab0aabe7b3f9816.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('201c175e-5998-517b-b6f3-8c507e6e9042', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_conditions_and_consequences_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4aa6799f9eb6988fd116140953eb7ed654f6117db674924b0ba3289bfa0261ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1efc2c0d-40a5-54b3-9a44-530b3aa1975e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('201c175e-5998-517b-b6f3-8c507e6e9042', 1), '4aa6799f9eb6988fd116140953eb7ed654f6117db674924b0ba3289bfa0261ce',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7603dc59a03ce160ee37d939dfa687a9a61ecfe77f2550b8aab0aabe7b3f9816.mp3', 2455, '2026-09-13 23:00:31.454122', '1c6db253ff0bee04dbdf4dd07ba9cc8414d66a4f49659cf8760387ddd9429022', 'validated', '{"audio_key":"7603dc59a03ce160ee37d939dfa687a9a61ecfe77f2550b8aab0aabe7b3f9816","entity_key":"e_conditions_and_consequences_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1c6db253ff0bee04dbdf4dd07ba9cc8414d66a4f49659cf8760387ddd9429022","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7603dc59a03ce160ee37d939dfa687a9a61ecfe77f2550b8aab0aabe7b3f9816.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_information_03 -> audio/generated/ko-KR/utterances/760fba108ef34bb1d57fb8a50cb57e661b8533f5fe77ebdccd2f1d6394916517.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a2d789e6-9b0d-5fd5-9bb4-ee8fdbaa4119', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_information_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '79b74ff44f6d988719d669bd5a94f90f13b815c0c8c95d0844eee4dd4e3a7997'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c940c195-9cc5-515a-9784-81b07b18792d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a2d789e6-9b0d-5fd5-9bb4-ee8fdbaa4119', 1), '79b74ff44f6d988719d669bd5a94f90f13b815c0c8c95d0844eee4dd4e3a7997',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/760fba108ef34bb1d57fb8a50cb57e661b8533f5fe77ebdccd2f1d6394916517.mp3', 2533, '2026-09-13 23:00:32.657878', 'f33d84bb7e7f48e5641dc3d32b83f80cc6fc51ecd31343aa8be39dc0ac1315cb', 'validated', '{"audio_key":"760fba108ef34bb1d57fb8a50cb57e661b8533f5fe77ebdccd2f1d6394916517","entity_key":"u_reported_information_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f33d84bb7e7f48e5641dc3d32b83f80cc6fc51ecd31343aa8be39dc0ac1315cb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/760fba108ef34bb1d57fb8a50cb57e661b8533f5fe77ebdccd2f1d6394916517.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_and_evidence_03 -> audio/generated/ko-KR/utterances/7f69776db0b734cedd65be84d3523a0ce15a5c0259dc9a2510cb146902c250e6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7b387cca-5808-5ee9-bbca-d25038a9a228', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_and_evidence_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ef25b5e9026e467212ec7beb49d9c04a839d0869e1a6a262545e8c8b361a4978'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('22900e61-a322-5163-a837-411ce68c1b57', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7b387cca-5808-5ee9-bbca-d25038a9a228', 1), 'ef25b5e9026e467212ec7beb49d9c04a839d0869e1a6a262545e8c8b361a4978',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7f69776db0b734cedd65be84d3523a0ce15a5c0259dc9a2510cb146902c250e6.mp3', 3343, '2026-09-13 23:00:32.839360', 'd20ba5954db7d6c72aec77e8dcb52fbda5197a552d3e9b0a93db48346c5c1394', 'validated', '{"audio_key":"7f69776db0b734cedd65be84d3523a0ce15a5c0259dc9a2510cb146902c250e6","entity_key":"u_opinions_and_evidence_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d20ba5954db7d6c72aec77e8dcb52fbda5197a552d3e9b0a93db48346c5c1394","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7f69776db0b734cedd65be84d3523a0ce15a5c0259dc9a2510cb146902c250e6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_problems_and_solutions_04 -> audio/generated/ko-KR/utterances/8899c7bd997b2672af6c50996f9d0d6c5d7ec9a1ae990e0202e08c5bd9671b6f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('97e50ae7-e7f9-5ced-8e29-dceee3dd6361', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_problems_and_solutions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9f283fbba1cc76334466f1268a4f9e3fac82d528856a344945b4f9d5d0c91cca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9057b441-261a-5e24-b037-728fd5b65204', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('97e50ae7-e7f9-5ced-8e29-dceee3dd6361', 1), '9f283fbba1cc76334466f1268a4f9e3fac82d528856a344945b4f9d5d0c91cca',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/8899c7bd997b2672af6c50996f9d0d6c5d7ec9a1ae990e0202e08c5bd9671b6f.mp3', 3474, '2026-09-13 23:00:33.968823', '87c25a2a8645bf57b51a44eb42f4f2f3885b2da3b5f3cbfdfa366a76b712819d', 'validated', '{"audio_key":"8899c7bd997b2672af6c50996f9d0d6c5d7ec9a1ae990e0202e08c5bd9671b6f","entity_key":"u_problems_and_solutions_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"87c25a2a8645bf57b51a44eb42f4f2f3885b2da3b5f3cbfdfa366a76b712819d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/8899c7bd997b2672af6c50996f9d0d6c5d7ec9a1ae990e0202e08c5bd9671b6f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_problems_and_solutions_02_listen -> audio/generated/ko-KR/utterances/8899c7bd997b2672af6c50996f9d0d6c5d7ec9a1ae990e0202e08c5bd9671b6f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3c73f39a-7089-52f4-8654-ae2d30a05906', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_problems_and_solutions_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9f283fbba1cc76334466f1268a4f9e3fac82d528856a344945b4f9d5d0c91cca'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e735bc4a-10c4-59d4-a0e3-c7c06de41c3d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3c73f39a-7089-52f4-8654-ae2d30a05906', 1), '9f283fbba1cc76334466f1268a4f9e3fac82d528856a344945b4f9d5d0c91cca',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/8899c7bd997b2672af6c50996f9d0d6c5d7ec9a1ae990e0202e08c5bd9671b6f.mp3', 3474, '2026-09-13 23:00:33.968823', '87c25a2a8645bf57b51a44eb42f4f2f3885b2da3b5f3cbfdfa366a76b712819d', 'validated', '{"audio_key":"8899c7bd997b2672af6c50996f9d0d6c5d7ec9a1ae990e0202e08c5bd9671b6f","entity_key":"e_problems_and_solutions_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"87c25a2a8645bf57b51a44eb42f4f2f3885b2da3b5f3cbfdfa366a76b712819d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/8899c7bd997b2672af6c50996f9d0d6c5d7ec9a1ae990e0202e08c5bd9671b6f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_and_evidence_04 -> audio/generated/ko-KR/utterances/8e2bb285bd6de6c71099d99d8b0bbf821b99f31e41227701c0e346eeb7e9b432.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c34206bb-937c-5d46-9ec5-9fa2c34a0fe8', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_and_evidence_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac0b9be510eccedf054754bf19b05e508406b02bd5ecda2fe7d853748a6df407'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e4313fb-4e3a-5ce2-9215-91b6f5b45b08', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c34206bb-937c-5d46-9ec5-9fa2c34a0fe8', 1), 'ac0b9be510eccedf054754bf19b05e508406b02bd5ecda2fe7d853748a6df407',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/8e2bb285bd6de6c71099d99d8b0bbf821b99f31e41227701c0e346eeb7e9b432.mp3', 2951, '2026-09-13 23:00:34.081405', '6911bc8584e662d3499fbbb44d7411c9280c2c93b6f871110393c6339bb002e7', 'validated', '{"audio_key":"8e2bb285bd6de6c71099d99d8b0bbf821b99f31e41227701c0e346eeb7e9b432","entity_key":"u_opinions_and_evidence_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6911bc8584e662d3499fbbb44d7411c9280c2c93b6f871110393c6339bb002e7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/8e2bb285bd6de6c71099d99d8b0bbf821b99f31e41227701c0e346eeb7e9b432.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_opinions_and_evidence_02_listen -> audio/generated/ko-KR/utterances/8e2bb285bd6de6c71099d99d8b0bbf821b99f31e41227701c0e346eeb7e9b432.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6d7d4ad5-8af9-5f79-a5bf-ec8160fe4a2f', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_opinions_and_evidence_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac0b9be510eccedf054754bf19b05e508406b02bd5ecda2fe7d853748a6df407'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b30904c3-f075-5ec2-b6a2-2bda6bcded86', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6d7d4ad5-8af9-5f79-a5bf-ec8160fe4a2f', 1), 'ac0b9be510eccedf054754bf19b05e508406b02bd5ecda2fe7d853748a6df407',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/8e2bb285bd6de6c71099d99d8b0bbf821b99f31e41227701c0e346eeb7e9b432.mp3', 2951, '2026-09-13 23:00:34.081405', '6911bc8584e662d3499fbbb44d7411c9280c2c93b6f871110393c6339bb002e7', 'validated', '{"audio_key":"8e2bb285bd6de6c71099d99d8b0bbf821b99f31e41227701c0e346eeb7e9b432","entity_key":"e_opinions_and_evidence_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6911bc8584e662d3499fbbb44d7411c9280c2c93b6f871110393c6339bb002e7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/8e2bb285bd6de6c71099d99d8b0bbf821b99f31e41227701c0e346eeb7e9b432.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_and_sources_03 -> audio/generated/ko-KR/utterances/8fb5b0f0be339548289e49f759a69784bd22025eab0b916e20a0fd8d5a09d1c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2e1ab32f-6480-5524-972d-c4cb6362722d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_and_sources_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '765f99c306b96eea90df9b0981a10afebfd7de19777cca22cb33b35a74092a80'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('adcb2825-a097-5a58-af5c-76a757f1ce66', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2e1ab32f-6480-5524-972d-c4cb6362722d', 1), '765f99c306b96eea90df9b0981a10afebfd7de19777cca22cb33b35a74092a80',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/8fb5b0f0be339548289e49f759a69784bd22025eab0b916e20a0fd8d5a09d1c8.mp3', 3186, '2026-09-13 23:00:35.262890', 'c0d672958b583b022f99fa5825756eaa680ab965c03e8653a13e4b6bd5b2220a', 'validated', '{"audio_key":"8fb5b0f0be339548289e49f759a69784bd22025eab0b916e20a0fd8d5a09d1c8","entity_key":"u_media_and_sources_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c0d672958b583b022f99fa5825756eaa680ab965c03e8653a13e4b6bd5b2220a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/8fb5b0f0be339548289e49f759a69784bd22025eab0b916e20a0fd8d5a09d1c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_goals_and_effort_04 -> audio/generated/ko-KR/utterances/9560b0c602ddb93fdc1117e88c3cd8ae337b727f6e0a7863b6a1eb41230aa110.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a82315a2-ee1e-5d47-b9e9-ffac0288ac87', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_goals_and_effort_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b16051f05e3e5a39934b169d4cea06d66d97bb254ec25b05a279722825578c69'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43072529-381f-5cff-a7bf-3e8dc834a2fe', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a82315a2-ee1e-5d47-b9e9-ffac0288ac87', 1), 'b16051f05e3e5a39934b169d4cea06d66d97bb254ec25b05a279722825578c69',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/9560b0c602ddb93fdc1117e88c3cd8ae337b727f6e0a7863b6a1eb41230aa110.mp3', 2873, '2026-09-13 23:00:35.323821', '8a29bbe6b28fc319526475ed08334731e5530341f4e6a54cdb8d43e3e6b2ec33', 'validated', '{"audio_key":"9560b0c602ddb93fdc1117e88c3cd8ae337b727f6e0a7863b6a1eb41230aa110","entity_key":"u_goals_and_effort_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8a29bbe6b28fc319526475ed08334731e5530341f4e6a54cdb8d43e3e6b2ec33","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/9560b0c602ddb93fdc1117e88c3cd8ae337b727f6e0a7863b6a1eb41230aa110.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_goals_and_effort_02_listen -> audio/generated/ko-KR/utterances/9560b0c602ddb93fdc1117e88c3cd8ae337b727f6e0a7863b6a1eb41230aa110.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('540a4aed-7515-5bdf-80db-591dc06f2ae7', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_goals_and_effort_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b16051f05e3e5a39934b169d4cea06d66d97bb254ec25b05a279722825578c69'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c499b106-4d06-5825-82e5-b86acc592cf4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('540a4aed-7515-5bdf-80db-591dc06f2ae7', 1), 'b16051f05e3e5a39934b169d4cea06d66d97bb254ec25b05a279722825578c69',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/9560b0c602ddb93fdc1117e88c3cd8ae337b727f6e0a7863b6a1eb41230aa110.mp3', 2873, '2026-09-13 23:00:35.323821', '8a29bbe6b28fc319526475ed08334731e5530341f4e6a54cdb8d43e3e6b2ec33', 'validated', '{"audio_key":"9560b0c602ddb93fdc1117e88c3cd8ae337b727f6e0a7863b6a1eb41230aa110","entity_key":"e_goals_and_effort_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8a29bbe6b28fc319526475ed08334731e5530341f4e6a54cdb8d43e3e6b2ec33","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/9560b0c602ddb93fdc1117e88c3cd8ae337b727f6e0a7863b6a1eb41230aa110.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_goals_and_effort_01 -> audio/generated/ko-KR/utterances/95cdb02e4a5a628e47da480dd8534f9a3b446f64ca0353b4d3e2d06063095de7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('299a1b8a-99e9-50f1-a7fb-8024794c131a', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_goals_and_effort_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cdd5b5180c2e29805cf8b7619c395136984564cd5ab117bed5793a90d66c826e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70cea78c-8626-5069-a0e0-8de1d2adacfd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('299a1b8a-99e9-50f1-a7fb-8024794c131a', 1), 'cdd5b5180c2e29805cf8b7619c395136984564cd5ab117bed5793a90d66c826e',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/95cdb02e4a5a628e47da480dd8534f9a3b446f64ca0353b4d3e2d06063095de7.mp3', 3056, '2026-09-13 23:00:36.548563', '619eda1ab76fd6cc40ac5d5ad4f66b4484ec07760697f2020b9683c8b32f8f32', 'validated', '{"audio_key":"95cdb02e4a5a628e47da480dd8534f9a3b446f64ca0353b4d3e2d06063095de7","entity_key":"u_goals_and_effort_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"619eda1ab76fd6cc40ac5d5ad4f66b4484ec07760697f2020b9683c8b32f8f32","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/95cdb02e4a5a628e47da480dd8534f9a3b446f64ca0353b4d3e2d06063095de7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_goals_and_effort_03 -> audio/generated/ko-KR/utterances/9d1cd4ccff57c33d8ede085c9152eaa3ac81f34e798e3b43db79219f03640057.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('53572f35-a019-5ad3-bfeb-9595e96bcef6', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_goals_and_effort_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f33351c0f4a942fee94899f78b97c8757b3b9edca171c410764407c699ff8f5e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c92df75c-adc5-5a95-920c-779b00c869bc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('53572f35-a019-5ad3-bfeb-9595e96bcef6', 1), 'f33351c0f4a942fee94899f78b97c8757b3b9edca171c410764407c699ff8f5e',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/9d1cd4ccff57c33d8ede085c9152eaa3ac81f34e798e3b43db79219f03640057.mp3', 3004, '2026-09-13 23:00:36.618119', '6461fb3653fa56a229056f97f36af5bd8595b0252718cba5c6f0c908ce025660', 'validated', '{"audio_key":"9d1cd4ccff57c33d8ede085c9152eaa3ac81f34e798e3b43db79219f03640057","entity_key":"u_goals_and_effort_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6461fb3653fa56a229056f97f36af5bd8595b0252718cba5c6f0c908ce025660","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/9d1cd4ccff57c33d8ede085c9152eaa3ac81f34e798e3b43db79219f03640057.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_social_nuance_01 -> audio/generated/ko-KR/utterances/ae02e1096d35c701f8a71f2bf800ffed710e1c24d55f71049c1e6f306175e1a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b0a0b31b-d227-5adc-a88d-09a554f2a673', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_social_nuance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c8879b84a9c04c7272296461719e69ffafbae23bba9d5d20a8e5b892f600e9eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8c2816f-95c2-5dad-8462-8ebab9cbff0b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b0a0b31b-d227-5adc-a88d-09a554f2a673', 1), 'c8879b84a9c04c7272296461719e69ffafbae23bba9d5d20a8e5b892f600e9eb',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/ae02e1096d35c701f8a71f2bf800ffed710e1c24d55f71049c1e6f306175e1a9.mp3', 4022, '2026-09-13 23:00:37.952530', '981e7f99444fab8c35cd4e043022b544d8713b37ad22060014c3c51da4e1548c', 'validated', '{"audio_key":"ae02e1096d35c701f8a71f2bf800ffed710e1c24d55f71049c1e6f306175e1a9","entity_key":"u_social_nuance_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"981e7f99444fab8c35cd4e043022b544d8713b37ad22060014c3c51da4e1548c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/ae02e1096d35c701f8a71f2bf800ffed710e1c24d55f71049c1e6f306175e1a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_storytelling_sequence_02 -> audio/generated/ko-KR/utterances/b59636dd86cab94ffecf63b5289138d3e545191236214674ad930ceedd4f966e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b3864726-f01e-56f3-abfe-c615511bfa7b', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_storytelling_sequence_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d8830d85b39da1c3ce11253845a25d68a521fa375c60425a4c5f8925f13d624'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47dc00e7-07e7-5a7c-a891-05940b7156fc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b3864726-f01e-56f3-abfe-c615511bfa7b', 1), '8d8830d85b39da1c3ce11253845a25d68a521fa375c60425a4c5f8925f13d624',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/b59636dd86cab94ffecf63b5289138d3e545191236214674ad930ceedd4f966e.mp3', 2272, '2026-09-13 23:00:37.778330', '0de11c9d1f1829a9ebd62b0c97de4928d8e3903e783def506e36bfcbdd696d68', 'validated', '{"audio_key":"b59636dd86cab94ffecf63b5289138d3e545191236214674ad930ceedd4f966e","entity_key":"u_storytelling_sequence_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0de11c9d1f1829a9ebd62b0c97de4928d8e3903e783def506e36bfcbdd696d68","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/b59636dd86cab94ffecf63b5289138d3e545191236214674ad930ceedd4f966e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_storytelling_sequence_01_listen -> audio/generated/ko-KR/utterances/b59636dd86cab94ffecf63b5289138d3e545191236214674ad930ceedd4f966e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a8f88771-1b28-552e-ba93-9205f6d8eb34', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_storytelling_sequence_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d8830d85b39da1c3ce11253845a25d68a521fa375c60425a4c5f8925f13d624'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18a72d3e-7382-501a-b677-d0328138f10b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a8f88771-1b28-552e-ba93-9205f6d8eb34', 1), '8d8830d85b39da1c3ce11253845a25d68a521fa375c60425a4c5f8925f13d624',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/b59636dd86cab94ffecf63b5289138d3e545191236214674ad930ceedd4f966e.mp3', 2272, '2026-09-13 23:00:37.778330', '0de11c9d1f1829a9ebd62b0c97de4928d8e3903e783def506e36bfcbdd696d68', 'validated', '{"audio_key":"b59636dd86cab94ffecf63b5289138d3e545191236214674ad930ceedd4f966e","entity_key":"e_storytelling_sequence_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0de11c9d1f1829a9ebd62b0c97de4928d8e3903e783def506e36bfcbdd696d68","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/b59636dd86cab94ffecf63b5289138d3e545191236214674ad930ceedd4f966e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_experiences_and_change_02 -> audio/generated/ko-KR/utterances/b5dd55969661b385054eb200f16e678654e5a0e892b7bd3d0c36fb2fadd83c10.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b56feb91-437f-59c0-b665-de677f4d382d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_experiences_and_change_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4c3a35635edf63ef58107c1b9b0cf2918b9c7cae3e0e58fa773c071a9d4646dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34ce0f73-b954-52a4-9252-f59b3f1d734f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b56feb91-437f-59c0-b665-de677f4d382d', 1), '4c3a35635edf63ef58107c1b9b0cf2918b9c7cae3e0e58fa773c071a9d4646dd',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/b5dd55969661b385054eb200f16e678654e5a0e892b7bd3d0c36fb2fadd83c10.mp3', 3291, '2026-09-13 23:00:39.074751', '891ffba580a2d0b2dfbe59f0d4294913ea67bb63d227512c06c747001da61d12', 'validated', '{"audio_key":"b5dd55969661b385054eb200f16e678654e5a0e892b7bd3d0c36fb2fadd83c10","entity_key":"u_experiences_and_change_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"891ffba580a2d0b2dfbe59f0d4294913ea67bb63d227512c06c747001da61d12","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/b5dd55969661b385054eb200f16e678654e5a0e892b7bd3d0c36fb2fadd83c10.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_experiences_and_change_01_listen -> audio/generated/ko-KR/utterances/b5dd55969661b385054eb200f16e678654e5a0e892b7bd3d0c36fb2fadd83c10.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('99bded83-5534-54c3-99b5-bd0a02770ff0', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_experiences_and_change_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4c3a35635edf63ef58107c1b9b0cf2918b9c7cae3e0e58fa773c071a9d4646dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d476a1cf-54a6-5d55-9fcb-9e9020d71236', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('99bded83-5534-54c3-99b5-bd0a02770ff0', 1), '4c3a35635edf63ef58107c1b9b0cf2918b9c7cae3e0e58fa773c071a9d4646dd',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/b5dd55969661b385054eb200f16e678654e5a0e892b7bd3d0c36fb2fadd83c10.mp3', 3291, '2026-09-13 23:00:39.074751', '891ffba580a2d0b2dfbe59f0d4294913ea67bb63d227512c06c747001da61d12', 'validated', '{"audio_key":"b5dd55969661b385054eb200f16e678654e5a0e892b7bd3d0c36fb2fadd83c10","entity_key":"e_experiences_and_change_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"891ffba580a2d0b2dfbe59f0d4294913ea67bb63d227512c06c747001da61d12","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/b5dd55969661b385054eb200f16e678654e5a0e892b7bd3d0c36fb2fadd83c10.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_media_and_sources_04 -> audio/generated/ko-KR/utterances/b6819ddf6a1cdc0c321e9ae39ec4a2bf4bd20e6d6f58f4962df7d1e064be90bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('93e58f3d-8969-5169-93c8-35ee5163a339', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_media_and_sources_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd00a7436d04a42fadba39e23e595b25e4bc180b2f391cbd16fd946ef9022ed0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a3c9f99-af91-5b7e-9ecb-2b070213b03f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('93e58f3d-8969-5169-93c8-35ee5163a339', 1), 'bd00a7436d04a42fadba39e23e595b25e4bc180b2f391cbd16fd946ef9022ed0',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/b6819ddf6a1cdc0c321e9ae39ec4a2bf4bd20e6d6f58f4962df7d1e064be90bc.mp3', 3160, '2026-09-13 23:00:39.223854', '8e8c87f61f9c999025e69cc69f434af588ec1e86d5da50f7b35b17acd868970e', 'validated', '{"audio_key":"b6819ddf6a1cdc0c321e9ae39ec4a2bf4bd20e6d6f58f4962df7d1e064be90bc","entity_key":"u_media_and_sources_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8e8c87f61f9c999025e69cc69f434af588ec1e86d5da50f7b35b17acd868970e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/b6819ddf6a1cdc0c321e9ae39ec4a2bf4bd20e6d6f58f4962df7d1e064be90bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_media_and_sources_02_listen -> audio/generated/ko-KR/utterances/b6819ddf6a1cdc0c321e9ae39ec4a2bf4bd20e6d6f58f4962df7d1e064be90bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('da5a3c96-e65d-573c-8735-e9b2d4484f71', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_media_and_sources_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bd00a7436d04a42fadba39e23e595b25e4bc180b2f391cbd16fd946ef9022ed0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c3298833-7b27-52c0-90df-7ea186143f2b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('da5a3c96-e65d-573c-8735-e9b2d4484f71', 1), 'bd00a7436d04a42fadba39e23e595b25e4bc180b2f391cbd16fd946ef9022ed0',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/b6819ddf6a1cdc0c321e9ae39ec4a2bf4bd20e6d6f58f4962df7d1e064be90bc.mp3', 3160, '2026-09-13 23:00:39.223854', '8e8c87f61f9c999025e69cc69f434af588ec1e86d5da50f7b35b17acd868970e', 'validated', '{"audio_key":"b6819ddf6a1cdc0c321e9ae39ec4a2bf4bd20e6d6f58f4962df7d1e064be90bc","entity_key":"e_media_and_sources_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8e8c87f61f9c999025e69cc69f434af588ec1e86d5da50f7b35b17acd868970e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/b6819ddf6a1cdc0c321e9ae39ec4a2bf4bd20e6d6f58f4962df7d1e064be90bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_storytelling_sequence_03 -> audio/generated/ko-KR/utterances/bb836127666e652fab65a5522b4c05bd61b185bea3c5975f07d25c6649f63f81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('815def90-6484-5346-a78c-79bf5b57ae71', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_storytelling_sequence_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a2d70746d8147533e557de3b280b06765b6aee7c917f503f61937fce25454695'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c22fbee-d314-52b0-832a-3dd73e4fe4ab', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('815def90-6484-5346-a78c-79bf5b57ae71', 1), 'a2d70746d8147533e557de3b280b06765b6aee7c917f503f61937fce25454695',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/bb836127666e652fab65a5522b4c05bd61b185bea3c5975f07d25c6649f63f81.mp3', 3657, '2026-09-13 23:00:40.411231', '4e3c0817ba9a0be8ac09d10edc9d2a0327fee88d22facb41c1c9161555f1dd2d', 'validated', '{"audio_key":"bb836127666e652fab65a5522b4c05bd61b185bea3c5975f07d25c6649f63f81","entity_key":"u_storytelling_sequence_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4e3c0817ba9a0be8ac09d10edc9d2a0327fee88d22facb41c1c9161555f1dd2d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/bb836127666e652fab65a5522b4c05bd61b185bea3c5975f07d25c6649f63f81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_and_evidence_02 -> audio/generated/ko-KR/utterances/c2761009bd2a4687b27bacf91f57375d0cec413a224568b90717e8e6bcbc6c60.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('95738403-0925-5b57-b072-173ff62439bb', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_and_evidence_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a7da7e016ae04ce46c956d28f856b7dd6eff546a3265024711bd4a767dc31ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e3b6b9e-5a72-53be-9d43-9fc50302526d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('95738403-0925-5b57-b072-173ff62439bb', 1), '0a7da7e016ae04ce46c956d28f856b7dd6eff546a3265024711bd4a767dc31ab',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c2761009bd2a4687b27bacf91f57375d0cec413a224568b90717e8e6bcbc6c60.mp3', 3056, '2026-09-13 23:00:40.451965', 'a14999a7d957c0b4ee7a1f7f1519412ba752ce12a28e3df56fbae2c47a95ac42', 'validated', '{"audio_key":"c2761009bd2a4687b27bacf91f57375d0cec413a224568b90717e8e6bcbc6c60","entity_key":"u_opinions_and_evidence_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a14999a7d957c0b4ee7a1f7f1519412ba752ce12a28e3df56fbae2c47a95ac42","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c2761009bd2a4687b27bacf91f57375d0cec413a224568b90717e8e6bcbc6c60.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_opinions_and_evidence_01_listen -> audio/generated/ko-KR/utterances/c2761009bd2a4687b27bacf91f57375d0cec413a224568b90717e8e6bcbc6c60.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e48c4d68-93a1-51de-ac0c-d71afa4e7bed', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_opinions_and_evidence_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a7da7e016ae04ce46c956d28f856b7dd6eff546a3265024711bd4a767dc31ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('724527b8-69cc-5f2d-849a-5fa9d53da0c0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e48c4d68-93a1-51de-ac0c-d71afa4e7bed', 1), '0a7da7e016ae04ce46c956d28f856b7dd6eff546a3265024711bd4a767dc31ab',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c2761009bd2a4687b27bacf91f57375d0cec413a224568b90717e8e6bcbc6c60.mp3', 3056, '2026-09-13 23:00:40.451965', 'a14999a7d957c0b4ee7a1f7f1519412ba752ce12a28e3df56fbae2c47a95ac42', 'validated', '{"audio_key":"c2761009bd2a4687b27bacf91f57375d0cec413a224568b90717e8e6bcbc6c60","entity_key":"e_opinions_and_evidence_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a14999a7d957c0b4ee7a1f7f1519412ba752ce12a28e3df56fbae2c47a95ac42","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c2761009bd2a4687b27bacf91f57375d0cec413a224568b90717e8e6bcbc6c60.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reported_information_01 -> audio/generated/ko-KR/utterances/cd98ee6e21b2b40d785530917a18f22cf6f2227616c3b30162e9dc1b1c6bf4ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('47d75abc-112e-523d-9327-5338718ba7f6', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reported_information_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8911cbc7b5183c05d47262cb1806d000957aacaca03f8ae1652f9d6449bcd937'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9701d52c-1f0b-5b5d-a283-35af675ae3d0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('47d75abc-112e-523d-9327-5338718ba7f6', 1), '8911cbc7b5183c05d47262cb1806d000957aacaca03f8ae1652f9d6449bcd937',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/cd98ee6e21b2b40d785530917a18f22cf6f2227616c3b30162e9dc1b1c6bf4ce.mp3', 2742, '2026-09-13 23:00:41.633338', 'cb0e577b26219066b82bbcf09703f8b96ebe310efcda69de23693802ae78c8ab', 'validated', '{"audio_key":"cd98ee6e21b2b40d785530917a18f22cf6f2227616c3b30162e9dc1b1c6bf4ce","entity_key":"u_reported_information_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cb0e577b26219066b82bbcf09703f8b96ebe310efcda69de23693802ae78c8ab","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/cd98ee6e21b2b40d785530917a18f22cf6f2227616c3b30162e9dc1b1c6bf4ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_storytelling_sequence_04 -> audio/generated/ko-KR/utterances/e334fd73853a7975519ab5cea15ec7275343f42edf58bf4e0413cdbccfa9423f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('34ad2057-edff-517a-bcc2-dec354135628', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_storytelling_sequence_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '777c80a5b5856344e6106fc4549a6852bfb2d3e43443dc91d4c492ef87b1c9a2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80d8ffeb-758c-5f26-b29f-61b746c3cd91', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('34ad2057-edff-517a-bcc2-dec354135628', 1), '777c80a5b5856344e6106fc4549a6852bfb2d3e43443dc91d4c492ef87b1c9a2',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/e334fd73853a7975519ab5cea15ec7275343f42edf58bf4e0413cdbccfa9423f.mp3', 3474, '2026-09-13 23:00:41.763066', 'f8f1c6a468a44f980abcf2d21f6b8ce625831e55ba32cf029bf63c6584c811b8', 'validated', '{"audio_key":"e334fd73853a7975519ab5cea15ec7275343f42edf58bf4e0413cdbccfa9423f","entity_key":"u_storytelling_sequence_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f8f1c6a468a44f980abcf2d21f6b8ce625831e55ba32cf029bf63c6584c811b8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/e334fd73853a7975519ab5cea15ec7275343f42edf58bf4e0413cdbccfa9423f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_storytelling_sequence_02_listen -> audio/generated/ko-KR/utterances/e334fd73853a7975519ab5cea15ec7275343f42edf58bf4e0413cdbccfa9423f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('756b3db8-dcf6-54fb-bb77-e9e92e6c0846', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_storytelling_sequence_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '777c80a5b5856344e6106fc4549a6852bfb2d3e43443dc91d4c492ef87b1c9a2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4e46bce-35ee-5cec-9f4e-5357fc88caaf', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('756b3db8-dcf6-54fb-bb77-e9e92e6c0846', 1), '777c80a5b5856344e6106fc4549a6852bfb2d3e43443dc91d4c492ef87b1c9a2',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/e334fd73853a7975519ab5cea15ec7275343f42edf58bf4e0413cdbccfa9423f.mp3', 3474, '2026-09-13 23:00:41.763066', 'f8f1c6a468a44f980abcf2d21f6b8ce625831e55ba32cf029bf63c6584c811b8', 'validated', '{"audio_key":"e334fd73853a7975519ab5cea15ec7275343f42edf58bf4e0413cdbccfa9423f","entity_key":"e_storytelling_sequence_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f8f1c6a468a44f980abcf2d21f6b8ce625831e55ba32cf029bf63c6584c811b8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/e334fd73853a7975519ab5cea15ec7275343f42edf58bf4e0413cdbccfa9423f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_and_evidence_01 -> audio/generated/ko-KR/utterances/e763c0dd15171b2a196015c6455e43c492f4ceb51ef492b12c80b579925ac88d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9a3f049a-e900-59f7-b49d-bfc5c8e892f8', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_and_evidence_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4bb26e48886a4d37538d427b5b50fcc5643b6d736ca83c9bcd11169302d05ba0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('981a7b76-88f0-5152-aae6-74bcc087ce60', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9a3f049a-e900-59f7-b49d-bfc5c8e892f8', 1), '4bb26e48886a4d37538d427b5b50fcc5643b6d736ca83c9bcd11169302d05ba0',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/e763c0dd15171b2a196015c6455e43c492f4ceb51ef492b12c80b579925ac88d.mp3', 3343, '2026-09-13 23:00:42.993483', 'ab3828146e63c7f892c5c87a1e15a119f39f1ba7acbacb0796ef3705efdc243f', 'validated', '{"audio_key":"e763c0dd15171b2a196015c6455e43c492f4ceb51ef492b12c80b579925ac88d","entity_key":"u_opinions_and_evidence_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ab3828146e63c7f892c5c87a1e15a119f39f1ba7acbacb0796ef3705efdc243f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/e763c0dd15171b2a196015c6455e43c492f4ceb51ef492b12c80b579925ac88d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_problems_and_solutions_01 -> audio/generated/ko-KR/utterances/eabec62bbe9fa8c18ec143a71c613dce1cfc51bbbe23a705ed937462590ca09c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('506fd50c-d10f-52d5-b22f-def9d66643e2', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_problems_and_solutions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64368d318b18557b5c2d180d589bbb17eac1bdc6fa264ad6d7dc12584fa61477'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8dd984a-4c24-54c4-be7b-054061338e5e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('506fd50c-d10f-52d5-b22f-def9d66643e2', 1), '64368d318b18557b5c2d180d589bbb17eac1bdc6fa264ad6d7dc12584fa61477',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/eabec62bbe9fa8c18ec143a71c613dce1cfc51bbbe23a705ed937462590ca09c.mp3', 3343, '2026-09-13 23:00:43.112746', 'f1eed4ddceb57f960a28457f5b95fc00ac26d3812359b3e2eb7ed2c056bc58d2', 'validated', '{"audio_key":"eabec62bbe9fa8c18ec143a71c613dce1cfc51bbbe23a705ed937462590ca09c","entity_key":"u_problems_and_solutions_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f1eed4ddceb57f960a28457f5b95fc00ac26d3812359b3e2eb7ed2c056bc58d2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/eabec62bbe9fa8c18ec143a71c613dce1cfc51bbbe23a705ed937462590ca09c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_conditions_and_consequences_02 -> audio/generated/ko-KR/utterances/f147898127230b02f5c381880b6175431cc563f2afa96a4b60458403276120f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8c0791d5-d345-5b36-82c5-05cb1a0f8b87', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_conditions_and_consequences_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f4cc49b6efbccef468a307c0cdd63dc5b833e9c2683cade79e227fa72c6f6f82'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2353d0e-c94d-5f6d-ace9-426b70aa1f92', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8c0791d5-d345-5b36-82c5-05cb1a0f8b87', 1), 'f4cc49b6efbccef468a307c0cdd63dc5b833e9c2683cade79e227fa72c6f6f82',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/f147898127230b02f5c381880b6175431cc563f2afa96a4b60458403276120f7.mp3', 3422, '2026-09-13 23:00:44.310395', 'a3df9c347fc9640eb393e651685fba7a0cb76363fefc200ee691f9dd630af2b0', 'validated', '{"audio_key":"f147898127230b02f5c381880b6175431cc563f2afa96a4b60458403276120f7","entity_key":"u_conditions_and_consequences_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a3df9c347fc9640eb393e651685fba7a0cb76363fefc200ee691f9dd630af2b0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/f147898127230b02f5c381880b6175431cc563f2afa96a4b60458403276120f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_conditions_and_consequences_01_listen -> audio/generated/ko-KR/utterances/f147898127230b02f5c381880b6175431cc563f2afa96a4b60458403276120f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4116e678-f136-5899-9184-0b6712f0cdad', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_conditions_and_consequences_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f4cc49b6efbccef468a307c0cdd63dc5b833e9c2683cade79e227fa72c6f6f82'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3e84386-ed56-5953-9c0a-200711352b90', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4116e678-f136-5899-9184-0b6712f0cdad', 1), 'f4cc49b6efbccef468a307c0cdd63dc5b833e9c2683cade79e227fa72c6f6f82',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/f147898127230b02f5c381880b6175431cc563f2afa96a4b60458403276120f7.mp3', 3422, '2026-09-13 23:00:44.310395', 'a3df9c347fc9640eb393e651685fba7a0cb76363fefc200ee691f9dd630af2b0', 'validated', '{"audio_key":"f147898127230b02f5c381880b6175431cc563f2afa96a4b60458403276120f7","entity_key":"e_conditions_and_consequences_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a3df9c347fc9640eb393e651685fba7a0cb76363fefc200ee691f9dd630af2b0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/f147898127230b02f5c381880b6175431cc563f2afa96a4b60458403276120f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_social_nuance_04 -> audio/generated/ko-KR/utterances/f77f47d0e697a2fd390b1af0abba0f475934eb85900515de74c2e163d35fcf92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f423e199-027d-5956-92e0-cad18269e4a2', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_social_nuance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '296381933727731a94a492fcfd52fda5a15426b3d7107da52924316868addd0b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bfbd7596-2306-5d38-ae2f-fa62e038e0db', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f423e199-027d-5956-92e0-cad18269e4a2', 1), '296381933727731a94a492fcfd52fda5a15426b3d7107da52924316868addd0b',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/f77f47d0e697a2fd390b1af0abba0f475934eb85900515de74c2e163d35fcf92.mp3', 2638, '2026-09-13 23:00:44.326903', 'd72bafcb64d45f17c90a0b0ee5e07b24d198396d69a9e08de0ce2df4a58cef82', 'validated', '{"audio_key":"f77f47d0e697a2fd390b1af0abba0f475934eb85900515de74c2e163d35fcf92","entity_key":"u_social_nuance_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d72bafcb64d45f17c90a0b0ee5e07b24d198396d69a9e08de0ce2df4a58cef82","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/f77f47d0e697a2fd390b1af0abba0f475934eb85900515de74c2e163d35fcf92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_social_nuance_02_listen -> audio/generated/ko-KR/utterances/f77f47d0e697a2fd390b1af0abba0f475934eb85900515de74c2e163d35fcf92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ee99a580-fc4c-55d1-9749-04ecd998c59d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_social_nuance_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '296381933727731a94a492fcfd52fda5a15426b3d7107da52924316868addd0b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0cf7b9f9-cefd-5b84-be6e-2fb777da7f7e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ee99a580-fc4c-55d1-9749-04ecd998c59d', 1), '296381933727731a94a492fcfd52fda5a15426b3d7107da52924316868addd0b',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/f77f47d0e697a2fd390b1af0abba0f475934eb85900515de74c2e163d35fcf92.mp3', 2638, '2026-09-13 23:00:44.326903', 'd72bafcb64d45f17c90a0b0ee5e07b24d198396d69a9e08de0ce2df4a58cef82', 'validated', '{"audio_key":"f77f47d0e697a2fd390b1af0abba0f475934eb85900515de74c2e163d35fcf92","entity_key":"e_social_nuance_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d72bafcb64d45f17c90a0b0ee5e07b24d198396d69a9e08de0ce2df4a58cef82","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/f77f47d0e697a2fd390b1af0abba0f475934eb85900515de74c2e163d35fcf92.mp3"}'
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

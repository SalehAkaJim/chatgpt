-- Generated audio link import for ko-KR C1
-- Source manifest: audio/manifests/ko/C1.json
-- Generated rows: 260
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'ko' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'ko-KR' LIMIT 1);
START TRANSACTION;

-- d_humor_irony_and_cultural_nuance_01:4 -> audio/generated/ko-KR/dialogues/0148d8ab5c51f83f2c39b5e79c33378121d18df3933138f88bb534beb2daa782.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8db65f6d-9744-530b-b968-786c2969d5fe', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_humor_irony_and_cultural_nuance_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b1a4f666dc2a5b04ccf8581e9764cdbdcaa41fb8e9797f34dd9915bf4c353da'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f8ae23c-4138-5866-afeb-86be1f24070c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8db65f6d-9744-530b-b968-786c2969d5fe', 1), '2b1a4f666dc2a5b04ccf8581e9764cdbdcaa41fb8e9797f34dd9915bf4c353da',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/0148d8ab5c51f83f2c39b5e79c33378121d18df3933138f88bb534beb2daa782.mp3', 4362, '2026-09-14 01:07:59.752726', '0fa22063f3069c1e6b8617e9e07ac19c71219fd96371c2c89de6f58b52d4712e', 'validated', '{"audio_key":"0148d8ab5c51f83f2c39b5e79c33378121d18df3933138f88bb534beb2daa782","entity_key":"d_humor_irony_and_cultural_nuance_01:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0fa22063f3069c1e6b8617e9e07ac19c71219fd96371c2c89de6f58b52d4712e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/0148d8ab5c51f83f2c39b5e79c33378121d18df3933138f88bb534beb2daa782.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_mediation_and_face_01:2 -> audio/generated/ko-KR/dialogues/0472718e438de50f4592e786c433cc89a0ad95225c2c6da4678c3be55ab27085.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('61afe965-6177-5220-99ee-be611a0594ec', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_mediation_and_face_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e9abb23417300859a320c0e5adf9375dbb2c08e50f984d4dd061ab551f73561'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78102cc2-ff6d-5a3f-8902-d4029fb20748', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('61afe965-6177-5220-99ee-be611a0594ec', 1), '8e9abb23417300859a320c0e5adf9375dbb2c08e50f984d4dd061ab551f73561',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/0472718e438de50f4592e786c433cc89a0ad95225c2c6da4678c3be55ab27085.mp3', 5433, '2026-09-14 01:07:59.776213', 'a0aaa6e017832f0acdddc47cddf094a15bb2d382533fae5e5245b8933c032b2c', 'validated', '{"audio_key":"0472718e438de50f4592e786c433cc89a0ad95225c2c6da4678c3be55ab27085","entity_key":"d_formal_mediation_and_face_01:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a0aaa6e017832f0acdddc47cddf094a15bb2d382533fae5e5245b8933c032b2c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/0472718e438de50f4592e786c433cc89a0ad95225c2c6da4678c3be55ab27085.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_synthesis_and_framing_01:3 -> audio/generated/ko-KR/dialogues/08def05a5c77383f5024f029f2d9f04534648cce338ccb4b2223d7ab5b8744ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('da9eb1a0-9aad-5acd-a0e4-356d5c3816d8', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_synthesis_and_framing_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e882f9741b693e7946f216245634f24ac041cfdf27b9ea8b392cc94503c3e8a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52a7a054-d991-55e7-9ff6-da25def05a79', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('da9eb1a0-9aad-5acd-a0e4-356d5c3816d8', 1), 'e882f9741b693e7946f216245634f24ac041cfdf27b9ea8b392cc94503c3e8a0',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/08def05a5c77383f5024f029f2d9f04534648cce338ccb4b2223d7ab5b8744ae.mp3', 3291, '2026-09-14 01:08:01.192102', 'c1e5aaecc6c493f13cc72c2330c06dba84a0dccb782867d246b42a8347ac1ad6', 'validated', '{"audio_key":"08def05a5c77383f5024f029f2d9f04534648cce338ccb4b2223d7ab5b8744ae","entity_key":"d_source_synthesis_and_framing_01:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c1e5aaecc6c493f13cc72c2330c06dba84a0dccb782867d246b42a8347ac1ad6","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/08def05a5c77383f5024f029f2d9f04534648cce338ccb4b2223d7ab5b8744ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_and_bureaucratic_korean_01:1 -> audio/generated/ko-KR/dialogues/0988ec304db63c7525bebc93e30540718c895734f2308266b03c25b71209b889.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6092d3c3-8cc7-5c00-88cf-2c2796d9827e', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_and_bureaucratic_korean_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4eb54e082f3e26dd2c900972ebe2115ee67345e6360ea7b3f598b38a59ab7fe8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('779651fc-17ab-5dd6-98d8-589dfe0aef1b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6092d3c3-8cc7-5c00-88cf-2c2796d9827e', 1), '4eb54e082f3e26dd2c900972ebe2115ee67345e6360ea7b3f598b38a59ab7fe8',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/0988ec304db63c7525bebc93e30540718c895734f2308266b03c25b71209b889.mp3', 4310, '2026-09-14 01:08:01.192232', 'c99c0d6ba9d700f6d4ae017b5e75350c55ba2fa627b896e1a7c38259d6eb274d', 'validated', '{"audio_key":"0988ec304db63c7525bebc93e30540718c895734f2308266b03c25b71209b889","entity_key":"d_institutional_and_bureaucratic_korean_01:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c99c0d6ba9d700f6d4ae017b5e75350c55ba2fa627b896e1a7c38259d6eb274d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/0988ec304db63c7525bebc93e30540718c895734f2308266b03c25b71209b889.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_humor_irony_and_cultural_nuance_01:2 -> audio/generated/ko-KR/dialogues/10ae6bb460e6a0f28d39978a53007580d03d68eb45d68c2b943164914e93cf09.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1e969f40-ba18-5082-afcc-4b7a290d5f5f', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_humor_irony_and_cultural_nuance_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b485f9ad47557640e01092c87fc2068163a73b620e7edd4ebf1c3ed7a44a6ad1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb7366d6-5398-580f-83d8-d52209dfb101', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1e969f40-ba18-5082-afcc-4b7a290d5f5f', 1), 'b485f9ad47557640e01092c87fc2068163a73b620e7edd4ebf1c3ed7a44a6ad1',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/10ae6bb460e6a0f28d39978a53007580d03d68eb45d68c2b943164914e93cf09.mp3', 4597, '2026-09-14 01:08:02.625539', 'b168cb9a3d7fe63b49673c4d8f127acd78edffd86058632c73b91a19c9b9bd1c', 'validated', '{"audio_key":"10ae6bb460e6a0f28d39978a53007580d03d68eb45d68c2b943164914e93cf09","entity_key":"d_humor_irony_and_cultural_nuance_01:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b168cb9a3d7fe63b49673c4d8f127acd78edffd86058632c73b91a19c9b9bd1c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/10ae6bb460e6a0f28d39978a53007580d03d68eb45d68c2b943164914e93cf09.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_humor_irony_and_cultural_nuance_01:3 -> audio/generated/ko-KR/dialogues/12abf5240c762fb852951cc7b8356e08392b9e7d17183f42366f94fe0ae15cab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ae3e747e-fe83-5c9d-a5f6-39b0a94788f5', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_humor_irony_and_cultural_nuance_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '93070d20d9385d0c366d480e80da085e40b9973ff5af360766b5f71145135ef0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c9efce4-8053-5d6f-9260-b07c9e12c795', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ae3e747e-fe83-5c9d-a5f6-39b0a94788f5', 1), '93070d20d9385d0c366d480e80da085e40b9973ff5af360766b5f71145135ef0',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/12abf5240c762fb852951cc7b8356e08392b9e7d17183f42366f94fe0ae15cab.mp3', 2037, '2026-09-14 01:08:02.622191', '1b21436d00822fa45de54aef5267aa7cb9be8c172cde2c743fd4563968077bba', 'validated', '{"audio_key":"12abf5240c762fb852951cc7b8356e08392b9e7d17183f42366f94fe0ae15cab","entity_key":"d_humor_irony_and_cultural_nuance_01:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1b21436d00822fa45de54aef5267aa7cb9be8c172cde2c743fd4563968077bba","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/12abf5240c762fb852951cc7b8356e08392b9e7d17183f42366f94fe0ae15cab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_structure_02:1 -> audio/generated/ko-KR/dialogues/137b23e63623d602f120eed803cc72bdbbb9fe8a175c6ce28e633cee6bbea67e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1335261a-4abe-5c7f-814e-efa7bc202b3f', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_structure_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '51e21d6b6d55da64599984dbc9a0fe20ae1a5ffa92696a0eaa8eb6cd2e4e2fdc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('72046970-54dc-520d-8d45-976c5ab74565', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1335261a-4abe-5c7f-814e-efa7bc202b3f', 1), '51e21d6b6d55da64599984dbc9a0fe20ae1a5ffa92696a0eaa8eb6cd2e4e2fdc',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/137b23e63623d602f120eed803cc72bdbbb9fe8a175c6ce28e633cee6bbea67e.mp3', 2324, '2026-09-14 01:08:03.741642', 'a3bcd3771b46a388218d9d06dad3145b0d587d109359e2a78555a806a25ca63c', 'validated', '{"audio_key":"137b23e63623d602f120eed803cc72bdbbb9fe8a175c6ce28e633cee6bbea67e","entity_key":"d_argument_structure_02:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a3bcd3771b46a388218d9d06dad3145b0d587d109359e2a78555a806a25ca63c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/137b23e63623d602f120eed803cc72bdbbb9fe8a175c6ce28e633cee6bbea67e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_humor_irony_and_cultural_nuance_02:3 -> audio/generated/ko-KR/dialogues/18ac4629c848a54c7e8d027fef2bf4df378c350b365c8a9f02389bf5810916e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('32a68dd9-ee66-5708-a1c7-744d6ed692f9', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_humor_irony_and_cultural_nuance_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '48546384ca9189007f2af43d6d0b84c60ef0613e10e26ea022278299b5970271'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6d634ea-ee5e-5322-be85-32ca88b4772b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('32a68dd9-ee66-5708-a1c7-744d6ed692f9', 1), '48546384ca9189007f2af43d6d0b84c60ef0613e10e26ea022278299b5970271',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/18ac4629c848a54c7e8d027fef2bf4df378c350b365c8a9f02389bf5810916e7.mp3', 2351, '2026-09-14 01:08:03.804057', 'ff77f74f32269e941b793ef0d57c4d2ed1069c4ca12fe5b6e94ae99577c8c33d', 'validated', '{"audio_key":"18ac4629c848a54c7e8d027fef2bf4df378c350b365c8a9f02389bf5810916e7","entity_key":"d_humor_irony_and_cultural_nuance_02:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ff77f74f32269e941b793ef0d57c4d2ed1069c4ca12fe5b6e94ae99577c8c33d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/18ac4629c848a54c7e8d027fef2bf4df378c350b365c8a9f02389bf5810916e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_synthesis_and_framing_02:2 -> audio/generated/ko-KR/dialogues/1a4443f3da7c19050193596aa3151ecb8bad0a2a82b46b895590cda2f5c8ab20.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d13b4968-bc22-5632-90aa-bedf1a4c6bc3', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_synthesis_and_framing_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '437441d3b713fd2fea2288667dd6907fbf9bc358a81b8deaf4fce1e97f90ff15'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d81677b1-74cd-5525-9255-81416b60a5a6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d13b4968-bc22-5632-90aa-bedf1a4c6bc3', 1), '437441d3b713fd2fea2288667dd6907fbf9bc358a81b8deaf4fce1e97f90ff15',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/1a4443f3da7c19050193596aa3151ecb8bad0a2a82b46b895590cda2f5c8ab20.mp3', 2586, '2026-09-14 01:08:05.013416', 'e20a3a7290e4b94b09e80bbda95a6b43bcdb58cf148ddea33974f9401411a91f', 'validated', '{"audio_key":"1a4443f3da7c19050193596aa3151ecb8bad0a2a82b46b895590cda2f5c8ab20","entity_key":"d_source_synthesis_and_framing_02:2","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e20a3a7290e4b94b09e80bbda95a6b43bcdb58cf148ddea33974f9401411a91f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/1a4443f3da7c19050193596aa3151ecb8bad0a2a82b46b895590cda2f5c8ab20.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_humor_irony_and_cultural_nuance_02:2 -> audio/generated/ko-KR/dialogues/1dd118b1ad6838c5e17af80f1dfbb1359b0a20df0875ea747080d131cf3a8f50.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0ad2029c-6260-5e77-a57e-a8f97435cf30', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_humor_irony_and_cultural_nuance_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6ee7d9b3fbdba0cf0d385caf00f504f5ca78d14a5044f3e7f49c25ef6c14e33'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f2a9a8a-4bf1-51f9-b536-c82d46d00111', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0ad2029c-6260-5e77-a57e-a8f97435cf30', 1), 'd6ee7d9b3fbdba0cf0d385caf00f504f5ca78d14a5044f3e7f49c25ef6c14e33',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/1dd118b1ad6838c5e17af80f1dfbb1359b0a20df0875ea747080d131cf3a8f50.mp3', 3996, '2026-09-14 01:08:05.636796', '7f34150e8d4bba3e63629adeed9825e5ab06cce72e19d635fa9dab74280509f1', 'validated', '{"audio_key":"1dd118b1ad6838c5e17af80f1dfbb1359b0a20df0875ea747080d131cf3a8f50","entity_key":"d_humor_irony_and_cultural_nuance_02:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7f34150e8d4bba3e63629adeed9825e5ab06cce72e19d635fa9dab74280509f1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/1dd118b1ad6838c5e17af80f1dfbb1359b0a20df0875ea747080d131cf3a8f50.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_structure_02:4 -> audio/generated/ko-KR/dialogues/1f5c7f91ceff5a459f8b2434014d1c99fd60fb418cc1610a467fcdd39f61755f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5ec7db0f-efe9-5480-bb54-b2d916798381', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_structure_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e28f2f7fb5fcebc29cbb14a80a9123a361f166430e97f56db68e86118e230c8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b246a42-7137-5b49-9315-b7c4da7a3700', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5ec7db0f-efe9-5480-bb54-b2d916798381', 1), '6e28f2f7fb5fcebc29cbb14a80a9123a361f166430e97f56db68e86118e230c8',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/1f5c7f91ceff5a459f8b2434014d1c99fd60fb418cc1610a467fcdd39f61755f.mp3', 3787, '2026-09-14 01:08:06.426186', 'aa4ca3827ab25fccf4d04a3f7b71cd788dfc1e307e60459b13c4d7d10097eee4', 'validated', '{"audio_key":"1f5c7f91ceff5a459f8b2434014d1c99fd60fb418cc1610a467fcdd39f61755f","entity_key":"d_argument_structure_02:4","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aa4ca3827ab25fccf4d04a3f7b71cd788dfc1e307e60459b13c4d7d10097eee4","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/1f5c7f91ceff5a459f8b2434014d1c99fd60fb418cc1610a467fcdd39f61755f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stance_and_hedging_02:3 -> audio/generated/ko-KR/dialogues/210bc226d475096c8e9ef5ee3f28e6831b8ba558287d366a06d7fb764a6eae94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ac17afd3-645c-5791-ba4a-1fbb192fe50c', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stance_and_hedging_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a88813b9582c801d4ad5bb80b1e0532f650c2ba3a9e10aecbc9572c1c2d42f59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c279125-74bb-5094-9d79-24c9a7ae28fd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ac17afd3-645c-5791-ba4a-1fbb192fe50c', 1), 'a88813b9582c801d4ad5bb80b1e0532f650c2ba3a9e10aecbc9572c1c2d42f59',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/210bc226d475096c8e9ef5ee3f28e6831b8ba558287d366a06d7fb764a6eae94.mp3', 2089, '2026-09-14 01:08:06.735288', '8bfa1c03560b80d8335d5f6b6208fbe343d679190355248fe9d7474657f512f1', 'validated', '{"audio_key":"210bc226d475096c8e9ef5ee3f28e6831b8ba558287d366a06d7fb764a6eae94","entity_key":"d_stance_and_hedging_02:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8bfa1c03560b80d8335d5f6b6208fbe343d679190355248fe9d7474657f512f1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/210bc226d475096c8e9ef5ee3f28e6831b8ba558287d366a06d7fb764a6eae94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_meaning_and_subtext_01:4 -> audio/generated/ko-KR/dialogues/240ba0aa8e5c51ca3882e45c4930b590051b06152ce12bd620bba150ee41d10c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('facecfec-2d48-57f2-8ac1-76ca52d8b43d', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_meaning_and_subtext_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a3eeb929a8facaba655c015c98e762151690740dc6c65aede9efa77c172e2da8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36672799-566c-58d8-a6f4-a3b8c43a0fb0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('facecfec-2d48-57f2-8ac1-76ca52d8b43d', 1), 'a3eeb929a8facaba655c015c98e762151690740dc6c65aede9efa77c172e2da8',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/240ba0aa8e5c51ca3882e45c4930b590051b06152ce12bd620bba150ee41d10c.mp3', 4022, '2026-09-14 01:08:07.812131', '83a407ecdeb78d4e5830e311c5811c2d8acd5db3cbd788daf37f2ee0fb1699f8', 'validated', '{"audio_key":"240ba0aa8e5c51ca3882e45c4930b590051b06152ce12bd620bba150ee41d10c","entity_key":"d_implicit_meaning_and_subtext_01:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"83a407ecdeb78d4e5830e311c5811c2d8acd5db3cbd788daf37f2ee0fb1699f8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/240ba0aa8e5c51ca3882e45c4930b590051b06152ce12bd620bba150ee41d10c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_precision_reformulation_02:4 -> audio/generated/ko-KR/dialogues/25c7a68c32507bcc2e6e319786382fcbdca5e4c1633a38abf3313c812501a7cb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('47f010de-85c0-5a18-a6b1-3cbd9c28749a', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_precision_reformulation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '70359c287c111564f61c21230b7a49ef2dda03f4f8a553fd1f97cb69793b6aac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f5475189-52f7-5378-b08f-382bde34af70', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('47f010de-85c0-5a18-a6b1-3cbd9c28749a', 1), '70359c287c111564f61c21230b7a49ef2dda03f4f8a553fd1f97cb69793b6aac',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/25c7a68c32507bcc2e6e319786382fcbdca5e4c1633a38abf3313c812501a7cb.mp3', 2742, '2026-09-14 01:08:07.960549', 'f702ce5c8acdf2e0d0614599db1d5cf03de8a616b3daf03d12ce8e4298f33acc', 'validated', '{"audio_key":"25c7a68c32507bcc2e6e319786382fcbdca5e4c1633a38abf3313c812501a7cb","entity_key":"d_precision_reformulation_02:4","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f702ce5c8acdf2e0d0614599db1d5cf03de8a616b3daf03d12ce8e4298f33acc","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/25c7a68c32507bcc2e6e319786382fcbdca5e4c1633a38abf3313c812501a7cb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c1_seoul_policy_forum_capstone_02:1 -> audio/generated/ko-KR/dialogues/27de473362a09c217076ad178a461770045f4b2f4fa9177aa3cda6ac542cad83.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('226ffaf9-ae1e-590a-9f5b-95ea51547863', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c1_seoul_policy_forum_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a3d7f2813d1c90e55014dced03b8fd6bf56e559e67d4ef8987a297e6a20ce32f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83a66797-f8ad-5452-8c97-459bfe345e25', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('226ffaf9-ae1e-590a-9f5b-95ea51547863', 1), 'a3d7f2813d1c90e55014dced03b8fd6bf56e559e67d4ef8987a297e6a20ce32f',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/27de473362a09c217076ad178a461770045f4b2f4fa9177aa3cda6ac542cad83.mp3', 3526, '2026-09-14 01:08:09.165591', 'e5f54c37ef656d9b6b0a0e97468925064930a51fb78fed47e610675348755e2e', 'validated', '{"audio_key":"27de473362a09c217076ad178a461770045f4b2f4fa9177aa3cda6ac542cad83","entity_key":"d_c1_seoul_policy_forum_capstone_02:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e5f54c37ef656d9b6b0a0e97468925064930a51fb78fed47e610675348755e2e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/27de473362a09c217076ad178a461770045f4b2f4fa9177aa3cda6ac542cad83.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stance_and_hedging_02:4 -> audio/generated/ko-KR/dialogues/2873629feb8d1693dcd1c098d95d688936c8b228baa1204caf6ad7687ca8d826.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bd94f8c2-4416-55e8-8a80-9062fa573468', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stance_and_hedging_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '59af9f89142e393a65c9ecf6a19876b5b5bd7cc1a55d49284c1a519c0c6e3731'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cada37db-14e3-58af-b27b-860c540c2e27', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bd94f8c2-4416-55e8-8a80-9062fa573468', 1), '59af9f89142e393a65c9ecf6a19876b5b5bd7cc1a55d49284c1a519c0c6e3731',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2873629feb8d1693dcd1c098d95d688936c8b228baa1204caf6ad7687ca8d826.mp3', 3944, '2026-09-14 01:08:09.351911', '901d61f42e15182d48275232492b5843ced6be4b0e388928e84e54aa6c828fd8', 'validated', '{"audio_key":"2873629feb8d1693dcd1c098d95d688936c8b228baa1204caf6ad7687ca8d826","entity_key":"d_stance_and_hedging_02:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"901d61f42e15182d48275232492b5843ced6be4b0e388928e84e54aa6c828fd8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/2873629feb8d1693dcd1c098d95d688936c8b228baa1204caf6ad7687ca8d826.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_precision_reformulation_02:3 -> audio/generated/ko-KR/dialogues/317e0477d5f8f1f4a44f147bbf8f271ae2f8271ba7b3eb124f8cfcd7f027dcc4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('23edbe05-e4e4-50e1-998c-046ef8da2e82', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_precision_reformulation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a7572d0b80d83825ea9bce0114acce2a6231a9bb66dd5cf1d7be7be0c7f27d79'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ecde1aed-533b-52d0-83d9-26e81b1e0cf1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('23edbe05-e4e4-50e1-998c-046ef8da2e82', 1), 'a7572d0b80d83825ea9bce0114acce2a6231a9bb66dd5cf1d7be7be0c7f27d79',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/317e0477d5f8f1f4a44f147bbf8f271ae2f8271ba7b3eb124f8cfcd7f027dcc4.mp3', 2220, '2026-09-14 01:08:10.362890', 'ec43e93008e7e5538f1913c7aeb713f21af32d1159da0b51711b5e09e170039f', 'validated', '{"audio_key":"317e0477d5f8f1f4a44f147bbf8f271ae2f8271ba7b3eb124f8cfcd7f027dcc4","entity_key":"d_precision_reformulation_02:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ec43e93008e7e5538f1913c7aeb713f21af32d1159da0b51711b5e09e170039f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/317e0477d5f8f1f4a44f147bbf8f271ae2f8271ba7b3eb124f8cfcd7f027dcc4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_and_bureaucratic_korean_02:3 -> audio/generated/ko-KR/dialogues/326eaace03f21980cc85d3432fdcc702a404fc20e80f24ea7690366ac1ead997.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f9faf66d-6477-541a-aa20-7b65f026a4c0', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_and_bureaucratic_korean_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e940c8dc5b0377a6ae7c4fdde1b7686176a2a2305c296a210b78e48a6f65c1d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('83f1f3ba-36a1-517a-86a0-a5fb6a3f8b2c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f9faf66d-6477-541a-aa20-7b65f026a4c0', 1), 'e940c8dc5b0377a6ae7c4fdde1b7686176a2a2305c296a210b78e48a6f65c1d0',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/326eaace03f21980cc85d3432fdcc702a404fc20e80f24ea7690366ac1ead997.mp3', 2690, '2026-09-14 01:08:10.535000', 'c3dab2f7cb72203555610e68261176bcafdf38fc7eb1c5bf74f01821ffdfb3bf', 'validated', '{"audio_key":"326eaace03f21980cc85d3432fdcc702a404fc20e80f24ea7690366ac1ead997","entity_key":"d_institutional_and_bureaucratic_korean_02:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c3dab2f7cb72203555610e68261176bcafdf38fc7eb1c5bf74f01821ffdfb3bf","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/326eaace03f21980cc85d3432fdcc702a404fc20e80f24ea7690366ac1ead997.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_mediation_and_face_01:3 -> audio/generated/ko-KR/dialogues/334513464dc5e74c8f3760b2707a320d778444c573ac3492075936659ba174f3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c91bb15e-83c2-5b31-ab6c-7fea4fbf7e26', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_mediation_and_face_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f78a8c5549eb268b42a21c3d75119f10ddbaee995bd486ec0eb16f93b5ba2706'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a13f4141-4666-5fc7-9b9c-b7b8bffbd9b9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c91bb15e-83c2-5b31-ab6c-7fea4fbf7e26', 1), 'f78a8c5549eb268b42a21c3d75119f10ddbaee995bd486ec0eb16f93b5ba2706',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/334513464dc5e74c8f3760b2707a320d778444c573ac3492075936659ba174f3.mp3', 2324, '2026-09-14 01:08:11.498564', 'fc90fbcdfd2ecfa4154ae0d8924a9cf761b8a5f918715b04995a70ee666bedef', 'validated', '{"audio_key":"334513464dc5e74c8f3760b2707a320d778444c573ac3492075936659ba174f3","entity_key":"d_formal_mediation_and_face_01:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"fc90fbcdfd2ecfa4154ae0d8924a9cf761b8a5f918715b04995a70ee666bedef","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/334513464dc5e74c8f3760b2707a320d778444c573ac3492075936659ba174f3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stance_and_hedging_02:1 -> audio/generated/ko-KR/dialogues/3d3f6929b4af97afa31cf74cb3edf2dd5778762bb6a280958cb97191cbf01220.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2dbde750-c576-5a8f-85f3-1f5b7ee794d7', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stance_and_hedging_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e35ea7a7c718f28cc99265690103e623ab653df1212ecd5b1f631dcb9c46b6dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ec1750e-1867-5944-a079-db4dbae89a57', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2dbde750-c576-5a8f-85f3-1f5b7ee794d7', 1), 'e35ea7a7c718f28cc99265690103e623ab653df1212ecd5b1f631dcb9c46b6dd',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/3d3f6929b4af97afa31cf74cb3edf2dd5778762bb6a280958cb97191cbf01220.mp3', 2351, '2026-09-14 01:08:11.673254', '0afc11f1354a0d2e32a754081393806de6f2c1bc57262608ccdc3ac39fb88d31', 'validated', '{"audio_key":"3d3f6929b4af97afa31cf74cb3edf2dd5778762bb6a280958cb97191cbf01220","entity_key":"d_stance_and_hedging_02:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"0afc11f1354a0d2e32a754081393806de6f2c1bc57262608ccdc3ac39fb88d31","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/3d3f6929b4af97afa31cf74cb3edf2dd5778762bb6a280958cb97191cbf01220.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_shifting_02:4 -> audio/generated/ko-KR/dialogues/3e30aaa5ecc920f44d88a1f442d0f06059e119da749104e14948ae9849986725.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('71d7c8e0-26ca-5de5-b02b-4dc649c37526', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_shifting_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b7c888a95a7d812321ba477b4e8d20bef337b7d457cf1c7935d53cc02f33c975'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c9b28b7-a11c-59ab-83cc-ee0f7e0086de', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('71d7c8e0-26ca-5de5-b02b-4dc649c37526', 1), 'b7c888a95a7d812321ba477b4e8d20bef337b7d457cf1c7935d53cc02f33c975',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/3e30aaa5ecc920f44d88a1f442d0f06059e119da749104e14948ae9849986725.mp3', 4127, '2026-09-14 01:08:12.978896', 'b75d7e9dbf16e685b5223142229ed8c4ab9bd8143261421b7756a8b11ddbb110', 'validated', '{"audio_key":"3e30aaa5ecc920f44d88a1f442d0f06059e119da749104e14948ae9849986725","entity_key":"d_register_shifting_02:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b75d7e9dbf16e685b5223142229ed8c4ab9bd8143261421b7756a8b11ddbb110","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/3e30aaa5ecc920f44d88a1f442d0f06059e119da749104e14948ae9849986725.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_precision_reformulation_02:2 -> audio/generated/ko-KR/dialogues/45979509497c3b40e6cade7e84f9faaff38ffc4ff31689653948c6e00f5e323d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a8eb22c3-5b0c-5e13-8efd-00c233ea9af1', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_precision_reformulation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c73fb6f72667301eeafda09c994c3a3b1617acf675570435aec6069712c9ddee'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('036c4570-be6b-563b-96d5-5f13307eaadd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a8eb22c3-5b0c-5e13-8efd-00c233ea9af1', 1), 'c73fb6f72667301eeafda09c994c3a3b1617acf675570435aec6069712c9ddee',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/45979509497c3b40e6cade7e84f9faaff38ffc4ff31689653948c6e00f5e323d.mp3', 3160, '2026-09-14 01:08:12.976291', 'a118000877a639aabef170ab2cf39f223d5206b51bfaab53b95bab958bd122be', 'validated', '{"audio_key":"45979509497c3b40e6cade7e84f9faaff38ffc4ff31689653948c6e00f5e323d","entity_key":"d_precision_reformulation_02:2","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a118000877a639aabef170ab2cf39f223d5206b51bfaab53b95bab958bd122be","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/45979509497c3b40e6cade7e84f9faaff38ffc4ff31689653948c6e00f5e323d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_mediation_and_face_02:1 -> audio/generated/ko-KR/dialogues/45b7852dd77e16dc7955fdb9185bfbd605653174d25866923646f99dea7a8378.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0161fe4a-9323-59ea-80c1-5e56b6de0c27', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_mediation_and_face_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '46fe44d0a11267e8a0c2428de61ca38c830335f054a5247f5caa0d80473e1c44'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d2da707-a5f9-549d-8f63-210cfdfbace4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0161fe4a-9323-59ea-80c1-5e56b6de0c27', 1), '46fe44d0a11267e8a0c2428de61ca38c830335f054a5247f5caa0d80473e1c44',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/45b7852dd77e16dc7955fdb9185bfbd605653174d25866923646f99dea7a8378.mp3', 3186, '2026-09-14 01:08:14.192475', '3c0b3c192d56b35d8dcee7f9e2a4baff671b1cc6cc5a876bcf412cdf2111a6cd', 'validated', '{"audio_key":"45b7852dd77e16dc7955fdb9185bfbd605653174d25866923646f99dea7a8378","entity_key":"d_formal_mediation_and_face_02:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3c0b3c192d56b35d8dcee7f9e2a4baff671b1cc6cc5a876bcf412cdf2111a6cd","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/45b7852dd77e16dc7955fdb9185bfbd605653174d25866923646f99dea7a8378.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_humor_irony_and_cultural_nuance_02:1 -> audio/generated/ko-KR/dialogues/52a0a483d9bcd23d418c0f2fcfbcb9ec54ea63d6fe925a9f68b31a4dfed1007c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b8529aab-0cec-5318-a22a-501aff0c8421', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_humor_irony_and_cultural_nuance_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e00c1dbacf1ca3885f0a10b7efaba3c83a3bd5d5a3201d4b62899cbe3b463f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e8e5d229-7098-5a7d-ac68-ad8e856dda21', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b8529aab-0cec-5318-a22a-501aff0c8421', 1), '6e00c1dbacf1ca3885f0a10b7efaba3c83a3bd5d5a3201d4b62899cbe3b463f6',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/52a0a483d9bcd23d418c0f2fcfbcb9ec54ea63d6fe925a9f68b31a4dfed1007c.mp3', 6217, '2026-09-14 01:08:14.552743', 'f86bac2ec92f638dacfc051fdf9ae595c8a388332f86a3f42d81457d724e9c5a', 'validated', '{"audio_key":"52a0a483d9bcd23d418c0f2fcfbcb9ec54ea63d6fe925a9f68b31a4dfed1007c","entity_key":"d_humor_irony_and_cultural_nuance_02:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f86bac2ec92f638dacfc051fdf9ae595c8a388332f86a3f42d81457d724e9c5a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/52a0a483d9bcd23d418c0f2fcfbcb9ec54ea63d6fe925a9f68b31a4dfed1007c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_humor_irony_and_cultural_nuance_01:1 -> audio/generated/ko-KR/dialogues/55208484e6b9d279ba93fb23fcbf46348760d3c03a568c157b44521032d963ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0b66bf7e-4711-5c30-93f6-eb37afdf4715', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_humor_irony_and_cultural_nuance_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1d2a847de1d4fd38ad818742789b90d6e7231eec0e268a859d87f05c9ab72aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c55da7f-eb60-516c-8f9b-c58427340e1e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0b66bf7e-4711-5c30-93f6-eb37afdf4715', 1), 'a1d2a847de1d4fd38ad818742789b90d6e7231eec0e268a859d87f05c9ab72aa',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/55208484e6b9d279ba93fb23fcbf46348760d3c03a568c157b44521032d963ac.mp3', 3787, '2026-09-14 01:08:15.507955', 'ca4f04f1da2923bb20c32670e1942a1f4174c6dc5df8ee691dddfdc89a8d26ab', 'validated', '{"audio_key":"55208484e6b9d279ba93fb23fcbf46348760d3c03a568c157b44521032d963ac","entity_key":"d_humor_irony_and_cultural_nuance_01:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ca4f04f1da2923bb20c32670e1942a1f4174c6dc5df8ee691dddfdc89a8d26ab","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/55208484e6b9d279ba93fb23fcbf46348760d3c03a568c157b44521032d963ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c1_seoul_policy_forum_capstone_02:4 -> audio/generated/ko-KR/dialogues/58174574ab4116c37415490fa838782a939f391b02b1dedbfffd8e60f59966fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e6e6640c-237a-5daa-a076-1fa62c36fd00', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c1_seoul_policy_forum_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7d6f4ef042cd48829e69a91a031f8bb297e77e5ea525ebb8d9ebe35873b4d7f0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce44b0a2-e549-5f89-83f9-736712051d4c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e6e6640c-237a-5daa-a076-1fa62c36fd00', 1), '7d6f4ef042cd48829e69a91a031f8bb297e77e5ea525ebb8d9ebe35873b4d7f0',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/58174574ab4116c37415490fa838782a939f391b02b1dedbfffd8e60f59966fe.mp3', 4675, '2026-09-14 01:08:16.041649', '249fb7f1df93913a0b0672d65a32e9185103d27736d16da8a3e76aa63e54ba94', 'validated', '{"audio_key":"58174574ab4116c37415490fa838782a939f391b02b1dedbfffd8e60f59966fe","entity_key":"d_c1_seoul_policy_forum_capstone_02:4","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"249fb7f1df93913a0b0672d65a32e9185103d27736d16da8a3e76aa63e54ba94","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/58174574ab4116c37415490fa838782a939f391b02b1dedbfffd8e60f59966fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_synthesis_and_framing_01:1 -> audio/generated/ko-KR/dialogues/59fb54d5159c591fa5f86218e6b3efdb0a4eaf909f525be4b740afa784667474.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f6bb4483-b35b-53fd-9bcc-3b6045aa6537', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_synthesis_and_framing_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0ca5c00b5275f6a5a3c43307ddc9cd4949ff63e8b0579f8ad6c6aaa1bf954005'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d111c448-1c0f-5cca-b613-73346c4a9ee3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f6bb4483-b35b-53fd-9bcc-3b6045aa6537', 1), '0ca5c00b5275f6a5a3c43307ddc9cd4949ff63e8b0579f8ad6c6aaa1bf954005',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/59fb54d5159c591fa5f86218e6b3efdb0a4eaf909f525be4b740afa784667474.mp3', 3160, '2026-09-14 01:08:16.770714', '8699218e620523dd521855b6bada5f74200e9d4c7fc943868ad24fd89c38c544', 'validated', '{"audio_key":"59fb54d5159c591fa5f86218e6b3efdb0a4eaf909f525be4b740afa784667474","entity_key":"d_source_synthesis_and_framing_01:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8699218e620523dd521855b6bada5f74200e9d4c7fc943868ad24fd89c38c544","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/59fb54d5159c591fa5f86218e6b3efdb0a4eaf909f525be4b740afa784667474.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_and_bureaucratic_korean_01:2 -> audio/generated/ko-KR/dialogues/5b162c6ddff254d3b6a8697f550a2c3d49fc7bb83cc31ac3da6da769ee292d29.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3ac878fe-3246-54bc-ab83-741cc167d595', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_and_bureaucratic_korean_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4066dd824470fe9f7ed75b60230d6d9437bbd59318b2ecfb74cbb971403316d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32648ad2-b786-51f5-b7a0-908cd5c3b962', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3ac878fe-3246-54bc-ab83-741cc167d595', 1), 'd4066dd824470fe9f7ed75b60230d6d9437bbd59318b2ecfb74cbb971403316d',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/5b162c6ddff254d3b6a8697f550a2c3d49fc7bb83cc31ac3da6da769ee292d29.mp3', 4963, '2026-09-14 01:08:17.581309', '1d153e46e38936c185396a6b87a038fadd365a8d22cf63c35d6c26b8d42df28c', 'validated', '{"audio_key":"5b162c6ddff254d3b6a8697f550a2c3d49fc7bb83cc31ac3da6da769ee292d29","entity_key":"d_institutional_and_bureaucratic_korean_01:2","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1d153e46e38936c185396a6b87a038fadd365a8d22cf63c35d6c26b8d42df28c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/5b162c6ddff254d3b6a8697f550a2c3d49fc7bb83cc31ac3da6da769ee292d29.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_mediation_and_face_02:2 -> audio/generated/ko-KR/dialogues/6294f209c00c4a1a672eba2edabbed54f9a95df4162e88eed24b1b454a004c1f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('079ebd8f-ce99-5b0d-9c2a-3a7b55c41760', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_mediation_and_face_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c7446a4a40e38ad181ad33767de8063174eb73836553148e6d256b06f84e1f8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c60439bc-0990-5b38-86c8-36367a7986f5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('079ebd8f-ce99-5b0d-9c2a-3a7b55c41760', 1), '7c7446a4a40e38ad181ad33767de8063174eb73836553148e6d256b06f84e1f8',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6294f209c00c4a1a672eba2edabbed54f9a95df4162e88eed24b1b454a004c1f.mp3', 3657, '2026-09-14 01:08:18.203230', 'cb63e44a4128f6db77dc7900133eb9f73ba3ea859cdb576ef884e8e1fb1157e0', 'validated', '{"audio_key":"6294f209c00c4a1a672eba2edabbed54f9a95df4162e88eed24b1b454a004c1f","entity_key":"d_formal_mediation_and_face_02:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cb63e44a4128f6db77dc7900133eb9f73ba3ea859cdb576ef884e8e1fb1157e0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/6294f209c00c4a1a672eba2edabbed54f9a95df4162e88eed24b1b454a004c1f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_meaning_and_subtext_01:3 -> audio/generated/ko-KR/dialogues/6332b0e7df296ccc9cec83023bc9917341e24f74e7ed47a7b8b15518ec8a5bc9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1202a23a-59a2-5fd8-b731-829279b711de', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_meaning_and_subtext_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cfab6d7d574d32e389e8a4c393d898011d4e551c37bdfb8a97eda086b767bcac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b7d310f-c259-51cd-9466-f4ce933c30eb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1202a23a-59a2-5fd8-b731-829279b711de', 1), 'cfab6d7d574d32e389e8a4c393d898011d4e551c37bdfb8a97eda086b767bcac',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6332b0e7df296ccc9cec83023bc9917341e24f74e7ed47a7b8b15518ec8a5bc9.mp3', 2455, '2026-09-14 01:08:18.725529', 'b23dd5c83b7edeb54e1f87c7944fe7303e92bd4acfa829294520314beb044f94', 'validated', '{"audio_key":"6332b0e7df296ccc9cec83023bc9917341e24f74e7ed47a7b8b15518ec8a5bc9","entity_key":"d_implicit_meaning_and_subtext_01:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b23dd5c83b7edeb54e1f87c7944fe7303e92bd4acfa829294520314beb044f94","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/6332b0e7df296ccc9cec83023bc9917341e24f74e7ed47a7b8b15518ec8a5bc9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stance_and_hedging_01:2 -> audio/generated/ko-KR/dialogues/6713f9c5d0bb07bb1f56e1bbee8d286c801889c2319515b9257d161b6b02b89b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('16cb2e39-ba78-5da2-89de-03a694db7474', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stance_and_hedging_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f09a3d8565b2c977048fe3dc392fdfbc7f88753ab5cb87383e98233052038151'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46c4c0da-7bf3-5164-868b-60be7eb40476', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('16cb2e39-ba78-5da2-89de-03a694db7474', 1), 'f09a3d8565b2c977048fe3dc392fdfbc7f88753ab5cb87383e98233052038151',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6713f9c5d0bb07bb1f56e1bbee8d286c801889c2319515b9257d161b6b02b89b.mp3', 4022, '2026-09-14 01:08:19.521221', 'b47eebea1ea5bff14e4cd56214d2d6371cec80e10196bf46784e63ff812943ba', 'validated', '{"audio_key":"6713f9c5d0bb07bb1f56e1bbee8d286c801889c2319515b9257d161b6b02b89b","entity_key":"d_stance_and_hedging_01:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b47eebea1ea5bff14e4cd56214d2d6371cec80e10196bf46784e63ff812943ba","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/6713f9c5d0bb07bb1f56e1bbee8d286c801889c2319515b9257d161b6b02b89b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_meaning_and_subtext_01:2 -> audio/generated/ko-KR/dialogues/6a482901548d983b1b78d865e264765c669c30df327c3c56673c6f3d3fb949eb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f4ada389-3c14-5467-9823-8e71c5b53f20', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_meaning_and_subtext_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a74f3e8d0357d2ac4371a89759b80ae1fecc4df7ff3b84a506d912d9f3acafd6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f229393-b8e8-500c-9169-edb8fb888a8e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f4ada389-3c14-5467-9823-8e71c5b53f20', 1), 'a74f3e8d0357d2ac4371a89759b80ae1fecc4df7ff3b84a506d912d9f3acafd6',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6a482901548d983b1b78d865e264765c669c30df327c3c56673c6f3d3fb949eb.mp3', 5198, '2026-09-14 01:08:20.198792', '28dba26fafc2e37803adfcdf1fa514fa3be0681a8a547ca45001a1e3cec5dcdf', 'validated', '{"audio_key":"6a482901548d983b1b78d865e264765c669c30df327c3c56673c6f3d3fb949eb","entity_key":"d_implicit_meaning_and_subtext_01:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"28dba26fafc2e37803adfcdf1fa514fa3be0681a8a547ca45001a1e3cec5dcdf","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/6a482901548d983b1b78d865e264765c669c30df327c3c56673c6f3d3fb949eb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_structure_01:3 -> audio/generated/ko-KR/dialogues/7394d0d6b24c2972f5a86d066480955326f542111b0213d67b85f8dc6f77df7c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d4f664cf-1db4-5ce4-960e-afb8b80468ef', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_structure_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de0b5d1523c74592c5f4c477b5b789c2445ad5b58267f6dd22be46055e77c484'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('41ada0cd-64ec-559d-b9f2-04f70d768667', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d4f664cf-1db4-5ce4-960e-afb8b80468ef', 1), 'de0b5d1523c74592c5f4c477b5b789c2445ad5b58267f6dd22be46055e77c484',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7394d0d6b24c2972f5a86d066480955326f542111b0213d67b85f8dc6f77df7c.mp3', 1488, '2026-09-14 01:08:20.595964', 'f1f76bf47618750e573c9af6652b3cd6c34e67b96458f9d0863a8e44f5e7865b', 'validated', '{"audio_key":"7394d0d6b24c2972f5a86d066480955326f542111b0213d67b85f8dc6f77df7c","entity_key":"d_argument_structure_01:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f1f76bf47618750e573c9af6652b3cd6c34e67b96458f9d0863a8e44f5e7865b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/7394d0d6b24c2972f5a86d066480955326f542111b0213d67b85f8dc6f77df7c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_and_bureaucratic_korean_02:2 -> audio/generated/ko-KR/dialogues/77f5c9d7500f0c68458337fdbee462a280770b433c9dd5b58a34638961f5fd72.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fe780995-f479-54f6-8065-ffd554cdb835', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_and_bureaucratic_korean_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1e85502ae50e18a4ffbf03faaa6a7b279868cdb1b83a3ae8130daf7116982a4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08447dfb-a6c3-5e20-8532-4e5bc623b61e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fe780995-f479-54f6-8065-ffd554cdb835', 1), 'a1e85502ae50e18a4ffbf03faaa6a7b279868cdb1b83a3ae8130daf7116982a4',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/77f5c9d7500f0c68458337fdbee462a280770b433c9dd5b58a34638961f5fd72.mp3', 3761, '2026-09-14 01:08:21.461882', 'd816602df7642d305d7e626c058f9f3b5a422506ff2ba4d589510087447785db', 'validated', '{"audio_key":"77f5c9d7500f0c68458337fdbee462a280770b433c9dd5b58a34638961f5fd72","entity_key":"d_institutional_and_bureaucratic_korean_02:2","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d816602df7642d305d7e626c058f9f3b5a422506ff2ba4d589510087447785db","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/77f5c9d7500f0c68458337fdbee462a280770b433c9dd5b58a34638961f5fd72.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_meaning_and_subtext_02:2 -> audio/generated/ko-KR/dialogues/7ccd5f2f90f924f0ced6ddd683f5e2f218808e010157f360cc7b30b422d2262f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('740b8346-a2d5-57ac-85d0-482fd6699661', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_meaning_and_subtext_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6ecee3b3d033f2a9737a6460b4d3c8a1c8acd589c14ff158cb5291601a27b0c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5b66be1-484c-5e78-b66b-bcc935c55cb4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('740b8346-a2d5-57ac-85d0-482fd6699661', 1), 'a6ecee3b3d033f2a9737a6460b4d3c8a1c8acd589c14ff158cb5291601a27b0c',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7ccd5f2f90f924f0ced6ddd683f5e2f218808e010157f360cc7b30b422d2262f.mp3', 3657, '2026-09-14 01:08:22.253226', '4839ef2a57394d896cf11b234eb7e316d4356886d0adfbd37dc4ac7d01710302', 'validated', '{"audio_key":"7ccd5f2f90f924f0ced6ddd683f5e2f218808e010157f360cc7b30b422d2262f","entity_key":"d_implicit_meaning_and_subtext_02:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4839ef2a57394d896cf11b234eb7e316d4356886d0adfbd37dc4ac7d01710302","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/7ccd5f2f90f924f0ced6ddd683f5e2f218808e010157f360cc7b30b422d2262f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_shifting_01:1 -> audio/generated/ko-KR/dialogues/7fb86438a3f57037088e35e7f9123ba8024735d2626aed611ea0f09986b5ba1c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5591e6b4-1729-5d29-9704-f6dffcdd3239', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_shifting_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2ae34d46f5693642d698736450113504af74aadda22224675dca49b82888594'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('298417e7-7903-5f23-9df8-ff882bbf3dfa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5591e6b4-1729-5d29-9704-f6dffcdd3239', 1), 'f2ae34d46f5693642d698736450113504af74aadda22224675dca49b82888594',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7fb86438a3f57037088e35e7f9123ba8024735d2626aed611ea0f09986b5ba1c.mp3', 4675, '2026-09-14 01:08:22.923046', 'fcc20755123e75454010b0d57eaa15c0adec82312542fa2564286001f5d11886', 'validated', '{"audio_key":"7fb86438a3f57037088e35e7f9123ba8024735d2626aed611ea0f09986b5ba1c","entity_key":"d_register_shifting_01:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fcc20755123e75454010b0d57eaa15c0adec82312542fa2564286001f5d11886","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/7fb86438a3f57037088e35e7f9123ba8024735d2626aed611ea0f09986b5ba1c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_structure_01:1 -> audio/generated/ko-KR/dialogues/817798cfdee4dc7271aeb50b801994c23d97b0fc0d167a3f94e65911944afd28.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f112f8ea-e5bd-57d3-893b-9224c408453c', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_structure_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c2382b3966d73e40785c207503a56309a146a22686a1aec9c114c67d601bd3f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af7d0cbf-62e9-5811-ba13-e26fb34d3b5a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f112f8ea-e5bd-57d3-893b-9224c408453c', 1), 'c2382b3966d73e40785c207503a56309a146a22686a1aec9c114c67d601bd3f6',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/817798cfdee4dc7271aeb50b801994c23d97b0fc0d167a3f94e65911944afd28.mp3', 4310, '2026-09-14 01:08:23.594329', '8507a5aa2025d64cfe869cb75459f04acb1b6ab13a0237c642baa17270d676b8', 'validated', '{"audio_key":"817798cfdee4dc7271aeb50b801994c23d97b0fc0d167a3f94e65911944afd28","entity_key":"d_argument_structure_01:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8507a5aa2025d64cfe869cb75459f04acb1b6ab13a0237c642baa17270d676b8","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/817798cfdee4dc7271aeb50b801994c23d97b0fc0d167a3f94e65911944afd28.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stance_and_hedging_01:3 -> audio/generated/ko-KR/dialogues/838d9b9a91d4efb6e18ac22d04926d7ed234b96bb050e42d10b0571662d765e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bbd619a4-f015-5648-a6ad-ed5f58943727', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stance_and_hedging_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ff2fffa6538598222a675c1430a2216bbf3ef88c1fd681f6ed7f9fd4a4c1a09'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b67d6db3-659d-5937-be2f-de54675a3b13', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bbd619a4-f015-5648-a6ad-ed5f58943727', 1), '8ff2fffa6538598222a675c1430a2216bbf3ef88c1fd681f6ed7f9fd4a4c1a09',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/838d9b9a91d4efb6e18ac22d04926d7ed234b96bb050e42d10b0571662d765e5.mp3', 4022, '2026-09-14 01:08:24.267707', '8e9802f76dc03995650219b8b029aa47800e66ed599d66c95533ba1caac90e8f', 'validated', '{"audio_key":"838d9b9a91d4efb6e18ac22d04926d7ed234b96bb050e42d10b0571662d765e5","entity_key":"d_stance_and_hedging_01:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8e9802f76dc03995650219b8b029aa47800e66ed599d66c95533ba1caac90e8f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/838d9b9a91d4efb6e18ac22d04926d7ed234b96bb050e42d10b0571662d765e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_synthesis_and_framing_02:3 -> audio/generated/ko-KR/dialogues/846450268f1187f58e43d319acff71896fb6371b57f8accbcc9e2b5e2b0122c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4b84be07-19b6-50b0-b568-dfb38a5055d8', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_synthesis_and_framing_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd7f68e3c9e32fe6167040c82ce9dc61cec74f591c47d49076ecea9f621fa70a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df5d4001-0866-5414-b2fd-912306be1161', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4b84be07-19b6-50b0-b568-dfb38a5055d8', 1), 'd7f68e3c9e32fe6167040c82ce9dc61cec74f591c47d49076ecea9f621fa70a3',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/846450268f1187f58e43d319acff71896fb6371b57f8accbcc9e2b5e2b0122c3.mp3', 3108, '2026-09-14 01:08:24.904978', 'bf2d733b0206e053d0b6c11cea7311040769351c20533810a2da56e7c1d1dc8d', 'validated', '{"audio_key":"846450268f1187f58e43d319acff71896fb6371b57f8accbcc9e2b5e2b0122c3","entity_key":"d_source_synthesis_and_framing_02:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bf2d733b0206e053d0b6c11cea7311040769351c20533810a2da56e7c1d1dc8d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/846450268f1187f58e43d319acff71896fb6371b57f8accbcc9e2b5e2b0122c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stance_and_hedging_01:1 -> audio/generated/ko-KR/dialogues/85955a43f7c687e9c79e11776b13cd90de98965fac4f72305ad703f638122a6e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c61e995e-93a1-5154-846e-a9dc08e99de6', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stance_and_hedging_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d956dc4326a29dcd53f51b7f6e4d260702f8a551bbd287f8df88fbcc5e98a5e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02d1b17b-893e-5b8e-b2b4-b089751fab91', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c61e995e-93a1-5154-846e-a9dc08e99de6', 1), '8d956dc4326a29dcd53f51b7f6e4d260702f8a551bbd287f8df88fbcc5e98a5e',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/85955a43f7c687e9c79e11776b13cd90de98965fac4f72305ad703f638122a6e.mp3', 3291, '2026-09-14 01:08:25.556885', 'fca72d97e044adec84a21162a79af3d79f0125b9fbd5420f46cea4694dbb8f39', 'validated', '{"audio_key":"85955a43f7c687e9c79e11776b13cd90de98965fac4f72305ad703f638122a6e","entity_key":"d_stance_and_hedging_01:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fca72d97e044adec84a21162a79af3d79f0125b9fbd5420f46cea4694dbb8f39","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/85955a43f7c687e9c79e11776b13cd90de98965fac4f72305ad703f638122a6e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c1_seoul_policy_forum_capstone_01:4 -> audio/generated/ko-KR/dialogues/880023a67d4fcfdfb2c0963c95b461c4d79487a4791ba99459fcf1e94d24ce0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bf81aba1-ea99-5ef5-b1b1-088be4592594', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c1_seoul_policy_forum_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c68d3d0f23716e355e8f8d9b293120761a1dfe68d8d5681678a3264f6e541cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec13f900-5b91-5113-9b9b-af4e79e0ec4a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bf81aba1-ea99-5ef5-b1b1-088be4592594', 1), '5c68d3d0f23716e355e8f8d9b293120761a1dfe68d8d5681678a3264f6e541cd',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/880023a67d4fcfdfb2c0963c95b461c4d79487a4791ba99459fcf1e94d24ce0a.mp3', 3526, '2026-09-14 01:08:26.193300', '6103ee2e9cc56e4f149a295af1f61b2f5e89e4f2601651865f0743c4eda86420', 'validated', '{"audio_key":"880023a67d4fcfdfb2c0963c95b461c4d79487a4791ba99459fcf1e94d24ce0a","entity_key":"d_c1_seoul_policy_forum_capstone_01:4","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6103ee2e9cc56e4f149a295af1f61b2f5e89e4f2601651865f0743c4eda86420","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/880023a67d4fcfdfb2c0963c95b461c4d79487a4791ba99459fcf1e94d24ce0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c1_seoul_policy_forum_capstone_01:3 -> audio/generated/ko-KR/dialogues/88c8659c80e3cfeebe99c96debe72f43db656c2b0f0c1931cd17e3ea62f23f69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('889a5a20-051a-5891-a777-7fbdff72959c', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c1_seoul_policy_forum_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1fb8b9137c1b4a42f8adf8dccd79ffd3c8d8d3738584bb14f53c52ca25e388bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91872390-d37e-505c-b5f7-97bb58f7c84d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('889a5a20-051a-5891-a777-7fbdff72959c', 1), '1fb8b9137c1b4a42f8adf8dccd79ffd3c8d8d3738584bb14f53c52ca25e388bc',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/88c8659c80e3cfeebe99c96debe72f43db656c2b0f0c1931cd17e3ea62f23f69.mp3', 2533, '2026-09-14 01:08:26.705043', '61901d0e1901059090c9a5b9ae485cb7ba6d957654475aeee20fbff7c8e1eab5', 'validated', '{"audio_key":"88c8659c80e3cfeebe99c96debe72f43db656c2b0f0c1931cd17e3ea62f23f69","entity_key":"d_c1_seoul_policy_forum_capstone_01:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"61901d0e1901059090c9a5b9ae485cb7ba6d957654475aeee20fbff7c8e1eab5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/88c8659c80e3cfeebe99c96debe72f43db656c2b0f0c1931cd17e3ea62f23f69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_structure_02:2 -> audio/generated/ko-KR/dialogues/8a0175fabbe9e2de56b3cc06358f16541a8d380d48dba64fbc03156f9ecbfb82.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('feb4d1eb-0538-51e1-af30-307e9248e1ab', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_structure_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2fb73f3d6a5a0d677b757b3631d45ad89e76ebd777d66695b78da9262011ef0b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d30fd237-d51e-54e2-99f1-102f74e4a92f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('feb4d1eb-0538-51e1-af30-307e9248e1ab', 1), '2fb73f3d6a5a0d677b757b3631d45ad89e76ebd777d66695b78da9262011ef0b',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/8a0175fabbe9e2de56b3cc06358f16541a8d380d48dba64fbc03156f9ecbfb82.mp3', 4675, '2026-09-14 01:08:27.626416', '0ee76aa326ceeaaeb73aa389543e50717af3b9f55008d826b41d23e92c5bc236', 'validated', '{"audio_key":"8a0175fabbe9e2de56b3cc06358f16541a8d380d48dba64fbc03156f9ecbfb82","entity_key":"d_argument_structure_02:2","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0ee76aa326ceeaaeb73aa389543e50717af3b9f55008d826b41d23e92c5bc236","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/8a0175fabbe9e2de56b3cc06358f16541a8d380d48dba64fbc03156f9ecbfb82.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_synthesis_and_framing_01:2 -> audio/generated/ko-KR/dialogues/91ae6ec6a68f76161d6d3af66d020d18f812c5ba8bec390142c703f9c0f1f583.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('37c29aa3-7fb7-5d82-b3bf-1efda33e6383', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_synthesis_and_framing_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '976a3c33d8e99b1eea0bd28730721e8c79c87ba6ae3f7e74c4a80b88c8ece5cb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9522afd-8fbb-5500-a340-3108a66a1c17', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('37c29aa3-7fb7-5d82-b3bf-1efda33e6383', 1), '976a3c33d8e99b1eea0bd28730721e8c79c87ba6ae3f7e74c4a80b88c8ece5cb',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/91ae6ec6a68f76161d6d3af66d020d18f812c5ba8bec390142c703f9c0f1f583.mp3', 5093, '2026-09-14 01:08:28.210073', '182af25185681098eeec8e60b480ea35d5f66f33f9a5be2b59dbae9ec53515ab', 'validated', '{"audio_key":"91ae6ec6a68f76161d6d3af66d020d18f812c5ba8bec390142c703f9c0f1f583","entity_key":"d_source_synthesis_and_framing_01:2","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"182af25185681098eeec8e60b480ea35d5f66f33f9a5be2b59dbae9ec53515ab","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/91ae6ec6a68f76161d6d3af66d020d18f812c5ba8bec390142c703f9c0f1f583.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c1_seoul_policy_forum_capstone_02:3 -> audio/generated/ko-KR/dialogues/94fe7b32560a2193bf877cb982c6c8339a7691da85f26ba247e82cec8fa5348e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('31c351e3-1507-5456-8131-13d774b711ad', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c1_seoul_policy_forum_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '789dc3c78ed1277141ecaa9eb6cfa128e1cd2e2a0a228b36ce95e721ded76037'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1e867df-1db7-5eaa-9f12-2ba5eccaed89', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('31c351e3-1507-5456-8131-13d774b711ad', 1), '789dc3c78ed1277141ecaa9eb6cfa128e1cd2e2a0a228b36ce95e721ded76037',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/94fe7b32560a2193bf877cb982c6c8339a7691da85f26ba247e82cec8fa5348e.mp3', 2507, '2026-09-14 01:08:28.826190', 'b5c640c72d6d634c4d69d44a91dcd341ae5428d56f39927cf9f4f3df800ea469', 'validated', '{"audio_key":"94fe7b32560a2193bf877cb982c6c8339a7691da85f26ba247e82cec8fa5348e","entity_key":"d_c1_seoul_policy_forum_capstone_02:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b5c640c72d6d634c4d69d44a91dcd341ae5428d56f39927cf9f4f3df800ea469","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/94fe7b32560a2193bf877cb982c6c8339a7691da85f26ba247e82cec8fa5348e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stance_and_hedging_02:2 -> audio/generated/ko-KR/dialogues/98a95598b250f2caa682d630ebb82b000c6acca738d6f4db0db7df25cd5b9622.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('862759f5-0126-568f-999b-5d1bcfb1baae', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stance_and_hedging_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b947f955066973ad1ce1dafee2316ddc28e69f38bf4eb43badcfebdcf805a72'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('24d38431-2c09-55bb-9ba8-c87109c0ef39', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('862759f5-0126-568f-999b-5d1bcfb1baae', 1), '8b947f955066973ad1ce1dafee2316ddc28e69f38bf4eb43badcfebdcf805a72',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/98a95598b250f2caa682d630ebb82b000c6acca738d6f4db0db7df25cd5b9622.mp3', 3787, '2026-09-14 01:08:29.628918', 'dcf374d69608ebd8b0dd744d4204a8018a32ecfadc8c2b85838dc7435be2a587', 'validated', '{"audio_key":"98a95598b250f2caa682d630ebb82b000c6acca738d6f4db0db7df25cd5b9622","entity_key":"d_stance_and_hedging_02:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"dcf374d69608ebd8b0dd744d4204a8018a32ecfadc8c2b85838dc7435be2a587","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/98a95598b250f2caa682d630ebb82b000c6acca738d6f4db0db7df25cd5b9622.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c1_seoul_policy_forum_capstone_01:2 -> audio/generated/ko-KR/dialogues/98b00263a085591c9cc26d01b8f6c0b589a92a623742de1dfbb71b336d30efc4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('46f19546-eb5f-5bc8-a9a8-6b3931c2fe22', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c1_seoul_policy_forum_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3aa63a95fa6880ce1102e94d4dee1b47bedb05f469c2e621dea10a97107e644f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de0cef86-6176-5633-a73e-0da544751e24', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('46f19546-eb5f-5bc8-a9a8-6b3931c2fe22', 1), '3aa63a95fa6880ce1102e94d4dee1b47bedb05f469c2e621dea10a97107e644f',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/98b00263a085591c9cc26d01b8f6c0b589a92a623742de1dfbb71b336d30efc4.mp3', 5511, '2026-09-14 01:08:30.334748', 'eaf4e60a2ddae83fc0cf5540821c8efbc9965898840630300ee29697e47ed7d5', 'validated', '{"audio_key":"98b00263a085591c9cc26d01b8f6c0b589a92a623742de1dfbb71b336d30efc4","entity_key":"d_c1_seoul_policy_forum_capstone_01:2","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"eaf4e60a2ddae83fc0cf5540821c8efbc9965898840630300ee29697e47ed7d5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/98b00263a085591c9cc26d01b8f6c0b589a92a623742de1dfbb71b336d30efc4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_precision_reformulation_02:1 -> audio/generated/ko-KR/dialogues/a0ec5896c6f29285222f870b3dcffb0bddaa783db53efa3d1f26a9d233bf7122.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('87b094f6-fcc0-5672-ba6e-ca15b7fa2437', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_precision_reformulation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '47ce596ccecd34f3411604d1778387db2c7343f7b8d0e7b1280ceeec6c837438'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0de89d58-aa53-50b3-acc1-a8876a64ff9c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('87b094f6-fcc0-5672-ba6e-ca15b7fa2437', 1), '47ce596ccecd34f3411604d1778387db2c7343f7b8d0e7b1280ceeec6c837438',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a0ec5896c6f29285222f870b3dcffb0bddaa783db53efa3d1f26a9d233bf7122.mp3', 3160, '2026-09-14 01:08:30.857949', 'cb490c496e4019421a240fb002c99b8920c22d919e32a8094f2a3128c6a486a6', 'validated', '{"audio_key":"a0ec5896c6f29285222f870b3dcffb0bddaa783db53efa3d1f26a9d233bf7122","entity_key":"d_precision_reformulation_02:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cb490c496e4019421a240fb002c99b8920c22d919e32a8094f2a3128c6a486a6","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/a0ec5896c6f29285222f870b3dcffb0bddaa783db53efa3d1f26a9d233bf7122.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_shifting_01:4 -> audio/generated/ko-KR/dialogues/a1f2ac5abc8ea8cf65932474fe3242caae0c5e965303131ced22125aa1b41c2f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9627bb80-077f-5775-af59-1404fff12260', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_shifting_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '22dd1c4532d15e112420700e620a955bb90e785f8db4540e875ab1ac263f6614'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bbe7a823-d350-5d46-a989-6feeb98e7bf1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9627bb80-077f-5775-af59-1404fff12260', 1), '22dd1c4532d15e112420700e620a955bb90e785f8db4540e875ab1ac263f6614',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a1f2ac5abc8ea8cf65932474fe3242caae0c5e965303131ced22125aa1b41c2f.mp3', 3056, '2026-09-14 01:08:31.607245', '9ca0dcf3c3fdb2120324773e538297cd1d45aa82e8807cb6f537b920b8c6090f', 'validated', '{"audio_key":"a1f2ac5abc8ea8cf65932474fe3242caae0c5e965303131ced22125aa1b41c2f","entity_key":"d_register_shifting_01:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9ca0dcf3c3fdb2120324773e538297cd1d45aa82e8807cb6f537b920b8c6090f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/a1f2ac5abc8ea8cf65932474fe3242caae0c5e965303131ced22125aa1b41c2f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_stance_and_hedging_01:4 -> audio/generated/ko-KR/dialogues/a233bc9798a304fa43552f8256b050b26e2b8884db593ae31f6a89d5862f452a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('329f8628-25e7-5137-b9a9-70a30f7ffd65', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_stance_and_hedging_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a333b198f5254628e713c30bb111b09d1d3a8e710437bfd1a0ba163735cc6da3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46da131f-7b9d-56a4-8228-3101011eee55', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('329f8628-25e7-5137-b9a9-70a30f7ffd65', 1), 'a333b198f5254628e713c30bb111b09d1d3a8e710437bfd1a0ba163735cc6da3',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a233bc9798a304fa43552f8256b050b26e2b8884db593ae31f6a89d5862f452a.mp3', 3239, '2026-09-14 01:08:32.185627', '69395c94a73c3615e84a6b97f5453cfef0e461f6dbde69aa26714e453e221d8c', 'validated', '{"audio_key":"a233bc9798a304fa43552f8256b050b26e2b8884db593ae31f6a89d5862f452a","entity_key":"d_stance_and_hedging_01:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"69395c94a73c3615e84a6b97f5453cfef0e461f6dbde69aa26714e453e221d8c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/a233bc9798a304fa43552f8256b050b26e2b8884db593ae31f6a89d5862f452a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_synthesis_and_framing_01:4 -> audio/generated/ko-KR/dialogues/a3ed2a748dbc0ad2d919fcec38867925dafc68adec98cc767863c5ba745cba7b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f56c0110-803c-535a-8c1e-f048d7dddd3b', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_synthesis_and_framing_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f1dc104c6c42f371703c674cf942cdf9ecd175130b127c88aebf1196314ae4e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('daf42c38-253b-5d0c-90da-a847ebca2931', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f56c0110-803c-535a-8c1e-f048d7dddd3b', 1), 'f1dc104c6c42f371703c674cf942cdf9ecd175130b127c88aebf1196314ae4e7',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a3ed2a748dbc0ad2d919fcec38867925dafc68adec98cc767863c5ba745cba7b.mp3', 3160, '2026-09-14 01:08:32.829064', '86723d1706a0692f454dbe4b3ee091ee7e38f42986bafe193f3a275bf9686e63', 'validated', '{"audio_key":"a3ed2a748dbc0ad2d919fcec38867925dafc68adec98cc767863c5ba745cba7b","entity_key":"d_source_synthesis_and_framing_01:4","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"86723d1706a0692f454dbe4b3ee091ee7e38f42986bafe193f3a275bf9686e63","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/a3ed2a748dbc0ad2d919fcec38867925dafc68adec98cc767863c5ba745cba7b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_and_bureaucratic_korean_01:3 -> audio/generated/ko-KR/dialogues/ae39c3a6c7c10b6da3f3e71f2bee668b170f60f84ce50476cda690f66b74baf7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9d3a6774-c4ba-5cd5-a0e3-1346404f2884', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_and_bureaucratic_korean_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a166da92256af6acebabdad337111c2bb972268bb8edb506334a9e2ab06d80f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89473a9b-cb9f-5bdd-9ad3-e428ed1d7990', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9d3a6774-c4ba-5cd5-a0e3-1346404f2884', 1), 'a166da92256af6acebabdad337111c2bb972268bb8edb506334a9e2ab06d80f6',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ae39c3a6c7c10b6da3f3e71f2bee668b170f60f84ce50476cda690f66b74baf7.mp3', 2324, '2026-09-14 01:08:33.324733', '82372f908f97e6e93601a97195a7018e480251749700967cb2a5d8eec24681d9', 'validated', '{"audio_key":"ae39c3a6c7c10b6da3f3e71f2bee668b170f60f84ce50476cda690f66b74baf7","entity_key":"d_institutional_and_bureaucratic_korean_01:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"82372f908f97e6e93601a97195a7018e480251749700967cb2a5d8eec24681d9","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/ae39c3a6c7c10b6da3f3e71f2bee668b170f60f84ce50476cda690f66b74baf7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_shifting_02:1 -> audio/generated/ko-KR/dialogues/b256f5211a03729ea47885d3eb8d61370826efeab87ff2c95b6b39e695e2e418.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ac2fde92-0750-5633-bdb1-845903f51777', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_shifting_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7100936a407d0b4198814aba8e2a987c32c23cd02eb119613ac0c98279791b94'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e261708-3ccd-5821-9998-2328cb391f02', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ac2fde92-0750-5633-bdb1-845903f51777', 1), '7100936a407d0b4198814aba8e2a987c32c23cd02eb119613ac0c98279791b94',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b256f5211a03729ea47885d3eb8d61370826efeab87ff2c95b6b39e695e2e418.mp3', 3526, '2026-09-14 01:08:34.082376', '899b651cf9c00643e1b6721a050b62a408c090e25b063a8d348b4262d1b60224', 'validated', '{"audio_key":"b256f5211a03729ea47885d3eb8d61370826efeab87ff2c95b6b39e695e2e418","entity_key":"d_register_shifting_02:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"899b651cf9c00643e1b6721a050b62a408c090e25b063a8d348b4262d1b60224","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/b256f5211a03729ea47885d3eb8d61370826efeab87ff2c95b6b39e695e2e418.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c1_seoul_policy_forum_capstone_02:2 -> audio/generated/ko-KR/dialogues/b5fb065200cba36416aeab25dde0e785c9beaef7433b898948ff3e303c4f9254.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('395b4324-fa06-5556-aac1-b2309ce23ce9', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c1_seoul_policy_forum_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4dbb2cba2338722c440c096a04fdd7b42a642ccdb2f8a31fba9d3d060dfe7d42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b2bb7d8-3ae6-571f-9dc0-920074e56512', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('395b4324-fa06-5556-aac1-b2309ce23ce9', 1), '4dbb2cba2338722c440c096a04fdd7b42a642ccdb2f8a31fba9d3d060dfe7d42',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b5fb065200cba36416aeab25dde0e785c9beaef7433b898948ff3e303c4f9254.mp3', 3291, '2026-09-14 01:08:34.595918', '933c7039cca9997aa992c02b9208644114fa15b4c77860994463cae2f655515d', 'validated', '{"audio_key":"b5fb065200cba36416aeab25dde0e785c9beaef7433b898948ff3e303c4f9254","entity_key":"d_c1_seoul_policy_forum_capstone_02:2","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"933c7039cca9997aa992c02b9208644114fa15b4c77860994463cae2f655515d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/b5fb065200cba36416aeab25dde0e785c9beaef7433b898948ff3e303c4f9254.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_shifting_01:2 -> audio/generated/ko-KR/dialogues/b625130a96cb13754fc83ff5499b864cc0b7b40ca0d506e59f4caf6a01f81ca5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('beeb174b-b048-58e5-bf13-e43f9daeb51b', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_shifting_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac68b3defc20391f84a77ea844e0748ff7b8ef04cadc7854ae503ce255644fce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6cc58b47-3e53-5b78-8a56-ef76805566f0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('beeb174b-b048-58e5-bf13-e43f9daeb51b', 1), 'ac68b3defc20391f84a77ea844e0748ff7b8ef04cadc7854ae503ce255644fce',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b625130a96cb13754fc83ff5499b864cc0b7b40ca0d506e59f4caf6a01f81ca5.mp3', 4963, '2026-09-14 01:08:35.523799', '7be06f3e3f1bb8a01aa16760bee777191d667d65d122950eb5683efaaba75a5a', 'validated', '{"audio_key":"b625130a96cb13754fc83ff5499b864cc0b7b40ca0d506e59f4caf6a01f81ca5","entity_key":"d_register_shifting_01:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7be06f3e3f1bb8a01aa16760bee777191d667d65d122950eb5683efaaba75a5a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/b625130a96cb13754fc83ff5499b864cc0b7b40ca0d506e59f4caf6a01f81ca5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_humor_irony_and_cultural_nuance_02:4 -> audio/generated/ko-KR/dialogues/b9e36f8e603c0a6f3f1ddf877800843d61d3508842015ff10655197eb4003e1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9f5e247c-f371-5a83-a472-ea15cf4af71d', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_humor_irony_and_cultural_nuance_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e01f052b4740ed45c6026418b9d2048a072235e0a0325b9a46a9f43bc6a2aaab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39619530-3568-504a-bc81-2fe8e35b5098', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9f5e247c-f371-5a83-a472-ea15cf4af71d', 1), 'e01f052b4740ed45c6026418b9d2048a072235e0a0325b9a46a9f43bc6a2aaab',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b9e36f8e603c0a6f3f1ddf877800843d61d3508842015ff10655197eb4003e1d.mp3', 4205, '2026-09-14 01:08:35.916296', 'aa6611929419019246929ee1c5e894b7120f054dff0d6bfe48e5c050d32b49f1', 'validated', '{"audio_key":"b9e36f8e603c0a6f3f1ddf877800843d61d3508842015ff10655197eb4003e1d","entity_key":"d_humor_irony_and_cultural_nuance_02:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"aa6611929419019246929ee1c5e894b7120f054dff0d6bfe48e5c050d32b49f1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/b9e36f8e603c0a6f3f1ddf877800843d61d3508842015ff10655197eb4003e1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_and_bureaucratic_korean_01:4 -> audio/generated/ko-KR/dialogues/bb64250d081ad843481d622e8c8156278ccfb30c84be9993e4a004d850877c69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('99c0e6f5-4e73-54a0-b1d7-ec012031102f', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_and_bureaucratic_korean_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '72567cc3fc7462ac176b474e4025af57744700318b9443652dd1f36500c707c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('18778e51-a01e-544a-80f1-0072dc05bc4c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('99c0e6f5-4e73-54a0-b1d7-ec012031102f', 1), '72567cc3fc7462ac176b474e4025af57744700318b9443652dd1f36500c707c6',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/bb64250d081ad843481d622e8c8156278ccfb30c84be9993e4a004d850877c69.mp3', 4075, '2026-09-14 01:08:36.954774', '80d25c16f64f2ac49decb75b7fc6f9c3823ee5e8547593b0a45d162108ace3fa', 'validated', '{"audio_key":"bb64250d081ad843481d622e8c8156278ccfb30c84be9993e4a004d850877c69","entity_key":"d_institutional_and_bureaucratic_korean_01:4","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"80d25c16f64f2ac49decb75b7fc6f9c3823ee5e8547593b0a45d162108ace3fa","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/bb64250d081ad843481d622e8c8156278ccfb30c84be9993e4a004d850877c69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_meaning_and_subtext_01:1 -> audio/generated/ko-KR/dialogues/bb81f930ffc17db3002b5b9084a629b0d6f549ffcd0764727b60f7bc0db6feb4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cad63b28-f16d-5d9c-8364-531234fff6af', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_meaning_and_subtext_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90e088918718f9ee211a3722afd68450d1df932dcedd4a3038db7ba3d59bf5c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('995be8f8-62d9-5ea0-8135-bf1384500cd6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cad63b28-f16d-5d9c-8364-531234fff6af', 1), '90e088918718f9ee211a3722afd68450d1df932dcedd4a3038db7ba3d59bf5c9',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/bb81f930ffc17db3002b5b9084a629b0d6f549ffcd0764727b60f7bc0db6feb4.mp3', 4414, '2026-09-14 01:08:37.364476', '3430557354003cf11b452a41d70bae9920d75194f83ba98c128be18cd8bd3b05', 'validated', '{"audio_key":"bb81f930ffc17db3002b5b9084a629b0d6f549ffcd0764727b60f7bc0db6feb4","entity_key":"d_implicit_meaning_and_subtext_01:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"3430557354003cf11b452a41d70bae9920d75194f83ba98c128be18cd8bd3b05","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/bb81f930ffc17db3002b5b9084a629b0d6f549ffcd0764727b60f7bc0db6feb4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_shifting_01:3 -> audio/generated/ko-KR/dialogues/bec7bcd4486d942eb57fa1740b1fbd81a21cc4b10338e1cdffa851bf84e708b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d808272a-2ab2-5b26-ab1d-df11bf692e83', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_shifting_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c0777b39adab8140967c6e14859c39df72642723c9270c8020196f509a3686a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('188ce758-cf79-5a37-9aef-6066f1a927b1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d808272a-2ab2-5b26-ab1d-df11bf692e83', 1), 'c0777b39adab8140967c6e14859c39df72642723c9270c8020196f509a3686a8',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/bec7bcd4486d942eb57fa1740b1fbd81a21cc4b10338e1cdffa851bf84e708b5.mp3', 2455, '2026-09-14 01:08:38.067199', 'e044d55a89998295f498d93a397dc2e9ab8a6ce3ad68f2d22b73ef2fd06ba0a7', 'validated', '{"audio_key":"bec7bcd4486d942eb57fa1740b1fbd81a21cc4b10338e1cdffa851bf84e708b5","entity_key":"d_register_shifting_01:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e044d55a89998295f498d93a397dc2e9ab8a6ce3ad68f2d22b73ef2fd06ba0a7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/bec7bcd4486d942eb57fa1740b1fbd81a21cc4b10338e1cdffa851bf84e708b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_precision_reformulation_01:2 -> audio/generated/ko-KR/dialogues/bf04ff82e31f60f44d54047eef8aa09ca632e070f06a47a3a3a1f7e1f0c54fdf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('aac1d496-8e7b-5343-a5eb-58708b560888', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_precision_reformulation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '79bec7ad1b99ca8613da21b51f3907a785c66dc43347b7fe98006715a8763c21'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4fdfee70-017c-561e-9da6-8c68ff8b12de', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('aac1d496-8e7b-5343-a5eb-58708b560888', 1), '79bec7ad1b99ca8613da21b51f3907a785c66dc43347b7fe98006715a8763c21',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/bf04ff82e31f60f44d54047eef8aa09ca632e070f06a47a3a3a1f7e1f0c54fdf.mp3', 5459, '2026-09-14 01:08:38.931537', '22ae1ce18fa8e05f97c08565106d4e568f0a3ce7751878512cbb1b3690eb3a64', 'validated', '{"audio_key":"bf04ff82e31f60f44d54047eef8aa09ca632e070f06a47a3a3a1f7e1f0c54fdf","entity_key":"d_precision_reformulation_01:2","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"22ae1ce18fa8e05f97c08565106d4e568f0a3ce7751878512cbb1b3690eb3a64","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/bf04ff82e31f60f44d54047eef8aa09ca632e070f06a47a3a3a1f7e1f0c54fdf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_mediation_and_face_01:1 -> audio/generated/ko-KR/dialogues/c10f5b74890fd2945a419a4344850746a9c692ddf73f8bb3752eaad68f644bb1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b4e08baf-63d3-53b1-8632-3c46342c2ce7', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_mediation_and_face_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c710ccb521cf7e7cd1f5230f34a94c25652fa8d061b8c3b0ef177ea860ce4e54'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e607ed94-93cf-52b3-969b-b61bd31737dd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b4e08baf-63d3-53b1-8632-3c46342c2ce7', 1), 'c710ccb521cf7e7cd1f5230f34a94c25652fa8d061b8c3b0ef177ea860ce4e54',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c10f5b74890fd2945a419a4344850746a9c692ddf73f8bb3752eaad68f644bb1.mp3', 3996, '2026-09-14 01:08:39.476618', 'b125d5b0b99df073fb1dc301c1099b93847510ba01f0774cd67a6a58d50455de', 'validated', '{"audio_key":"c10f5b74890fd2945a419a4344850746a9c692ddf73f8bb3752eaad68f644bb1","entity_key":"d_formal_mediation_and_face_01:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b125d5b0b99df073fb1dc301c1099b93847510ba01f0774cd67a6a58d50455de","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/c10f5b74890fd2945a419a4344850746a9c692ddf73f8bb3752eaad68f644bb1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_shifting_02:2 -> audio/generated/ko-KR/dialogues/c1731b826af77e2bca62a49b9949f83b170f0a17080700c1c7ba2ab6959330a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a689b90c-c612-572a-b6ea-34b6398ed516', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_shifting_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0970470c53530a60c8eb4282d116a493e3d68fcd7572eac257bea439304a30e7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('82491d13-2778-59c3-b984-78ef80b6d1e2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a689b90c-c612-572a-b6ea-34b6398ed516', 1), '0970470c53530a60c8eb4282d116a493e3d68fcd7572eac257bea439304a30e7',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c1731b826af77e2bca62a49b9949f83b170f0a17080700c1c7ba2ab6959330a7.mp3', 4623, '2026-09-14 01:08:40.365968', 'b60ca27e73a8d61012181076abc526ac1be7eb940c705c0e078154c9aceddb76', 'validated', '{"audio_key":"c1731b826af77e2bca62a49b9949f83b170f0a17080700c1c7ba2ab6959330a7","entity_key":"d_register_shifting_02:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b60ca27e73a8d61012181076abc526ac1be7eb940c705c0e078154c9aceddb76","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/c1731b826af77e2bca62a49b9949f83b170f0a17080700c1c7ba2ab6959330a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_meaning_and_subtext_02:1 -> audio/generated/ko-KR/dialogues/c188b44b2451a93bbc3f414460b8fd5af513ff884fe1bd02f6d2e5da68561ca9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e0760068-42e3-55ac-a3ef-8528815e8b6b', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_meaning_and_subtext_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '39b76c534a69773b6062cc5e276f4038fa41eacf09725bbe6667c20a707faaa2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25e133ba-12cc-5ae7-baa9-2c70954dd343', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e0760068-42e3-55ac-a3ef-8528815e8b6b', 1), '39b76c534a69773b6062cc5e276f4038fa41eacf09725bbe6667c20a707faaa2',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c188b44b2451a93bbc3f414460b8fd5af513ff884fe1bd02f6d2e5da68561ca9.mp3', 2638, '2026-09-14 01:08:40.639865', 'e152227771125c3deb3dcfcc2d93d57720393bf64bd74c764ec7f6bcb09d5b5e', 'validated', '{"audio_key":"c188b44b2451a93bbc3f414460b8fd5af513ff884fe1bd02f6d2e5da68561ca9","entity_key":"d_implicit_meaning_and_subtext_02:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e152227771125c3deb3dcfcc2d93d57720393bf64bd74c764ec7f6bcb09d5b5e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/c188b44b2451a93bbc3f414460b8fd5af513ff884fe1bd02f6d2e5da68561ca9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_structure_02:3 -> audio/generated/ko-KR/dialogues/c1c32e5afa575302b61b427ad5b78825f4027e4ef9506fe3f52c6bc243c55bd2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7aeffe32-92a1-5885-aa58-9bbe3dd06b50', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_structure_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68b5f63108dd345127811bd4ef89bfbb4900f20c60104cd11f1d7c2a979b4ab1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da875a3d-86d7-55da-9f76-ece667f02968', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7aeffe32-92a1-5885-aa58-9bbe3dd06b50', 1), '68b5f63108dd345127811bd4ef89bfbb4900f20c60104cd11f1d7c2a979b4ab1',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c1c32e5afa575302b61b427ad5b78825f4027e4ef9506fe3f52c6bc243c55bd2.mp3', 2351, '2026-09-14 01:08:41.520725', '1e01e9b49a1cb5ea76a5a11d34eddc96cf4e8316f13db422d94ba5c15ee11737', 'validated', '{"audio_key":"c1c32e5afa575302b61b427ad5b78825f4027e4ef9506fe3f52c6bc243c55bd2","entity_key":"d_argument_structure_02:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1e01e9b49a1cb5ea76a5a11d34eddc96cf4e8316f13db422d94ba5c15ee11737","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/c1c32e5afa575302b61b427ad5b78825f4027e4ef9506fe3f52c6bc243c55bd2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_and_bureaucratic_korean_02:4 -> audio/generated/ko-KR/dialogues/c66aa54b4b5add0ce99397aaec95c260485f7edad99e3bc32fd1430a938d7585.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bacb7d31-d382-5eae-9708-cc9ecea01c54', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_and_bureaucratic_korean_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bae74c224238e5a3d5215817cc498d35a85f9dd0308e64589f0755bc10e8de80'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09062f44-b0bd-503d-b995-2f73665d1cfa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bacb7d31-d382-5eae-9708-cc9ecea01c54', 1), 'bae74c224238e5a3d5215817cc498d35a85f9dd0308e64589f0755bc10e8de80',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c66aa54b4b5add0ce99397aaec95c260485f7edad99e3bc32fd1430a938d7585.mp3', 4675, '2026-09-14 01:08:42.114158', 'd23a79840ea7586d5bfcb45394cd165daeffd8b6658748c00023f84dc95c23cb', 'validated', '{"audio_key":"c66aa54b4b5add0ce99397aaec95c260485f7edad99e3bc32fd1430a938d7585","entity_key":"d_institutional_and_bureaucratic_korean_02:4","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d23a79840ea7586d5bfcb45394cd165daeffd8b6658748c00023f84dc95c23cb","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/c66aa54b4b5add0ce99397aaec95c260485f7edad99e3bc32fd1430a938d7585.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_precision_reformulation_01:4 -> audio/generated/ko-KR/dialogues/cbb0944ee8a9b345f322331f0af4efa8d87d4d8397c6e15557f8c6199c4004df.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e12a3c7c-3055-55d2-b1b3-90c64787795f', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_precision_reformulation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e663255084ff14c6ec11f8f728f93596239174d9198e74d4fecc5ff648dfd873'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02bc2104-1a8a-5ea0-b357-af8d364abb2c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e12a3c7c-3055-55d2-b1b3-90c64787795f', 1), 'e663255084ff14c6ec11f8f728f93596239174d9198e74d4fecc5ff648dfd873',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/cbb0944ee8a9b345f322331f0af4efa8d87d4d8397c6e15557f8c6199c4004df.mp3', 3291, '2026-09-14 01:08:42.787864', '1f31dc5178d06a5c14523bb82a154fb10b120794a68b82580db912d125230055', 'validated', '{"audio_key":"cbb0944ee8a9b345f322331f0af4efa8d87d4d8397c6e15557f8c6199c4004df","entity_key":"d_precision_reformulation_01:4","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1f31dc5178d06a5c14523bb82a154fb10b120794a68b82580db912d125230055","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/cbb0944ee8a9b345f322331f0af4efa8d87d4d8397c6e15557f8c6199c4004df.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_synthesis_and_framing_02:1 -> audio/generated/ko-KR/dialogues/ce01221c225dc96d5152b76d72519f7031a11863f9a8b076db0465ddf827a4c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('74c39b88-1cad-5887-9927-bc81ad407899', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_synthesis_and_framing_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b25b9512dc36a8bd59db3eef8a8bbb25c505f017769e695036a505ffb5ac8a8a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6f12a32b-3379-5dd8-8bd3-f3af3f02a7c4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('74c39b88-1cad-5887-9927-bc81ad407899', 1), 'b25b9512dc36a8bd59db3eef8a8bbb25c505f017769e695036a505ffb5ac8a8a',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ce01221c225dc96d5152b76d72519f7031a11863f9a8b076db0465ddf827a4c0.mp3', 4545, '2026-09-14 01:08:43.554140', '0486fd214998987753befd1c24e07069be423998b2836a83506b0f43c1df662c', 'validated', '{"audio_key":"ce01221c225dc96d5152b76d72519f7031a11863f9a8b076db0465ddf827a4c0","entity_key":"d_source_synthesis_and_framing_02:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0486fd214998987753befd1c24e07069be423998b2836a83506b0f43c1df662c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/ce01221c225dc96d5152b76d72519f7031a11863f9a8b076db0465ddf827a4c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_structure_01:4 -> audio/generated/ko-KR/dialogues/d118ba769e997e0f3c4a031697e7b9e19c630bdec2f7e302c38fd844c71e8aeb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('26225c5d-fffa-59c1-b5ad-8d63a165dd2d', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_structure_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c99c76cf9404006403f6a339ea419b91aac25b911f04b172cbf217ad41e8fe5c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6967a1d0-fab2-5283-bee4-3b25d1d4c8a9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('26225c5d-fffa-59c1-b5ad-8d63a165dd2d', 1), 'c99c76cf9404006403f6a339ea419b91aac25b911f04b172cbf217ad41e8fe5c',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d118ba769e997e0f3c4a031697e7b9e19c630bdec2f7e302c38fd844c71e8aeb.mp3', 4911, '2026-09-14 01:08:44.345112', 'd658ecf4289f2da171fbf6d0a809d192ced1cc88f48a30093a6bfb38c1d04c89', 'validated', '{"audio_key":"d118ba769e997e0f3c4a031697e7b9e19c630bdec2f7e302c38fd844c71e8aeb","entity_key":"d_argument_structure_01:4","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d658ecf4289f2da171fbf6d0a809d192ced1cc88f48a30093a6bfb38c1d04c89","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/d118ba769e997e0f3c4a031697e7b9e19c630bdec2f7e302c38fd844c71e8aeb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_source_synthesis_and_framing_02:4 -> audio/generated/ko-KR/dialogues/d13913261cab01b5b60cef55ad0dab02ab55431d4a3fc70e88ceede1d2c90828.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('53747413-162e-54b7-a239-c7297af23b5b', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_source_synthesis_and_framing_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e3efc1c25391e3bd761d9a3915c3903d8f64f2184e93a9e13a835a5cbb61295a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3d6cb2d8-a18b-56d9-8e6f-474db693960d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('53747413-162e-54b7-a239-c7297af23b5b', 1), 'e3efc1c25391e3bd761d9a3915c3903d8f64f2184e93a9e13a835a5cbb61295a',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d13913261cab01b5b60cef55ad0dab02ab55431d4a3fc70e88ceede1d2c90828.mp3', 4728, '2026-09-14 01:08:45.053848', '6d4d8aadfc2ba15a560632bddb28652ef0262719f399f1c917be680b443c5940', 'validated', '{"audio_key":"d13913261cab01b5b60cef55ad0dab02ab55431d4a3fc70e88ceede1d2c90828","entity_key":"d_source_synthesis_and_framing_02:4","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6d4d8aadfc2ba15a560632bddb28652ef0262719f399f1c917be680b443c5940","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/d13913261cab01b5b60cef55ad0dab02ab55431d4a3fc70e88ceede1d2c90828.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_meaning_and_subtext_02:4 -> audio/generated/ko-KR/dialogues/d64f80c29e2cc9dc3c133a1099c0c1d74959023b432606b9b82158532794b14e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2f964f14-9370-573d-a970-fa306d98f138', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_meaning_and_subtext_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d6471cd8ca0af1937612fcbd08080ff7650934f2d9233cc5ea6fe67e07f6140'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c509fa27-c307-5d4e-9229-8f35d21d1288', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2f964f14-9370-573d-a970-fa306d98f138', 1), '0d6471cd8ca0af1937612fcbd08080ff7650934f2d9233cc5ea6fe67e07f6140',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d64f80c29e2cc9dc3c133a1099c0c1d74959023b432606b9b82158532794b14e.mp3', 3996, '2026-09-14 01:08:45.630098', 'e8c7477ee988bef0c9a0a5912a01c660fba094a61588920f03be02f50d2d4636', 'validated', '{"audio_key":"d64f80c29e2cc9dc3c133a1099c0c1d74959023b432606b9b82158532794b14e","entity_key":"d_implicit_meaning_and_subtext_02:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e8c7477ee988bef0c9a0a5912a01c660fba094a61588920f03be02f50d2d4636","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/d64f80c29e2cc9dc3c133a1099c0c1d74959023b432606b9b82158532794b14e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_mediation_and_face_01:4 -> audio/generated/ko-KR/dialogues/d6e0d8f83c3fecece1bedca2719b933fa6f8e96b6b4116831e0a25372af51355.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0b517233-32d7-551f-860f-7f0e2fa7870f', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_mediation_and_face_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d954daa48a3d564ba05e2cf38253f6dc62b1099abbffd3edb64e196571e78a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5fc99555-130c-5207-b46f-5c634cff7a3f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0b517233-32d7-551f-860f-7f0e2fa7870f', 1), '0d954daa48a3d564ba05e2cf38253f6dc62b1099abbffd3edb64e196571e78a0',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d6e0d8f83c3fecece1bedca2719b933fa6f8e96b6b4116831e0a25372af51355.mp3', 3604, '2026-09-14 01:08:46.343263', 'dec11b6eaf9575ea603c1a9ab86ebb0a984572744f3888d286ea8d9cd029cc75', 'validated', '{"audio_key":"d6e0d8f83c3fecece1bedca2719b933fa6f8e96b6b4116831e0a25372af51355","entity_key":"d_formal_mediation_and_face_01:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"dec11b6eaf9575ea603c1a9ab86ebb0a984572744f3888d286ea8d9cd029cc75","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/d6e0d8f83c3fecece1bedca2719b933fa6f8e96b6b4116831e0a25372af51355.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_mediation_and_face_02:4 -> audio/generated/ko-KR/dialogues/dc7020f756a0f6b94114d0b3a855afc9b8266e138e9e95f1536bb6f9d1114e0f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('83109d80-d727-5895-be11-543b6d3dadec', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_mediation_and_face_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4938a86005934e9295cc4359e77dd980b34fdffe26172ed72ecedd7dfe31588'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6df9009e-e198-5051-8ab9-2be38f504c89', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('83109d80-d727-5895-be11-543b6d3dadec', 1), 'd4938a86005934e9295cc4359e77dd980b34fdffe26172ed72ecedd7dfe31588',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/dc7020f756a0f6b94114d0b3a855afc9b8266e138e9e95f1536bb6f9d1114e0f.mp3', 4963, '2026-09-14 01:08:47.180291', 'fb2a040b7c90bcb04d51ac44b3a0b9466c026997dcba7b4bb9131ee56825c32a', 'validated', '{"audio_key":"dc7020f756a0f6b94114d0b3a855afc9b8266e138e9e95f1536bb6f9d1114e0f","entity_key":"d_formal_mediation_and_face_02:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb2a040b7c90bcb04d51ac44b3a0b9466c026997dcba7b4bb9131ee56825c32a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/dc7020f756a0f6b94114d0b3a855afc9b8266e138e9e95f1536bb6f9d1114e0f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_implicit_meaning_and_subtext_02:3 -> audio/generated/ko-KR/dialogues/e573a05e631a7a5b80dae4fccf571ba9f0539efea41c35e08489faf56052e7bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0947b98c-60e2-5ff4-bad3-ffd4f00c7be1', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_implicit_meaning_and_subtext_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ca38c6dc9112e378d7a63680bb0999512227e1beba62bf5b89a58ef5b3a78eb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('296e795f-35fd-5015-9451-0b7380e928f5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0947b98c-60e2-5ff4-bad3-ffd4f00c7be1', 1), '9ca38c6dc9112e378d7a63680bb0999512227e1beba62bf5b89a58ef5b3a78eb',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e573a05e631a7a5b80dae4fccf571ba9f0539efea41c35e08489faf56052e7bf.mp3', 2638, '2026-09-14 01:08:47.562048', 'f9220b298aa4c59206e5f40abc3a46cdd889b6e0d9758a04b0c7425a261f0af7', 'validated', '{"audio_key":"e573a05e631a7a5b80dae4fccf571ba9f0539efea41c35e08489faf56052e7bf","entity_key":"d_implicit_meaning_and_subtext_02:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f9220b298aa4c59206e5f40abc3a46cdd889b6e0d9758a04b0c7425a261f0af7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/e573a05e631a7a5b80dae4fccf571ba9f0539efea41c35e08489faf56052e7bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_formal_mediation_and_face_02:3 -> audio/generated/ko-KR/dialogues/e9ad24281e09a526f7074df47838724cfe901905d960a9bb350de3f7df9f8531.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('98944a5c-4520-53e5-bd75-f26f42e329d5', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_formal_mediation_and_face_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a3b23e6e0729cd221cf1546dc23884bed109434a87ca1b614764fd730767120'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('212a8418-b99e-5b57-9dcc-230ac11999fc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('98944a5c-4520-53e5-bd75-f26f42e329d5', 1), '5a3b23e6e0729cd221cf1546dc23884bed109434a87ca1b614764fd730767120',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e9ad24281e09a526f7074df47838724cfe901905d960a9bb350de3f7df9f8531.mp3', 2272, '2026-09-14 01:08:48.291423', '27eab086ebb5aedcf1c52366883b563d76d8617d07e3b94039c6d5f52b9bc012', 'validated', '{"audio_key":"e9ad24281e09a526f7074df47838724cfe901905d960a9bb350de3f7df9f8531","entity_key":"d_formal_mediation_and_face_02:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"27eab086ebb5aedcf1c52366883b563d76d8617d07e3b94039c6d5f52b9bc012","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/e9ad24281e09a526f7074df47838724cfe901905d960a9bb350de3f7df9f8531.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_precision_reformulation_01:3 -> audio/generated/ko-KR/dialogues/f03a00710a98eb3962aa8e8e39aab17e5611e381bf2308e51b06d10c9c4ddeab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('45010633-98b3-504c-b51d-e7d3d060a849', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_precision_reformulation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c16e7ddaf547164a1987cf9aa8b18c2a613bc400404283f7cb3dd0c26894c0d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0687466-3f51-58fa-beeb-ce400bfd22e5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('45010633-98b3-504c-b51d-e7d3d060a849', 1), 'c16e7ddaf547164a1987cf9aa8b18c2a613bc400404283f7cb3dd0c26894c0d1',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f03a00710a98eb3962aa8e8e39aab17e5611e381bf2308e51b06d10c9c4ddeab.mp3', 3239, '2026-09-14 01:08:48.791908', '8c2c90e975eee15bf09f622e46156389af574dbe6bffd2770df924f5768b5271', 'validated', '{"audio_key":"f03a00710a98eb3962aa8e8e39aab17e5611e381bf2308e51b06d10c9c4ddeab","entity_key":"d_precision_reformulation_01:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8c2c90e975eee15bf09f622e46156389af574dbe6bffd2770df924f5768b5271","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/f03a00710a98eb3962aa8e8e39aab17e5611e381bf2308e51b06d10c9c4ddeab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_c1_seoul_policy_forum_capstone_01:1 -> audio/generated/ko-KR/dialogues/f17b1ab383597df00603bdce8d6a0ea8680d3e76ff7fdcfc46cabb83d7f85e75.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0c76e97c-91b6-5a97-88a6-c01aba8f7ab0', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_c1_seoul_policy_forum_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '791cf67187394ab11ce0fc9f898cfc7132847d226f9cf2c4a5908d133c6312b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9bfba480-c5de-5678-8b0d-01ccd8418d0a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0c76e97c-91b6-5a97-88a6-c01aba8f7ab0', 1), '791cf67187394ab11ce0fc9f898cfc7132847d226f9cf2c4a5908d133c6312b3',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f17b1ab383597df00603bdce8d6a0ea8680d3e76ff7fdcfc46cabb83d7f85e75.mp3', 4362, '2026-09-14 01:08:49.707814', '54947d2e778a3afe8fe42e685913b85a3053a6c62c81b677e53f18f2142e326e', 'validated', '{"audio_key":"f17b1ab383597df00603bdce8d6a0ea8680d3e76ff7fdcfc46cabb83d7f85e75","entity_key":"d_c1_seoul_policy_forum_capstone_01:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"54947d2e778a3afe8fe42e685913b85a3053a6c62c81b677e53f18f2142e326e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/f17b1ab383597df00603bdce8d6a0ea8680d3e76ff7fdcfc46cabb83d7f85e75.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_register_shifting_02:3 -> audio/generated/ko-KR/dialogues/f2021f9bf03327b0fa1184cc2ef8950cfda82823d62fa605cf4d6b5bcc1a5e2f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0ee1ca89-8728-55a4-b232-1109ee25f9ca', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_register_shifting_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f9bba20bc720a3193bef99c403bea963d90c133a16c19957e7668cf06f3c9444'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aea98d5b-7dd8-5c19-b28b-8ea7c5f6e73d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0ee1ca89-8728-55a4-b232-1109ee25f9ca', 1), 'f9bba20bc720a3193bef99c403bea963d90c133a16c19957e7668cf06f3c9444',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f2021f9bf03327b0fa1184cc2ef8950cfda82823d62fa605cf4d6b5bcc1a5e2f.mp3', 1906, '2026-09-14 01:08:49.881469', '28125dad14b9e449e21e98c09c34833140c8940c9c7d9db87e19c4b9e9b1d4c0', 'validated', '{"audio_key":"f2021f9bf03327b0fa1184cc2ef8950cfda82823d62fa605cf4d6b5bcc1a5e2f","entity_key":"d_register_shifting_02:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"28125dad14b9e449e21e98c09c34833140c8940c9c7d9db87e19c4b9e9b1d4c0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/f2021f9bf03327b0fa1184cc2ef8950cfda82823d62fa605cf4d6b5bcc1a5e2f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_institutional_and_bureaucratic_korean_02:1 -> audio/generated/ko-KR/dialogues/f27db387a263bdb6ce7fdcfcb6b23ba2ee9da4280d1b8ea05e6f3f776ed00612.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('44fb23d7-21dd-5ba2-b1d0-ba2006b5982c', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_institutional_and_bureaucratic_korean_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e02bc1ad92b25d6fca234bfaba5486595114208fc2aa621d1a632e9a42c92fc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b5daa7a9-2c1e-52ae-b3a3-b1473992f5c2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('44fb23d7-21dd-5ba2-b1d0-ba2006b5982c', 1), '9e02bc1ad92b25d6fca234bfaba5486595114208fc2aa621d1a632e9a42c92fc',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f27db387a263bdb6ce7fdcfcb6b23ba2ee9da4280d1b8ea05e6f3f776ed00612.mp3', 3422, '2026-09-14 01:08:50.958541', '29b06ed550d7f6b9303b44f777e0ed78ceeeff4a1334028530641cd910580b6f', 'validated', '{"audio_key":"f27db387a263bdb6ce7fdcfcb6b23ba2ee9da4280d1b8ea05e6f3f776ed00612","entity_key":"d_institutional_and_bureaucratic_korean_02:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"29b06ed550d7f6b9303b44f777e0ed78ceeeff4a1334028530641cd910580b6f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/f27db387a263bdb6ce7fdcfcb6b23ba2ee9da4280d1b8ea05e6f3f776ed00612.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_argument_structure_01:2 -> audio/generated/ko-KR/dialogues/fb06a4c2764ca25fb1b03588e4e094a30e3be9e64589cca46501eb73b8ed9f0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7844e316-a220-5251-889d-2d38b9ee0bde', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_argument_structure_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fd194babf72cd944f4efcf4da8bd36dc28ca1e01516ae6d3e1c3c900929a1050'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6e56f0e3-b695-5563-8577-2c7de6414b9c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7844e316-a220-5251-889d-2d38b9ee0bde', 1), 'fd194babf72cd944f4efcf4da8bd36dc28ca1e01516ae6d3e1c3c900929a1050',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/fb06a4c2764ca25fb1b03588e4e094a30e3be9e64589cca46501eb73b8ed9f0a.mp3', 5459, '2026-09-14 01:08:51.455688', '8ba806cdaccd96fd263959820329e1d23379041eb893d73bc77dcdb3cbdd0762', 'validated', '{"audio_key":"fb06a4c2764ca25fb1b03588e4e094a30e3be9e64589cca46501eb73b8ed9f0a","entity_key":"d_argument_structure_01:2","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8ba806cdaccd96fd263959820329e1d23379041eb893d73bc77dcdb3cbdd0762","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/fb06a4c2764ca25fb1b03588e4e094a30e3be9e64589cca46501eb73b8ed9f0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_precision_reformulation_01:1 -> audio/generated/ko-KR/dialogues/ff75ff23eccfa60af8cac75a0dfea4720e98479d2445195e43d6a599936854ea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ac8c39ba-147a-5631-988c-e32844e08847', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_precision_reformulation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cf7d91aaf3fa6c6c550c028d4816be035e2ff17abc39c6fd5df14c1f6251835e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('185c50cb-d536-5700-a291-931ee900083d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ac8c39ba-147a-5631-988c-e32844e08847', 1), 'cf7d91aaf3fa6c6c550c028d4816be035e2ff17abc39c6fd5df14c1f6251835e',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ff75ff23eccfa60af8cac75a0dfea4720e98479d2445195e43d6a599936854ea.mp3', 3578, '2026-09-14 01:08:52.230751', 'e8885c059e513828d7c0d9fd0680eae9ecba3e026326e4f8b9764b404db43c1c', 'validated', '{"audio_key":"ff75ff23eccfa60af8cac75a0dfea4720e98479d2445195e43d6a599936854ea","entity_key":"d_precision_reformulation_01:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e8885c059e513828d7c0d9fd0680eae9ecba3e026326e4f8b9764b404db43c1c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/ff75ff23eccfa60af8cac75a0dfea4720e98479d2445195e43d6a599936854ea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c1_seoul_policy_forum_capstone_05 -> audio/generated/ko-KR/lexical/02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0f4e5377-7206-5cef-9bd8-a3e426f1e27b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c1_seoul_policy_forum_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd7794cf130b736a7916042cc14e3a797206fad2daf25ed41a53aacbb091b1bea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0fcee23e-9a14-581a-95ab-96a84f91fa75', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0f4e5377-7206-5cef-9bd8-a3e426f1e27b', 1), 'd7794cf130b736a7916042cc14e3a797206fad2daf25ed41a53aacbb091b1bea',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d.mp3', 1071, '2026-09-13 22:59:49.131556', '4c6e7d09e6a92a157aa649385f89077452261a799d2a8bad74d13506d58cf155', 'validated', '{"audio_key":"02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d","entity_key":"lx_c1_seoul_policy_forum_capstone_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4c6e7d09e6a92a157aa649385f89077452261a799d2a8bad74d13506d58cf155","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c1_seoul_policy_forum_capstone_05 -> audio/generated/ko-KR/lexical/02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('48178fda-ef5e-54b8-b606-0ac8b7b725e5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c1_seoul_policy_forum_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd7794cf130b736a7916042cc14e3a797206fad2daf25ed41a53aacbb091b1bea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca9e38bc-8a9b-58b7-88f8-6e9d82ef4409', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('48178fda-ef5e-54b8-b606-0ac8b7b725e5', 1), 'd7794cf130b736a7916042cc14e3a797206fad2daf25ed41a53aacbb091b1bea',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d.mp3', 1071, '2026-09-13 22:59:49.131556', '4c6e7d09e6a92a157aa649385f89077452261a799d2a8bad74d13506d58cf155', 'validated', '{"audio_key":"02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d","entity_key":"wf_c1_seoul_policy_forum_capstone_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4c6e7d09e6a92a157aa649385f89077452261a799d2a8bad74d13506d58cf155","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/02a54b27382695c06497821dc3f36c90d303314c63233f8fcdac5d20fc24403d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_shifting_03 -> audio/generated/ko-KR/lexical/087be7c7643d72a2de42f91a555eac704895827e28719fc033d3d345c6e136fd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('68507211-6319-55b4-a43d-3e865c9ad7d6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_shifting_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '508d269812df171895f0d144566da5c72f4586c18d6c40b8332fd56668c7516d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc5f44d9-0b78-5a3d-a234-77d131100129', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('68507211-6319-55b4-a43d-3e865c9ad7d6', 1), '508d269812df171895f0d144566da5c72f4586c18d6c40b8332fd56668c7516d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/087be7c7643d72a2de42f91a555eac704895827e28719fc033d3d345c6e136fd.mp3', 1097, '2026-09-14 01:08:52.827679', 'ee645645be140a317dc0ce09a6d403e4e1716543c37db77ef1ce97b18b1dd4a2', 'validated', '{"audio_key":"087be7c7643d72a2de42f91a555eac704895827e28719fc033d3d345c6e136fd","entity_key":"lx_register_shifting_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ee645645be140a317dc0ce09a6d403e4e1716543c37db77ef1ce97b18b1dd4a2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/087be7c7643d72a2de42f91a555eac704895827e28719fc033d3d345c6e136fd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_shifting_03 -> audio/generated/ko-KR/lexical/087be7c7643d72a2de42f91a555eac704895827e28719fc033d3d345c6e136fd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b7c4afe8-b1ec-54d0-b07e-cfa65334509e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_shifting_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '508d269812df171895f0d144566da5c72f4586c18d6c40b8332fd56668c7516d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cfc3e9b1-e359-5bf0-97f4-9d0d8b54b3fc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b7c4afe8-b1ec-54d0-b07e-cfa65334509e', 1), '508d269812df171895f0d144566da5c72f4586c18d6c40b8332fd56668c7516d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/087be7c7643d72a2de42f91a555eac704895827e28719fc033d3d345c6e136fd.mp3', 1097, '2026-09-14 01:08:52.827679', 'ee645645be140a317dc0ce09a6d403e4e1716543c37db77ef1ce97b18b1dd4a2', 'validated', '{"audio_key":"087be7c7643d72a2de42f91a555eac704895827e28719fc033d3d345c6e136fd","entity_key":"wf_register_shifting_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ee645645be140a317dc0ce09a6d403e4e1716543c37db77ef1ce97b18b1dd4a2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/087be7c7643d72a2de42f91a555eac704895827e28719fc033d3d345c6e136fd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_humor_irony_and_cultural_nuance_04 -> audio/generated/ko-KR/lexical/0990af8e5cb6d63ac343d448ae6bd39adbb27018b570fb5d4586fd05f3e92063.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a6f2dacc-3917-5a36-b4a1-9567ce41f31c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_humor_irony_and_cultural_nuance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a0f863c306652467c16971d4fabe34577d293b0f871a9f69fa84187326b0e9a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f52a01db-8bc9-5db1-bc53-56fd80f70fc9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a6f2dacc-3917-5a36-b4a1-9567ce41f31c', 1), '0a0f863c306652467c16971d4fabe34577d293b0f871a9f69fa84187326b0e9a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0990af8e5cb6d63ac343d448ae6bd39adbb27018b570fb5d4586fd05f3e92063.mp3', 966, '2026-09-14 01:08:53.212139', '96ace061c71801e94a0055ae9eac6fbbfc61932eed90edcf8558aa3eb580a833', 'validated', '{"audio_key":"0990af8e5cb6d63ac343d448ae6bd39adbb27018b570fb5d4586fd05f3e92063","entity_key":"lx_humor_irony_and_cultural_nuance_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"96ace061c71801e94a0055ae9eac6fbbfc61932eed90edcf8558aa3eb580a833","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0990af8e5cb6d63ac343d448ae6bd39adbb27018b570fb5d4586fd05f3e92063.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_humor_irony_and_cultural_nuance_04 -> audio/generated/ko-KR/lexical/0990af8e5cb6d63ac343d448ae6bd39adbb27018b570fb5d4586fd05f3e92063.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5f8fd699-3241-5979-b301-dbce7e4c954e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_humor_irony_and_cultural_nuance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a0f863c306652467c16971d4fabe34577d293b0f871a9f69fa84187326b0e9a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2afd5964-435c-5666-82f0-af57bfd786cc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5f8fd699-3241-5979-b301-dbce7e4c954e', 1), '0a0f863c306652467c16971d4fabe34577d293b0f871a9f69fa84187326b0e9a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0990af8e5cb6d63ac343d448ae6bd39adbb27018b570fb5d4586fd05f3e92063.mp3', 966, '2026-09-14 01:08:53.212139', '96ace061c71801e94a0055ae9eac6fbbfc61932eed90edcf8558aa3eb580a833', 'validated', '{"audio_key":"0990af8e5cb6d63ac343d448ae6bd39adbb27018b570fb5d4586fd05f3e92063","entity_key":"wf_humor_irony_and_cultural_nuance_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"96ace061c71801e94a0055ae9eac6fbbfc61932eed90edcf8558aa3eb580a833","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0990af8e5cb6d63ac343d448ae6bd39adbb27018b570fb5d4586fd05f3e92063.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c1_seoul_policy_forum_capstone_02 -> audio/generated/ko-KR/lexical/0ad3b432fc8546f259530d22f36f0abb5491c26893ccb0302df3f8e075544bec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6d60cb14-e04e-5e04-aead-06b266d0c267', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c1_seoul_policy_forum_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cf567a25ffbe55ad1f9dae6a0b8906ced957ac2bd6788eaa48cdb2d55cd0558b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a7c5e90-1a9d-5c6f-8a69-ba1fec2ae66f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6d60cb14-e04e-5e04-aead-06b266d0c267', 1), 'cf567a25ffbe55ad1f9dae6a0b8906ced957ac2bd6788eaa48cdb2d55cd0558b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0ad3b432fc8546f259530d22f36f0abb5491c26893ccb0302df3f8e075544bec.mp3', 1018, '2026-09-13 23:58:34.596233', '12016888caf14aa1713a9cf490527e0ec2a021a0473f3b613b920774aee8c47e', 'validated', '{"audio_key":"0ad3b432fc8546f259530d22f36f0abb5491c26893ccb0302df3f8e075544bec","entity_key":"lx_c1_seoul_policy_forum_capstone_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"12016888caf14aa1713a9cf490527e0ec2a021a0473f3b613b920774aee8c47e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0ad3b432fc8546f259530d22f36f0abb5491c26893ccb0302df3f8e075544bec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c1_seoul_policy_forum_capstone_02 -> audio/generated/ko-KR/lexical/0ad3b432fc8546f259530d22f36f0abb5491c26893ccb0302df3f8e075544bec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4879574b-be38-55dc-99c4-a3581ed0f6a8', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c1_seoul_policy_forum_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cf567a25ffbe55ad1f9dae6a0b8906ced957ac2bd6788eaa48cdb2d55cd0558b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b3d8cdf-4e20-5e11-86eb-ab228023e57e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4879574b-be38-55dc-99c4-a3581ed0f6a8', 1), 'cf567a25ffbe55ad1f9dae6a0b8906ced957ac2bd6788eaa48cdb2d55cd0558b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0ad3b432fc8546f259530d22f36f0abb5491c26893ccb0302df3f8e075544bec.mp3', 1018, '2026-09-13 23:58:34.596233', '12016888caf14aa1713a9cf490527e0ec2a021a0473f3b613b920774aee8c47e', 'validated', '{"audio_key":"0ad3b432fc8546f259530d22f36f0abb5491c26893ccb0302df3f8e075544bec","entity_key":"wf_c1_seoul_policy_forum_capstone_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"12016888caf14aa1713a9cf490527e0ec2a021a0473f3b613b920774aee8c47e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0ad3b432fc8546f259530d22f36f0abb5491c26893ccb0302df3f8e075544bec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_precision_reformulation_04 -> audio/generated/ko-KR/lexical/0e70908251d79d992c2e28124600291a5bdfb95a193beb3a2e573ccad248989f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fad794f1-e115-5b0c-bc73-0fdb6439a3b3', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_precision_reformulation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7694dbbf551627c40ae1138468bfad9929e89d41e33c4b2cc822409404e34c06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('879ff926-0ab3-5665-8e45-ce5bc2f4ae1d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fad794f1-e115-5b0c-bc73-0fdb6439a3b3', 1), '7694dbbf551627c40ae1138468bfad9929e89d41e33c4b2cc822409404e34c06',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0e70908251d79d992c2e28124600291a5bdfb95a193beb3a2e573ccad248989f.mp3', 1280, '2026-09-14 01:08:53.926587', '775406dc95204ff394b1a13753997e4afac32cee30125e9f5bc403feebc5922e', 'validated', '{"audio_key":"0e70908251d79d992c2e28124600291a5bdfb95a193beb3a2e573ccad248989f","entity_key":"lx_precision_reformulation_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"775406dc95204ff394b1a13753997e4afac32cee30125e9f5bc403feebc5922e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0e70908251d79d992c2e28124600291a5bdfb95a193beb3a2e573ccad248989f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_precision_reformulation_04 -> audio/generated/ko-KR/lexical/0e70908251d79d992c2e28124600291a5bdfb95a193beb3a2e573ccad248989f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4007af70-3442-5706-9e82-192fbe0f713d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_precision_reformulation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7694dbbf551627c40ae1138468bfad9929e89d41e33c4b2cc822409404e34c06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d45bd628-f3ce-56d7-b036-8980fb9abb11', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4007af70-3442-5706-9e82-192fbe0f713d', 1), '7694dbbf551627c40ae1138468bfad9929e89d41e33c4b2cc822409404e34c06',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0e70908251d79d992c2e28124600291a5bdfb95a193beb3a2e573ccad248989f.mp3', 1280, '2026-09-14 01:08:53.926587', '775406dc95204ff394b1a13753997e4afac32cee30125e9f5bc403feebc5922e', 'validated', '{"audio_key":"0e70908251d79d992c2e28124600291a5bdfb95a193beb3a2e573ccad248989f","entity_key":"wf_precision_reformulation_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"775406dc95204ff394b1a13753997e4afac32cee30125e9f5bc403feebc5922e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0e70908251d79d992c2e28124600291a5bdfb95a193beb3a2e573ccad248989f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_mediation_and_face_04 -> audio/generated/ko-KR/lexical/13554729936e7dca2745794d861d0910e43b1a9d7de5eede8706bbfb3ccc6dbc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5e87fed5-6e0f-5a0e-8f75-9d9a29bf3f8e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_mediation_and_face_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4557af22bfe7c8c10b12f6c6386ded5d77e54d1e8105b26dce567c6db996bb9a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c24b1347-dd43-5c39-99eb-231943a18255', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5e87fed5-6e0f-5a0e-8f75-9d9a29bf3f8e', 1), '4557af22bfe7c8c10b12f6c6386ded5d77e54d1e8105b26dce567c6db996bb9a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/13554729936e7dca2745794d861d0910e43b1a9d7de5eede8706bbfb3ccc6dbc.mp3', 1097, '2026-09-13 22:59:52.328971', '53b3995d021aaf1c084b130286d5091aeb38039a30df85b082f1795f84c69ba4', 'validated', '{"audio_key":"13554729936e7dca2745794d861d0910e43b1a9d7de5eede8706bbfb3ccc6dbc","entity_key":"lx_formal_mediation_and_face_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"53b3995d021aaf1c084b130286d5091aeb38039a30df85b082f1795f84c69ba4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/13554729936e7dca2745794d861d0910e43b1a9d7de5eede8706bbfb3ccc6dbc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_mediation_and_face_04 -> audio/generated/ko-KR/lexical/13554729936e7dca2745794d861d0910e43b1a9d7de5eede8706bbfb3ccc6dbc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e56de885-67dc-54e7-8ccd-6e0a81debda1', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_mediation_and_face_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4557af22bfe7c8c10b12f6c6386ded5d77e54d1e8105b26dce567c6db996bb9a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7af5296d-e9d8-5cf0-a70c-7004bf8159db', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e56de885-67dc-54e7-8ccd-6e0a81debda1', 1), '4557af22bfe7c8c10b12f6c6386ded5d77e54d1e8105b26dce567c6db996bb9a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/13554729936e7dca2745794d861d0910e43b1a9d7de5eede8706bbfb3ccc6dbc.mp3', 1097, '2026-09-13 22:59:52.328971', '53b3995d021aaf1c084b130286d5091aeb38039a30df85b082f1795f84c69ba4', 'validated', '{"audio_key":"13554729936e7dca2745794d861d0910e43b1a9d7de5eede8706bbfb3ccc6dbc","entity_key":"wf_formal_mediation_and_face_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"53b3995d021aaf1c084b130286d5091aeb38039a30df85b082f1795f84c69ba4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/13554729936e7dca2745794d861d0910e43b1a9d7de5eede8706bbfb3ccc6dbc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stance_and_hedging_05 -> audio/generated/ko-KR/lexical/20fbb6a0e8cc67c6b4e8db35bf7b313d4edebd1cd9eb01390260839cc0c40080.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c54edbd2-b909-5db2-8c88-71c6140551a1', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stance_and_hedging_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40f2e8b6e8a6f7d4c5bd7938a60fec7063911dfb0b6aafa92e28483733000ff3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33d6b78a-f702-53e6-b354-736ebcce3762', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c54edbd2-b909-5db2-8c88-71c6140551a1', 1), '40f2e8b6e8a6f7d4c5bd7938a60fec7063911dfb0b6aafa92e28483733000ff3',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/20fbb6a0e8cc67c6b4e8db35bf7b313d4edebd1cd9eb01390260839cc0c40080.mp3', 1332, '2026-09-14 01:08:54.218841', '1ff58dd137586ea6013cb877502ce9958bafe7dc209cf82f717e594025665471', 'validated', '{"audio_key":"20fbb6a0e8cc67c6b4e8db35bf7b313d4edebd1cd9eb01390260839cc0c40080","entity_key":"lx_stance_and_hedging_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1ff58dd137586ea6013cb877502ce9958bafe7dc209cf82f717e594025665471","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/20fbb6a0e8cc67c6b4e8db35bf7b313d4edebd1cd9eb01390260839cc0c40080.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stance_and_hedging_05 -> audio/generated/ko-KR/lexical/20fbb6a0e8cc67c6b4e8db35bf7b313d4edebd1cd9eb01390260839cc0c40080.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('03f2f2f1-97c7-5d5c-a72c-88a40f8f57fb', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stance_and_hedging_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40f2e8b6e8a6f7d4c5bd7938a60fec7063911dfb0b6aafa92e28483733000ff3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad9e1954-ce6f-54d0-b90e-9bdaead37751', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('03f2f2f1-97c7-5d5c-a72c-88a40f8f57fb', 1), '40f2e8b6e8a6f7d4c5bd7938a60fec7063911dfb0b6aafa92e28483733000ff3',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/20fbb6a0e8cc67c6b4e8db35bf7b313d4edebd1cd9eb01390260839cc0c40080.mp3', 1332, '2026-09-14 01:08:54.218841', '1ff58dd137586ea6013cb877502ce9958bafe7dc209cf82f717e594025665471', 'validated', '{"audio_key":"20fbb6a0e8cc67c6b4e8db35bf7b313d4edebd1cd9eb01390260839cc0c40080","entity_key":"wf_stance_and_hedging_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1ff58dd137586ea6013cb877502ce9958bafe7dc209cf82f717e594025665471","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/20fbb6a0e8cc67c6b4e8db35bf7b313d4edebd1cd9eb01390260839cc0c40080.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_mediation_and_face_06 -> audio/generated/ko-KR/lexical/21c3879b6dc237210bbcd16e6455be6539ea53e1c094e2f8cc19cf921807ddaf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4322b789-9db3-5680-98aa-d62532b5542f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_mediation_and_face_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f3e2151acb95e3a4ead527ac427238a699230be184a1bc0c4ab91efbc0b542f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da8ae515-7344-5447-98de-2d18dcaad7c0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4322b789-9db3-5680-98aa-d62532b5542f', 1), '6f3e2151acb95e3a4ead527ac427238a699230be184a1bc0c4ab91efbc0b542f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/21c3879b6dc237210bbcd16e6455be6539ea53e1c094e2f8cc19cf921807ddaf.mp3', 1149, '2026-09-14 01:08:55.164849', 'd14b84572b73782759470de615048cb7600b7cbae2fc0efe381f6a51ef0c4fc5', 'validated', '{"audio_key":"21c3879b6dc237210bbcd16e6455be6539ea53e1c094e2f8cc19cf921807ddaf","entity_key":"lx_formal_mediation_and_face_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d14b84572b73782759470de615048cb7600b7cbae2fc0efe381f6a51ef0c4fc5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/21c3879b6dc237210bbcd16e6455be6539ea53e1c094e2f8cc19cf921807ddaf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_mediation_and_face_06 -> audio/generated/ko-KR/lexical/21c3879b6dc237210bbcd16e6455be6539ea53e1c094e2f8cc19cf921807ddaf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4e17510b-52fe-5983-ac90-b0eb6daef033', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_mediation_and_face_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f3e2151acb95e3a4ead527ac427238a699230be184a1bc0c4ab91efbc0b542f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3741ea28-36de-507f-94e5-3baaf5eac9e9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4e17510b-52fe-5983-ac90-b0eb6daef033', 1), '6f3e2151acb95e3a4ead527ac427238a699230be184a1bc0c4ab91efbc0b542f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/21c3879b6dc237210bbcd16e6455be6539ea53e1c094e2f8cc19cf921807ddaf.mp3', 1149, '2026-09-14 01:08:55.164849', 'd14b84572b73782759470de615048cb7600b7cbae2fc0efe381f6a51ef0c4fc5', 'validated', '{"audio_key":"21c3879b6dc237210bbcd16e6455be6539ea53e1c094e2f8cc19cf921807ddaf","entity_key":"wf_formal_mediation_and_face_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d14b84572b73782759470de615048cb7600b7cbae2fc0efe381f6a51ef0c4fc5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/21c3879b6dc237210bbcd16e6455be6539ea53e1c094e2f8cc19cf921807ddaf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_humor_irony_and_cultural_nuance_05 -> audio/generated/ko-KR/lexical/22d784f1bfc70db939b77a8404ccce3a01cc7a2c0ba7e806a15f60c9499b9f00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f2842b96-3b85-50a6-8830-bd5bdf4d5dfd', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_humor_irony_and_cultural_nuance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e1a0794be782c704c612ebc4b1050b3e38529523c8a0bcd6d56b80a065ff98a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1005f7d7-4be5-5ff8-9457-9a1140aca781', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f2842b96-3b85-50a6-8830-bd5bdf4d5dfd', 1), '5e1a0794be782c704c612ebc4b1050b3e38529523c8a0bcd6d56b80a065ff98a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/22d784f1bfc70db939b77a8404ccce3a01cc7a2c0ba7e806a15f60c9499b9f00.mp3', 966, '2026-09-14 01:08:55.199293', '3e2f5fb14033ec4fd28c1b233d1d47c7e89594d5316e3a6d3cc521ab01d6370e', 'validated', '{"audio_key":"22d784f1bfc70db939b77a8404ccce3a01cc7a2c0ba7e806a15f60c9499b9f00","entity_key":"lx_humor_irony_and_cultural_nuance_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3e2f5fb14033ec4fd28c1b233d1d47c7e89594d5316e3a6d3cc521ab01d6370e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/22d784f1bfc70db939b77a8404ccce3a01cc7a2c0ba7e806a15f60c9499b9f00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_humor_irony_and_cultural_nuance_05 -> audio/generated/ko-KR/lexical/22d784f1bfc70db939b77a8404ccce3a01cc7a2c0ba7e806a15f60c9499b9f00.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fe55b7c8-ded1-5d96-9ba4-2328fcfd0ecc', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_humor_irony_and_cultural_nuance_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5e1a0794be782c704c612ebc4b1050b3e38529523c8a0bcd6d56b80a065ff98a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1236dcb-7071-5386-9202-6b3ef4036235', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fe55b7c8-ded1-5d96-9ba4-2328fcfd0ecc', 1), '5e1a0794be782c704c612ebc4b1050b3e38529523c8a0bcd6d56b80a065ff98a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/22d784f1bfc70db939b77a8404ccce3a01cc7a2c0ba7e806a15f60c9499b9f00.mp3', 966, '2026-09-14 01:08:55.199293', '3e2f5fb14033ec4fd28c1b233d1d47c7e89594d5316e3a6d3cc521ab01d6370e', 'validated', '{"audio_key":"22d784f1bfc70db939b77a8404ccce3a01cc7a2c0ba7e806a15f60c9499b9f00","entity_key":"wf_humor_irony_and_cultural_nuance_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3e2f5fb14033ec4fd28c1b233d1d47c7e89594d5316e3a6d3cc521ab01d6370e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/22d784f1bfc70db939b77a8404ccce3a01cc7a2c0ba7e806a15f60c9499b9f00.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_shifting_02 -> audio/generated/ko-KR/lexical/238f2b0e4cdae1e247a8376115bcb6e05cda484e46164b063413f676efba93e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7dcee612-2195-58df-8298-a51b417256ec', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_shifting_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd640205d8a166cd9657fd5524cbc957d90082b112b88879220eb0e0d077a64d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2ec2487-f211-55dc-b107-9b58cf9a7bf4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7dcee612-2195-58df-8298-a51b417256ec', 1), 'cd640205d8a166cd9657fd5524cbc957d90082b112b88879220eb0e0d077a64d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/238f2b0e4cdae1e247a8376115bcb6e05cda484e46164b063413f676efba93e8.mp3', 966, '2026-09-13 23:58:36.526161', 'bab2da158660e6a35332ac1e586b493b36811dba3bfa9577d0b6a45720b86c4c', 'validated', '{"audio_key":"238f2b0e4cdae1e247a8376115bcb6e05cda484e46164b063413f676efba93e8","entity_key":"lx_register_shifting_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bab2da158660e6a35332ac1e586b493b36811dba3bfa9577d0b6a45720b86c4c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/238f2b0e4cdae1e247a8376115bcb6e05cda484e46164b063413f676efba93e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_shifting_02 -> audio/generated/ko-KR/lexical/238f2b0e4cdae1e247a8376115bcb6e05cda484e46164b063413f676efba93e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b1629bd7-b0ef-50c3-a28b-e6ec6a1ae2b8', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_shifting_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd640205d8a166cd9657fd5524cbc957d90082b112b88879220eb0e0d077a64d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('85ffd69d-4be6-5184-999a-53cf819ce32a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b1629bd7-b0ef-50c3-a28b-e6ec6a1ae2b8', 1), 'cd640205d8a166cd9657fd5524cbc957d90082b112b88879220eb0e0d077a64d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/238f2b0e4cdae1e247a8376115bcb6e05cda484e46164b063413f676efba93e8.mp3', 966, '2026-09-13 23:58:36.526161', 'bab2da158660e6a35332ac1e586b493b36811dba3bfa9577d0b6a45720b86c4c', 'validated', '{"audio_key":"238f2b0e4cdae1e247a8376115bcb6e05cda484e46164b063413f676efba93e8","entity_key":"wf_register_shifting_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bab2da158660e6a35332ac1e586b493b36811dba3bfa9577d0b6a45720b86c4c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/238f2b0e4cdae1e247a8376115bcb6e05cda484e46164b063413f676efba93e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stance_and_hedging_03 -> audio/generated/ko-KR/lexical/2c25473f56075a5461f11ed2f5bcd77564cb81381826e1257c4d17117688e577.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('004d16fd-1563-522c-a4af-148241eded94', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stance_and_hedging_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a7fd9fbfca3998210afea9bdd9177695acffb1d45fa78e72d106818bf1de9a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87a0a067-9c77-575d-8583-2192da0ecf92', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('004d16fd-1563-522c-a4af-148241eded94', 1), '1a7fd9fbfca3998210afea9bdd9177695acffb1d45fa78e72d106818bf1de9a6',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/2c25473f56075a5461f11ed2f5bcd77564cb81381826e1257c4d17117688e577.mp3', 966, '2026-09-14 01:08:56.153450', 'cb0f2315f63b7c82a410ae268f675882ee3be9bef07f8e021a261ebbe423b633', 'validated', '{"audio_key":"2c25473f56075a5461f11ed2f5bcd77564cb81381826e1257c4d17117688e577","entity_key":"lx_stance_and_hedging_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cb0f2315f63b7c82a410ae268f675882ee3be9bef07f8e021a261ebbe423b633","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/2c25473f56075a5461f11ed2f5bcd77564cb81381826e1257c4d17117688e577.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stance_and_hedging_03 -> audio/generated/ko-KR/lexical/2c25473f56075a5461f11ed2f5bcd77564cb81381826e1257c4d17117688e577.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1555183d-91e4-598e-8a3d-4ec2371c07cf', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stance_and_hedging_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a7fd9fbfca3998210afea9bdd9177695acffb1d45fa78e72d106818bf1de9a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('02184a46-5d92-580a-9526-e4a3f29a25a7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1555183d-91e4-598e-8a3d-4ec2371c07cf', 1), '1a7fd9fbfca3998210afea9bdd9177695acffb1d45fa78e72d106818bf1de9a6',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/2c25473f56075a5461f11ed2f5bcd77564cb81381826e1257c4d17117688e577.mp3', 966, '2026-09-14 01:08:56.153450', 'cb0f2315f63b7c82a410ae268f675882ee3be9bef07f8e021a261ebbe423b633', 'validated', '{"audio_key":"2c25473f56075a5461f11ed2f5bcd77564cb81381826e1257c4d17117688e577","entity_key":"wf_stance_and_hedging_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cb0f2315f63b7c82a410ae268f675882ee3be9bef07f8e021a261ebbe423b633","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/2c25473f56075a5461f11ed2f5bcd77564cb81381826e1257c4d17117688e577.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_mediation_and_face_01 -> audio/generated/ko-KR/lexical/332c58b7aadca039f3ea60cc8e0e979e295a3e34a476a8f9c000f760bc34c1d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9f85aedc-0bea-5411-a6b4-fc03109007ee', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_mediation_and_face_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3dab6ac7ae7046bc9adf432b994dcd3056316dc71adfbf295aff271d3e38e460'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7470968-a219-5225-b910-be6d7fa07a24', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9f85aedc-0bea-5411-a6b4-fc03109007ee', 1), '3dab6ac7ae7046bc9adf432b994dcd3056316dc71adfbf295aff271d3e38e460',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/332c58b7aadca039f3ea60cc8e0e979e295a3e34a476a8f9c000f760bc34c1d6.mp3', 966, '2026-09-14 01:08:56.209416', '354e8199d7bc981a0b71baaea057609079b5aed0e29132de966544f0f034c595', 'validated', '{"audio_key":"332c58b7aadca039f3ea60cc8e0e979e295a3e34a476a8f9c000f760bc34c1d6","entity_key":"lx_formal_mediation_and_face_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"354e8199d7bc981a0b71baaea057609079b5aed0e29132de966544f0f034c595","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/332c58b7aadca039f3ea60cc8e0e979e295a3e34a476a8f9c000f760bc34c1d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_mediation_and_face_01 -> audio/generated/ko-KR/lexical/332c58b7aadca039f3ea60cc8e0e979e295a3e34a476a8f9c000f760bc34c1d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fab1a3ec-c0cc-552a-898f-c9013ef0f5b3', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_mediation_and_face_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3dab6ac7ae7046bc9adf432b994dcd3056316dc71adfbf295aff271d3e38e460'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('696d8f00-ee2e-5a33-9367-2a5edbbf37eb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fab1a3ec-c0cc-552a-898f-c9013ef0f5b3', 1), '3dab6ac7ae7046bc9adf432b994dcd3056316dc71adfbf295aff271d3e38e460',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/332c58b7aadca039f3ea60cc8e0e979e295a3e34a476a8f9c000f760bc34c1d6.mp3', 966, '2026-09-14 01:08:56.209416', '354e8199d7bc981a0b71baaea057609079b5aed0e29132de966544f0f034c595', 'validated', '{"audio_key":"332c58b7aadca039f3ea60cc8e0e979e295a3e34a476a8f9c000f760bc34c1d6","entity_key":"wf_formal_mediation_and_face_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"354e8199d7bc981a0b71baaea057609079b5aed0e29132de966544f0f034c595","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/332c58b7aadca039f3ea60cc8e0e979e295a3e34a476a8f9c000f760bc34c1d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_and_bureaucratic_korean_02 -> audio/generated/ko-KR/lexical/391a7b2220dfb8f1836d7762a8f81c9faff159743e0159d85d9f34bed0dc8f72.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('eda107a6-9f53-55e2-938d-4dc30d223144', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_and_bureaucratic_korean_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '132955c7d26f2ff68bbc60ef67477b97cc323f8a412fea239860ec42d1c55879'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7e17205-0e83-5a0a-943b-336881ae3094', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('eda107a6-9f53-55e2-938d-4dc30d223144', 1), '132955c7d26f2ff68bbc60ef67477b97cc323f8a412fea239860ec42d1c55879',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/391a7b2220dfb8f1836d7762a8f81c9faff159743e0159d85d9f34bed0dc8f72.mp3', 1018, '2026-09-13 23:58:39.534858', '14ec6c00133d9a68f36462364d2441577918c358e4f181d46bd7a75753773f25', 'validated', '{"audio_key":"391a7b2220dfb8f1836d7762a8f81c9faff159743e0159d85d9f34bed0dc8f72","entity_key":"lx_institutional_and_bureaucratic_korean_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"14ec6c00133d9a68f36462364d2441577918c358e4f181d46bd7a75753773f25","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/391a7b2220dfb8f1836d7762a8f81c9faff159743e0159d85d9f34bed0dc8f72.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_and_bureaucratic_korean_02 -> audio/generated/ko-KR/lexical/391a7b2220dfb8f1836d7762a8f81c9faff159743e0159d85d9f34bed0dc8f72.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cb10a2bd-3d86-5d7d-b0b9-5bfa9c2f5fbc', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_and_bureaucratic_korean_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '132955c7d26f2ff68bbc60ef67477b97cc323f8a412fea239860ec42d1c55879'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f5dd414c-1ac1-5c30-90ab-7a52a8bba13c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cb10a2bd-3d86-5d7d-b0b9-5bfa9c2f5fbc', 1), '132955c7d26f2ff68bbc60ef67477b97cc323f8a412fea239860ec42d1c55879',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/391a7b2220dfb8f1836d7762a8f81c9faff159743e0159d85d9f34bed0dc8f72.mp3', 1018, '2026-09-13 23:58:39.534858', '14ec6c00133d9a68f36462364d2441577918c358e4f181d46bd7a75753773f25', 'validated', '{"audio_key":"391a7b2220dfb8f1836d7762a8f81c9faff159743e0159d85d9f34bed0dc8f72","entity_key":"wf_institutional_and_bureaucratic_korean_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"14ec6c00133d9a68f36462364d2441577918c358e4f181d46bd7a75753773f25","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/391a7b2220dfb8f1836d7762a8f81c9faff159743e0159d85d9f34bed0dc8f72.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_implicit_meaning_and_subtext_05 -> audio/generated/ko-KR/lexical/3bbfa6aa9ae6bdf474d6f683feb7a848881171e81652e04a50cb99de7c614a94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a3e14ebd-b354-5a29-88f4-87874eec5020', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_implicit_meaning_and_subtext_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e2d6245630ee85fa9b860ff3554061978934847df460e46338190286e3366305'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5905e90-67f4-5500-9587-7c3fb3cce709', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a3e14ebd-b354-5a29-88f4-87874eec5020', 1), 'e2d6245630ee85fa9b860ff3554061978934847df460e46338190286e3366305',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/3bbfa6aa9ae6bdf474d6f683feb7a848881171e81652e04a50cb99de7c614a94.mp3', 1071, '2026-09-14 01:08:57.127465', 'b704ee6155c91716f0a5bffc59f8f96ba65d652f8d5afbe08ad5e3553ce3f8a8', 'validated', '{"audio_key":"3bbfa6aa9ae6bdf474d6f683feb7a848881171e81652e04a50cb99de7c614a94","entity_key":"lx_implicit_meaning_and_subtext_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b704ee6155c91716f0a5bffc59f8f96ba65d652f8d5afbe08ad5e3553ce3f8a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/3bbfa6aa9ae6bdf474d6f683feb7a848881171e81652e04a50cb99de7c614a94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_implicit_meaning_and_subtext_05 -> audio/generated/ko-KR/lexical/3bbfa6aa9ae6bdf474d6f683feb7a848881171e81652e04a50cb99de7c614a94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('939e8c6c-f3ad-5d2c-bcbc-adf8c8710367', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_implicit_meaning_and_subtext_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e2d6245630ee85fa9b860ff3554061978934847df460e46338190286e3366305'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc717b6a-97c1-5ea6-9f2d-37b9e67d1121', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('939e8c6c-f3ad-5d2c-bcbc-adf8c8710367', 1), 'e2d6245630ee85fa9b860ff3554061978934847df460e46338190286e3366305',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/3bbfa6aa9ae6bdf474d6f683feb7a848881171e81652e04a50cb99de7c614a94.mp3', 1071, '2026-09-14 01:08:57.127465', 'b704ee6155c91716f0a5bffc59f8f96ba65d652f8d5afbe08ad5e3553ce3f8a8', 'validated', '{"audio_key":"3bbfa6aa9ae6bdf474d6f683feb7a848881171e81652e04a50cb99de7c614a94","entity_key":"wf_implicit_meaning_and_subtext_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b704ee6155c91716f0a5bffc59f8f96ba65d652f8d5afbe08ad5e3553ce3f8a8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/3bbfa6aa9ae6bdf474d6f683feb7a848881171e81652e04a50cb99de7c614a94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_source_synthesis_and_framing_05 -> audio/generated/ko-KR/lexical/4317f3c59ecc181300903ced205de78c4d4f31187695f05f1d93e54fea099529.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0133cfbe-3138-5274-b586-550786a8ec9f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_source_synthesis_and_framing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '737fc1f6f7a0d89501f8d435be240977b151d1ac625716af193a8360a41a9f87'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5e3143f-1557-55a7-8af7-11577166ac3e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0133cfbe-3138-5274-b586-550786a8ec9f', 1), '737fc1f6f7a0d89501f8d435be240977b151d1ac625716af193a8360a41a9f87',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4317f3c59ecc181300903ced205de78c4d4f31187695f05f1d93e54fea099529.mp3', 1071, '2026-09-14 01:08:57.212297', '6652224defd2ba6e56225941fc10c3f2f49c4bf71d8420a56a8ec3ec76b01b4a', 'validated', '{"audio_key":"4317f3c59ecc181300903ced205de78c4d4f31187695f05f1d93e54fea099529","entity_key":"lx_source_synthesis_and_framing_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6652224defd2ba6e56225941fc10c3f2f49c4bf71d8420a56a8ec3ec76b01b4a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4317f3c59ecc181300903ced205de78c4d4f31187695f05f1d93e54fea099529.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_source_synthesis_and_framing_05 -> audio/generated/ko-KR/lexical/4317f3c59ecc181300903ced205de78c4d4f31187695f05f1d93e54fea099529.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4234e5d0-da8a-5757-be4c-801444d145c3', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_source_synthesis_and_framing_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '737fc1f6f7a0d89501f8d435be240977b151d1ac625716af193a8360a41a9f87'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cae88b19-a872-5d0e-b8ae-2aeca07aee93', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4234e5d0-da8a-5757-be4c-801444d145c3', 1), '737fc1f6f7a0d89501f8d435be240977b151d1ac625716af193a8360a41a9f87',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4317f3c59ecc181300903ced205de78c4d4f31187695f05f1d93e54fea099529.mp3', 1071, '2026-09-14 01:08:57.212297', '6652224defd2ba6e56225941fc10c3f2f49c4bf71d8420a56a8ec3ec76b01b4a', 'validated', '{"audio_key":"4317f3c59ecc181300903ced205de78c4d4f31187695f05f1d93e54fea099529","entity_key":"wf_source_synthesis_and_framing_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6652224defd2ba6e56225941fc10c3f2f49c4bf71d8420a56a8ec3ec76b01b4a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4317f3c59ecc181300903ced205de78c4d4f31187695f05f1d93e54fea099529.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_mediation_and_face_05 -> audio/generated/ko-KR/lexical/440d571ffdbe8f97821739b57fda746914ca24d6e73731dd7069e2323970a442.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('30b65272-d97b-59ac-b34f-a4f8714d9cf8', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_mediation_and_face_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c921269f86ce84f722e33aee683883a41f3fb218c03d81eaffc691e19ce5b68'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8a42f44-7f4e-5727-a7a5-bbb8a1b989b9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('30b65272-d97b-59ac-b34f-a4f8714d9cf8', 1), '5c921269f86ce84f722e33aee683883a41f3fb218c03d81eaffc691e19ce5b68',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/440d571ffdbe8f97821739b57fda746914ca24d6e73731dd7069e2323970a442.mp3', 966, '2026-09-14 01:08:58.172788', '253f552abb79b56bcd2baf25193ac66b7e8f0beb9e120cc90114a03e4c7fef10', 'validated', '{"audio_key":"440d571ffdbe8f97821739b57fda746914ca24d6e73731dd7069e2323970a442","entity_key":"lx_formal_mediation_and_face_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"253f552abb79b56bcd2baf25193ac66b7e8f0beb9e120cc90114a03e4c7fef10","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/440d571ffdbe8f97821739b57fda746914ca24d6e73731dd7069e2323970a442.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_mediation_and_face_05 -> audio/generated/ko-KR/lexical/440d571ffdbe8f97821739b57fda746914ca24d6e73731dd7069e2323970a442.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1f0caad4-2397-543b-a9f5-cce56118a5a0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_mediation_and_face_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5c921269f86ce84f722e33aee683883a41f3fb218c03d81eaffc691e19ce5b68'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e42333d-d077-56a5-86bd-fa1663976278', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1f0caad4-2397-543b-a9f5-cce56118a5a0', 1), '5c921269f86ce84f722e33aee683883a41f3fb218c03d81eaffc691e19ce5b68',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/440d571ffdbe8f97821739b57fda746914ca24d6e73731dd7069e2323970a442.mp3', 966, '2026-09-14 01:08:58.172788', '253f552abb79b56bcd2baf25193ac66b7e8f0beb9e120cc90114a03e4c7fef10', 'validated', '{"audio_key":"440d571ffdbe8f97821739b57fda746914ca24d6e73731dd7069e2323970a442","entity_key":"wf_formal_mediation_and_face_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"253f552abb79b56bcd2baf25193ac66b7e8f0beb9e120cc90114a03e4c7fef10","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/440d571ffdbe8f97821739b57fda746914ca24d6e73731dd7069e2323970a442.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c1_seoul_policy_forum_capstone_01 -> audio/generated/ko-KR/lexical/4444eb2fff496cb548cb8d01cac310876e039f4256d7f137ea6abad8358ff1ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('de92040b-ce62-58f9-8360-58f0069813c4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c1_seoul_policy_forum_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd160902bdf2c3007070ac41c7850b8a8051b4804ddd6eae92d7d8e4fd5de120a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7cbcbe20-622a-502b-8025-a0dea8d9b22a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('de92040b-ce62-58f9-8360-58f0069813c4', 1), 'd160902bdf2c3007070ac41c7850b8a8051b4804ddd6eae92d7d8e4fd5de120a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4444eb2fff496cb548cb8d01cac310876e039f4256d7f137ea6abad8358ff1ae.mp3', 1071, '2026-09-13 23:58:40.556017', '29826006369fd1ac07e43997413c2d2424fb5b0651df2e421505895f07bfe76d', 'validated', '{"audio_key":"4444eb2fff496cb548cb8d01cac310876e039f4256d7f137ea6abad8358ff1ae","entity_key":"lx_c1_seoul_policy_forum_capstone_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"29826006369fd1ac07e43997413c2d2424fb5b0651df2e421505895f07bfe76d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4444eb2fff496cb548cb8d01cac310876e039f4256d7f137ea6abad8358ff1ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c1_seoul_policy_forum_capstone_01 -> audio/generated/ko-KR/lexical/4444eb2fff496cb548cb8d01cac310876e039f4256d7f137ea6abad8358ff1ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7f4fe3ce-7bf6-51b5-b000-b4d02d75c48e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c1_seoul_policy_forum_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd160902bdf2c3007070ac41c7850b8a8051b4804ddd6eae92d7d8e4fd5de120a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('494cde83-5ba0-574d-a863-0446d2706122', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7f4fe3ce-7bf6-51b5-b000-b4d02d75c48e', 1), 'd160902bdf2c3007070ac41c7850b8a8051b4804ddd6eae92d7d8e4fd5de120a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4444eb2fff496cb548cb8d01cac310876e039f4256d7f137ea6abad8358ff1ae.mp3', 1071, '2026-09-13 23:58:40.556017', '29826006369fd1ac07e43997413c2d2424fb5b0651df2e421505895f07bfe76d', 'validated', '{"audio_key":"4444eb2fff496cb548cb8d01cac310876e039f4256d7f137ea6abad8358ff1ae","entity_key":"wf_c1_seoul_policy_forum_capstone_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"29826006369fd1ac07e43997413c2d2424fb5b0651df2e421505895f07bfe76d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4444eb2fff496cb548cb8d01cac310876e039f4256d7f137ea6abad8358ff1ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_and_bureaucratic_korean_01 -> audio/generated/ko-KR/lexical/46f8ca1957f0fa27b1f2c7e0fa50dcb216fd62b6a70b3fb9b22bfe077976908b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8bbf5549-9ef5-51a1-9275-b9be98b18ea9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_and_bureaucratic_korean_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60c30d687c510294917cb943ba461ee2f7d9fd48de1cdcdf27c5b3fe696c7818'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3e1194d-8a76-53c6-8c86-f9e52906939e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8bbf5549-9ef5-51a1-9275-b9be98b18ea9', 1), '60c30d687c510294917cb943ba461ee2f7d9fd48de1cdcdf27c5b3fe696c7818',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/46f8ca1957f0fa27b1f2c7e0fa50dcb216fd62b6a70b3fb9b22bfe077976908b.mp3', 1071, '2026-09-14 01:08:58.284796', '34241f061a5153f98f720fe935506c6c4b612c4ac001e335dc753c78d1632ed9', 'validated', '{"audio_key":"46f8ca1957f0fa27b1f2c7e0fa50dcb216fd62b6a70b3fb9b22bfe077976908b","entity_key":"lx_institutional_and_bureaucratic_korean_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"34241f061a5153f98f720fe935506c6c4b612c4ac001e335dc753c78d1632ed9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/46f8ca1957f0fa27b1f2c7e0fa50dcb216fd62b6a70b3fb9b22bfe077976908b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_and_bureaucratic_korean_01 -> audio/generated/ko-KR/lexical/46f8ca1957f0fa27b1f2c7e0fa50dcb216fd62b6a70b3fb9b22bfe077976908b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('782e3270-364d-5f24-a994-38ab616ab0b6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_and_bureaucratic_korean_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '60c30d687c510294917cb943ba461ee2f7d9fd48de1cdcdf27c5b3fe696c7818'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb0326e2-4229-5995-89fa-e9741cfe474d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('782e3270-364d-5f24-a994-38ab616ab0b6', 1), '60c30d687c510294917cb943ba461ee2f7d9fd48de1cdcdf27c5b3fe696c7818',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/46f8ca1957f0fa27b1f2c7e0fa50dcb216fd62b6a70b3fb9b22bfe077976908b.mp3', 1071, '2026-09-14 01:08:58.284796', '34241f061a5153f98f720fe935506c6c4b612c4ac001e335dc753c78d1632ed9', 'validated', '{"audio_key":"46f8ca1957f0fa27b1f2c7e0fa50dcb216fd62b6a70b3fb9b22bfe077976908b","entity_key":"wf_institutional_and_bureaucratic_korean_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"34241f061a5153f98f720fe935506c6c4b612c4ac001e335dc753c78d1632ed9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/46f8ca1957f0fa27b1f2c7e0fa50dcb216fd62b6a70b3fb9b22bfe077976908b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_precision_reformulation_06 -> audio/generated/ko-KR/lexical/483dcea350a111455fecb61513d4f444acce2d8460f87b9758c7a6115145f2da.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2135f22f-1b96-5f04-b2f6-246c4ac548d7', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_precision_reformulation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a317fe4511680982e2e2e42c79549fd0d5d8b9d6da9f739ca91b06ef2151015d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a297824d-5e05-57cd-b24d-ba7f73cd96cb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2135f22f-1b96-5f04-b2f6-246c4ac548d7', 1), 'a317fe4511680982e2e2e42c79549fd0d5d8b9d6da9f739ca91b06ef2151015d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/483dcea350a111455fecb61513d4f444acce2d8460f87b9758c7a6115145f2da.mp3', 1018, '2026-09-14 01:08:59.168450', 'c316e6e09bd444dc483c572b4db1b2bd527be9514a8597f617f8187a87c737d5', 'validated', '{"audio_key":"483dcea350a111455fecb61513d4f444acce2d8460f87b9758c7a6115145f2da","entity_key":"lx_precision_reformulation_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c316e6e09bd444dc483c572b4db1b2bd527be9514a8597f617f8187a87c737d5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/483dcea350a111455fecb61513d4f444acce2d8460f87b9758c7a6115145f2da.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_precision_reformulation_06 -> audio/generated/ko-KR/lexical/483dcea350a111455fecb61513d4f444acce2d8460f87b9758c7a6115145f2da.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b8bfc225-cfa6-5aa9-959a-c9f6ac94992b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_precision_reformulation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a317fe4511680982e2e2e42c79549fd0d5d8b9d6da9f739ca91b06ef2151015d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d85bbdaf-cf20-5e0a-b232-d0e746d826ec', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b8bfc225-cfa6-5aa9-959a-c9f6ac94992b', 1), 'a317fe4511680982e2e2e42c79549fd0d5d8b9d6da9f739ca91b06ef2151015d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/483dcea350a111455fecb61513d4f444acce2d8460f87b9758c7a6115145f2da.mp3', 1018, '2026-09-14 01:08:59.168450', 'c316e6e09bd444dc483c572b4db1b2bd527be9514a8597f617f8187a87c737d5', 'validated', '{"audio_key":"483dcea350a111455fecb61513d4f444acce2d8460f87b9758c7a6115145f2da","entity_key":"wf_precision_reformulation_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c316e6e09bd444dc483c572b4db1b2bd527be9514a8597f617f8187a87c737d5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/483dcea350a111455fecb61513d4f444acce2d8460f87b9758c7a6115145f2da.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_implicit_meaning_and_subtext_03 -> audio/generated/ko-KR/lexical/4bbcfb41bd77c2b301931087a7b5f4f1ebe19bb761a2d94ecd1918c4115770f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a00aa48c-eae8-5523-8137-c691cbbb2dd2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_implicit_meaning_and_subtext_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a953d36cace4abd146b2e9b29ad8ef9d0ed8e3484801fd00672f53371c56fe8f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7de7e04-3ecb-58ed-ac34-f9e8fce268a4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a00aa48c-eae8-5523-8137-c691cbbb2dd2', 1), 'a953d36cace4abd146b2e9b29ad8ef9d0ed8e3484801fd00672f53371c56fe8f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4bbcfb41bd77c2b301931087a7b5f4f1ebe19bb761a2d94ecd1918c4115770f5.mp3', 1097, '2026-09-14 01:08:59.272064', 'ba3fe8a50010e53e571c35a778ff027bbd17d9a25e5e85f8e682450edd28eaf7', 'validated', '{"audio_key":"4bbcfb41bd77c2b301931087a7b5f4f1ebe19bb761a2d94ecd1918c4115770f5","entity_key":"lx_implicit_meaning_and_subtext_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ba3fe8a50010e53e571c35a778ff027bbd17d9a25e5e85f8e682450edd28eaf7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4bbcfb41bd77c2b301931087a7b5f4f1ebe19bb761a2d94ecd1918c4115770f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_implicit_meaning_and_subtext_03 -> audio/generated/ko-KR/lexical/4bbcfb41bd77c2b301931087a7b5f4f1ebe19bb761a2d94ecd1918c4115770f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b9660b99-51f1-5fef-8725-8b7387542ae2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_implicit_meaning_and_subtext_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a953d36cace4abd146b2e9b29ad8ef9d0ed8e3484801fd00672f53371c56fe8f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e7398f9e-563b-5a38-a365-46980a7bfe61', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b9660b99-51f1-5fef-8725-8b7387542ae2', 1), 'a953d36cace4abd146b2e9b29ad8ef9d0ed8e3484801fd00672f53371c56fe8f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4bbcfb41bd77c2b301931087a7b5f4f1ebe19bb761a2d94ecd1918c4115770f5.mp3', 1097, '2026-09-14 01:08:59.272064', 'ba3fe8a50010e53e571c35a778ff027bbd17d9a25e5e85f8e682450edd28eaf7', 'validated', '{"audio_key":"4bbcfb41bd77c2b301931087a7b5f4f1ebe19bb761a2d94ecd1918c4115770f5","entity_key":"wf_implicit_meaning_and_subtext_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ba3fe8a50010e53e571c35a778ff027bbd17d9a25e5e85f8e682450edd28eaf7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4bbcfb41bd77c2b301931087a7b5f4f1ebe19bb761a2d94ecd1918c4115770f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_implicit_meaning_and_subtext_06 -> audio/generated/ko-KR/lexical/4c0903927bab0b2ba1444c84ee507df4a705b1a5cf76014655aac93e07d99e28.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d9b37144-7ce1-5bab-b02f-7b796877914c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_implicit_meaning_and_subtext_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8967ec940a3a6a8827bd13c9c4bb7354b81d0738cce8c025c5d1c9653add09a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a28370a-0cd7-54b1-ba7a-a2730769e6f2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d9b37144-7ce1-5bab-b02f-7b796877914c', 1), '8967ec940a3a6a8827bd13c9c4bb7354b81d0738cce8c025c5d1c9653add09a6',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4c0903927bab0b2ba1444c84ee507df4a705b1a5cf76014655aac93e07d99e28.mp3', 1201, '2026-09-14 01:09:00.167204', '94c96801cc3e32143768edeff087c5d256849dc108ac0678ee17576e4fcf756f', 'validated', '{"audio_key":"4c0903927bab0b2ba1444c84ee507df4a705b1a5cf76014655aac93e07d99e28","entity_key":"lx_implicit_meaning_and_subtext_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"94c96801cc3e32143768edeff087c5d256849dc108ac0678ee17576e4fcf756f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4c0903927bab0b2ba1444c84ee507df4a705b1a5cf76014655aac93e07d99e28.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_implicit_meaning_and_subtext_06 -> audio/generated/ko-KR/lexical/4c0903927bab0b2ba1444c84ee507df4a705b1a5cf76014655aac93e07d99e28.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d61e7348-c454-55d9-b07b-cc68c8bdcc78', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_implicit_meaning_and_subtext_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8967ec940a3a6a8827bd13c9c4bb7354b81d0738cce8c025c5d1c9653add09a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7e14a81-28d2-5685-adc3-97049219e4f5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d61e7348-c454-55d9-b07b-cc68c8bdcc78', 1), '8967ec940a3a6a8827bd13c9c4bb7354b81d0738cce8c025c5d1c9653add09a6',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4c0903927bab0b2ba1444c84ee507df4a705b1a5cf76014655aac93e07d99e28.mp3', 1201, '2026-09-14 01:09:00.167204', '94c96801cc3e32143768edeff087c5d256849dc108ac0678ee17576e4fcf756f', 'validated', '{"audio_key":"4c0903927bab0b2ba1444c84ee507df4a705b1a5cf76014655aac93e07d99e28","entity_key":"wf_implicit_meaning_and_subtext_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"94c96801cc3e32143768edeff087c5d256849dc108ac0678ee17576e4fcf756f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4c0903927bab0b2ba1444c84ee507df4a705b1a5cf76014655aac93e07d99e28.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_argument_structure_01 -> audio/generated/ko-KR/lexical/4cd3e2dc144e90c2cf8bf97ddac2e077a79dfd11fac45bd9de3c21c9181221ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('078b669e-6e7e-5477-bce9-a3124bada255', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_argument_structure_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f1ee37c61c9d919e37999e9f6bc075bf3407f66ac5c0b7c90c4a6ef059d8ea3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9c4a433-1557-5cd4-9059-13619f2c6071', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('078b669e-6e7e-5477-bce9-a3124bada255', 1), '3f1ee37c61c9d919e37999e9f6bc075bf3407f66ac5c0b7c90c4a6ef059d8ea3',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4cd3e2dc144e90c2cf8bf97ddac2e077a79dfd11fac45bd9de3c21c9181221ef.mp3', 1097, '2026-09-14 01:09:00.365667', 'df09ab47f05396e516b9b693acdf2cdc0d46bc56fcd63f8501be8f45f0461c98', 'validated', '{"audio_key":"4cd3e2dc144e90c2cf8bf97ddac2e077a79dfd11fac45bd9de3c21c9181221ef","entity_key":"lx_argument_structure_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"df09ab47f05396e516b9b693acdf2cdc0d46bc56fcd63f8501be8f45f0461c98","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4cd3e2dc144e90c2cf8bf97ddac2e077a79dfd11fac45bd9de3c21c9181221ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_argument_structure_01 -> audio/generated/ko-KR/lexical/4cd3e2dc144e90c2cf8bf97ddac2e077a79dfd11fac45bd9de3c21c9181221ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b1a80295-5eb3-5625-bb45-0150417d7f2f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_argument_structure_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f1ee37c61c9d919e37999e9f6bc075bf3407f66ac5c0b7c90c4a6ef059d8ea3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7f90292-5f07-56dc-9cc3-489f43d257b6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b1a80295-5eb3-5625-bb45-0150417d7f2f', 1), '3f1ee37c61c9d919e37999e9f6bc075bf3407f66ac5c0b7c90c4a6ef059d8ea3',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4cd3e2dc144e90c2cf8bf97ddac2e077a79dfd11fac45bd9de3c21c9181221ef.mp3', 1097, '2026-09-14 01:09:00.365667', 'df09ab47f05396e516b9b693acdf2cdc0d46bc56fcd63f8501be8f45f0461c98', 'validated', '{"audio_key":"4cd3e2dc144e90c2cf8bf97ddac2e077a79dfd11fac45bd9de3c21c9181221ef","entity_key":"wf_argument_structure_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"df09ab47f05396e516b9b693acdf2cdc0d46bc56fcd63f8501be8f45f0461c98","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4cd3e2dc144e90c2cf8bf97ddac2e077a79dfd11fac45bd9de3c21c9181221ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c1_seoul_policy_forum_capstone_06 -> audio/generated/ko-KR/lexical/4d5415ae614b95ee7a03d19fe8353831e0cc0c28a54e09fd40383a7fd0d6658a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1074090e-31d0-5a04-a7fe-eda387114ed0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c1_seoul_policy_forum_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd9e8885b1d9be68bef6c2200bb29a19195d412b691dc7a1b53ac106e89b96a07'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('16a11a99-43c1-5271-b248-3989c5cb7804', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1074090e-31d0-5a04-a7fe-eda387114ed0', 1), 'd9e8885b1d9be68bef6c2200bb29a19195d412b691dc7a1b53ac106e89b96a07',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4d5415ae614b95ee7a03d19fe8353831e0cc0c28a54e09fd40383a7fd0d6658a.mp3', 966, '2026-09-13 23:58:41.535467', '4bc2208ed31caaec17343e73312f892f553cc720e3004bc74dddc51a8cf3ac02', 'validated', '{"audio_key":"4d5415ae614b95ee7a03d19fe8353831e0cc0c28a54e09fd40383a7fd0d6658a","entity_key":"lx_c1_seoul_policy_forum_capstone_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4bc2208ed31caaec17343e73312f892f553cc720e3004bc74dddc51a8cf3ac02","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4d5415ae614b95ee7a03d19fe8353831e0cc0c28a54e09fd40383a7fd0d6658a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c1_seoul_policy_forum_capstone_06 -> audio/generated/ko-KR/lexical/4d5415ae614b95ee7a03d19fe8353831e0cc0c28a54e09fd40383a7fd0d6658a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5131865c-fbf7-5f18-96af-058c3a88d7bf', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c1_seoul_policy_forum_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd9e8885b1d9be68bef6c2200bb29a19195d412b691dc7a1b53ac106e89b96a07'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0d721a7-7435-5e62-b39d-3cbdf1057c3b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5131865c-fbf7-5f18-96af-058c3a88d7bf', 1), 'd9e8885b1d9be68bef6c2200bb29a19195d412b691dc7a1b53ac106e89b96a07',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4d5415ae614b95ee7a03d19fe8353831e0cc0c28a54e09fd40383a7fd0d6658a.mp3', 966, '2026-09-13 23:58:41.535467', '4bc2208ed31caaec17343e73312f892f553cc720e3004bc74dddc51a8cf3ac02', 'validated', '{"audio_key":"4d5415ae614b95ee7a03d19fe8353831e0cc0c28a54e09fd40383a7fd0d6658a","entity_key":"wf_c1_seoul_policy_forum_capstone_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4bc2208ed31caaec17343e73312f892f553cc720e3004bc74dddc51a8cf3ac02","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4d5415ae614b95ee7a03d19fe8353831e0cc0c28a54e09fd40383a7fd0d6658a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_implicit_meaning_and_subtext_02 -> audio/generated/ko-KR/lexical/4d637a0f8bb0031a46f456bd537b75626e172ecfb294a9e7c47633baa6b10ffe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('53060a45-b48b-5ef8-b69d-7356b3cb0b9d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_implicit_meaning_and_subtext_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1709b5fb2ae5ddb3fdbad0f7ab1eb4cf3e5da2562a9ecaa10bfc10fbd5f4615'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a0eeb2c-c011-557b-9409-12cc81679ecd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('53060a45-b48b-5ef8-b69d-7356b3cb0b9d', 1), 'a1709b5fb2ae5ddb3fdbad0f7ab1eb4cf3e5da2562a9ecaa10bfc10fbd5f4615',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4d637a0f8bb0031a46f456bd537b75626e172ecfb294a9e7c47633baa6b10ffe.mp3', 966, '2026-09-14 01:09:01.187614', '0dcb866aa85441992067b8738ba3c3e209f5a26bc7737ce3adebf712447a1105', 'validated', '{"audio_key":"4d637a0f8bb0031a46f456bd537b75626e172ecfb294a9e7c47633baa6b10ffe","entity_key":"lx_implicit_meaning_and_subtext_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0dcb866aa85441992067b8738ba3c3e209f5a26bc7737ce3adebf712447a1105","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4d637a0f8bb0031a46f456bd537b75626e172ecfb294a9e7c47633baa6b10ffe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_implicit_meaning_and_subtext_02 -> audio/generated/ko-KR/lexical/4d637a0f8bb0031a46f456bd537b75626e172ecfb294a9e7c47633baa6b10ffe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('644afaff-835d-5cc7-a174-3bb655df9b8d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_implicit_meaning_and_subtext_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a1709b5fb2ae5ddb3fdbad0f7ab1eb4cf3e5da2562a9ecaa10bfc10fbd5f4615'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('44b38f4c-9b53-54fc-bb2b-279b63caf1b5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('644afaff-835d-5cc7-a174-3bb655df9b8d', 1), 'a1709b5fb2ae5ddb3fdbad0f7ab1eb4cf3e5da2562a9ecaa10bfc10fbd5f4615',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4d637a0f8bb0031a46f456bd537b75626e172ecfb294a9e7c47633baa6b10ffe.mp3', 966, '2026-09-14 01:09:01.187614', '0dcb866aa85441992067b8738ba3c3e209f5a26bc7737ce3adebf712447a1105', 'validated', '{"audio_key":"4d637a0f8bb0031a46f456bd537b75626e172ecfb294a9e7c47633baa6b10ffe","entity_key":"wf_implicit_meaning_and_subtext_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0dcb866aa85441992067b8738ba3c3e209f5a26bc7737ce3adebf712447a1105","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4d637a0f8bb0031a46f456bd537b75626e172ecfb294a9e7c47633baa6b10ffe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_and_bureaucratic_korean_04 -> audio/generated/ko-KR/lexical/51197853ae656a6e6cc041ed83ab88c39c7539be19c4a9d229d9e22469023b47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('51d2ffa3-d4ad-5500-9d79-54f689ef9658', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_and_bureaucratic_korean_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e61f66b37a8f3d8ce034c23a1dc36e64310623b3c5eff30fde719b8c1ae188af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cd1bc011-2431-5295-80d8-c36c995c1df9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('51d2ffa3-d4ad-5500-9d79-54f689ef9658', 1), 'e61f66b37a8f3d8ce034c23a1dc36e64310623b3c5eff30fde719b8c1ae188af',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/51197853ae656a6e6cc041ed83ab88c39c7539be19c4a9d229d9e22469023b47.mp3', 1097, '2026-09-14 01:09:01.366650', '6e772a3a98700020da97b98050a56f106104a335fe5bdfc7feb3a13ebb97322d', 'validated', '{"audio_key":"51197853ae656a6e6cc041ed83ab88c39c7539be19c4a9d229d9e22469023b47","entity_key":"lx_institutional_and_bureaucratic_korean_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6e772a3a98700020da97b98050a56f106104a335fe5bdfc7feb3a13ebb97322d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/51197853ae656a6e6cc041ed83ab88c39c7539be19c4a9d229d9e22469023b47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_and_bureaucratic_korean_04 -> audio/generated/ko-KR/lexical/51197853ae656a6e6cc041ed83ab88c39c7539be19c4a9d229d9e22469023b47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('beaceb46-4226-505b-8a4a-2adfc859c461', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_and_bureaucratic_korean_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e61f66b37a8f3d8ce034c23a1dc36e64310623b3c5eff30fde719b8c1ae188af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e0e176c-5d71-5583-8e00-359de537f820', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('beaceb46-4226-505b-8a4a-2adfc859c461', 1), 'e61f66b37a8f3d8ce034c23a1dc36e64310623b3c5eff30fde719b8c1ae188af',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/51197853ae656a6e6cc041ed83ab88c39c7539be19c4a9d229d9e22469023b47.mp3', 1097, '2026-09-14 01:09:01.366650', '6e772a3a98700020da97b98050a56f106104a335fe5bdfc7feb3a13ebb97322d', 'validated', '{"audio_key":"51197853ae656a6e6cc041ed83ab88c39c7539be19c4a9d229d9e22469023b47","entity_key":"wf_institutional_and_bureaucratic_korean_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6e772a3a98700020da97b98050a56f106104a335fe5bdfc7feb3a13ebb97322d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/51197853ae656a6e6cc041ed83ab88c39c7539be19c4a9d229d9e22469023b47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_precision_reformulation_05 -> audio/generated/ko-KR/lexical/551f04c2a5b9ac54c8c855b7a652f3ea6813033dd49d6e15ab27f2f53a01cd6f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('13450ca4-c5d9-504d-9672-4f9a22871897', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_precision_reformulation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f279469d90b7f150964c7b72b66a08d4df2d545b9caff5b5f69a41c86c34ef79'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd636859-4bb7-5a14-863d-986175dc31a6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('13450ca4-c5d9-504d-9672-4f9a22871897', 1), 'f279469d90b7f150964c7b72b66a08d4df2d545b9caff5b5f69a41c86c34ef79',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/551f04c2a5b9ac54c8c855b7a652f3ea6813033dd49d6e15ab27f2f53a01cd6f.mp3', 1097, '2026-09-14 01:09:02.226490', '4e3e7232d26ff1e1d7f5427d7ec22bb0fb099746f802f0c28396e79ed3c7199a', 'validated', '{"audio_key":"551f04c2a5b9ac54c8c855b7a652f3ea6813033dd49d6e15ab27f2f53a01cd6f","entity_key":"lx_precision_reformulation_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4e3e7232d26ff1e1d7f5427d7ec22bb0fb099746f802f0c28396e79ed3c7199a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/551f04c2a5b9ac54c8c855b7a652f3ea6813033dd49d6e15ab27f2f53a01cd6f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_precision_reformulation_05 -> audio/generated/ko-KR/lexical/551f04c2a5b9ac54c8c855b7a652f3ea6813033dd49d6e15ab27f2f53a01cd6f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3436a2a2-fd53-559c-bc8a-2a606140c323', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_precision_reformulation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f279469d90b7f150964c7b72b66a08d4df2d545b9caff5b5f69a41c86c34ef79'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aad27605-10de-5b90-bcc1-c1452f3d8fce', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3436a2a2-fd53-559c-bc8a-2a606140c323', 1), 'f279469d90b7f150964c7b72b66a08d4df2d545b9caff5b5f69a41c86c34ef79',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/551f04c2a5b9ac54c8c855b7a652f3ea6813033dd49d6e15ab27f2f53a01cd6f.mp3', 1097, '2026-09-14 01:09:02.226490', '4e3e7232d26ff1e1d7f5427d7ec22bb0fb099746f802f0c28396e79ed3c7199a', 'validated', '{"audio_key":"551f04c2a5b9ac54c8c855b7a652f3ea6813033dd49d6e15ab27f2f53a01cd6f","entity_key":"wf_precision_reformulation_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4e3e7232d26ff1e1d7f5427d7ec22bb0fb099746f802f0c28396e79ed3c7199a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/551f04c2a5b9ac54c8c855b7a652f3ea6813033dd49d6e15ab27f2f53a01cd6f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_shifting_05 -> audio/generated/ko-KR/lexical/58c4dec2375f3157e7135cc160dc72e3b0bbf02d78e27c31fd34148baff9ca1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('93925ab8-9c40-5ac3-8b7e-d5ccb4eea626', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_shifting_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd014ba71f2b7ef4bcd018f0cc29b8deed5cbaf38fff4bbb291d5369500a8a100'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8119852-0b00-5f55-84da-4084891fd9c3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('93925ab8-9c40-5ac3-8b7e-d5ccb4eea626', 1), 'd014ba71f2b7ef4bcd018f0cc29b8deed5cbaf38fff4bbb291d5369500a8a100',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/58c4dec2375f3157e7135cc160dc72e3b0bbf02d78e27c31fd34148baff9ca1d.mp3', 862, '2026-09-14 01:09:02.331104', 'b3f71d5b4a35c494c700bbbbc4418bb407928eed15282a4d0b41a981ad9fd194', 'validated', '{"audio_key":"58c4dec2375f3157e7135cc160dc72e3b0bbf02d78e27c31fd34148baff9ca1d","entity_key":"lx_register_shifting_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b3f71d5b4a35c494c700bbbbc4418bb407928eed15282a4d0b41a981ad9fd194","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/58c4dec2375f3157e7135cc160dc72e3b0bbf02d78e27c31fd34148baff9ca1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_shifting_05 -> audio/generated/ko-KR/lexical/58c4dec2375f3157e7135cc160dc72e3b0bbf02d78e27c31fd34148baff9ca1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('89c7b36c-52fb-5747-baf0-9f7177fb333f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_shifting_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd014ba71f2b7ef4bcd018f0cc29b8deed5cbaf38fff4bbb291d5369500a8a100'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3e2b861-23a2-519e-96e2-fa7c07b375fa', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('89c7b36c-52fb-5747-baf0-9f7177fb333f', 1), 'd014ba71f2b7ef4bcd018f0cc29b8deed5cbaf38fff4bbb291d5369500a8a100',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/58c4dec2375f3157e7135cc160dc72e3b0bbf02d78e27c31fd34148baff9ca1d.mp3', 862, '2026-09-14 01:09:02.331104', 'b3f71d5b4a35c494c700bbbbc4418bb407928eed15282a4d0b41a981ad9fd194', 'validated', '{"audio_key":"58c4dec2375f3157e7135cc160dc72e3b0bbf02d78e27c31fd34148baff9ca1d","entity_key":"wf_register_shifting_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b3f71d5b4a35c494c700bbbbc4418bb407928eed15282a4d0b41a981ad9fd194","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/58c4dec2375f3157e7135cc160dc72e3b0bbf02d78e27c31fd34148baff9ca1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_source_synthesis_and_framing_02 -> audio/generated/ko-KR/lexical/59b96adc67e34f18c68d3fcde07883caa1632056d572b2fd7d0b61912e6383e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ab3f36cb-9871-564b-9fe4-7fd07e615d09', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_source_synthesis_and_framing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e8cfa0baa0aa18dcb0a4bc18bc308057a7d75a1582fc20a9d8522a7d688ba83a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5a43240-9332-5909-8e2f-a8367a6b26f4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ab3f36cb-9871-564b-9fe4-7fd07e615d09', 1), 'e8cfa0baa0aa18dcb0a4bc18bc308057a7d75a1582fc20a9d8522a7d688ba83a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/59b96adc67e34f18c68d3fcde07883caa1632056d572b2fd7d0b61912e6383e1.mp3', 1149, '2026-09-14 01:09:03.243986', 'fa9546af23b393efc74032a4d3bdecef9b0b2429dca7a10a389994cee1cc159b', 'validated', '{"audio_key":"59b96adc67e34f18c68d3fcde07883caa1632056d572b2fd7d0b61912e6383e1","entity_key":"lx_source_synthesis_and_framing_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fa9546af23b393efc74032a4d3bdecef9b0b2429dca7a10a389994cee1cc159b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/59b96adc67e34f18c68d3fcde07883caa1632056d572b2fd7d0b61912e6383e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_source_synthesis_and_framing_02 -> audio/generated/ko-KR/lexical/59b96adc67e34f18c68d3fcde07883caa1632056d572b2fd7d0b61912e6383e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('11e64e04-8df4-5229-a773-44f22257a393', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_source_synthesis_and_framing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e8cfa0baa0aa18dcb0a4bc18bc308057a7d75a1582fc20a9d8522a7d688ba83a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c5ab1020-2053-5649-afac-b81717802c5f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('11e64e04-8df4-5229-a773-44f22257a393', 1), 'e8cfa0baa0aa18dcb0a4bc18bc308057a7d75a1582fc20a9d8522a7d688ba83a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/59b96adc67e34f18c68d3fcde07883caa1632056d572b2fd7d0b61912e6383e1.mp3', 1149, '2026-09-14 01:09:03.243986', 'fa9546af23b393efc74032a4d3bdecef9b0b2429dca7a10a389994cee1cc159b', 'validated', '{"audio_key":"59b96adc67e34f18c68d3fcde07883caa1632056d572b2fd7d0b61912e6383e1","entity_key":"wf_source_synthesis_and_framing_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fa9546af23b393efc74032a4d3bdecef9b0b2429dca7a10a389994cee1cc159b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/59b96adc67e34f18c68d3fcde07883caa1632056d572b2fd7d0b61912e6383e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stance_and_hedging_02 -> audio/generated/ko-KR/lexical/5c214e322a900c3891073e23ed68c6b67a564e32515a4490ec72b9c710190b63.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e19e9548-56d7-5442-8951-cab01a74fad3', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stance_and_hedging_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5fd701abcae934a0ef77c60c6a183f078a68bbaa882c5b5d159fd455375ac0ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f39e274-0664-5e9b-9b56-6732e01c6f49', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e19e9548-56d7-5442-8951-cab01a74fad3', 1), '5fd701abcae934a0ef77c60c6a183f078a68bbaa882c5b5d159fd455375ac0ce',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5c214e322a900c3891073e23ed68c6b67a564e32515a4490ec72b9c710190b63.mp3', 1018, '2026-09-14 01:09:03.311172', '900f09fe1ac3ca7615ab440396f6094e47eb62e005e3a99af39ed4e38d68dc83', 'validated', '{"audio_key":"5c214e322a900c3891073e23ed68c6b67a564e32515a4490ec72b9c710190b63","entity_key":"lx_stance_and_hedging_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"900f09fe1ac3ca7615ab440396f6094e47eb62e005e3a99af39ed4e38d68dc83","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5c214e322a900c3891073e23ed68c6b67a564e32515a4490ec72b9c710190b63.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stance_and_hedging_02 -> audio/generated/ko-KR/lexical/5c214e322a900c3891073e23ed68c6b67a564e32515a4490ec72b9c710190b63.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('78461db3-3f1c-5008-aa6b-fb2baf2b440c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stance_and_hedging_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5fd701abcae934a0ef77c60c6a183f078a68bbaa882c5b5d159fd455375ac0ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('59b0b6df-4055-5bc4-809e-7572abb34aaa', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('78461db3-3f1c-5008-aa6b-fb2baf2b440c', 1), '5fd701abcae934a0ef77c60c6a183f078a68bbaa882c5b5d159fd455375ac0ce',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5c214e322a900c3891073e23ed68c6b67a564e32515a4490ec72b9c710190b63.mp3', 1018, '2026-09-14 01:09:03.311172', '900f09fe1ac3ca7615ab440396f6094e47eb62e005e3a99af39ed4e38d68dc83', 'validated', '{"audio_key":"5c214e322a900c3891073e23ed68c6b67a564e32515a4490ec72b9c710190b63","entity_key":"wf_stance_and_hedging_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"900f09fe1ac3ca7615ab440396f6094e47eb62e005e3a99af39ed4e38d68dc83","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5c214e322a900c3891073e23ed68c6b67a564e32515a4490ec72b9c710190b63.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_source_synthesis_and_framing_01 -> audio/generated/ko-KR/lexical/60d091348d85fc9002cdaf077c2f801e78ea85d4ac1b5627a6630210a2690a4b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f8727fd7-5e4a-5288-99c7-cce47cd23c7a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_source_synthesis_and_framing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa543a9d6cf324986fbddb6c88daa7ef9429d0666ed9171203019529a656be77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1bbdce8b-ee72-5c78-991b-50e57d476e37', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f8727fd7-5e4a-5288-99c7-cce47cd23c7a', 1), 'fa543a9d6cf324986fbddb6c88daa7ef9429d0666ed9171203019529a656be77',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/60d091348d85fc9002cdaf077c2f801e78ea85d4ac1b5627a6630210a2690a4b.mp3', 1149, '2026-09-13 22:59:59.895775', '5295e99837f6e1ce96f7e50ea90ac8e9b0e69047708934f75020fe1734f3f890', 'validated', '{"audio_key":"60d091348d85fc9002cdaf077c2f801e78ea85d4ac1b5627a6630210a2690a4b","entity_key":"lx_source_synthesis_and_framing_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5295e99837f6e1ce96f7e50ea90ac8e9b0e69047708934f75020fe1734f3f890","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/60d091348d85fc9002cdaf077c2f801e78ea85d4ac1b5627a6630210a2690a4b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_source_synthesis_and_framing_01 -> audio/generated/ko-KR/lexical/60d091348d85fc9002cdaf077c2f801e78ea85d4ac1b5627a6630210a2690a4b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7078d819-e534-5e30-9389-e76c378bd0d8', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_source_synthesis_and_framing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fa543a9d6cf324986fbddb6c88daa7ef9429d0666ed9171203019529a656be77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0bd802a2-2ddd-5048-9db7-e5032cb3311c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7078d819-e534-5e30-9389-e76c378bd0d8', 1), 'fa543a9d6cf324986fbddb6c88daa7ef9429d0666ed9171203019529a656be77',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/60d091348d85fc9002cdaf077c2f801e78ea85d4ac1b5627a6630210a2690a4b.mp3', 1149, '2026-09-13 22:59:59.895775', '5295e99837f6e1ce96f7e50ea90ac8e9b0e69047708934f75020fe1734f3f890', 'validated', '{"audio_key":"60d091348d85fc9002cdaf077c2f801e78ea85d4ac1b5627a6630210a2690a4b","entity_key":"wf_source_synthesis_and_framing_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5295e99837f6e1ce96f7e50ea90ac8e9b0e69047708934f75020fe1734f3f890","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/60d091348d85fc9002cdaf077c2f801e78ea85d4ac1b5627a6630210a2690a4b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_mediation_and_face_02 -> audio/generated/ko-KR/lexical/60f92b018f2867e915cddc5ce545f0309c8d1f8e2e3c008b7da459aa93d106c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8ddfa7bb-48cb-5a2a-8c64-534f5e8dd495', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_mediation_and_face_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6095fbf34f5ec30808ad9b7cdf47cdea6634bd85902e3768125cc9a80299dd91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb95bd95-4b69-5246-ac1b-e366d498623c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8ddfa7bb-48cb-5a2a-8c64-534f5e8dd495', 1), '6095fbf34f5ec30808ad9b7cdf47cdea6634bd85902e3768125cc9a80299dd91',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/60f92b018f2867e915cddc5ce545f0309c8d1f8e2e3c008b7da459aa93d106c2.mp3', 1071, '2026-09-14 01:09:04.234308', '735a1b465cbc622891b9df33f6d56b02ce234244cd17e5c1ea022665f74d0670', 'validated', '{"audio_key":"60f92b018f2867e915cddc5ce545f0309c8d1f8e2e3c008b7da459aa93d106c2","entity_key":"lx_formal_mediation_and_face_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"735a1b465cbc622891b9df33f6d56b02ce234244cd17e5c1ea022665f74d0670","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/60f92b018f2867e915cddc5ce545f0309c8d1f8e2e3c008b7da459aa93d106c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_mediation_and_face_02 -> audio/generated/ko-KR/lexical/60f92b018f2867e915cddc5ce545f0309c8d1f8e2e3c008b7da459aa93d106c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bf0d9df0-7859-5d15-954d-2d4ab1a55e1a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_mediation_and_face_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6095fbf34f5ec30808ad9b7cdf47cdea6634bd85902e3768125cc9a80299dd91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('858b6773-fbcd-5bde-9962-f550063c48dc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bf0d9df0-7859-5d15-954d-2d4ab1a55e1a', 1), '6095fbf34f5ec30808ad9b7cdf47cdea6634bd85902e3768125cc9a80299dd91',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/60f92b018f2867e915cddc5ce545f0309c8d1f8e2e3c008b7da459aa93d106c2.mp3', 1071, '2026-09-14 01:09:04.234308', '735a1b465cbc622891b9df33f6d56b02ce234244cd17e5c1ea022665f74d0670', 'validated', '{"audio_key":"60f92b018f2867e915cddc5ce545f0309c8d1f8e2e3c008b7da459aa93d106c2","entity_key":"wf_formal_mediation_and_face_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"735a1b465cbc622891b9df33f6d56b02ce234244cd17e5c1ea022665f74d0670","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/60f92b018f2867e915cddc5ce545f0309c8d1f8e2e3c008b7da459aa93d106c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stance_and_hedging_01 -> audio/generated/ko-KR/lexical/669b74d12938490793be47313353fde9dadc3c428236ba4569afd7526e37e4aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c2d9506e-3f23-5093-8ab1-ac045a60cf58', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stance_and_hedging_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de6a945f1d04a264ca6e6b0227d55181c9d0de97d6e56464874369d701861985'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa612f45-fa09-549b-a3a7-56298d61f916', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c2d9506e-3f23-5093-8ab1-ac045a60cf58', 1), 'de6a945f1d04a264ca6e6b0227d55181c9d0de97d6e56464874369d701861985',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/669b74d12938490793be47313353fde9dadc3c428236ba4569afd7526e37e4aa.mp3', 1071, '2026-09-14 01:09:04.317338', '853186ebb2cfdfc6344778f9842ae5879b959d53e7b15ac2df316d3f62ecba63', 'validated', '{"audio_key":"669b74d12938490793be47313353fde9dadc3c428236ba4569afd7526e37e4aa","entity_key":"lx_stance_and_hedging_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"853186ebb2cfdfc6344778f9842ae5879b959d53e7b15ac2df316d3f62ecba63","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/669b74d12938490793be47313353fde9dadc3c428236ba4569afd7526e37e4aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stance_and_hedging_01 -> audio/generated/ko-KR/lexical/669b74d12938490793be47313353fde9dadc3c428236ba4569afd7526e37e4aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a57caa2e-8373-57f4-9f96-85e898a44af9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stance_and_hedging_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de6a945f1d04a264ca6e6b0227d55181c9d0de97d6e56464874369d701861985'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c475b8cb-a106-50a2-a603-4fad2d0d8dae', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a57caa2e-8373-57f4-9f96-85e898a44af9', 1), 'de6a945f1d04a264ca6e6b0227d55181c9d0de97d6e56464874369d701861985',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/669b74d12938490793be47313353fde9dadc3c428236ba4569afd7526e37e4aa.mp3', 1071, '2026-09-14 01:09:04.317338', '853186ebb2cfdfc6344778f9842ae5879b959d53e7b15ac2df316d3f62ecba63', 'validated', '{"audio_key":"669b74d12938490793be47313353fde9dadc3c428236ba4569afd7526e37e4aa","entity_key":"wf_stance_and_hedging_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"853186ebb2cfdfc6344778f9842ae5879b959d53e7b15ac2df316d3f62ecba63","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/669b74d12938490793be47313353fde9dadc3c428236ba4569afd7526e37e4aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_argument_structure_03 -> audio/generated/ko-KR/lexical/6a09bd220357082cb6b6de60e3e7c8af3569bf05370ca353c9bf9bab7d004a73.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9fd57b36-1685-5a4a-93eb-189f4a1ebe45', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_argument_structure_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd1537c42d76c28f62f0a3608cbc075f97b36881d8259af48da94cb7f711e6c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1476c50-7ba6-5afc-bc73-8d6f26260ac2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9fd57b36-1685-5a4a-93eb-189f4a1ebe45', 1), 'cd1537c42d76c28f62f0a3608cbc075f97b36881d8259af48da94cb7f711e6c5',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6a09bd220357082cb6b6de60e3e7c8af3569bf05370ca353c9bf9bab7d004a73.mp3', 1253, '2026-09-14 01:09:05.269017', '0ac1d815fe35da7473d5a81910236db8c13c7790ee978dba21ca0fc9cd8d777b', 'validated', '{"audio_key":"6a09bd220357082cb6b6de60e3e7c8af3569bf05370ca353c9bf9bab7d004a73","entity_key":"lx_argument_structure_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0ac1d815fe35da7473d5a81910236db8c13c7790ee978dba21ca0fc9cd8d777b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6a09bd220357082cb6b6de60e3e7c8af3569bf05370ca353c9bf9bab7d004a73.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_argument_structure_03 -> audio/generated/ko-KR/lexical/6a09bd220357082cb6b6de60e3e7c8af3569bf05370ca353c9bf9bab7d004a73.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b9baf306-ef60-5189-ac28-9861ab1f6da2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_argument_structure_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd1537c42d76c28f62f0a3608cbc075f97b36881d8259af48da94cb7f711e6c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('106f4df5-4adb-5aa7-9d14-658922e23c95', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b9baf306-ef60-5189-ac28-9861ab1f6da2', 1), 'cd1537c42d76c28f62f0a3608cbc075f97b36881d8259af48da94cb7f711e6c5',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6a09bd220357082cb6b6de60e3e7c8af3569bf05370ca353c9bf9bab7d004a73.mp3', 1253, '2026-09-14 01:09:05.269017', '0ac1d815fe35da7473d5a81910236db8c13c7790ee978dba21ca0fc9cd8d777b', 'validated', '{"audio_key":"6a09bd220357082cb6b6de60e3e7c8af3569bf05370ca353c9bf9bab7d004a73","entity_key":"wf_argument_structure_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0ac1d815fe35da7473d5a81910236db8c13c7790ee978dba21ca0fc9cd8d777b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6a09bd220357082cb6b6de60e3e7c8af3569bf05370ca353c9bf9bab7d004a73.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_source_synthesis_and_framing_03 -> audio/generated/ko-KR/lexical/6b74d0da695f52c4017397e46a35e060f660af7304ff5d05dd2a0783df73da97.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9e723fc8-c0fa-52c9-baa1-84b71f957e64', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_source_synthesis_and_framing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ec37753d00f8c262d2a26f8f020cb93ee3555ca9fd48bbe791aaefd96b8c306'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b7fcceb-5030-5f66-9c5b-5916749c8e32', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9e723fc8-c0fa-52c9-baa1-84b71f957e64', 1), '1ec37753d00f8c262d2a26f8f020cb93ee3555ca9fd48bbe791aaefd96b8c306',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6b74d0da695f52c4017397e46a35e060f660af7304ff5d05dd2a0783df73da97.mp3', 1201, '2026-09-14 01:09:05.543207', '23bc659fd4b77ec7895976db3689c5701ad2356f222f6c2d14f5551a94188343', 'validated', '{"audio_key":"6b74d0da695f52c4017397e46a35e060f660af7304ff5d05dd2a0783df73da97","entity_key":"lx_source_synthesis_and_framing_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"23bc659fd4b77ec7895976db3689c5701ad2356f222f6c2d14f5551a94188343","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6b74d0da695f52c4017397e46a35e060f660af7304ff5d05dd2a0783df73da97.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_source_synthesis_and_framing_03 -> audio/generated/ko-KR/lexical/6b74d0da695f52c4017397e46a35e060f660af7304ff5d05dd2a0783df73da97.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e6c9fe08-b883-52e7-a42b-12e184c2f53c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_source_synthesis_and_framing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ec37753d00f8c262d2a26f8f020cb93ee3555ca9fd48bbe791aaefd96b8c306'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df2dfe71-13db-514a-bb0a-d43bb6b8281e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e6c9fe08-b883-52e7-a42b-12e184c2f53c', 1), '1ec37753d00f8c262d2a26f8f020cb93ee3555ca9fd48bbe791aaefd96b8c306',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6b74d0da695f52c4017397e46a35e060f660af7304ff5d05dd2a0783df73da97.mp3', 1201, '2026-09-14 01:09:05.543207', '23bc659fd4b77ec7895976db3689c5701ad2356f222f6c2d14f5551a94188343', 'validated', '{"audio_key":"6b74d0da695f52c4017397e46a35e060f660af7304ff5d05dd2a0783df73da97","entity_key":"wf_source_synthesis_and_framing_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"23bc659fd4b77ec7895976db3689c5701ad2356f222f6c2d14f5551a94188343","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6b74d0da695f52c4017397e46a35e060f660af7304ff5d05dd2a0783df73da97.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_implicit_meaning_and_subtext_04 -> audio/generated/ko-KR/lexical/6d4a2be539364617f497d19ffe50dc8bdccf59f3183aba8a58517623eb25f085.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('76ea693d-682f-56cf-9f3a-8ff99567419c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_implicit_meaning_and_subtext_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '72efa4a39d46eebed1c3b7e6288493db52d4529d409a0f09b555a4cca044e55d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4a71ec7-8553-5400-adfc-7c1b2534b81c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('76ea693d-682f-56cf-9f3a-8ff99567419c', 1), '72efa4a39d46eebed1c3b7e6288493db52d4529d409a0f09b555a4cca044e55d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6d4a2be539364617f497d19ffe50dc8bdccf59f3183aba8a58517623eb25f085.mp3', 835, '2026-09-14 01:09:06.256681', '18d128a0999f7a84af9849e3204987a313419404fe2d1f651efb779f0c63f9b0', 'validated', '{"audio_key":"6d4a2be539364617f497d19ffe50dc8bdccf59f3183aba8a58517623eb25f085","entity_key":"lx_implicit_meaning_and_subtext_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"18d128a0999f7a84af9849e3204987a313419404fe2d1f651efb779f0c63f9b0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6d4a2be539364617f497d19ffe50dc8bdccf59f3183aba8a58517623eb25f085.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_implicit_meaning_and_subtext_04 -> audio/generated/ko-KR/lexical/6d4a2be539364617f497d19ffe50dc8bdccf59f3183aba8a58517623eb25f085.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d4a547e4-49d0-5225-9609-899a05ced8b3', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_implicit_meaning_and_subtext_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '72efa4a39d46eebed1c3b7e6288493db52d4529d409a0f09b555a4cca044e55d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f972bb2e-5c70-5bfd-815e-fc331f31aa62', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d4a547e4-49d0-5225-9609-899a05ced8b3', 1), '72efa4a39d46eebed1c3b7e6288493db52d4529d409a0f09b555a4cca044e55d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6d4a2be539364617f497d19ffe50dc8bdccf59f3183aba8a58517623eb25f085.mp3', 835, '2026-09-14 01:09:06.256681', '18d128a0999f7a84af9849e3204987a313419404fe2d1f651efb779f0c63f9b0', 'validated', '{"audio_key":"6d4a2be539364617f497d19ffe50dc8bdccf59f3183aba8a58517623eb25f085","entity_key":"wf_implicit_meaning_and_subtext_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"18d128a0999f7a84af9849e3204987a313419404fe2d1f651efb779f0c63f9b0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6d4a2be539364617f497d19ffe50dc8bdccf59f3183aba8a58517623eb25f085.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_argument_structure_06 -> audio/generated/ko-KR/lexical/7497bbe90b6fbd412d69ff738b261ac3521fc1e2b35945e0635c922e266ea716.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('780889dd-0485-53a5-9f8a-ec7aaa33bf32', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_argument_structure_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f7c2eb003d8448c6b48fbe40151e4abdb2db197872cf829846cd29504ac48f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('004c882f-7f49-5c8b-a3d1-b63eea32275d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('780889dd-0485-53a5-9f8a-ec7aaa33bf32', 1), '6f7c2eb003d8448c6b48fbe40151e4abdb2db197872cf829846cd29504ac48f7',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7497bbe90b6fbd412d69ff738b261ac3521fc1e2b35945e0635c922e266ea716.mp3', 1201, '2026-09-14 01:09:06.537957', '9dca0d8f95d1e2aea75fcdc40bc4b8305f0111d75241f42a4923bd330fe88d5a', 'validated', '{"audio_key":"7497bbe90b6fbd412d69ff738b261ac3521fc1e2b35945e0635c922e266ea716","entity_key":"lx_argument_structure_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9dca0d8f95d1e2aea75fcdc40bc4b8305f0111d75241f42a4923bd330fe88d5a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7497bbe90b6fbd412d69ff738b261ac3521fc1e2b35945e0635c922e266ea716.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_argument_structure_06 -> audio/generated/ko-KR/lexical/7497bbe90b6fbd412d69ff738b261ac3521fc1e2b35945e0635c922e266ea716.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4d154c9f-7af7-5bb7-8937-44cc3bf4321f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_argument_structure_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f7c2eb003d8448c6b48fbe40151e4abdb2db197872cf829846cd29504ac48f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50b4a2ac-363e-51cc-a7ac-7faaed3358ca', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4d154c9f-7af7-5bb7-8937-44cc3bf4321f', 1), '6f7c2eb003d8448c6b48fbe40151e4abdb2db197872cf829846cd29504ac48f7',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7497bbe90b6fbd412d69ff738b261ac3521fc1e2b35945e0635c922e266ea716.mp3', 1201, '2026-09-14 01:09:06.537957', '9dca0d8f95d1e2aea75fcdc40bc4b8305f0111d75241f42a4923bd330fe88d5a', 'validated', '{"audio_key":"7497bbe90b6fbd412d69ff738b261ac3521fc1e2b35945e0635c922e266ea716","entity_key":"wf_argument_structure_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9dca0d8f95d1e2aea75fcdc40bc4b8305f0111d75241f42a4923bd330fe88d5a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7497bbe90b6fbd412d69ff738b261ac3521fc1e2b35945e0635c922e266ea716.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_humor_irony_and_cultural_nuance_01 -> audio/generated/ko-KR/lexical/74ea98a94737976bd083122e6ccb4efaf9edcfade8e986d45cc2554ba611f4c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9f336ce7-23f4-5849-95d3-219c113b17d5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_humor_irony_and_cultural_nuance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a07db65b45d6afac2fac28700f431d77ed39fbab0e04e284c73e900e0f7e1c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e22d2c1-a877-58f8-ad0d-6887a3e688c1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9f336ce7-23f4-5849-95d3-219c113b17d5', 1), '0a07db65b45d6afac2fac28700f431d77ed39fbab0e04e284c73e900e0f7e1c3',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/74ea98a94737976bd083122e6ccb4efaf9edcfade8e986d45cc2554ba611f4c2.mp3', 1071, '2026-09-14 01:09:07.288989', '6074fac9148c470fe11b12ba20f905910552155d2f1e16787fb5848a35910ef0', 'validated', '{"audio_key":"74ea98a94737976bd083122e6ccb4efaf9edcfade8e986d45cc2554ba611f4c2","entity_key":"lx_humor_irony_and_cultural_nuance_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6074fac9148c470fe11b12ba20f905910552155d2f1e16787fb5848a35910ef0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/74ea98a94737976bd083122e6ccb4efaf9edcfade8e986d45cc2554ba611f4c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_humor_irony_and_cultural_nuance_01 -> audio/generated/ko-KR/lexical/74ea98a94737976bd083122e6ccb4efaf9edcfade8e986d45cc2554ba611f4c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5e538ad4-6a1c-5d5c-925d-0e0a88fe8245', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_humor_irony_and_cultural_nuance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a07db65b45d6afac2fac28700f431d77ed39fbab0e04e284c73e900e0f7e1c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('609ca885-2c1f-59d1-a1c1-979f4963dd6d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5e538ad4-6a1c-5d5c-925d-0e0a88fe8245', 1), '0a07db65b45d6afac2fac28700f431d77ed39fbab0e04e284c73e900e0f7e1c3',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/74ea98a94737976bd083122e6ccb4efaf9edcfade8e986d45cc2554ba611f4c2.mp3', 1071, '2026-09-14 01:09:07.288989', '6074fac9148c470fe11b12ba20f905910552155d2f1e16787fb5848a35910ef0', 'validated', '{"audio_key":"74ea98a94737976bd083122e6ccb4efaf9edcfade8e986d45cc2554ba611f4c2","entity_key":"wf_humor_irony_and_cultural_nuance_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6074fac9148c470fe11b12ba20f905910552155d2f1e16787fb5848a35910ef0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/74ea98a94737976bd083122e6ccb4efaf9edcfade8e986d45cc2554ba611f4c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_precision_reformulation_02 -> audio/generated/ko-KR/lexical/7e0e8133a3544ee7b3e954b2f23dc022d43a38ff44687b507f5a689617514ba8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1d21822f-c3d3-5f48-89af-91faabd985d1', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_precision_reformulation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2281025b69a422c01adf128d3a95b1bfc086fb909e808bdf9f8ab26524c5b804'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4904cea2-7ce1-5d34-9936-8cecb24c7144', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1d21822f-c3d3-5f48-89af-91faabd985d1', 1), '2281025b69a422c01adf128d3a95b1bfc086fb909e808bdf9f8ab26524c5b804',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7e0e8133a3544ee7b3e954b2f23dc022d43a38ff44687b507f5a689617514ba8.mp3', 1018, '2026-09-14 01:09:07.604819', 'a1d892b193d18ecf64f560922369a7e60d6667ba38f2936c2150085b6eb40bfd', 'validated', '{"audio_key":"7e0e8133a3544ee7b3e954b2f23dc022d43a38ff44687b507f5a689617514ba8","entity_key":"lx_precision_reformulation_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a1d892b193d18ecf64f560922369a7e60d6667ba38f2936c2150085b6eb40bfd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7e0e8133a3544ee7b3e954b2f23dc022d43a38ff44687b507f5a689617514ba8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_precision_reformulation_02 -> audio/generated/ko-KR/lexical/7e0e8133a3544ee7b3e954b2f23dc022d43a38ff44687b507f5a689617514ba8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e4e23ea0-0d77-5b01-9237-1eee1bb979bd', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_precision_reformulation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2281025b69a422c01adf128d3a95b1bfc086fb909e808bdf9f8ab26524c5b804'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fa937631-87a3-5167-886c-e25122c6c9cf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e4e23ea0-0d77-5b01-9237-1eee1bb979bd', 1), '2281025b69a422c01adf128d3a95b1bfc086fb909e808bdf9f8ab26524c5b804',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7e0e8133a3544ee7b3e954b2f23dc022d43a38ff44687b507f5a689617514ba8.mp3', 1018, '2026-09-14 01:09:07.604819', 'a1d892b193d18ecf64f560922369a7e60d6667ba38f2936c2150085b6eb40bfd', 'validated', '{"audio_key":"7e0e8133a3544ee7b3e954b2f23dc022d43a38ff44687b507f5a689617514ba8","entity_key":"wf_precision_reformulation_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a1d892b193d18ecf64f560922369a7e60d6667ba38f2936c2150085b6eb40bfd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7e0e8133a3544ee7b3e954b2f23dc022d43a38ff44687b507f5a689617514ba8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c1_seoul_policy_forum_capstone_04 -> audio/generated/ko-KR/lexical/859f7f68fe05937f107e2351a09952be29086990eabdec7d6acbe76248144860.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fdeb68e9-47eb-530f-91a0-783a12612936', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c1_seoul_policy_forum_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a82ed0161be0ebec6fbe6c938c6b6fd4e08d56472e797d287d0c293a1b875ac2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3605f00-898b-54b7-ac65-884401c5c648', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fdeb68e9-47eb-530f-91a0-783a12612936', 1), 'a82ed0161be0ebec6fbe6c938c6b6fd4e08d56472e797d287d0c293a1b875ac2',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/859f7f68fe05937f107e2351a09952be29086990eabdec7d6acbe76248144860.mp3', 1097, '2026-09-14 01:09:08.389531', 'be26abec4f7081947a8a8e56a6db1cac7213d77b6cf2d5067bb40fa874dfb31a', 'validated', '{"audio_key":"859f7f68fe05937f107e2351a09952be29086990eabdec7d6acbe76248144860","entity_key":"lx_c1_seoul_policy_forum_capstone_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"be26abec4f7081947a8a8e56a6db1cac7213d77b6cf2d5067bb40fa874dfb31a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/859f7f68fe05937f107e2351a09952be29086990eabdec7d6acbe76248144860.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c1_seoul_policy_forum_capstone_04 -> audio/generated/ko-KR/lexical/859f7f68fe05937f107e2351a09952be29086990eabdec7d6acbe76248144860.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('01a4b016-194f-563b-a07a-68e1ef7cb921', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c1_seoul_policy_forum_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a82ed0161be0ebec6fbe6c938c6b6fd4e08d56472e797d287d0c293a1b875ac2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb705d1f-a463-5ec2-bcae-b6a63ff19e28', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('01a4b016-194f-563b-a07a-68e1ef7cb921', 1), 'a82ed0161be0ebec6fbe6c938c6b6fd4e08d56472e797d287d0c293a1b875ac2',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/859f7f68fe05937f107e2351a09952be29086990eabdec7d6acbe76248144860.mp3', 1097, '2026-09-14 01:09:08.389531', 'be26abec4f7081947a8a8e56a6db1cac7213d77b6cf2d5067bb40fa874dfb31a', 'validated', '{"audio_key":"859f7f68fe05937f107e2351a09952be29086990eabdec7d6acbe76248144860","entity_key":"wf_c1_seoul_policy_forum_capstone_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"be26abec4f7081947a8a8e56a6db1cac7213d77b6cf2d5067bb40fa874dfb31a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/859f7f68fe05937f107e2351a09952be29086990eabdec7d6acbe76248144860.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stance_and_hedging_06 -> audio/generated/ko-KR/lexical/96da37d74e314a28be3f721e49b31a1ef8e6917a87513d0a618f80f7e5209abe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b4eec82a-ade0-5dad-af50-fafacdb6a7d1', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stance_and_hedging_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7866fc07b935f9a4a66b039edee51d8eff80817d0dde5a750e8a7fd7b9072ab0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('162fa175-5ce3-5377-9171-ea1ec0225e7e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b4eec82a-ade0-5dad-af50-fafacdb6a7d1', 1), '7866fc07b935f9a4a66b039edee51d8eff80817d0dde5a750e8a7fd7b9072ab0',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/96da37d74e314a28be3f721e49b31a1ef8e6917a87513d0a618f80f7e5209abe.mp3', 1018, '2026-09-14 01:09:08.603061', '271b46e5e1d2de52bb4cf8856b5de313b503f843c441a5137b1ff0fd1a76334e', 'validated', '{"audio_key":"96da37d74e314a28be3f721e49b31a1ef8e6917a87513d0a618f80f7e5209abe","entity_key":"lx_stance_and_hedging_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"271b46e5e1d2de52bb4cf8856b5de313b503f843c441a5137b1ff0fd1a76334e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/96da37d74e314a28be3f721e49b31a1ef8e6917a87513d0a618f80f7e5209abe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stance_and_hedging_06 -> audio/generated/ko-KR/lexical/96da37d74e314a28be3f721e49b31a1ef8e6917a87513d0a618f80f7e5209abe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a1fbc77e-4542-581b-8095-78c3b75c6409', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stance_and_hedging_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7866fc07b935f9a4a66b039edee51d8eff80817d0dde5a750e8a7fd7b9072ab0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf1f0236-0599-5136-a088-1cafbd0f1115', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a1fbc77e-4542-581b-8095-78c3b75c6409', 1), '7866fc07b935f9a4a66b039edee51d8eff80817d0dde5a750e8a7fd7b9072ab0',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/96da37d74e314a28be3f721e49b31a1ef8e6917a87513d0a618f80f7e5209abe.mp3', 1018, '2026-09-14 01:09:08.603061', '271b46e5e1d2de52bb4cf8856b5de313b503f843c441a5137b1ff0fd1a76334e', 'validated', '{"audio_key":"96da37d74e314a28be3f721e49b31a1ef8e6917a87513d0a618f80f7e5209abe","entity_key":"wf_stance_and_hedging_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"271b46e5e1d2de52bb4cf8856b5de313b503f843c441a5137b1ff0fd1a76334e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/96da37d74e314a28be3f721e49b31a1ef8e6917a87513d0a618f80f7e5209abe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_source_synthesis_and_framing_04 -> audio/generated/ko-KR/lexical/a0bc0b06e61ca52ececd2a294f313172c643505c5ed2a6333a35e5e0154ecc30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c219c12d-e1bc-506a-9e81-8d6ac2db7afa', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_source_synthesis_and_framing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c65aee978076d2f1e812c87c51be3ff3f44eb742cca246e8a638430086519e3c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('962594ad-2480-5e8f-a3d3-aa9b67458821', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c219c12d-e1bc-506a-9e81-8d6ac2db7afa', 1), 'c65aee978076d2f1e812c87c51be3ff3f44eb742cca246e8a638430086519e3c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a0bc0b06e61ca52ececd2a294f313172c643505c5ed2a6333a35e5e0154ecc30.mp3', 1253, '2026-09-14 01:09:09.406902', '1dfdc404ef70b305cb8363a6a9d53b68518c5e953dfae061de8d268d5822e073', 'validated', '{"audio_key":"a0bc0b06e61ca52ececd2a294f313172c643505c5ed2a6333a35e5e0154ecc30","entity_key":"lx_source_synthesis_and_framing_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1dfdc404ef70b305cb8363a6a9d53b68518c5e953dfae061de8d268d5822e073","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a0bc0b06e61ca52ececd2a294f313172c643505c5ed2a6333a35e5e0154ecc30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_source_synthesis_and_framing_04 -> audio/generated/ko-KR/lexical/a0bc0b06e61ca52ececd2a294f313172c643505c5ed2a6333a35e5e0154ecc30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('59ff1157-2f36-5b20-914b-dd072610470b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_source_synthesis_and_framing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c65aee978076d2f1e812c87c51be3ff3f44eb742cca246e8a638430086519e3c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91e19c32-cd51-59b0-8e49-48f438ee497d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('59ff1157-2f36-5b20-914b-dd072610470b', 1), 'c65aee978076d2f1e812c87c51be3ff3f44eb742cca246e8a638430086519e3c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a0bc0b06e61ca52ececd2a294f313172c643505c5ed2a6333a35e5e0154ecc30.mp3', 1253, '2026-09-14 01:09:09.406902', '1dfdc404ef70b305cb8363a6a9d53b68518c5e953dfae061de8d268d5822e073', 'validated', '{"audio_key":"a0bc0b06e61ca52ececd2a294f313172c643505c5ed2a6333a35e5e0154ecc30","entity_key":"wf_source_synthesis_and_framing_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1dfdc404ef70b305cb8363a6a9d53b68518c5e953dfae061de8d268d5822e073","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a0bc0b06e61ca52ececd2a294f313172c643505c5ed2a6333a35e5e0154ecc30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_argument_structure_04 -> audio/generated/ko-KR/lexical/a37bba9ae4a3482554adb49250de6690a51ae96863411f6ff6c03a66adc7f83e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('92e67534-3fb7-575d-9452-ab6369a6ae0a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_argument_structure_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6c5d28f374714fc29195b8cbd9603893d1845ff3c7518b804b89ceb19dd05d00'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b2199bd6-926f-551d-ad09-9cd2d69a27a4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('92e67534-3fb7-575d-9452-ab6369a6ae0a', 1), '6c5d28f374714fc29195b8cbd9603893d1845ff3c7518b804b89ceb19dd05d00',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a37bba9ae4a3482554adb49250de6690a51ae96863411f6ff6c03a66adc7f83e.mp3', 1071, '2026-09-14 01:09:09.631254', '495365be6bf783c47e1d4720ddaa2926a3837ddda12fb389179233666f274ca0', 'validated', '{"audio_key":"a37bba9ae4a3482554adb49250de6690a51ae96863411f6ff6c03a66adc7f83e","entity_key":"lx_argument_structure_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"495365be6bf783c47e1d4720ddaa2926a3837ddda12fb389179233666f274ca0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a37bba9ae4a3482554adb49250de6690a51ae96863411f6ff6c03a66adc7f83e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_argument_structure_04 -> audio/generated/ko-KR/lexical/a37bba9ae4a3482554adb49250de6690a51ae96863411f6ff6c03a66adc7f83e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('92cf7462-cd68-5b33-b7c3-662d601bbb49', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_argument_structure_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6c5d28f374714fc29195b8cbd9603893d1845ff3c7518b804b89ceb19dd05d00'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a72ad0ae-bb71-575f-8c2b-b0cb1c916f15', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('92cf7462-cd68-5b33-b7c3-662d601bbb49', 1), '6c5d28f374714fc29195b8cbd9603893d1845ff3c7518b804b89ceb19dd05d00',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a37bba9ae4a3482554adb49250de6690a51ae96863411f6ff6c03a66adc7f83e.mp3', 1071, '2026-09-14 01:09:09.631254', '495365be6bf783c47e1d4720ddaa2926a3837ddda12fb389179233666f274ca0', 'validated', '{"audio_key":"a37bba9ae4a3482554adb49250de6690a51ae96863411f6ff6c03a66adc7f83e","entity_key":"wf_argument_structure_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"495365be6bf783c47e1d4720ddaa2926a3837ddda12fb389179233666f274ca0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a37bba9ae4a3482554adb49250de6690a51ae96863411f6ff6c03a66adc7f83e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_humor_irony_and_cultural_nuance_03 -> audio/generated/ko-KR/lexical/a5daa2b34653937937c7d78a51c74f3a91fe63a132a423a3647a4ae086ce2f4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('74152311-325b-5003-a358-1ed40cc64a23', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_humor_irony_and_cultural_nuance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f362be5fbaa0877b74e7a6fa6b9a2cfb7bd0797b796aece93c05bed4a38466c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('db5f8c4d-2fea-5f57-9f9b-460dd6d1aadb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('74152311-325b-5003-a358-1ed40cc64a23', 1), 'f362be5fbaa0877b74e7a6fa6b9a2cfb7bd0797b796aece93c05bed4a38466c9',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a5daa2b34653937937c7d78a51c74f3a91fe63a132a423a3647a4ae086ce2f4e.mp3', 1018, '2026-09-14 01:09:10.417027', 'a6a6441438e74244be4f907fde22abf13d019b2b01ed8d3ec885c2f6a0ead0c5', 'validated', '{"audio_key":"a5daa2b34653937937c7d78a51c74f3a91fe63a132a423a3647a4ae086ce2f4e","entity_key":"lx_humor_irony_and_cultural_nuance_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a6a6441438e74244be4f907fde22abf13d019b2b01ed8d3ec885c2f6a0ead0c5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a5daa2b34653937937c7d78a51c74f3a91fe63a132a423a3647a4ae086ce2f4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_humor_irony_and_cultural_nuance_03 -> audio/generated/ko-KR/lexical/a5daa2b34653937937c7d78a51c74f3a91fe63a132a423a3647a4ae086ce2f4e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('299e750c-885c-5473-bbf7-cfa5cf12b5d9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_humor_irony_and_cultural_nuance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f362be5fbaa0877b74e7a6fa6b9a2cfb7bd0797b796aece93c05bed4a38466c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e087b444-5d0b-5d4e-82eb-ebd8dd43d444', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('299e750c-885c-5473-bbf7-cfa5cf12b5d9', 1), 'f362be5fbaa0877b74e7a6fa6b9a2cfb7bd0797b796aece93c05bed4a38466c9',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a5daa2b34653937937c7d78a51c74f3a91fe63a132a423a3647a4ae086ce2f4e.mp3', 1018, '2026-09-14 01:09:10.417027', 'a6a6441438e74244be4f907fde22abf13d019b2b01ed8d3ec885c2f6a0ead0c5', 'validated', '{"audio_key":"a5daa2b34653937937c7d78a51c74f3a91fe63a132a423a3647a4ae086ce2f4e","entity_key":"wf_humor_irony_and_cultural_nuance_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a6a6441438e74244be4f907fde22abf13d019b2b01ed8d3ec885c2f6a0ead0c5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a5daa2b34653937937c7d78a51c74f3a91fe63a132a423a3647a4ae086ce2f4e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_shifting_01 -> audio/generated/ko-KR/lexical/a6e4688ad3c89eb91d6e1b9a308ca5f1df5ec44ce3e16873d8a550ee678a7c75.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('025a2b77-1c7d-5aec-946b-540afb53cef7', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_shifting_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a615c1bfd97dc7caa8b7356b94fc2ab16bbd721ce34d6e147d04b74f571ba76'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dfcf5c2d-9b37-5da5-b6c9-b81cb256dcd9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('025a2b77-1c7d-5aec-946b-540afb53cef7', 1), '7a615c1bfd97dc7caa8b7356b94fc2ab16bbd721ce34d6e147d04b74f571ba76',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a6e4688ad3c89eb91d6e1b9a308ca5f1df5ec44ce3e16873d8a550ee678a7c75.mp3', 1071, '2026-09-13 23:58:50.496634', 'b8733755df5eaa590b27ebda35d55ea61360afe9c7f3a1be57f0a36271d8a38c', 'validated', '{"audio_key":"a6e4688ad3c89eb91d6e1b9a308ca5f1df5ec44ce3e16873d8a550ee678a7c75","entity_key":"lx_register_shifting_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b8733755df5eaa590b27ebda35d55ea61360afe9c7f3a1be57f0a36271d8a38c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a6e4688ad3c89eb91d6e1b9a308ca5f1df5ec44ce3e16873d8a550ee678a7c75.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_shifting_01 -> audio/generated/ko-KR/lexical/a6e4688ad3c89eb91d6e1b9a308ca5f1df5ec44ce3e16873d8a550ee678a7c75.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9974d644-c987-5f1f-a942-8fc3a761585b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_shifting_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a615c1bfd97dc7caa8b7356b94fc2ab16bbd721ce34d6e147d04b74f571ba76'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8d594a9-1fa9-5e4a-a9de-5fec3f1ae9b0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9974d644-c987-5f1f-a942-8fc3a761585b', 1), '7a615c1bfd97dc7caa8b7356b94fc2ab16bbd721ce34d6e147d04b74f571ba76',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a6e4688ad3c89eb91d6e1b9a308ca5f1df5ec44ce3e16873d8a550ee678a7c75.mp3', 1071, '2026-09-13 23:58:50.496634', 'b8733755df5eaa590b27ebda35d55ea61360afe9c7f3a1be57f0a36271d8a38c', 'validated', '{"audio_key":"a6e4688ad3c89eb91d6e1b9a308ca5f1df5ec44ce3e16873d8a550ee678a7c75","entity_key":"wf_register_shifting_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b8733755df5eaa590b27ebda35d55ea61360afe9c7f3a1be57f0a36271d8a38c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a6e4688ad3c89eb91d6e1b9a308ca5f1df5ec44ce3e16873d8a550ee678a7c75.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_and_bureaucratic_korean_06 -> audio/generated/ko-KR/lexical/a9d71d36f33e31b35382c88793916e1ec5a19aecb44a1231fa9c7c7a3562e17f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('39b9226e-adf0-5af0-bfd3-c8f946b335ae', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_and_bureaucratic_korean_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd73b0d3ee83aef7b7d89dad5ac60c1f51fae5a283ae5af706f5628568926fd0a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba22922a-2afa-5769-804f-65065875753d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('39b9226e-adf0-5af0-bfd3-c8f946b335ae', 1), 'd73b0d3ee83aef7b7d89dad5ac60c1f51fae5a283ae5af706f5628568926fd0a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a9d71d36f33e31b35382c88793916e1ec5a19aecb44a1231fa9c7c7a3562e17f.mp3', 914, '2026-09-14 01:09:10.619623', 'a93e2cfdde1bb4114f7570559ea0d2c835f0a77311817125b5b7de81427f8e19', 'validated', '{"audio_key":"a9d71d36f33e31b35382c88793916e1ec5a19aecb44a1231fa9c7c7a3562e17f","entity_key":"lx_institutional_and_bureaucratic_korean_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a93e2cfdde1bb4114f7570559ea0d2c835f0a77311817125b5b7de81427f8e19","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a9d71d36f33e31b35382c88793916e1ec5a19aecb44a1231fa9c7c7a3562e17f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_and_bureaucratic_korean_06 -> audio/generated/ko-KR/lexical/a9d71d36f33e31b35382c88793916e1ec5a19aecb44a1231fa9c7c7a3562e17f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9fb3f98c-b502-5159-9bdf-952a0dd0d065', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_and_bureaucratic_korean_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd73b0d3ee83aef7b7d89dad5ac60c1f51fae5a283ae5af706f5628568926fd0a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33429b4d-8322-5d13-a20f-e4a51f63ae97', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9fb3f98c-b502-5159-9bdf-952a0dd0d065', 1), 'd73b0d3ee83aef7b7d89dad5ac60c1f51fae5a283ae5af706f5628568926fd0a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a9d71d36f33e31b35382c88793916e1ec5a19aecb44a1231fa9c7c7a3562e17f.mp3', 914, '2026-09-14 01:09:10.619623', 'a93e2cfdde1bb4114f7570559ea0d2c835f0a77311817125b5b7de81427f8e19', 'validated', '{"audio_key":"a9d71d36f33e31b35382c88793916e1ec5a19aecb44a1231fa9c7c7a3562e17f","entity_key":"wf_institutional_and_bureaucratic_korean_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a93e2cfdde1bb4114f7570559ea0d2c835f0a77311817125b5b7de81427f8e19","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a9d71d36f33e31b35382c88793916e1ec5a19aecb44a1231fa9c7c7a3562e17f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_argument_structure_05 -> audio/generated/ko-KR/lexical/ae5fa721efc34cac7b248292cadd49268addf823b9bd8fb359ee405b681f8a33.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ca72ee98-e2dc-5e90-8593-2be41be89492', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_argument_structure_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f718e7ffac0d7bb8b3afc4ca0b8ba076d761952adbe156f58d34bcf939ff0d43'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d8d61bb-c0be-5853-8841-9fe8b6b581b8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ca72ee98-e2dc-5e90-8593-2be41be89492', 1), 'f718e7ffac0d7bb8b3afc4ca0b8ba076d761952adbe156f58d34bcf939ff0d43',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ae5fa721efc34cac7b248292cadd49268addf823b9bd8fb359ee405b681f8a33.mp3', 1280, '2026-09-14 01:09:11.475624', '5cfafb651c48de270bf33ebbc55e8fffdfbccfe3024ecc50ac1446919d979bda', 'validated', '{"audio_key":"ae5fa721efc34cac7b248292cadd49268addf823b9bd8fb359ee405b681f8a33","entity_key":"lx_argument_structure_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5cfafb651c48de270bf33ebbc55e8fffdfbccfe3024ecc50ac1446919d979bda","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ae5fa721efc34cac7b248292cadd49268addf823b9bd8fb359ee405b681f8a33.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_argument_structure_05 -> audio/generated/ko-KR/lexical/ae5fa721efc34cac7b248292cadd49268addf823b9bd8fb359ee405b681f8a33.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0acba544-debe-58f8-b611-ca8f2d60657e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_argument_structure_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f718e7ffac0d7bb8b3afc4ca0b8ba076d761952adbe156f58d34bcf939ff0d43'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3f680ad-038b-5526-a665-18ab6024412f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0acba544-debe-58f8-b611-ca8f2d60657e', 1), 'f718e7ffac0d7bb8b3afc4ca0b8ba076d761952adbe156f58d34bcf939ff0d43',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ae5fa721efc34cac7b248292cadd49268addf823b9bd8fb359ee405b681f8a33.mp3', 1280, '2026-09-14 01:09:11.475624', '5cfafb651c48de270bf33ebbc55e8fffdfbccfe3024ecc50ac1446919d979bda', 'validated', '{"audio_key":"ae5fa721efc34cac7b248292cadd49268addf823b9bd8fb359ee405b681f8a33","entity_key":"wf_argument_structure_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5cfafb651c48de270bf33ebbc55e8fffdfbccfe3024ecc50ac1446919d979bda","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ae5fa721efc34cac7b248292cadd49268addf823b9bd8fb359ee405b681f8a33.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_argument_structure_02 -> audio/generated/ko-KR/lexical/b7d79d53d09aa0e540e7ffcf586c72c81f4d82a476f04e72df53221ebd7f63bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6e87df35-6233-5104-af10-9ceee114e6af', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_argument_structure_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1543012d21d38bcf69348ced62cbad78435fd167535bfd13f003f42304e29591'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('38d05d59-6fa4-517a-bfbb-b09fb95bfeb4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6e87df35-6233-5104-af10-9ceee114e6af', 1), '1543012d21d38bcf69348ced62cbad78435fd167535bfd13f003f42304e29591',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b7d79d53d09aa0e540e7ffcf586c72c81f4d82a476f04e72df53221ebd7f63bc.mp3', 1149, '2026-09-14 01:09:11.632877', '80a07aa8817c4172a32adae946e4a4a081b146e78b20a44e73137b098fc2a23a', 'validated', '{"audio_key":"b7d79d53d09aa0e540e7ffcf586c72c81f4d82a476f04e72df53221ebd7f63bc","entity_key":"lx_argument_structure_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"80a07aa8817c4172a32adae946e4a4a081b146e78b20a44e73137b098fc2a23a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b7d79d53d09aa0e540e7ffcf586c72c81f4d82a476f04e72df53221ebd7f63bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_argument_structure_02 -> audio/generated/ko-KR/lexical/b7d79d53d09aa0e540e7ffcf586c72c81f4d82a476f04e72df53221ebd7f63bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f2d36fb0-c279-56d0-8807-fb3844de759f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_argument_structure_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1543012d21d38bcf69348ced62cbad78435fd167535bfd13f003f42304e29591'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d988651d-a1e2-568a-b5e6-75af38773a56', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f2d36fb0-c279-56d0-8807-fb3844de759f', 1), '1543012d21d38bcf69348ced62cbad78435fd167535bfd13f003f42304e29591',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b7d79d53d09aa0e540e7ffcf586c72c81f4d82a476f04e72df53221ebd7f63bc.mp3', 1149, '2026-09-14 01:09:11.632877', '80a07aa8817c4172a32adae946e4a4a081b146e78b20a44e73137b098fc2a23a', 'validated', '{"audio_key":"b7d79d53d09aa0e540e7ffcf586c72c81f4d82a476f04e72df53221ebd7f63bc","entity_key":"wf_argument_structure_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"80a07aa8817c4172a32adae946e4a4a081b146e78b20a44e73137b098fc2a23a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b7d79d53d09aa0e540e7ffcf586c72c81f4d82a476f04e72df53221ebd7f63bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_formal_mediation_and_face_03 -> audio/generated/ko-KR/lexical/bec9ccbd24f3823d5df8e5afb5b81848a149b9dbc7d8549a176dd01bf5e2b84f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('add830f1-6daf-5355-9e11-feb18adb4861', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_formal_mediation_and_face_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '528e76d8671d362f2e62537987c8f64f2540ab6ceaae9cc24ec6868c39b48c21'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d7c678a-a576-5eac-ab96-11ba999a867a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('add830f1-6daf-5355-9e11-feb18adb4861', 1), '528e76d8671d362f2e62537987c8f64f2540ab6ceaae9cc24ec6868c39b48c21',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bec9ccbd24f3823d5df8e5afb5b81848a149b9dbc7d8549a176dd01bf5e2b84f.mp3', 1018, '2026-09-14 01:09:12.490371', 'da9218683bcd6321120abd904fc23e86c1c75df8165012232514eadc311f0e8a', 'validated', '{"audio_key":"bec9ccbd24f3823d5df8e5afb5b81848a149b9dbc7d8549a176dd01bf5e2b84f","entity_key":"lx_formal_mediation_and_face_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"da9218683bcd6321120abd904fc23e86c1c75df8165012232514eadc311f0e8a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bec9ccbd24f3823d5df8e5afb5b81848a149b9dbc7d8549a176dd01bf5e2b84f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_formal_mediation_and_face_03 -> audio/generated/ko-KR/lexical/bec9ccbd24f3823d5df8e5afb5b81848a149b9dbc7d8549a176dd01bf5e2b84f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7c23bc57-2eb1-53cb-a680-4450f743153e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_formal_mediation_and_face_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '528e76d8671d362f2e62537987c8f64f2540ab6ceaae9cc24ec6868c39b48c21'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e2019f38-676e-5900-b472-40cd79f6a18d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7c23bc57-2eb1-53cb-a680-4450f743153e', 1), '528e76d8671d362f2e62537987c8f64f2540ab6ceaae9cc24ec6868c39b48c21',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bec9ccbd24f3823d5df8e5afb5b81848a149b9dbc7d8549a176dd01bf5e2b84f.mp3', 1018, '2026-09-14 01:09:12.490371', 'da9218683bcd6321120abd904fc23e86c1c75df8165012232514eadc311f0e8a', 'validated', '{"audio_key":"bec9ccbd24f3823d5df8e5afb5b81848a149b9dbc7d8549a176dd01bf5e2b84f","entity_key":"wf_formal_mediation_and_face_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"da9218683bcd6321120abd904fc23e86c1c75df8165012232514eadc311f0e8a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bec9ccbd24f3823d5df8e5afb5b81848a149b9dbc7d8549a176dd01bf5e2b84f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_implicit_meaning_and_subtext_01 -> audio/generated/ko-KR/lexical/bec9ccbd24f3823d5df8e5afb5b81848a149b9dbc7d8549a176dd01bf5e2b84f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('add830f1-6daf-5355-9e11-feb18adb4861', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_implicit_meaning_and_subtext_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '528e76d8671d362f2e62537987c8f64f2540ab6ceaae9cc24ec6868c39b48c21'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d7c678a-a576-5eac-ab96-11ba999a867a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('add830f1-6daf-5355-9e11-feb18adb4861', 1), '528e76d8671d362f2e62537987c8f64f2540ab6ceaae9cc24ec6868c39b48c21',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bec9ccbd24f3823d5df8e5afb5b81848a149b9dbc7d8549a176dd01bf5e2b84f.mp3', 1018, '2026-09-14 01:09:12.490371', 'da9218683bcd6321120abd904fc23e86c1c75df8165012232514eadc311f0e8a', 'validated', '{"audio_key":"bec9ccbd24f3823d5df8e5afb5b81848a149b9dbc7d8549a176dd01bf5e2b84f","entity_key":"lx_implicit_meaning_and_subtext_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"da9218683bcd6321120abd904fc23e86c1c75df8165012232514eadc311f0e8a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bec9ccbd24f3823d5df8e5afb5b81848a149b9dbc7d8549a176dd01bf5e2b84f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_implicit_meaning_and_subtext_01 -> audio/generated/ko-KR/lexical/bec9ccbd24f3823d5df8e5afb5b81848a149b9dbc7d8549a176dd01bf5e2b84f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c36ca174-a50e-5296-baf1-cb71e9b26886', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_implicit_meaning_and_subtext_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '528e76d8671d362f2e62537987c8f64f2540ab6ceaae9cc24ec6868c39b48c21'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('00607c28-2685-5d75-a852-9c853b436400', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c36ca174-a50e-5296-baf1-cb71e9b26886', 1), '528e76d8671d362f2e62537987c8f64f2540ab6ceaae9cc24ec6868c39b48c21',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bec9ccbd24f3823d5df8e5afb5b81848a149b9dbc7d8549a176dd01bf5e2b84f.mp3', 1018, '2026-09-14 01:09:12.490371', 'da9218683bcd6321120abd904fc23e86c1c75df8165012232514eadc311f0e8a', 'validated', '{"audio_key":"bec9ccbd24f3823d5df8e5afb5b81848a149b9dbc7d8549a176dd01bf5e2b84f","entity_key":"wf_implicit_meaning_and_subtext_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"da9218683bcd6321120abd904fc23e86c1c75df8165012232514eadc311f0e8a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bec9ccbd24f3823d5df8e5afb5b81848a149b9dbc7d8549a176dd01bf5e2b84f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_stance_and_hedging_04 -> audio/generated/ko-KR/lexical/bed009c10bef285e89da7942de0d25e112ef57f71d2e3225672cb5bbc9599928.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('774fda75-36fb-5429-83ba-cb79bd6a344f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_stance_and_hedging_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4df1d0a91532d15e1b752e6eb14a2de56c0715ad154a6b76845f2377799967d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d556dc95-ca52-56fb-8784-9ef5f1b090d6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('774fda75-36fb-5429-83ba-cb79bd6a344f', 1), 'e4df1d0a91532d15e1b752e6eb14a2de56c0715ad154a6b76845f2377799967d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bed009c10bef285e89da7942de0d25e112ef57f71d2e3225672cb5bbc9599928.mp3', 966, '2026-09-14 01:09:12.689717', '07c82e7d00476d37e868fca5d33f9a1c49eb0deb5110922aa4ee8998ea8d4b11', 'validated', '{"audio_key":"bed009c10bef285e89da7942de0d25e112ef57f71d2e3225672cb5bbc9599928","entity_key":"lx_stance_and_hedging_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"07c82e7d00476d37e868fca5d33f9a1c49eb0deb5110922aa4ee8998ea8d4b11","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bed009c10bef285e89da7942de0d25e112ef57f71d2e3225672cb5bbc9599928.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_stance_and_hedging_04 -> audio/generated/ko-KR/lexical/bed009c10bef285e89da7942de0d25e112ef57f71d2e3225672cb5bbc9599928.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bf2c03e2-6f8c-5382-b22c-8e84183f51c4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_stance_and_hedging_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4df1d0a91532d15e1b752e6eb14a2de56c0715ad154a6b76845f2377799967d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b3d31ac-3899-5898-b1c6-76eccf7d4b61', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bf2c03e2-6f8c-5382-b22c-8e84183f51c4', 1), 'e4df1d0a91532d15e1b752e6eb14a2de56c0715ad154a6b76845f2377799967d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bed009c10bef285e89da7942de0d25e112ef57f71d2e3225672cb5bbc9599928.mp3', 966, '2026-09-14 01:09:12.689717', '07c82e7d00476d37e868fca5d33f9a1c49eb0deb5110922aa4ee8998ea8d4b11', 'validated', '{"audio_key":"bed009c10bef285e89da7942de0d25e112ef57f71d2e3225672cb5bbc9599928","entity_key":"wf_stance_and_hedging_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"07c82e7d00476d37e868fca5d33f9a1c49eb0deb5110922aa4ee8998ea8d4b11","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bed009c10bef285e89da7942de0d25e112ef57f71d2e3225672cb5bbc9599928.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_humor_irony_and_cultural_nuance_06 -> audio/generated/ko-KR/lexical/c5c28e068cbf1fa3843558a0f292d30d95e5c0135a2838b4a8381f582f4b21e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1ae8ff07-16ae-55d0-a045-6ff94c915cbd', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_humor_irony_and_cultural_nuance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f67d0f984474898596549e78cf1e9d8d93e605aa4c6c6ff32a9250a595a5c3e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('235114e6-8f01-52af-a3e6-6546a3b5e6eb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1ae8ff07-16ae-55d0-a045-6ff94c915cbd', 1), 'f67d0f984474898596549e78cf1e9d8d93e605aa4c6c6ff32a9250a595a5c3e2',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/c5c28e068cbf1fa3843558a0f292d30d95e5c0135a2838b4a8381f582f4b21e7.mp3', 1384, '2026-09-14 01:09:13.561983', 'f5ba1f04c1896c2a6f2cd75b247574c4b4137c00a269a9b5601936e249a953d9', 'validated', '{"audio_key":"c5c28e068cbf1fa3843558a0f292d30d95e5c0135a2838b4a8381f582f4b21e7","entity_key":"lx_humor_irony_and_cultural_nuance_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f5ba1f04c1896c2a6f2cd75b247574c4b4137c00a269a9b5601936e249a953d9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/c5c28e068cbf1fa3843558a0f292d30d95e5c0135a2838b4a8381f582f4b21e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_humor_irony_and_cultural_nuance_06 -> audio/generated/ko-KR/lexical/c5c28e068cbf1fa3843558a0f292d30d95e5c0135a2838b4a8381f582f4b21e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7e687399-87f5-5030-84ba-0452d942a70c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_humor_irony_and_cultural_nuance_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f67d0f984474898596549e78cf1e9d8d93e605aa4c6c6ff32a9250a595a5c3e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9611c158-e987-5602-a00b-89c9696421b0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7e687399-87f5-5030-84ba-0452d942a70c', 1), 'f67d0f984474898596549e78cf1e9d8d93e605aa4c6c6ff32a9250a595a5c3e2',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/c5c28e068cbf1fa3843558a0f292d30d95e5c0135a2838b4a8381f582f4b21e7.mp3', 1384, '2026-09-14 01:09:13.561983', 'f5ba1f04c1896c2a6f2cd75b247574c4b4137c00a269a9b5601936e249a953d9', 'validated', '{"audio_key":"c5c28e068cbf1fa3843558a0f292d30d95e5c0135a2838b4a8381f582f4b21e7","entity_key":"wf_humor_irony_and_cultural_nuance_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f5ba1f04c1896c2a6f2cd75b247574c4b4137c00a269a9b5601936e249a953d9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/c5c28e068cbf1fa3843558a0f292d30d95e5c0135a2838b4a8381f582f4b21e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_precision_reformulation_03 -> audio/generated/ko-KR/lexical/ca0a7e1225f002543d3d6cfef74a21a4b2762655f1460d5dbe6826a5d0c1ed89.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e7b456c7-97a2-531b-bf18-cc08c9471428', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_precision_reformulation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08e0dfd4fcdc514da446d90b4dd4ad594795b0339ec35a79a36f6c806f1a3255'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91cd12be-a60d-5900-affe-1df1eccbf684', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e7b456c7-97a2-531b-bf18-cc08c9471428', 1), '08e0dfd4fcdc514da446d90b4dd4ad594795b0339ec35a79a36f6c806f1a3255',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ca0a7e1225f002543d3d6cfef74a21a4b2762655f1460d5dbe6826a5d0c1ed89.mp3', 1018, '2026-09-14 01:09:13.702780', '4f5b5f55fbf7924ebc500bef5a40c587181de9a22d021139b7fff6fd6f19233b', 'validated', '{"audio_key":"ca0a7e1225f002543d3d6cfef74a21a4b2762655f1460d5dbe6826a5d0c1ed89","entity_key":"lx_precision_reformulation_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4f5b5f55fbf7924ebc500bef5a40c587181de9a22d021139b7fff6fd6f19233b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ca0a7e1225f002543d3d6cfef74a21a4b2762655f1460d5dbe6826a5d0c1ed89.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_precision_reformulation_03 -> audio/generated/ko-KR/lexical/ca0a7e1225f002543d3d6cfef74a21a4b2762655f1460d5dbe6826a5d0c1ed89.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b0253a3d-5f32-5c86-bf64-8a101562d238', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_precision_reformulation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08e0dfd4fcdc514da446d90b4dd4ad594795b0339ec35a79a36f6c806f1a3255'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4547942-edeb-5b9a-8e4b-02dffa9457d4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b0253a3d-5f32-5c86-bf64-8a101562d238', 1), '08e0dfd4fcdc514da446d90b4dd4ad594795b0339ec35a79a36f6c806f1a3255',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ca0a7e1225f002543d3d6cfef74a21a4b2762655f1460d5dbe6826a5d0c1ed89.mp3', 1018, '2026-09-14 01:09:13.702780', '4f5b5f55fbf7924ebc500bef5a40c587181de9a22d021139b7fff6fd6f19233b', 'validated', '{"audio_key":"ca0a7e1225f002543d3d6cfef74a21a4b2762655f1460d5dbe6826a5d0c1ed89","entity_key":"wf_precision_reformulation_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4f5b5f55fbf7924ebc500bef5a40c587181de9a22d021139b7fff6fd6f19233b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ca0a7e1225f002543d3d6cfef74a21a4b2762655f1460d5dbe6826a5d0c1ed89.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_shifting_06 -> audio/generated/ko-KR/lexical/cb11fe8e9b663495b4532c8936108987fdff15bff85e23b50390399ac90e878e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8eaaf832-1037-5c71-a26e-cd22a9cdd77d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_shifting_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a4d443dca8f926338a7f88d25b732491bae167623ce4ec1e322c445ee953124'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34f44184-aa41-5084-a3d8-febf89d4f358', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8eaaf832-1037-5c71-a26e-cd22a9cdd77d', 1), '1a4d443dca8f926338a7f88d25b732491bae167623ce4ec1e322c445ee953124',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/cb11fe8e9b663495b4532c8936108987fdff15bff85e23b50390399ac90e878e.mp3', 1253, '2026-09-14 01:09:14.576469', '4eef88121b63fde7d0790dc40168239ea74f9db002f5feb33cbc441774b75ae4', 'validated', '{"audio_key":"cb11fe8e9b663495b4532c8936108987fdff15bff85e23b50390399ac90e878e","entity_key":"lx_register_shifting_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4eef88121b63fde7d0790dc40168239ea74f9db002f5feb33cbc441774b75ae4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/cb11fe8e9b663495b4532c8936108987fdff15bff85e23b50390399ac90e878e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_shifting_06 -> audio/generated/ko-KR/lexical/cb11fe8e9b663495b4532c8936108987fdff15bff85e23b50390399ac90e878e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('799e3b6b-bc5f-5ad0-abb4-eda3d1698753', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_shifting_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a4d443dca8f926338a7f88d25b732491bae167623ce4ec1e322c445ee953124'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee03135a-db84-5e20-90c6-97dbe0f714f2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('799e3b6b-bc5f-5ad0-abb4-eda3d1698753', 1), '1a4d443dca8f926338a7f88d25b732491bae167623ce4ec1e322c445ee953124',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/cb11fe8e9b663495b4532c8936108987fdff15bff85e23b50390399ac90e878e.mp3', 1253, '2026-09-14 01:09:14.576469', '4eef88121b63fde7d0790dc40168239ea74f9db002f5feb33cbc441774b75ae4', 'validated', '{"audio_key":"cb11fe8e9b663495b4532c8936108987fdff15bff85e23b50390399ac90e878e","entity_key":"wf_register_shifting_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4eef88121b63fde7d0790dc40168239ea74f9db002f5feb33cbc441774b75ae4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/cb11fe8e9b663495b4532c8936108987fdff15bff85e23b50390399ac90e878e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_register_shifting_04 -> audio/generated/ko-KR/lexical/d0429f796ccddf3f410f9bb8063a2d161999cd6896e82aa5d02e3da0014f9705.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1ede0c8a-0fec-5d56-812a-ec3d0de89667', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_register_shifting_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ff18b09bd14aa035181a60ade514c4e4ab1f76530d4e5804964cfe2eaff2d8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14b9f2fe-8c24-5595-a25f-d98cac19e129', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1ede0c8a-0fec-5d56-812a-ec3d0de89667', 1), '7ff18b09bd14aa035181a60ade514c4e4ab1f76530d4e5804964cfe2eaff2d8b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/d0429f796ccddf3f410f9bb8063a2d161999cd6896e82aa5d02e3da0014f9705.mp3', 1253, '2026-09-14 01:09:14.795598', '3ad696b0926d4adacba634f042a6427933656b7cac7a71ec8b5795de14557246', 'validated', '{"audio_key":"d0429f796ccddf3f410f9bb8063a2d161999cd6896e82aa5d02e3da0014f9705","entity_key":"lx_register_shifting_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3ad696b0926d4adacba634f042a6427933656b7cac7a71ec8b5795de14557246","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/d0429f796ccddf3f410f9bb8063a2d161999cd6896e82aa5d02e3da0014f9705.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_register_shifting_04 -> audio/generated/ko-KR/lexical/d0429f796ccddf3f410f9bb8063a2d161999cd6896e82aa5d02e3da0014f9705.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('76c74142-6235-523c-b19a-322b751ef9a7', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_register_shifting_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ff18b09bd14aa035181a60ade514c4e4ab1f76530d4e5804964cfe2eaff2d8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1b4f2c6-80cc-5d09-b4aa-e9727786e8ab', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('76c74142-6235-523c-b19a-322b751ef9a7', 1), '7ff18b09bd14aa035181a60ade514c4e4ab1f76530d4e5804964cfe2eaff2d8b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/d0429f796ccddf3f410f9bb8063a2d161999cd6896e82aa5d02e3da0014f9705.mp3', 1253, '2026-09-14 01:09:14.795598', '3ad696b0926d4adacba634f042a6427933656b7cac7a71ec8b5795de14557246', 'validated', '{"audio_key":"d0429f796ccddf3f410f9bb8063a2d161999cd6896e82aa5d02e3da0014f9705","entity_key":"wf_register_shifting_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3ad696b0926d4adacba634f042a6427933656b7cac7a71ec8b5795de14557246","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/d0429f796ccddf3f410f9bb8063a2d161999cd6896e82aa5d02e3da0014f9705.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_c1_seoul_policy_forum_capstone_03 -> audio/generated/ko-KR/lexical/d2f916aa8dd8db13ad9d2d9a57a024430d169c5913e1d6dd9c6f00b87b3123a5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('286b1dde-3130-5c5c-96d0-ec0b085a55a3', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_c1_seoul_policy_forum_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4eded7b2c228b85ff6d071d309a62a390dc1b23b87ca8d19059e44fc2669e215'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('39cc7bc9-3a36-5d4b-b674-eb6f7e12d31b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('286b1dde-3130-5c5c-96d0-ec0b085a55a3', 1), '4eded7b2c228b85ff6d071d309a62a390dc1b23b87ca8d19059e44fc2669e215',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/d2f916aa8dd8db13ad9d2d9a57a024430d169c5913e1d6dd9c6f00b87b3123a5.mp3', 1253, '2026-09-14 01:09:15.635386', 'b4caf4658fc5cf19ae6499d8f728d0db2351ae5486ec6c16f79db62c14d3570d', 'validated', '{"audio_key":"d2f916aa8dd8db13ad9d2d9a57a024430d169c5913e1d6dd9c6f00b87b3123a5","entity_key":"lx_c1_seoul_policy_forum_capstone_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b4caf4658fc5cf19ae6499d8f728d0db2351ae5486ec6c16f79db62c14d3570d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/d2f916aa8dd8db13ad9d2d9a57a024430d169c5913e1d6dd9c6f00b87b3123a5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_c1_seoul_policy_forum_capstone_03 -> audio/generated/ko-KR/lexical/d2f916aa8dd8db13ad9d2d9a57a024430d169c5913e1d6dd9c6f00b87b3123a5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f5547a4b-f124-5aac-bdb6-2df662c33ea9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_c1_seoul_policy_forum_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4eded7b2c228b85ff6d071d309a62a390dc1b23b87ca8d19059e44fc2669e215'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c7d8669-4903-5625-9014-ca81d3f272ed', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f5547a4b-f124-5aac-bdb6-2df662c33ea9', 1), '4eded7b2c228b85ff6d071d309a62a390dc1b23b87ca8d19059e44fc2669e215',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/d2f916aa8dd8db13ad9d2d9a57a024430d169c5913e1d6dd9c6f00b87b3123a5.mp3', 1253, '2026-09-14 01:09:15.635386', 'b4caf4658fc5cf19ae6499d8f728d0db2351ae5486ec6c16f79db62c14d3570d', 'validated', '{"audio_key":"d2f916aa8dd8db13ad9d2d9a57a024430d169c5913e1d6dd9c6f00b87b3123a5","entity_key":"wf_c1_seoul_policy_forum_capstone_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b4caf4658fc5cf19ae6499d8f728d0db2351ae5486ec6c16f79db62c14d3570d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/d2f916aa8dd8db13ad9d2d9a57a024430d169c5913e1d6dd9c6f00b87b3123a5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_and_bureaucratic_korean_05 -> audio/generated/ko-KR/lexical/d962a931a445b7d5f2198e91d77f2b87e58a187e5f67af467991250f2b796535.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('119efad5-7bef-5aac-a253-5603588448b9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_and_bureaucratic_korean_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3848048fa5b98c9ec62c2bdc5d647ff916725a73c122afadcf20425c7e779b0b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('42890030-790d-541b-8ed4-c0c824c0c106', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('119efad5-7bef-5aac-a253-5603588448b9', 1), '3848048fa5b98c9ec62c2bdc5d647ff916725a73c122afadcf20425c7e779b0b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/d962a931a445b7d5f2198e91d77f2b87e58a187e5f67af467991250f2b796535.mp3', 1253, '2026-09-14 01:09:15.850327', 'e3a45cd830832e5817375061f22f72dda9bf1ed5ba2e5764cf677397ae80f7ad', 'validated', '{"audio_key":"d962a931a445b7d5f2198e91d77f2b87e58a187e5f67af467991250f2b796535","entity_key":"lx_institutional_and_bureaucratic_korean_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e3a45cd830832e5817375061f22f72dda9bf1ed5ba2e5764cf677397ae80f7ad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/d962a931a445b7d5f2198e91d77f2b87e58a187e5f67af467991250f2b796535.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_and_bureaucratic_korean_05 -> audio/generated/ko-KR/lexical/d962a931a445b7d5f2198e91d77f2b87e58a187e5f67af467991250f2b796535.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a7693f65-cd5d-556a-9c65-29621f24d67b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_and_bureaucratic_korean_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3848048fa5b98c9ec62c2bdc5d647ff916725a73c122afadcf20425c7e779b0b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef545047-5ba6-57cb-b09f-55da27623d3b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a7693f65-cd5d-556a-9c65-29621f24d67b', 1), '3848048fa5b98c9ec62c2bdc5d647ff916725a73c122afadcf20425c7e779b0b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/d962a931a445b7d5f2198e91d77f2b87e58a187e5f67af467991250f2b796535.mp3', 1253, '2026-09-14 01:09:15.850327', 'e3a45cd830832e5817375061f22f72dda9bf1ed5ba2e5764cf677397ae80f7ad', 'validated', '{"audio_key":"d962a931a445b7d5f2198e91d77f2b87e58a187e5f67af467991250f2b796535","entity_key":"wf_institutional_and_bureaucratic_korean_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e3a45cd830832e5817375061f22f72dda9bf1ed5ba2e5764cf677397ae80f7ad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/d962a931a445b7d5f2198e91d77f2b87e58a187e5f67af467991250f2b796535.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_source_synthesis_and_framing_06 -> audio/generated/ko-KR/lexical/deec03b7459e22b5ad7be9865c9053cd9129fa7c018526ba907d8fc68661de09.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a494f93f-421e-578c-b216-d56ca39d38e2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_source_synthesis_and_framing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '27f5401dc3e67c0d278da6ab7e0d43c77903762380c9280bf5f00518a06b1f1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('010ea73c-d56c-53b2-b445-0f22fd4960a0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a494f93f-421e-578c-b216-d56ca39d38e2', 1), '27f5401dc3e67c0d278da6ab7e0d43c77903762380c9280bf5f00518a06b1f1a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/deec03b7459e22b5ad7be9865c9053cd9129fa7c018526ba907d8fc68661de09.mp3', 1149, '2026-09-14 01:09:16.762394', 'bfbb4151094b8dc725098501d88d9ec2d121f2899c78671b974590cecc22d5da', 'validated', '{"audio_key":"deec03b7459e22b5ad7be9865c9053cd9129fa7c018526ba907d8fc68661de09","entity_key":"lx_source_synthesis_and_framing_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bfbb4151094b8dc725098501d88d9ec2d121f2899c78671b974590cecc22d5da","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/deec03b7459e22b5ad7be9865c9053cd9129fa7c018526ba907d8fc68661de09.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_source_synthesis_and_framing_06 -> audio/generated/ko-KR/lexical/deec03b7459e22b5ad7be9865c9053cd9129fa7c018526ba907d8fc68661de09.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dfcf17aa-8551-565e-8b44-95fc42710695', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_source_synthesis_and_framing_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '27f5401dc3e67c0d278da6ab7e0d43c77903762380c9280bf5f00518a06b1f1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c290f6af-666c-5c4a-8403-bab6073c729e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dfcf17aa-8551-565e-8b44-95fc42710695', 1), '27f5401dc3e67c0d278da6ab7e0d43c77903762380c9280bf5f00518a06b1f1a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/deec03b7459e22b5ad7be9865c9053cd9129fa7c018526ba907d8fc68661de09.mp3', 1149, '2026-09-14 01:09:16.762394', 'bfbb4151094b8dc725098501d88d9ec2d121f2899c78671b974590cecc22d5da', 'validated', '{"audio_key":"deec03b7459e22b5ad7be9865c9053cd9129fa7c018526ba907d8fc68661de09","entity_key":"wf_source_synthesis_and_framing_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bfbb4151094b8dc725098501d88d9ec2d121f2899c78671b974590cecc22d5da","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/deec03b7459e22b5ad7be9865c9053cd9129fa7c018526ba907d8fc68661de09.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_precision_reformulation_01 -> audio/generated/ko-KR/lexical/f0f424332c1c2fb9b68cee703bce01625a5171beb144c004c61af2b075c6afe0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b09a2a08-3d74-59fa-8adc-cc1ce37715b9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_precision_reformulation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ab5eb272d7557bec04bd9e0cbeb716c6b27a22ccd6d36878dc3d58e921a1c8f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d408182f-476b-5082-b413-4d6e6a1f1685', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b09a2a08-3d74-59fa-8adc-cc1ce37715b9', 1), '1ab5eb272d7557bec04bd9e0cbeb716c6b27a22ccd6d36878dc3d58e921a1c8f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f0f424332c1c2fb9b68cee703bce01625a5171beb144c004c61af2b075c6afe0.mp3', 1253, '2026-09-14 01:09:16.880219', 'cad19057c7d694108793df0439a97bc220e0ffd41e6c43f6becaad3995424b2d', 'validated', '{"audio_key":"f0f424332c1c2fb9b68cee703bce01625a5171beb144c004c61af2b075c6afe0","entity_key":"lx_precision_reformulation_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cad19057c7d694108793df0439a97bc220e0ffd41e6c43f6becaad3995424b2d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f0f424332c1c2fb9b68cee703bce01625a5171beb144c004c61af2b075c6afe0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_precision_reformulation_01 -> audio/generated/ko-KR/lexical/f0f424332c1c2fb9b68cee703bce01625a5171beb144c004c61af2b075c6afe0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fbd77752-d385-5689-9d9f-ea6daec46f82', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_precision_reformulation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1ab5eb272d7557bec04bd9e0cbeb716c6b27a22ccd6d36878dc3d58e921a1c8f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ebbefd9-053b-5cac-89b4-d5f68ad35db4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fbd77752-d385-5689-9d9f-ea6daec46f82', 1), '1ab5eb272d7557bec04bd9e0cbeb716c6b27a22ccd6d36878dc3d58e921a1c8f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f0f424332c1c2fb9b68cee703bce01625a5171beb144c004c61af2b075c6afe0.mp3', 1253, '2026-09-14 01:09:16.880219', 'cad19057c7d694108793df0439a97bc220e0ffd41e6c43f6becaad3995424b2d', 'validated', '{"audio_key":"f0f424332c1c2fb9b68cee703bce01625a5171beb144c004c61af2b075c6afe0","entity_key":"wf_precision_reformulation_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cad19057c7d694108793df0439a97bc220e0ffd41e6c43f6becaad3995424b2d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f0f424332c1c2fb9b68cee703bce01625a5171beb144c004c61af2b075c6afe0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_institutional_and_bureaucratic_korean_03 -> audio/generated/ko-KR/lexical/f794864ea80351f13e53ff8b2d74264e08be52162844b2b8c923df04212aa2d0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('42f1af44-79b7-5a7c-bb5b-a6353e7bfb97', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_institutional_and_bureaucratic_korean_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be76b6edac681003585a87df6c9992e0c8adf125f9596703a2cc4f1a25fce60f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7565d72d-57fa-5de5-8335-767ab78344b8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('42f1af44-79b7-5a7c-bb5b-a6353e7bfb97', 1), 'be76b6edac681003585a87df6c9992e0c8adf125f9596703a2cc4f1a25fce60f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f794864ea80351f13e53ff8b2d74264e08be52162844b2b8c923df04212aa2d0.mp3', 862, '2026-09-14 01:09:17.739628', '7b68a736530bb967aab6d56310d5bc062a4a29977d9d207e6c65ff2345621d12', 'validated', '{"audio_key":"f794864ea80351f13e53ff8b2d74264e08be52162844b2b8c923df04212aa2d0","entity_key":"lx_institutional_and_bureaucratic_korean_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7b68a736530bb967aab6d56310d5bc062a4a29977d9d207e6c65ff2345621d12","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f794864ea80351f13e53ff8b2d74264e08be52162844b2b8c923df04212aa2d0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_institutional_and_bureaucratic_korean_03 -> audio/generated/ko-KR/lexical/f794864ea80351f13e53ff8b2d74264e08be52162844b2b8c923df04212aa2d0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('abad7718-65c3-5bf4-8764-905bb2b773c6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_institutional_and_bureaucratic_korean_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be76b6edac681003585a87df6c9992e0c8adf125f9596703a2cc4f1a25fce60f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d06290cf-bf68-55d9-a7bb-7416b8020279', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('abad7718-65c3-5bf4-8764-905bb2b773c6', 1), 'be76b6edac681003585a87df6c9992e0c8adf125f9596703a2cc4f1a25fce60f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f794864ea80351f13e53ff8b2d74264e08be52162844b2b8c923df04212aa2d0.mp3', 862, '2026-09-14 01:09:17.739628', '7b68a736530bb967aab6d56310d5bc062a4a29977d9d207e6c65ff2345621d12', 'validated', '{"audio_key":"f794864ea80351f13e53ff8b2d74264e08be52162844b2b8c923df04212aa2d0","entity_key":"wf_institutional_and_bureaucratic_korean_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7b68a736530bb967aab6d56310d5bc062a4a29977d9d207e6c65ff2345621d12","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f794864ea80351f13e53ff8b2d74264e08be52162844b2b8c923df04212aa2d0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_humor_irony_and_cultural_nuance_02 -> audio/generated/ko-KR/lexical/faa30eb33d3898a473cfadb1785888ace346ee993c66b5078294772162961f95.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('540e3184-3d17-57b0-8482-82e1f2108d9e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_humor_irony_and_cultural_nuance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9683003985125a24b9d3cef84d815ecbaef2d7b5c5d80a5e4da866510438fbd9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4651207b-7a35-5770-b926-4c223472d35c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('540e3184-3d17-57b0-8482-82e1f2108d9e', 1), '9683003985125a24b9d3cef84d815ecbaef2d7b5c5d80a5e4da866510438fbd9',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/faa30eb33d3898a473cfadb1785888ace346ee993c66b5078294772162961f95.mp3', 966, '2026-09-14 01:09:17.869185', '23f80db4e9682d63c7bc6da05a0b627ddb4a216d852ddac630c0d4ecc3c21d06', 'validated', '{"audio_key":"faa30eb33d3898a473cfadb1785888ace346ee993c66b5078294772162961f95","entity_key":"lx_humor_irony_and_cultural_nuance_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"23f80db4e9682d63c7bc6da05a0b627ddb4a216d852ddac630c0d4ecc3c21d06","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/faa30eb33d3898a473cfadb1785888ace346ee993c66b5078294772162961f95.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_humor_irony_and_cultural_nuance_02 -> audio/generated/ko-KR/lexical/faa30eb33d3898a473cfadb1785888ace346ee993c66b5078294772162961f95.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2f5f5bf3-9045-5d84-a71a-0261cb948f34', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_humor_irony_and_cultural_nuance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9683003985125a24b9d3cef84d815ecbaef2d7b5c5d80a5e4da866510438fbd9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('43afedc3-a99a-5311-a600-da73e488a565', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2f5f5bf3-9045-5d84-a71a-0261cb948f34', 1), '9683003985125a24b9d3cef84d815ecbaef2d7b5c5d80a5e4da866510438fbd9',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/faa30eb33d3898a473cfadb1785888ace346ee993c66b5078294772162961f95.mp3', 966, '2026-09-14 01:09:17.869185', '23f80db4e9682d63c7bc6da05a0b627ddb4a216d852ddac630c0d4ecc3c21d06', 'validated', '{"audio_key":"faa30eb33d3898a473cfadb1785888ace346ee993c66b5078294772162961f95","entity_key":"wf_humor_irony_and_cultural_nuance_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"23f80db4e9682d63c7bc6da05a0b627ddb4a216d852ddac630c0d4ecc3c21d06","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/faa30eb33d3898a473cfadb1785888ace346ee993c66b5078294772162961f95.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_argument_structure_02 -> audio/generated/ko-KR/utterances/09d3904d8e1ab0105e029f5aef6ca58d3b466df1767e52798d6d9fd973beb03e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a2bdee0d-b017-5a33-a68c-0c53dc8b8a69', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_argument_structure_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9068e96ec0e67ce5ec25ca77cb9b054fd8468ed16d21cafa32ec2cb031da11c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('35a7bfb6-06a7-5cb7-b69f-0ac3a3e0ac4e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a2bdee0d-b017-5a33-a68c-0c53dc8b8a69', 1), 'b9068e96ec0e67ce5ec25ca77cb9b054fd8468ed16d21cafa32ec2cb031da11c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/09d3904d8e1ab0105e029f5aef6ca58d3b466df1767e52798d6d9fd973beb03e.mp3', 6504, '2026-09-14 01:09:19.391411', 'ef70495df7e245e7edd5b6d6e72df8b408f8667bf454ff486308b8eac8575234', 'validated', '{"audio_key":"09d3904d8e1ab0105e029f5aef6ca58d3b466df1767e52798d6d9fd973beb03e","entity_key":"u_argument_structure_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ef70495df7e245e7edd5b6d6e72df8b408f8667bf454ff486308b8eac8575234","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/09d3904d8e1ab0105e029f5aef6ca58d3b466df1767e52798d6d9fd973beb03e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_argument_structure_01_listen -> audio/generated/ko-KR/utterances/09d3904d8e1ab0105e029f5aef6ca58d3b466df1767e52798d6d9fd973beb03e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7b13e754-59d6-5f26-8dda-819f7ca80f4e', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_argument_structure_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9068e96ec0e67ce5ec25ca77cb9b054fd8468ed16d21cafa32ec2cb031da11c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33d24ee9-b8af-5e2b-9cb6-8736a2bc07c9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7b13e754-59d6-5f26-8dda-819f7ca80f4e', 1), 'b9068e96ec0e67ce5ec25ca77cb9b054fd8468ed16d21cafa32ec2cb031da11c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/09d3904d8e1ab0105e029f5aef6ca58d3b466df1767e52798d6d9fd973beb03e.mp3', 6504, '2026-09-14 01:09:19.391411', 'ef70495df7e245e7edd5b6d6e72df8b408f8667bf454ff486308b8eac8575234', 'validated', '{"audio_key":"09d3904d8e1ab0105e029f5aef6ca58d3b466df1767e52798d6d9fd973beb03e","entity_key":"e_argument_structure_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ef70495df7e245e7edd5b6d6e72df8b408f8667bf454ff486308b8eac8575234","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/09d3904d8e1ab0105e029f5aef6ca58d3b466df1767e52798d6d9fd973beb03e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_c1_seoul_policy_forum_capstone_03 -> audio/generated/ko-KR/utterances/0c0132b823751f1a379c40fe5a48673fc51d54af70be4dae8854a89a72084db1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('27c8b7c1-522d-52f6-ba54-2eb0092d9903', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_c1_seoul_policy_forum_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '14f1f4dd9efa697e396e15f0f6bcf6574a357532d622260432627e05ca6a1c48'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3877e7fb-ad35-59dd-ab2b-35f6ebff2279', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('27c8b7c1-522d-52f6-ba54-2eb0092d9903', 1), '14f1f4dd9efa697e396e15f0f6bcf6574a357532d622260432627e05ca6a1c48',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/0c0132b823751f1a379c40fe5a48673fc51d54af70be4dae8854a89a72084db1.mp3', 5381, '2026-09-14 01:09:19.350551', '62ce9a7c98ad3db082d3c9d378064ec502982c8ddfc569ad8f8eec60dfb8f009', 'validated', '{"audio_key":"0c0132b823751f1a379c40fe5a48673fc51d54af70be4dae8854a89a72084db1","entity_key":"u_c1_seoul_policy_forum_capstone_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"62ce9a7c98ad3db082d3c9d378064ec502982c8ddfc569ad8f8eec60dfb8f009","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/0c0132b823751f1a379c40fe5a48673fc51d54af70be4dae8854a89a72084db1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_stance_and_hedging_04 -> audio/generated/ko-KR/utterances/111411e2a744e69ee8ce9f063cedb1fc243435b46ef0392ec97fa79b1a5fa064.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2065fa84-4f49-50f2-8200-91e1d8d86d24', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_stance_and_hedging_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35b59342641f6885b7e6c5078a7497b9969bcdb849f3cbb21669c2fa997df04f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('123da520-4c84-5a3f-8dfc-7f0c9fd8b306', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2065fa84-4f49-50f2-8200-91e1d8d86d24', 1), '35b59342641f6885b7e6c5078a7497b9969bcdb849f3cbb21669c2fa997df04f',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/111411e2a744e69ee8ce9f063cedb1fc243435b46ef0392ec97fa79b1a5fa064.mp3', 4623, '2026-09-14 01:09:20.786390', 'aa5e105a561bbd6d3b12d0b2cb24338d9e44b8c2a9025cb83f50820bee7ade97', 'validated', '{"audio_key":"111411e2a744e69ee8ce9f063cedb1fc243435b46ef0392ec97fa79b1a5fa064","entity_key":"u_stance_and_hedging_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"aa5e105a561bbd6d3b12d0b2cb24338d9e44b8c2a9025cb83f50820bee7ade97","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/111411e2a744e69ee8ce9f063cedb1fc243435b46ef0392ec97fa79b1a5fa064.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_stance_and_hedging_02_listen -> audio/generated/ko-KR/utterances/111411e2a744e69ee8ce9f063cedb1fc243435b46ef0392ec97fa79b1a5fa064.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('66e3a3eb-ba0a-59a3-9dac-ec67105100c9', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_stance_and_hedging_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35b59342641f6885b7e6c5078a7497b9969bcdb849f3cbb21669c2fa997df04f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3cc7c9b7-f96b-5ff6-a5bd-0d96c2d411ac', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('66e3a3eb-ba0a-59a3-9dac-ec67105100c9', 1), '35b59342641f6885b7e6c5078a7497b9969bcdb849f3cbb21669c2fa997df04f',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/111411e2a744e69ee8ce9f063cedb1fc243435b46ef0392ec97fa79b1a5fa064.mp3', 4623, '2026-09-14 01:09:20.786390', 'aa5e105a561bbd6d3b12d0b2cb24338d9e44b8c2a9025cb83f50820bee7ade97', 'validated', '{"audio_key":"111411e2a744e69ee8ce9f063cedb1fc243435b46ef0392ec97fa79b1a5fa064","entity_key":"e_stance_and_hedging_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"aa5e105a561bbd6d3b12d0b2cb24338d9e44b8c2a9025cb83f50820bee7ade97","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/111411e2a744e69ee8ce9f063cedb1fc243435b46ef0392ec97fa79b1a5fa064.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_mediation_and_face_03 -> audio/generated/ko-KR/utterances/20878c7cacb976f138e5571d7538f9410f810a594c3b0376c597d55fa95b4704.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3fe9e6eb-b7b7-55a6-b127-7001b2d76ba6', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_mediation_and_face_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67b38f48f4bb80e73168d17907e999cf62293a69b3cb14fed8c5b9cdc8b6313a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f521f182-946f-527a-aaee-b0f08b84fc2f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3fe9e6eb-b7b7-55a6-b127-7001b2d76ba6', 1), '67b38f48f4bb80e73168d17907e999cf62293a69b3cb14fed8c5b9cdc8b6313a',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/20878c7cacb976f138e5571d7538f9410f810a594c3b0376c597d55fa95b4704.mp3', 5799, '2026-09-14 01:09:20.891911', '35c1b444c1ba1d2bc15ddebf40803554213553bb73ac79672c4c69e3e1ae7e1e', 'validated', '{"audio_key":"20878c7cacb976f138e5571d7538f9410f810a594c3b0376c597d55fa95b4704","entity_key":"u_formal_mediation_and_face_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"35c1b444c1ba1d2bc15ddebf40803554213553bb73ac79672c4c69e3e1ae7e1e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/20878c7cacb976f138e5571d7538f9410f810a594c3b0376c597d55fa95b4704.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_argument_structure_01 -> audio/generated/ko-KR/utterances/2279486c5140e1a4ee1529c48ef48295c1d216b3b457a204257414b5b124a57d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e30e8025-9714-5f29-a0fe-b5887daf9b1d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_argument_structure_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '84e098f3eb7a752203123fe3aedafc42b00f2706097545c9b36938c99c4d3702'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3050d410-2cbb-5cf5-8d1e-764cbbe421d8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e30e8025-9714-5f29-a0fe-b5887daf9b1d', 1), '84e098f3eb7a752203123fe3aedafc42b00f2706097545c9b36938c99c4d3702',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/2279486c5140e1a4ee1529c48ef48295c1d216b3b457a204257414b5b124a57d.mp3', 4728, '2026-09-14 01:09:22.282236', '21e888acffa741bc5119847b9f82f26bdb2cc67503696d1bfebf024f5a7fbb3f', 'validated', '{"audio_key":"2279486c5140e1a4ee1529c48ef48295c1d216b3b457a204257414b5b124a57d","entity_key":"u_argument_structure_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"21e888acffa741bc5119847b9f82f26bdb2cc67503696d1bfebf024f5a7fbb3f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/2279486c5140e1a4ee1529c48ef48295c1d216b3b457a204257414b5b124a57d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_c1_seoul_policy_forum_capstone_02 -> audio/generated/ko-KR/utterances/2506d0a474d23e5df20a7ec6aa32515d71b4c573d7e2c2bb262b9ce2c6fb3033.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fe92050c-2f05-509c-95de-9d0cb8fad484', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_c1_seoul_policy_forum_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cda3862779eca66c3b9e799823ec88a3168314050d727d70974abe2cbf48582'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4b441b75-5701-5cfc-a2e8-364ef42df971', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fe92050c-2f05-509c-95de-9d0cb8fad484', 1), '7cda3862779eca66c3b9e799823ec88a3168314050d727d70974abe2cbf48582',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/2506d0a474d23e5df20a7ec6aa32515d71b4c573d7e2c2bb262b9ce2c6fb3033.mp3', 5093, '2026-09-14 01:09:22.512298', '207ec98a9a053c8696c1cb368019594d9576691c7440b00012feb26dda870fd3', 'validated', '{"audio_key":"2506d0a474d23e5df20a7ec6aa32515d71b4c573d7e2c2bb262b9ce2c6fb3033","entity_key":"u_c1_seoul_policy_forum_capstone_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"207ec98a9a053c8696c1cb368019594d9576691c7440b00012feb26dda870fd3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/2506d0a474d23e5df20a7ec6aa32515d71b4c573d7e2c2bb262b9ce2c6fb3033.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_c1_seoul_policy_forum_capstone_01_listen -> audio/generated/ko-KR/utterances/2506d0a474d23e5df20a7ec6aa32515d71b4c573d7e2c2bb262b9ce2c6fb3033.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('bb88d543-62ba-5bee-948d-0f252ef3bd1b', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_c1_seoul_policy_forum_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7cda3862779eca66c3b9e799823ec88a3168314050d727d70974abe2cbf48582'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a5119bc-2841-564b-8bc0-f88d4e6dc42a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('bb88d543-62ba-5bee-948d-0f252ef3bd1b', 1), '7cda3862779eca66c3b9e799823ec88a3168314050d727d70974abe2cbf48582',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/2506d0a474d23e5df20a7ec6aa32515d71b4c573d7e2c2bb262b9ce2c6fb3033.mp3', 5093, '2026-09-14 01:09:22.512298', '207ec98a9a053c8696c1cb368019594d9576691c7440b00012feb26dda870fd3', 'validated', '{"audio_key":"2506d0a474d23e5df20a7ec6aa32515d71b4c573d7e2c2bb262b9ce2c6fb3033","entity_key":"e_c1_seoul_policy_forum_capstone_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"207ec98a9a053c8696c1cb368019594d9576691c7440b00012feb26dda870fd3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/2506d0a474d23e5df20a7ec6aa32515d71b4c573d7e2c2bb262b9ce2c6fb3033.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_humor_irony_and_cultural_nuance_01 -> audio/generated/ko-KR/utterances/2a036fb75b697286a69c68cfc3beafb2cc10ac21cedbf0b53df898a4d03c4e53.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('645b7a01-bb5f-5285-9aaa-09096085a372', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_humor_irony_and_cultural_nuance_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4204e0b1fd5fddbb001a24ea947482f686ba225ac6f85cfa664636333c3b961f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f93d2f6f-8e97-5236-99db-db15936647dc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('645b7a01-bb5f-5285-9aaa-09096085a372', 1), '4204e0b1fd5fddbb001a24ea947482f686ba225ac6f85cfa664636333c3b961f',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/2a036fb75b697286a69c68cfc3beafb2cc10ac21cedbf0b53df898a4d03c4e53.mp3', 5093, '2026-09-14 01:09:23.900993', '15ea5ddb8cb94d61b5337852b8f3cad3eb2e47ca1d53799d19a477a88eaf6468', 'validated', '{"audio_key":"2a036fb75b697286a69c68cfc3beafb2cc10ac21cedbf0b53df898a4d03c4e53","entity_key":"u_humor_irony_and_cultural_nuance_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"15ea5ddb8cb94d61b5337852b8f3cad3eb2e47ca1d53799d19a477a88eaf6468","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/2a036fb75b697286a69c68cfc3beafb2cc10ac21cedbf0b53df898a4d03c4e53.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_mediation_and_face_02 -> audio/generated/ko-KR/utterances/3304b8ec17b751347b8ffb1e3f05fc3e2672382b10f525ce3a895277517ba8ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('13619d7d-ac5a-564d-80c2-d81cf82ca9d4', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_mediation_and_face_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1a00305ac4513795987b2e1c07e89a1052970b8ec58784620033d31ff4db2f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dfebe740-71d1-5365-81e3-ea5c486b570f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('13619d7d-ac5a-564d-80c2-d81cf82ca9d4', 1), 'e1a00305ac4513795987b2e1c07e89a1052970b8ec58784620033d31ff4db2f6',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/3304b8ec17b751347b8ffb1e3f05fc3e2672382b10f525ce3a895277517ba8ad.mp3', 5328, '2026-09-14 01:09:24.025716', 'de96b6baea3e551235ca32de09c0644e94667a845fb42152bc70fe029ae5c2e0', 'validated', '{"audio_key":"3304b8ec17b751347b8ffb1e3f05fc3e2672382b10f525ce3a895277517ba8ad","entity_key":"u_formal_mediation_and_face_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"de96b6baea3e551235ca32de09c0644e94667a845fb42152bc70fe029ae5c2e0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/3304b8ec17b751347b8ffb1e3f05fc3e2672382b10f525ce3a895277517ba8ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_formal_mediation_and_face_01_listen -> audio/generated/ko-KR/utterances/3304b8ec17b751347b8ffb1e3f05fc3e2672382b10f525ce3a895277517ba8ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('9083dd1b-c900-5fc5-b47e-030132dc5165', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_formal_mediation_and_face_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e1a00305ac4513795987b2e1c07e89a1052970b8ec58784620033d31ff4db2f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6684a694-bfa7-5ded-9eda-e6c9d6762f2c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('9083dd1b-c900-5fc5-b47e-030132dc5165', 1), 'e1a00305ac4513795987b2e1c07e89a1052970b8ec58784620033d31ff4db2f6',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/3304b8ec17b751347b8ffb1e3f05fc3e2672382b10f525ce3a895277517ba8ad.mp3', 5328, '2026-09-14 01:09:24.025716', 'de96b6baea3e551235ca32de09c0644e94667a845fb42152bc70fe029ae5c2e0', 'validated', '{"audio_key":"3304b8ec17b751347b8ffb1e3f05fc3e2672382b10f525ce3a895277517ba8ad","entity_key":"e_formal_mediation_and_face_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"de96b6baea3e551235ca32de09c0644e94667a845fb42152bc70fe029ae5c2e0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/3304b8ec17b751347b8ffb1e3f05fc3e2672382b10f525ce3a895277517ba8ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_source_synthesis_and_framing_03 -> audio/generated/ko-KR/utterances/34af28ca069acbf754fd3dafdc64de2cc951ba74ae87256614b42d074633cc0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('dafa549c-aac3-57e6-9886-7ed334eaff9f', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_source_synthesis_and_framing_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc0fba85a1e3e780ed16bb7ef1b3c1413c6d2b1daeb1c12b49995c45390f3ddb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('874d89ac-3ec1-5066-9ff9-0bba86f23417', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('dafa549c-aac3-57e6-9886-7ed334eaff9f', 1), 'dc0fba85a1e3e780ed16bb7ef1b3c1413c6d2b1daeb1c12b49995c45390f3ddb',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/34af28ca069acbf754fd3dafdc64de2cc951ba74ae87256614b42d074633cc0c.mp3', 5929, '2026-09-14 01:09:25.462122', '836d8e3160350f31c60fb6bf7940d24b8ede8ae88296d97b2cf67ebd6baff39e', 'validated', '{"audio_key":"34af28ca069acbf754fd3dafdc64de2cc951ba74ae87256614b42d074633cc0c","entity_key":"u_source_synthesis_and_framing_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"836d8e3160350f31c60fb6bf7940d24b8ede8ae88296d97b2cf67ebd6baff39e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/34af28ca069acbf754fd3dafdc64de2cc951ba74ae87256614b42d074633cc0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_mediation_and_face_04 -> audio/generated/ko-KR/utterances/3bdb8fd81842420c39b28684d77af1b9bd24a29fe78227eaa2d5bfde33092f0e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('99b2c05d-eca6-5fe3-9bd0-1b7c8e266103', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_mediation_and_face_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d6ea11807ec7a7dbfa8140f4e07c75b0aac0fc856e119e05c9d6ca7a2035172'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('935ee02d-b64d-5f62-894c-d1cee6550ca0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('99b2c05d-eca6-5fe3-9bd0-1b7c8e266103', 1), '0d6ea11807ec7a7dbfa8140f4e07c75b0aac0fc856e119e05c9d6ca7a2035172',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/3bdb8fd81842420c39b28684d77af1b9bd24a29fe78227eaa2d5bfde33092f0e.mp3', 5433, '2026-09-14 01:09:25.589968', '1dced29a87c1a6c46f244647b2031103baf9fc79640fd2e32dfbdde53fbd03e8', 'validated', '{"audio_key":"3bdb8fd81842420c39b28684d77af1b9bd24a29fe78227eaa2d5bfde33092f0e","entity_key":"u_formal_mediation_and_face_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1dced29a87c1a6c46f244647b2031103baf9fc79640fd2e32dfbdde53fbd03e8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/3bdb8fd81842420c39b28684d77af1b9bd24a29fe78227eaa2d5bfde33092f0e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_formal_mediation_and_face_02_listen -> audio/generated/ko-KR/utterances/3bdb8fd81842420c39b28684d77af1b9bd24a29fe78227eaa2d5bfde33092f0e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('dff82700-e889-5f36-b313-534d5200a5fd', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_formal_mediation_and_face_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d6ea11807ec7a7dbfa8140f4e07c75b0aac0fc856e119e05c9d6ca7a2035172'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('923554e1-98e8-5dae-b465-f57889fbda09', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('dff82700-e889-5f36-b313-534d5200a5fd', 1), '0d6ea11807ec7a7dbfa8140f4e07c75b0aac0fc856e119e05c9d6ca7a2035172',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/3bdb8fd81842420c39b28684d77af1b9bd24a29fe78227eaa2d5bfde33092f0e.mp3', 5433, '2026-09-14 01:09:25.589968', '1dced29a87c1a6c46f244647b2031103baf9fc79640fd2e32dfbdde53fbd03e8', 'validated', '{"audio_key":"3bdb8fd81842420c39b28684d77af1b9bd24a29fe78227eaa2d5bfde33092f0e","entity_key":"e_formal_mediation_and_face_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1dced29a87c1a6c46f244647b2031103baf9fc79640fd2e32dfbdde53fbd03e8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/3bdb8fd81842420c39b28684d77af1b9bd24a29fe78227eaa2d5bfde33092f0e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_formal_mediation_and_face_01 -> audio/generated/ko-KR/utterances/3d1289bdf604dd934de1c771435c0c75369393dd314918773fa41d7ad43e2adc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3a824532-1a4e-59f1-9b4e-21a028610d2e', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_formal_mediation_and_face_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e5100871e51b20acf41ce4ec1a0c9d78046f64a782c91dcdcad73ba19d2900cd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de13c5e2-dc75-533f-8826-e9346863f907', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3a824532-1a4e-59f1-9b4e-21a028610d2e', 1), 'e5100871e51b20acf41ce4ec1a0c9d78046f64a782c91dcdcad73ba19d2900cd',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/3d1289bdf604dd934de1c771435c0c75369393dd314918773fa41d7ad43e2adc.mp3', 5433, '2026-09-14 01:09:26.972290', '42ad9775d77c2acafe01bca7934ae8809269a4eda24b6677a204424205bd37ee', 'validated', '{"audio_key":"3d1289bdf604dd934de1c771435c0c75369393dd314918773fa41d7ad43e2adc","entity_key":"u_formal_mediation_and_face_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"42ad9775d77c2acafe01bca7934ae8809269a4eda24b6677a204424205bd37ee","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/3d1289bdf604dd934de1c771435c0c75369393dd314918773fa41d7ad43e2adc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_humor_irony_and_cultural_nuance_02 -> audio/generated/ko-KR/utterances/69f65195ca3a40b03a8d6fb482b4a22eb43ea045805e58a58371001bf653598f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('03dccde4-2c81-5017-8092-3ab4ef860f00', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_humor_irony_and_cultural_nuance_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '135042b07e7d1f5ca11956dd52fde0a884edea813fe976460ca7bb216e2b327e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('008044e2-107d-5014-aecc-2a877fd6d578', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('03dccde4-2c81-5017-8092-3ab4ef860f00', 1), '135042b07e7d1f5ca11956dd52fde0a884edea813fe976460ca7bb216e2b327e',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/69f65195ca3a40b03a8d6fb482b4a22eb43ea045805e58a58371001bf653598f.mp3', 4832, '2026-09-14 01:09:27.064359', '5e36fac8a58f18ce67c3bca90e4bdb7ee218aee5816bd27a7a343152df2f67c3', 'validated', '{"audio_key":"69f65195ca3a40b03a8d6fb482b4a22eb43ea045805e58a58371001bf653598f","entity_key":"u_humor_irony_and_cultural_nuance_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5e36fac8a58f18ce67c3bca90e4bdb7ee218aee5816bd27a7a343152df2f67c3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/69f65195ca3a40b03a8d6fb482b4a22eb43ea045805e58a58371001bf653598f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_humor_irony_and_cultural_nuance_01_listen -> audio/generated/ko-KR/utterances/69f65195ca3a40b03a8d6fb482b4a22eb43ea045805e58a58371001bf653598f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2b04483c-6ea9-5d06-9645-60c9da254864', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_humor_irony_and_cultural_nuance_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '135042b07e7d1f5ca11956dd52fde0a884edea813fe976460ca7bb216e2b327e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1fe47ef5-ad72-5301-a720-dac215a0538c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2b04483c-6ea9-5d06-9645-60c9da254864', 1), '135042b07e7d1f5ca11956dd52fde0a884edea813fe976460ca7bb216e2b327e',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/69f65195ca3a40b03a8d6fb482b4a22eb43ea045805e58a58371001bf653598f.mp3', 4832, '2026-09-14 01:09:27.064359', '5e36fac8a58f18ce67c3bca90e4bdb7ee218aee5816bd27a7a343152df2f67c3', 'validated', '{"audio_key":"69f65195ca3a40b03a8d6fb482b4a22eb43ea045805e58a58371001bf653598f","entity_key":"e_humor_irony_and_cultural_nuance_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5e36fac8a58f18ce67c3bca90e4bdb7ee218aee5816bd27a7a343152df2f67c3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/69f65195ca3a40b03a8d6fb482b4a22eb43ea045805e58a58371001bf653598f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_precision_reformulation_03 -> audio/generated/ko-KR/utterances/6cba154cf481497a1b6204fe47c4c241e88ae153f3bbac2115872c0554b4f8d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2a7bcf32-fa5f-5de0-b273-7bd5b450dcf2', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_precision_reformulation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0cc89246321b8eb35d10426bcd6cb81da1df5bb6d59bde11be304d624570e7a2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('937ece2f-4bec-5ca3-b078-4aa4c90d877e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2a7bcf32-fa5f-5de0-b273-7bd5b450dcf2', 1), '0cc89246321b8eb35d10426bcd6cb81da1df5bb6d59bde11be304d624570e7a2',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/6cba154cf481497a1b6204fe47c4c241e88ae153f3bbac2115872c0554b4f8d6.mp3', 4623, '2026-09-14 01:09:28.444684', '6deb73d571b6243c66bcedab7c045889724709c22dfde1f8055e1b939c117018', 'validated', '{"audio_key":"6cba154cf481497a1b6204fe47c4c241e88ae153f3bbac2115872c0554b4f8d6","entity_key":"u_precision_reformulation_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6deb73d571b6243c66bcedab7c045889724709c22dfde1f8055e1b939c117018","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/6cba154cf481497a1b6204fe47c4c241e88ae153f3bbac2115872c0554b4f8d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_c1_seoul_policy_forum_capstone_01 -> audio/generated/ko-KR/utterances/71a4998e3fed9f4acda9c62836baf83eb077ae53db9c12a77ea162f938fa8f78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4aa9c295-0018-5c95-871e-394db15e37ea', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_c1_seoul_policy_forum_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '08383f7a6f69b48929a7febc3d9c60eabf80dfd14bae95febb6b887de6e99fc0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea03dba5-9e69-5e43-95b4-989b8cfef705', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4aa9c295-0018-5c95-871e-394db15e37ea', 1), '08383f7a6f69b48929a7febc3d9c60eabf80dfd14bae95febb6b887de6e99fc0',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/71a4998e3fed9f4acda9c62836baf83eb077ae53db9c12a77ea162f938fa8f78.mp3', 6504, '2026-09-14 01:09:28.733296', 'f4c715a5ed9e6a88db5cb8341dea3eb1b1d9ad08df4918c253dd93236ad2c35e', 'validated', '{"audio_key":"71a4998e3fed9f4acda9c62836baf83eb077ae53db9c12a77ea162f938fa8f78","entity_key":"u_c1_seoul_policy_forum_capstone_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f4c715a5ed9e6a88db5cb8341dea3eb1b1d9ad08df4918c253dd93236ad2c35e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/71a4998e3fed9f4acda9c62836baf83eb077ae53db9c12a77ea162f938fa8f78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_stance_and_hedging_03 -> audio/generated/ko-KR/utterances/7231d2b1c665378574e2365491de956e79eb608a076b9489365830e725907803.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6ba73609-b3da-5b26-9ee2-327799f938d0', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_stance_and_hedging_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '16e8003932e3b567c20f431b93d261d43157a21041e8d76bb31995b74ccd34fe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4917268f-8512-54a1-b60c-adb85b07cea2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6ba73609-b3da-5b26-9ee2-327799f938d0', 1), '16e8003932e3b567c20f431b93d261d43157a21041e8d76bb31995b74ccd34fe',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7231d2b1c665378574e2365491de956e79eb608a076b9489365830e725907803.mp3', 5381, '2026-09-14 01:09:29.932355', '3ec6c69fc7d9f8b3fabb9403d4643b76a5e66b0a6139b6365ec8823bc7457005', 'validated', '{"audio_key":"7231d2b1c665378574e2365491de956e79eb608a076b9489365830e725907803","entity_key":"u_stance_and_hedging_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3ec6c69fc7d9f8b3fabb9403d4643b76a5e66b0a6139b6365ec8823bc7457005","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7231d2b1c665378574e2365491de956e79eb608a076b9489365830e725907803.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_implicit_meaning_and_subtext_03 -> audio/generated/ko-KR/utterances/794a268aa142fdad7fa912358427b6566f843255043c05c1308f74c15685deb2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d245100c-701c-5302-8363-9937ae4fda7d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_implicit_meaning_and_subtext_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9cd11eabab79984bdc234ad31147105f8a90fe9c6fea4f56a057cfb4b2c7055e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58270e79-51ba-5ba7-a467-c549a32250db', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d245100c-701c-5302-8363-9937ae4fda7d', 1), '9cd11eabab79984bdc234ad31147105f8a90fe9c6fea4f56a057cfb4b2c7055e',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/794a268aa142fdad7fa912358427b6566f843255043c05c1308f74c15685deb2.mp3', 5433, '2026-09-14 01:09:30.348640', '35041ba168aed3a26eefdbe40b52ed3fa68b79aafa967d65812ac27c7320363d', 'validated', '{"audio_key":"794a268aa142fdad7fa912358427b6566f843255043c05c1308f74c15685deb2","entity_key":"u_implicit_meaning_and_subtext_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"35041ba168aed3a26eefdbe40b52ed3fa68b79aafa967d65812ac27c7320363d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/794a268aa142fdad7fa912358427b6566f843255043c05c1308f74c15685deb2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_precision_reformulation_02 -> audio/generated/ko-KR/utterances/8000778322b7f258f2e291fc7cbece84929a31bcd5a83f21b39773051173584c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b6de2c4d-ba85-5297-ac9f-62f5da166908', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_precision_reformulation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17ea2d8d26bcc21b2822c03e7d6b4f672bc9ceecff6ec96b4e1104d52e697266'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8228ef75-2cde-55b7-8714-de87f3bc4895', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b6de2c4d-ba85-5297-ac9f-62f5da166908', 1), '17ea2d8d26bcc21b2822c03e7d6b4f672bc9ceecff6ec96b4e1104d52e697266',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/8000778322b7f258f2e291fc7cbece84929a31bcd5a83f21b39773051173584c.mp3', 4623, '2026-09-14 01:09:31.475535', '2c3c830efcc39e86119e88e428b6dbab562d763dc9d8ced21d072a2dcbb69b08', 'validated', '{"audio_key":"8000778322b7f258f2e291fc7cbece84929a31bcd5a83f21b39773051173584c","entity_key":"u_precision_reformulation_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2c3c830efcc39e86119e88e428b6dbab562d763dc9d8ced21d072a2dcbb69b08","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/8000778322b7f258f2e291fc7cbece84929a31bcd5a83f21b39773051173584c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_precision_reformulation_01_listen -> audio/generated/ko-KR/utterances/8000778322b7f258f2e291fc7cbece84929a31bcd5a83f21b39773051173584c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a046d705-313d-58ed-b32b-ad503f92bdd5', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_precision_reformulation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17ea2d8d26bcc21b2822c03e7d6b4f672bc9ceecff6ec96b4e1104d52e697266'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('661bcdad-36be-56fd-b09e-3c1f9119508f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a046d705-313d-58ed-b32b-ad503f92bdd5', 1), '17ea2d8d26bcc21b2822c03e7d6b4f672bc9ceecff6ec96b4e1104d52e697266',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/8000778322b7f258f2e291fc7cbece84929a31bcd5a83f21b39773051173584c.mp3', 4623, '2026-09-14 01:09:31.475535', '2c3c830efcc39e86119e88e428b6dbab562d763dc9d8ced21d072a2dcbb69b08', 'validated', '{"audio_key":"8000778322b7f258f2e291fc7cbece84929a31bcd5a83f21b39773051173584c","entity_key":"e_precision_reformulation_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2c3c830efcc39e86119e88e428b6dbab562d763dc9d8ced21d072a2dcbb69b08","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/8000778322b7f258f2e291fc7cbece84929a31bcd5a83f21b39773051173584c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_institutional_and_bureaucratic_korean_02 -> audio/generated/ko-KR/utterances/9a63cc9a644e89eccee57f7aa09c3e3aacc3f75ef5c92d85f2cdd444acc81477.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c2c57ea8-1511-5c9d-a6fe-cc8fffa2c986', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_institutional_and_bureaucratic_korean_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '921e5b6866dc5b5a764e8194141a224eeb4e5969e496eb0de59d09f11cdab8a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6df71399-401f-52e6-a603-ed67ffeba3ff', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c2c57ea8-1511-5c9d-a6fe-cc8fffa2c986', 1), '921e5b6866dc5b5a764e8194141a224eeb4e5969e496eb0de59d09f11cdab8a7',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/9a63cc9a644e89eccee57f7aa09c3e3aacc3f75ef5c92d85f2cdd444acc81477.mp3', 4832, '2026-09-14 01:09:31.788671', 'd3f2203000c3f60bb0bc00f5f1e1b1e9f7448bc517212ffe2c6698d67f02f836', 'validated', '{"audio_key":"9a63cc9a644e89eccee57f7aa09c3e3aacc3f75ef5c92d85f2cdd444acc81477","entity_key":"u_institutional_and_bureaucratic_korean_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d3f2203000c3f60bb0bc00f5f1e1b1e9f7448bc517212ffe2c6698d67f02f836","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/9a63cc9a644e89eccee57f7aa09c3e3aacc3f75ef5c92d85f2cdd444acc81477.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_institutional_and_bureaucratic_korean_01_listen -> audio/generated/ko-KR/utterances/9a63cc9a644e89eccee57f7aa09c3e3aacc3f75ef5c92d85f2cdd444acc81477.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('07d2acae-fe93-5cd7-8831-f96d0f399595', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_institutional_and_bureaucratic_korean_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '921e5b6866dc5b5a764e8194141a224eeb4e5969e496eb0de59d09f11cdab8a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1fc12f8a-49bd-5803-b9ba-04c7def85255', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('07d2acae-fe93-5cd7-8831-f96d0f399595', 1), '921e5b6866dc5b5a764e8194141a224eeb4e5969e496eb0de59d09f11cdab8a7',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/9a63cc9a644e89eccee57f7aa09c3e3aacc3f75ef5c92d85f2cdd444acc81477.mp3', 4832, '2026-09-14 01:09:31.788671', 'd3f2203000c3f60bb0bc00f5f1e1b1e9f7448bc517212ffe2c6698d67f02f836', 'validated', '{"audio_key":"9a63cc9a644e89eccee57f7aa09c3e3aacc3f75ef5c92d85f2cdd444acc81477","entity_key":"e_institutional_and_bureaucratic_korean_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d3f2203000c3f60bb0bc00f5f1e1b1e9f7448bc517212ffe2c6698d67f02f836","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/9a63cc9a644e89eccee57f7aa09c3e3aacc3f75ef5c92d85f2cdd444acc81477.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_institutional_and_bureaucratic_korean_04 -> audio/generated/ko-KR/utterances/a60a0b582dfbb4adb0467df087945a903dddbe3a2e21d664e0305f395b269f37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('80c12797-9ca2-5f7c-80e6-1d6a85759855', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_institutional_and_bureaucratic_korean_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2e740d76ea91eb79d562291bc602980e4d3d14ddf764d0c710290399df90cc1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7d844dc3-ebb5-50fe-91d6-de9765557652', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('80c12797-9ca2-5f7c-80e6-1d6a85759855', 1), 'b2e740d76ea91eb79d562291bc602980e4d3d14ddf764d0c710290399df90cc1',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/a60a0b582dfbb4adb0467df087945a903dddbe3a2e21d664e0305f395b269f37.mp3', 4022, '2026-09-14 01:09:32.804708', 'd813e95b07f94fc23315a7ed43165c2fd8b5696b86cca7a386a053a1fdca8231', 'validated', '{"audio_key":"a60a0b582dfbb4adb0467df087945a903dddbe3a2e21d664e0305f395b269f37","entity_key":"u_institutional_and_bureaucratic_korean_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d813e95b07f94fc23315a7ed43165c2fd8b5696b86cca7a386a053a1fdca8231","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/a60a0b582dfbb4adb0467df087945a903dddbe3a2e21d664e0305f395b269f37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_institutional_and_bureaucratic_korean_02_listen -> audio/generated/ko-KR/utterances/a60a0b582dfbb4adb0467df087945a903dddbe3a2e21d664e0305f395b269f37.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1853603a-4a85-5188-82f6-00089443abba', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_institutional_and_bureaucratic_korean_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2e740d76ea91eb79d562291bc602980e4d3d14ddf764d0c710290399df90cc1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6bbc2585-d926-5057-83e3-49f3e129dc1a', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1853603a-4a85-5188-82f6-00089443abba', 1), 'b2e740d76ea91eb79d562291bc602980e4d3d14ddf764d0c710290399df90cc1',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/a60a0b582dfbb4adb0467df087945a903dddbe3a2e21d664e0305f395b269f37.mp3', 4022, '2026-09-14 01:09:32.804708', 'd813e95b07f94fc23315a7ed43165c2fd8b5696b86cca7a386a053a1fdca8231', 'validated', '{"audio_key":"a60a0b582dfbb4adb0467df087945a903dddbe3a2e21d664e0305f395b269f37","entity_key":"e_institutional_and_bureaucratic_korean_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d813e95b07f94fc23315a7ed43165c2fd8b5696b86cca7a386a053a1fdca8231","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/a60a0b582dfbb4adb0467df087945a903dddbe3a2e21d664e0305f395b269f37.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_shifting_01 -> audio/generated/ko-KR/utterances/a9fd7a7cb95856b36093afe0451940527549df4eef01b7beea79ce84892ea960.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('85ca03fd-da46-5d19-903c-1ce453e5cc65', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_shifting_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9765f0321c6588500511b6ac1e8483017aa25d4652222e6d63d1dcacc0381541'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b923010-3e9e-55e7-8f65-63b1d61485f8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('85ca03fd-da46-5d19-903c-1ce453e5cc65', 1), '9765f0321c6588500511b6ac1e8483017aa25d4652222e6d63d1dcacc0381541',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/a9fd7a7cb95856b36093afe0451940527549df4eef01b7beea79ce84892ea960.mp3', 6452, '2026-09-14 01:09:33.413012', '9733577b80a6d17a2f075140128ab9ab6654746c65dc84d5247004f2661428f7', 'validated', '{"audio_key":"a9fd7a7cb95856b36093afe0451940527549df4eef01b7beea79ce84892ea960","entity_key":"u_register_shifting_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9733577b80a6d17a2f075140128ab9ab6654746c65dc84d5247004f2661428f7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/a9fd7a7cb95856b36093afe0451940527549df4eef01b7beea79ce84892ea960.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_institutional_and_bureaucratic_korean_01 -> audio/generated/ko-KR/utterances/aea47ccad1511a1ce87eeacbc2a040344a534c5acb199397ceb059cf4a3f02e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a1defa96-e896-58eb-a347-cba5b4705ab7', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_institutional_and_bureaucratic_korean_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '855b0a63cdca40e01f262d5763812fccd7dd361e30357df93f2ad63b2548995d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ae1acf46-ae16-5990-8855-0c180b119915', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a1defa96-e896-58eb-a347-cba5b4705ab7', 1), '855b0a63cdca40e01f262d5763812fccd7dd361e30357df93f2ad63b2548995d',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/aea47ccad1511a1ce87eeacbc2a040344a534c5acb199397ceb059cf4a3f02e5.mp3', 5146, '2026-09-14 01:09:34.260595', '9e28324d17aad441830e9c56b7478cb64feee86c57624a461fea6bfde51e8da5', 'validated', '{"audio_key":"aea47ccad1511a1ce87eeacbc2a040344a534c5acb199397ceb059cf4a3f02e5","entity_key":"u_institutional_and_bureaucratic_korean_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9e28324d17aad441830e9c56b7478cb64feee86c57624a461fea6bfde51e8da5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/aea47ccad1511a1ce87eeacbc2a040344a534c5acb199397ceb059cf4a3f02e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_stance_and_hedging_02 -> audio/generated/ko-KR/utterances/aec616fbef6dd8252e278787f9bbed901fd6335c09dc92b8cd60da349b6c8daf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b519c425-6de9-5631-8876-b55256fb2f1d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_stance_and_hedging_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a63a4fdc8e9ab24daf19772dafc5db78046075e52ce5d188d9aae0a558291d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07db1717-57e0-538a-90a2-8e25ac707efb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b519c425-6de9-5631-8876-b55256fb2f1d', 1), '7a63a4fdc8e9ab24daf19772dafc5db78046075e52ce5d188d9aae0a558291d6',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/aec616fbef6dd8252e278787f9bbed901fd6335c09dc92b8cd60da349b6c8daf.mp3', 3709, '2026-09-14 01:09:34.701488', 'd3e1e4cddd9231b5e67ddbf7a3e036fe6ffa1dd1987e643b0c805e72492422e2', 'validated', '{"audio_key":"aec616fbef6dd8252e278787f9bbed901fd6335c09dc92b8cd60da349b6c8daf","entity_key":"u_stance_and_hedging_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d3e1e4cddd9231b5e67ddbf7a3e036fe6ffa1dd1987e643b0c805e72492422e2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/aec616fbef6dd8252e278787f9bbed901fd6335c09dc92b8cd60da349b6c8daf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_stance_and_hedging_01_listen -> audio/generated/ko-KR/utterances/aec616fbef6dd8252e278787f9bbed901fd6335c09dc92b8cd60da349b6c8daf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f67c15a6-9f66-5c8f-9afd-964039e53db6', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_stance_and_hedging_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a63a4fdc8e9ab24daf19772dafc5db78046075e52ce5d188d9aae0a558291d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8fdd286d-6794-5366-b55b-30c2385f0ea5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f67c15a6-9f66-5c8f-9afd-964039e53db6', 1), '7a63a4fdc8e9ab24daf19772dafc5db78046075e52ce5d188d9aae0a558291d6',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/aec616fbef6dd8252e278787f9bbed901fd6335c09dc92b8cd60da349b6c8daf.mp3', 3709, '2026-09-14 01:09:34.701488', 'd3e1e4cddd9231b5e67ddbf7a3e036fe6ffa1dd1987e643b0c805e72492422e2', 'validated', '{"audio_key":"aec616fbef6dd8252e278787f9bbed901fd6335c09dc92b8cd60da349b6c8daf","entity_key":"e_stance_and_hedging_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d3e1e4cddd9231b5e67ddbf7a3e036fe6ffa1dd1987e643b0c805e72492422e2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/aec616fbef6dd8252e278787f9bbed901fd6335c09dc92b8cd60da349b6c8daf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_humor_irony_and_cultural_nuance_03 -> audio/generated/ko-KR/utterances/b25ebc414316e55869d0d7286753af68c0bfacf8c48f64c95fc9e8ab94c9b735.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('92075b97-e9b2-53e1-8c5b-c55aacb3f6d1', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_humor_irony_and_cultural_nuance_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4aa4ac49d912641f653554f6068658c21e0901d52716a1138ae3e2782a8c2c3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d9aa68a9-408f-57cf-9cad-6ad06113e057', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('92075b97-e9b2-53e1-8c5b-c55aacb3f6d1', 1), 'e4aa4ac49d912641f653554f6068658c21e0901d52716a1138ae3e2782a8c2c3',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/b25ebc414316e55869d0d7286753af68c0bfacf8c48f64c95fc9e8ab94c9b735.mp3', 5328, '2026-09-14 01:09:35.763867', 'e46cc1d8950db61bb2a1e3d7dc6e41b209b05d00b734f3319f803beff61e6ed2', 'validated', '{"audio_key":"b25ebc414316e55869d0d7286753af68c0bfacf8c48f64c95fc9e8ab94c9b735","entity_key":"u_humor_irony_and_cultural_nuance_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e46cc1d8950db61bb2a1e3d7dc6e41b209b05d00b734f3319f803beff61e6ed2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/b25ebc414316e55869d0d7286753af68c0bfacf8c48f64c95fc9e8ab94c9b735.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_precision_reformulation_01 -> audio/generated/ko-KR/utterances/b5aa6dc691307c36fce61b6acd23176fc770ea7b396d8c91d84d1b76610ff145.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5cdb5187-402f-52d7-b8c7-d34364bd52ec', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_precision_reformulation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '763900cb2bf58da675a95fd535e5c71dac20654d564923618241aead5938dfb2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3eda912b-da4b-5d27-b690-5e3e9fe2cd95', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5cdb5187-402f-52d7-b8c7-d34364bd52ec', 1), '763900cb2bf58da675a95fd535e5c71dac20654d564923618241aead5938dfb2',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/b5aa6dc691307c36fce61b6acd23176fc770ea7b396d8c91d84d1b76610ff145.mp3', 5668, '2026-09-14 01:09:36.253779', 'ff0c7c4063a3ea170d3f9035317084163045da67478d639261eb1cd1ba1992f5', 'validated', '{"audio_key":"b5aa6dc691307c36fce61b6acd23176fc770ea7b396d8c91d84d1b76610ff145","entity_key":"u_precision_reformulation_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ff0c7c4063a3ea170d3f9035317084163045da67478d639261eb1cd1ba1992f5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/b5aa6dc691307c36fce61b6acd23176fc770ea7b396d8c91d84d1b76610ff145.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_c1_seoul_policy_forum_capstone_04 -> audio/generated/ko-KR/utterances/bc3b522ae0cf8ee7d29922753f737989d9c36be8fa321dca50cf3d59ddf3471b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d6ecabf8-fef1-52f5-b3ff-c0936eede1c4', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_c1_seoul_policy_forum_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e964a3f554599383455ec2039003622d067a565b01441587fc51d1c5d79634d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b290592d-a419-547e-af69-ee56d1f22a2a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d6ecabf8-fef1-52f5-b3ff-c0936eede1c4', 1), '6e964a3f554599383455ec2039003622d067a565b01441587fc51d1c5d79634d',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/bc3b522ae0cf8ee7d29922753f737989d9c36be8fa321dca50cf3d59ddf3471b.mp3', 6817, '2026-09-14 01:09:37.446401', '4f1a1d99ed7ec1b078d44a2e7eafb303ff7e683c77d5925865ca90ffbf93ef76', 'validated', '{"audio_key":"bc3b522ae0cf8ee7d29922753f737989d9c36be8fa321dca50cf3d59ddf3471b","entity_key":"u_c1_seoul_policy_forum_capstone_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4f1a1d99ed7ec1b078d44a2e7eafb303ff7e683c77d5925865ca90ffbf93ef76","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/bc3b522ae0cf8ee7d29922753f737989d9c36be8fa321dca50cf3d59ddf3471b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_c1_seoul_policy_forum_capstone_02_listen -> audio/generated/ko-KR/utterances/bc3b522ae0cf8ee7d29922753f737989d9c36be8fa321dca50cf3d59ddf3471b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7747f222-9ccd-5fd0-b05c-12639ca05961', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_c1_seoul_policy_forum_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e964a3f554599383455ec2039003622d067a565b01441587fc51d1c5d79634d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('135f33ee-3c2b-5fce-b142-15cb4bc95446', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7747f222-9ccd-5fd0-b05c-12639ca05961', 1), '6e964a3f554599383455ec2039003622d067a565b01441587fc51d1c5d79634d',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/bc3b522ae0cf8ee7d29922753f737989d9c36be8fa321dca50cf3d59ddf3471b.mp3', 6817, '2026-09-14 01:09:37.446401', '4f1a1d99ed7ec1b078d44a2e7eafb303ff7e683c77d5925865ca90ffbf93ef76', 'validated', '{"audio_key":"bc3b522ae0cf8ee7d29922753f737989d9c36be8fa321dca50cf3d59ddf3471b","entity_key":"e_c1_seoul_policy_forum_capstone_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4f1a1d99ed7ec1b078d44a2e7eafb303ff7e683c77d5925865ca90ffbf93ef76","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/bc3b522ae0cf8ee7d29922753f737989d9c36be8fa321dca50cf3d59ddf3471b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_shifting_03 -> audio/generated/ko-KR/utterances/c45663a6237bb1039e6b0e496dd2cdb992e7d6bef4603450aa5cf724bd175f56.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8e57602b-169b-5f18-900d-5416756f206b', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_shifting_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b87e41f64039f85c6ae5346644ed351f2f65cbad92eff5b2a67be9758dba1238'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07cc0a61-52c7-5937-b8f0-15808924fd95', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8e57602b-169b-5f18-900d-5416756f206b', 1), 'b87e41f64039f85c6ae5346644ed351f2f65cbad92eff5b2a67be9758dba1238',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c45663a6237bb1039e6b0e496dd2cdb992e7d6bef4603450aa5cf724bd175f56.mp3', 5564, '2026-09-14 01:09:37.879050', '5656417a9897527c5b0d17d639fed8a755be2a7a9d8ffb7d8d844b9b7f3be75c', 'validated', '{"audio_key":"c45663a6237bb1039e6b0e496dd2cdb992e7d6bef4603450aa5cf724bd175f56","entity_key":"u_register_shifting_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5656417a9897527c5b0d17d639fed8a755be2a7a9d8ffb7d8d844b9b7f3be75c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c45663a6237bb1039e6b0e496dd2cdb992e7d6bef4603450aa5cf724bd175f56.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_source_synthesis_and_framing_04 -> audio/generated/ko-KR/utterances/c6b27ab2f01c9b346c8a5cd21ba529d4a6b2695f35f07310b9c6decdb8cf2b98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f460bef7-e7f3-5ab0-bb07-34739f86aa12', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_source_synthesis_and_framing_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ac43b104ebc1ec626ef7ef9c7e9f5d44337e3334158d96218fc30da9ae0da20'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c805e10-c638-5c65-ae31-a98611d4bd71', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f460bef7-e7f3-5ab0-bb07-34739f86aa12', 1), '5ac43b104ebc1ec626ef7ef9c7e9f5d44337e3334158d96218fc30da9ae0da20',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c6b27ab2f01c9b346c8a5cd21ba529d4a6b2695f35f07310b9c6decdb8cf2b98.mp3', 5328, '2026-09-14 01:09:39.039210', '2130f87f2250625e6009a4f5cd03d621acc760287b63bfb37e311f53a5140e5b', 'validated', '{"audio_key":"c6b27ab2f01c9b346c8a5cd21ba529d4a6b2695f35f07310b9c6decdb8cf2b98","entity_key":"u_source_synthesis_and_framing_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2130f87f2250625e6009a4f5cd03d621acc760287b63bfb37e311f53a5140e5b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c6b27ab2f01c9b346c8a5cd21ba529d4a6b2695f35f07310b9c6decdb8cf2b98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_source_synthesis_and_framing_02_listen -> audio/generated/ko-KR/utterances/c6b27ab2f01c9b346c8a5cd21ba529d4a6b2695f35f07310b9c6decdb8cf2b98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3b407ba2-d835-51bf-9df3-fc8fed7eed05', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_source_synthesis_and_framing_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ac43b104ebc1ec626ef7ef9c7e9f5d44337e3334158d96218fc30da9ae0da20'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48f391b4-4b9d-52df-a2ed-d53cf9305b7e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3b407ba2-d835-51bf-9df3-fc8fed7eed05', 1), '5ac43b104ebc1ec626ef7ef9c7e9f5d44337e3334158d96218fc30da9ae0da20',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c6b27ab2f01c9b346c8a5cd21ba529d4a6b2695f35f07310b9c6decdb8cf2b98.mp3', 5328, '2026-09-14 01:09:39.039210', '2130f87f2250625e6009a4f5cd03d621acc760287b63bfb37e311f53a5140e5b', 'validated', '{"audio_key":"c6b27ab2f01c9b346c8a5cd21ba529d4a6b2695f35f07310b9c6decdb8cf2b98","entity_key":"e_source_synthesis_and_framing_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2130f87f2250625e6009a4f5cd03d621acc760287b63bfb37e311f53a5140e5b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c6b27ab2f01c9b346c8a5cd21ba529d4a6b2695f35f07310b9c6decdb8cf2b98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_shifting_02 -> audio/generated/ko-KR/utterances/c79ab2071b2dcbe6f9833f543e6de61e1883c2babac0b74eccab93bb26a138ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b73e44be-465e-5f03-8333-7e54b06ac46d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_shifting_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b47e4ea9db697dd0d9ce8279af312e91fcd623cca204ecb4e514865435c6d422'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6527cf51-ffa6-5aed-90c1-74cae54c7a41', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b73e44be-465e-5f03-8333-7e54b06ac46d', 1), 'b47e4ea9db697dd0d9ce8279af312e91fcd623cca204ecb4e514865435c6d422',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c79ab2071b2dcbe6f9833f543e6de61e1883c2babac0b74eccab93bb26a138ef.mp3', 6817, '2026-09-14 01:09:39.524596', 'c442fcd4d51b1bb7eccf6c3a765488304aee86527d1286185f14e7372cb9a839', 'validated', '{"audio_key":"c79ab2071b2dcbe6f9833f543e6de61e1883c2babac0b74eccab93bb26a138ef","entity_key":"u_register_shifting_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c442fcd4d51b1bb7eccf6c3a765488304aee86527d1286185f14e7372cb9a839","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c79ab2071b2dcbe6f9833f543e6de61e1883c2babac0b74eccab93bb26a138ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_register_shifting_01_listen -> audio/generated/ko-KR/utterances/c79ab2071b2dcbe6f9833f543e6de61e1883c2babac0b74eccab93bb26a138ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('431bef8d-ae86-5371-8cad-3861602fc22f', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_register_shifting_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b47e4ea9db697dd0d9ce8279af312e91fcd623cca204ecb4e514865435c6d422'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e83f26e0-a4ed-52b6-ab00-679da631f6e3', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('431bef8d-ae86-5371-8cad-3861602fc22f', 1), 'b47e4ea9db697dd0d9ce8279af312e91fcd623cca204ecb4e514865435c6d422',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c79ab2071b2dcbe6f9833f543e6de61e1883c2babac0b74eccab93bb26a138ef.mp3', 6817, '2026-09-14 01:09:39.524596', 'c442fcd4d51b1bb7eccf6c3a765488304aee86527d1286185f14e7372cb9a839', 'validated', '{"audio_key":"c79ab2071b2dcbe6f9833f543e6de61e1883c2babac0b74eccab93bb26a138ef","entity_key":"e_register_shifting_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c442fcd4d51b1bb7eccf6c3a765488304aee86527d1286185f14e7372cb9a839","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c79ab2071b2dcbe6f9833f543e6de61e1883c2babac0b74eccab93bb26a138ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_implicit_meaning_and_subtext_01 -> audio/generated/ko-KR/utterances/cb0ef07eec03a1292c99cac6603744d8abecd06d56ba11c5ba7d25fc55e2b708.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('eb9e49a1-3043-5974-ac20-629137d825f2', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_implicit_meaning_and_subtext_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '133b2de2496cd39274ee07055793232dedc4ae66eb0bf2ca2e380095fbb15e77'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b777c3de-9f1b-58d4-972d-a4678c6adb2d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('eb9e49a1-3043-5974-ac20-629137d825f2', 1), '133b2de2496cd39274ee07055793232dedc4ae66eb0bf2ca2e380095fbb15e77',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/cb0ef07eec03a1292c99cac6603744d8abecd06d56ba11c5ba7d25fc55e2b708.mp3', 5250, '2026-09-14 01:09:40.503708', '7aee7aedd42ce4541eab761d5fb8b514ea6ede067725be75a54df682c4fa21ef', 'validated', '{"audio_key":"cb0ef07eec03a1292c99cac6603744d8abecd06d56ba11c5ba7d25fc55e2b708","entity_key":"u_implicit_meaning_and_subtext_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7aee7aedd42ce4541eab761d5fb8b514ea6ede067725be75a54df682c4fa21ef","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/cb0ef07eec03a1292c99cac6603744d8abecd06d56ba11c5ba7d25fc55e2b708.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_source_synthesis_and_framing_02 -> audio/generated/ko-KR/utterances/cca91d82b360fafb1181a9eae7e44391ba9b810516d521a96dbd9b1333f913b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b01fbc60-c76c-519b-bd06-9ec0cccddebb', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_source_synthesis_and_framing_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9289ae49ff1b6102e358b17cabc012e9d5e95073ac600668682288625efc4e82'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5f86aba4-898b-5064-8318-08a1f9c45e5b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b01fbc60-c76c-519b-bd06-9ec0cccddebb', 1), '9289ae49ff1b6102e358b17cabc012e9d5e95073ac600668682288625efc4e82',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/cca91d82b360fafb1181a9eae7e44391ba9b810516d521a96dbd9b1333f913b0.mp3', 5093, '2026-09-14 01:09:41.053758', 'e0abd560488a4886b95f32ebfb9bcba285eeb719af68b2b363d8857f68e5c6ef', 'validated', '{"audio_key":"cca91d82b360fafb1181a9eae7e44391ba9b810516d521a96dbd9b1333f913b0","entity_key":"u_source_synthesis_and_framing_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e0abd560488a4886b95f32ebfb9bcba285eeb719af68b2b363d8857f68e5c6ef","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/cca91d82b360fafb1181a9eae7e44391ba9b810516d521a96dbd9b1333f913b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_source_synthesis_and_framing_01_listen -> audio/generated/ko-KR/utterances/cca91d82b360fafb1181a9eae7e44391ba9b810516d521a96dbd9b1333f913b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('86768dfb-792f-5e86-8d34-9274e0192286', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_source_synthesis_and_framing_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9289ae49ff1b6102e358b17cabc012e9d5e95073ac600668682288625efc4e82'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('398692b8-bb16-5374-85a6-ceca69d5af1c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('86768dfb-792f-5e86-8d34-9274e0192286', 1), '9289ae49ff1b6102e358b17cabc012e9d5e95073ac600668682288625efc4e82',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/cca91d82b360fafb1181a9eae7e44391ba9b810516d521a96dbd9b1333f913b0.mp3', 5093, '2026-09-14 01:09:41.053758', 'e0abd560488a4886b95f32ebfb9bcba285eeb719af68b2b363d8857f68e5c6ef', 'validated', '{"audio_key":"cca91d82b360fafb1181a9eae7e44391ba9b810516d521a96dbd9b1333f913b0","entity_key":"e_source_synthesis_and_framing_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e0abd560488a4886b95f32ebfb9bcba285eeb719af68b2b363d8857f68e5c6ef","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/cca91d82b360fafb1181a9eae7e44391ba9b810516d521a96dbd9b1333f913b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_precision_reformulation_04 -> audio/generated/ko-KR/utterances/d2ef701de4b2aba06f86f97621cc132998b3733023f93d1dce8dd81a16eac05c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6a1188c2-225f-5b26-83b9-04a367094740', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_precision_reformulation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10b6726c7cc49190d949644ca3865e60e464f1efa22347f16d32b119b340769c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc8c755a-ddc0-5921-abf2-26c288b99010', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6a1188c2-225f-5b26-83b9-04a367094740', 1), '10b6726c7cc49190d949644ca3865e60e464f1efa22347f16d32b119b340769c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d2ef701de4b2aba06f86f97621cc132998b3733023f93d1dce8dd81a16eac05c.mp3', 4675, '2026-09-14 01:09:41.931670', '9af41267a7cc35563b38390f3988105467d03085c67e7dcbbaf77657731b7a90', 'validated', '{"audio_key":"d2ef701de4b2aba06f86f97621cc132998b3733023f93d1dce8dd81a16eac05c","entity_key":"u_precision_reformulation_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9af41267a7cc35563b38390f3988105467d03085c67e7dcbbaf77657731b7a90","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d2ef701de4b2aba06f86f97621cc132998b3733023f93d1dce8dd81a16eac05c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_precision_reformulation_02_listen -> audio/generated/ko-KR/utterances/d2ef701de4b2aba06f86f97621cc132998b3733023f93d1dce8dd81a16eac05c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3683967b-eb87-575f-8c1f-caa8af5138d2', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_precision_reformulation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '10b6726c7cc49190d949644ca3865e60e464f1efa22347f16d32b119b340769c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb8ff81b-4795-54da-9387-ffb31e140a0e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3683967b-eb87-575f-8c1f-caa8af5138d2', 1), '10b6726c7cc49190d949644ca3865e60e464f1efa22347f16d32b119b340769c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d2ef701de4b2aba06f86f97621cc132998b3733023f93d1dce8dd81a16eac05c.mp3', 4675, '2026-09-14 01:09:41.931670', '9af41267a7cc35563b38390f3988105467d03085c67e7dcbbaf77657731b7a90', 'validated', '{"audio_key":"d2ef701de4b2aba06f86f97621cc132998b3733023f93d1dce8dd81a16eac05c","entity_key":"e_precision_reformulation_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9af41267a7cc35563b38390f3988105467d03085c67e7dcbbaf77657731b7a90","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d2ef701de4b2aba06f86f97621cc132998b3733023f93d1dce8dd81a16eac05c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_register_shifting_04 -> audio/generated/ko-KR/utterances/dc3846a48f03409261a0380fcbe54de9db0a3d1f456507c9e76416edd74a67e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7ff09f03-b24e-525e-8c90-333405b51a83', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_register_shifting_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '09a74b8b6e1954af0098c1f49e50f8430a83a91f568bcc644489f350d62eed46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9cde1c23-c739-5f60-af12-3a3729be25ca', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7ff09f03-b24e-525e-8c90-333405b51a83', 1), '09a74b8b6e1954af0098c1f49e50f8430a83a91f568bcc644489f350d62eed46',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/dc3846a48f03409261a0380fcbe54de9db0a3d1f456507c9e76416edd74a67e9.mp3', 3709, '2026-09-14 01:09:42.372117', '9d8cbdc2456de382c5f09790282783e57f0e812584a6cdf05cc4c75ef4666139', 'validated', '{"audio_key":"dc3846a48f03409261a0380fcbe54de9db0a3d1f456507c9e76416edd74a67e9","entity_key":"u_register_shifting_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9d8cbdc2456de382c5f09790282783e57f0e812584a6cdf05cc4c75ef4666139","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/dc3846a48f03409261a0380fcbe54de9db0a3d1f456507c9e76416edd74a67e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_register_shifting_02_listen -> audio/generated/ko-KR/utterances/dc3846a48f03409261a0380fcbe54de9db0a3d1f456507c9e76416edd74a67e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2dccca2a-ee02-52f0-adac-277980000243', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_register_shifting_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '09a74b8b6e1954af0098c1f49e50f8430a83a91f568bcc644489f350d62eed46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0666885e-c67f-5147-b202-212644caa2ad', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2dccca2a-ee02-52f0-adac-277980000243', 1), '09a74b8b6e1954af0098c1f49e50f8430a83a91f568bcc644489f350d62eed46',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/dc3846a48f03409261a0380fcbe54de9db0a3d1f456507c9e76416edd74a67e9.mp3', 3709, '2026-09-14 01:09:42.372117', '9d8cbdc2456de382c5f09790282783e57f0e812584a6cdf05cc4c75ef4666139', 'validated', '{"audio_key":"dc3846a48f03409261a0380fcbe54de9db0a3d1f456507c9e76416edd74a67e9","entity_key":"e_register_shifting_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9d8cbdc2456de382c5f09790282783e57f0e812584a6cdf05cc4c75ef4666139","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/dc3846a48f03409261a0380fcbe54de9db0a3d1f456507c9e76416edd74a67e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_argument_structure_04 -> audio/generated/ko-KR/utterances/dd11a868fdad5a93bf6aa60d35167242f8e22092efbc9e8fd8ac9f76b5bf221b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('aca74011-9509-5dc1-b5d9-ec90cd73549d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_argument_structure_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cdb42166d2ebcda5e6f918cce79883ad6d614a8ca29a8a99a91994247b57d7a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f8b4ecea-8e9f-5192-9dc7-98bdf2841586', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('aca74011-9509-5dc1-b5d9-ec90cd73549d', 1), 'cdb42166d2ebcda5e6f918cce79883ad6d614a8ca29a8a99a91994247b57d7a6',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/dd11a868fdad5a93bf6aa60d35167242f8e22092efbc9e8fd8ac9f76b5bf221b.mp3', 4728, '2026-09-14 01:09:43.386478', '7996a6a4796375bc57eefc6835e34a5f233268eeb4c3b232d13de623ec49ab79', 'validated', '{"audio_key":"dd11a868fdad5a93bf6aa60d35167242f8e22092efbc9e8fd8ac9f76b5bf221b","entity_key":"u_argument_structure_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7996a6a4796375bc57eefc6835e34a5f233268eeb4c3b232d13de623ec49ab79","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/dd11a868fdad5a93bf6aa60d35167242f8e22092efbc9e8fd8ac9f76b5bf221b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_argument_structure_02_listen -> audio/generated/ko-KR/utterances/dd11a868fdad5a93bf6aa60d35167242f8e22092efbc9e8fd8ac9f76b5bf221b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fe934952-b0d8-567a-b71e-0aa4243f3cd0', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_argument_structure_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cdb42166d2ebcda5e6f918cce79883ad6d614a8ca29a8a99a91994247b57d7a6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e7ff0e9-f020-592e-9e68-c832edf3f548', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fe934952-b0d8-567a-b71e-0aa4243f3cd0', 1), 'cdb42166d2ebcda5e6f918cce79883ad6d614a8ca29a8a99a91994247b57d7a6',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/dd11a868fdad5a93bf6aa60d35167242f8e22092efbc9e8fd8ac9f76b5bf221b.mp3', 4728, '2026-09-14 01:09:43.386478', '7996a6a4796375bc57eefc6835e34a5f233268eeb4c3b232d13de623ec49ab79', 'validated', '{"audio_key":"dd11a868fdad5a93bf6aa60d35167242f8e22092efbc9e8fd8ac9f76b5bf221b","entity_key":"e_argument_structure_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7996a6a4796375bc57eefc6835e34a5f233268eeb4c3b232d13de623ec49ab79","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/dd11a868fdad5a93bf6aa60d35167242f8e22092efbc9e8fd8ac9f76b5bf221b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_institutional_and_bureaucratic_korean_03 -> audio/generated/ko-KR/utterances/dd5a088f2f551146d9e10981c09170608eab164c91ca59b7dc8acab8e86970e4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4743210b-b260-504c-b34b-30d0d9620d20', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_institutional_and_bureaucratic_korean_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e7e1adfdedb18bbd98bdf627e0cb27656360b8aef7304e767f1f61cee4362ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('10f20a64-3265-58e0-8ee4-944c67a8f7cd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4743210b-b260-504c-b34b-30d0d9620d20', 1), '6e7e1adfdedb18bbd98bdf627e0cb27656360b8aef7304e767f1f61cee4362ab',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/dd5a088f2f551146d9e10981c09170608eab164c91ca59b7dc8acab8e86970e4.mp3', 5146, '2026-09-14 01:09:43.883467', '91ec227a0e83c24d7c3a314e31aaf665c367a4b32cee492905a88b8806568c1b', 'validated', '{"audio_key":"dd5a088f2f551146d9e10981c09170608eab164c91ca59b7dc8acab8e86970e4","entity_key":"u_institutional_and_bureaucratic_korean_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"91ec227a0e83c24d7c3a314e31aaf665c367a4b32cee492905a88b8806568c1b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/dd5a088f2f551146d9e10981c09170608eab164c91ca59b7dc8acab8e86970e4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_implicit_meaning_and_subtext_02 -> audio/generated/ko-KR/utterances/e7d012d51acb6c56d1599e5e5ad223861bfedcab6d2efb756a886f3fba09b2ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('78c1e196-d92b-572a-ab60-da3a760629d3', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_implicit_meaning_and_subtext_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f8ca06d5402e1998dbd789e558781edb3dc58c1853bb6ab29d335c311af8c43f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('691adf2e-ea1c-5484-8ee0-39c45b137347', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('78c1e196-d92b-572a-ab60-da3a760629d3', 1), 'f8ca06d5402e1998dbd789e558781edb3dc58c1853bb6ab29d335c311af8c43f',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/e7d012d51acb6c56d1599e5e5ad223861bfedcab6d2efb756a886f3fba09b2ef.mp3', 3657, '2026-09-14 01:09:44.685891', '3cc2badaff38300ad6848623365f42ac2fac922506a00b8961298a1abff6f8de', 'validated', '{"audio_key":"e7d012d51acb6c56d1599e5e5ad223861bfedcab6d2efb756a886f3fba09b2ef","entity_key":"u_implicit_meaning_and_subtext_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3cc2badaff38300ad6848623365f42ac2fac922506a00b8961298a1abff6f8de","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/e7d012d51acb6c56d1599e5e5ad223861bfedcab6d2efb756a886f3fba09b2ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_implicit_meaning_and_subtext_01_listen -> audio/generated/ko-KR/utterances/e7d012d51acb6c56d1599e5e5ad223861bfedcab6d2efb756a886f3fba09b2ef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7c1792cd-b3a7-5936-9165-e71518df3d2e', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_implicit_meaning_and_subtext_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f8ca06d5402e1998dbd789e558781edb3dc58c1853bb6ab29d335c311af8c43f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('314d696a-0889-5589-bd0d-b86184957927', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7c1792cd-b3a7-5936-9165-e71518df3d2e', 1), 'f8ca06d5402e1998dbd789e558781edb3dc58c1853bb6ab29d335c311af8c43f',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/e7d012d51acb6c56d1599e5e5ad223861bfedcab6d2efb756a886f3fba09b2ef.mp3', 3657, '2026-09-14 01:09:44.685891', '3cc2badaff38300ad6848623365f42ac2fac922506a00b8961298a1abff6f8de', 'validated', '{"audio_key":"e7d012d51acb6c56d1599e5e5ad223861bfedcab6d2efb756a886f3fba09b2ef","entity_key":"e_implicit_meaning_and_subtext_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3cc2badaff38300ad6848623365f42ac2fac922506a00b8961298a1abff6f8de","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/e7d012d51acb6c56d1599e5e5ad223861bfedcab6d2efb756a886f3fba09b2ef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_stance_and_hedging_01 -> audio/generated/ko-KR/utterances/ebc36679ec0e3f33a3e52192830560ffadb0f8395ebe19e487f5f4b3c5f99fba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('46831eba-78fb-5429-b87f-121087a4d10a', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_stance_and_hedging_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2966ea5129b6f652a9c9b652696faa1b9af86973bab4c22435bed743431ef5d0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('094bf95a-35df-5c72-89fe-cf4cef3da0f3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('46831eba-78fb-5429-b87f-121087a4d10a', 1), '2966ea5129b6f652a9c9b652696faa1b9af86973bab4c22435bed743431ef5d0',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/ebc36679ec0e3f33a3e52192830560ffadb0f8395ebe19e487f5f4b3c5f99fba.mp3', 4597, '2026-09-14 01:09:45.337598', '03ad656365c1f128e79260a963caaa3ea93321e75cf0e45bb7232306b5cf0b5c', 'validated', '{"audio_key":"ebc36679ec0e3f33a3e52192830560ffadb0f8395ebe19e487f5f4b3c5f99fba","entity_key":"u_stance_and_hedging_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"03ad656365c1f128e79260a963caaa3ea93321e75cf0e45bb7232306b5cf0b5c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/ebc36679ec0e3f33a3e52192830560ffadb0f8395ebe19e487f5f4b3c5f99fba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_argument_structure_03 -> audio/generated/ko-KR/utterances/ecfdce35e0c5734654d865e4a3f203212cdb0b968de59a6f0b7bc01bbf112b97.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a9691e9d-5d63-535b-a89a-0a0081326ff1', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_argument_structure_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67d41e83eb389784c141f1b6dfb797877296aafa2ef6d1582291f548d235c1b6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f5f77df-a49c-5e9d-89c4-bb3fcdb10ff5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a9691e9d-5d63-535b-a89a-0a0081326ff1', 1), '67d41e83eb389784c141f1b6dfb797877296aafa2ef6d1582291f548d235c1b6',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/ecfdce35e0c5734654d865e4a3f203212cdb0b968de59a6f0b7bc01bbf112b97.mp3', 5328, '2026-09-14 01:09:46.292459', 'ec38ba7e6be648bbbf8c04884ce66a9102c74e66a97d396fe9194d51ad14659b', 'validated', '{"audio_key":"ecfdce35e0c5734654d865e4a3f203212cdb0b968de59a6f0b7bc01bbf112b97","entity_key":"u_argument_structure_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ec38ba7e6be648bbbf8c04884ce66a9102c74e66a97d396fe9194d51ad14659b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/ecfdce35e0c5734654d865e4a3f203212cdb0b968de59a6f0b7bc01bbf112b97.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_implicit_meaning_and_subtext_04 -> audio/generated/ko-KR/utterances/f83e7166b622db720ed9d63fa7371221da9a7d6fee8492f6165d99ba6c6c7981.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0111e7a6-f456-5758-bb7d-0b85d3f3c505', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_implicit_meaning_and_subtext_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '870e4b73e0d139ed42d1c5e93b9531314e79a6f159a31e61009850e0332303f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08ec6df3-aa70-5c1d-a742-2268dbc8610e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0111e7a6-f456-5758-bb7d-0b85d3f3c505', 1), '870e4b73e0d139ed42d1c5e93b9531314e79a6f159a31e61009850e0332303f2',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/f83e7166b622db720ed9d63fa7371221da9a7d6fee8492f6165d99ba6c6c7981.mp3', 4832, '2026-09-14 01:09:46.850884', 'f006a85e0362c2e4f2115ae209120ed089ee387f2a3109582d1906a4f700411d', 'validated', '{"audio_key":"f83e7166b622db720ed9d63fa7371221da9a7d6fee8492f6165d99ba6c6c7981","entity_key":"u_implicit_meaning_and_subtext_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f006a85e0362c2e4f2115ae209120ed089ee387f2a3109582d1906a4f700411d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/f83e7166b622db720ed9d63fa7371221da9a7d6fee8492f6165d99ba6c6c7981.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_implicit_meaning_and_subtext_02_listen -> audio/generated/ko-KR/utterances/f83e7166b622db720ed9d63fa7371221da9a7d6fee8492f6165d99ba6c6c7981.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('68e7bef5-782c-57c3-bbc4-58cab86e3170', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_implicit_meaning_and_subtext_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '870e4b73e0d139ed42d1c5e93b9531314e79a6f159a31e61009850e0332303f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7d8ca4e0-d168-5036-a80f-be41fb4bd757', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('68e7bef5-782c-57c3-bbc4-58cab86e3170', 1), '870e4b73e0d139ed42d1c5e93b9531314e79a6f159a31e61009850e0332303f2',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/f83e7166b622db720ed9d63fa7371221da9a7d6fee8492f6165d99ba6c6c7981.mp3', 4832, '2026-09-14 01:09:46.850884', 'f006a85e0362c2e4f2115ae209120ed089ee387f2a3109582d1906a4f700411d', 'validated', '{"audio_key":"f83e7166b622db720ed9d63fa7371221da9a7d6fee8492f6165d99ba6c6c7981","entity_key":"e_implicit_meaning_and_subtext_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f006a85e0362c2e4f2115ae209120ed089ee387f2a3109582d1906a4f700411d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/f83e7166b622db720ed9d63fa7371221da9a7d6fee8492f6165d99ba6c6c7981.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_humor_irony_and_cultural_nuance_04 -> audio/generated/ko-KR/utterances/fc82d49845bb55fbc19d52c2c0ad6e30405e1de8d62b6bdf0940c68f3d2e6c1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('be1520f7-1008-5a19-81b9-fea93d068b3b', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_humor_irony_and_cultural_nuance_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '268c546c5f156080e8dea597051cfe55c6e4f4654553d3006a5a0a40d43a1d29'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cbedfaa9-84b4-5465-b5ab-b3f37fefcc5f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('be1520f7-1008-5a19-81b9-fea93d068b3b', 1), '268c546c5f156080e8dea597051cfe55c6e4f4654553d3006a5a0a40d43a1d29',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/fc82d49845bb55fbc19d52c2c0ad6e30405e1de8d62b6bdf0940c68f3d2e6c1d.mp3', 5433, '2026-09-14 01:09:47.794665', 'afead1b132c0933d3de2e283d8b2bf75542a756844d82e76034d1f736bbb62b8', 'validated', '{"audio_key":"fc82d49845bb55fbc19d52c2c0ad6e30405e1de8d62b6bdf0940c68f3d2e6c1d","entity_key":"u_humor_irony_and_cultural_nuance_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"afead1b132c0933d3de2e283d8b2bf75542a756844d82e76034d1f736bbb62b8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/fc82d49845bb55fbc19d52c2c0ad6e30405e1de8d62b6bdf0940c68f3d2e6c1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_humor_irony_and_cultural_nuance_02_listen -> audio/generated/ko-KR/utterances/fc82d49845bb55fbc19d52c2c0ad6e30405e1de8d62b6bdf0940c68f3d2e6c1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('3e6e99ff-861a-5ea8-b5e2-1cd852129e92', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_humor_irony_and_cultural_nuance_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '268c546c5f156080e8dea597051cfe55c6e4f4654553d3006a5a0a40d43a1d29'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dbedf63d-da61-5509-b0b2-8b58ac2d72a6', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('3e6e99ff-861a-5ea8-b5e2-1cd852129e92', 1), '268c546c5f156080e8dea597051cfe55c6e4f4654553d3006a5a0a40d43a1d29',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/fc82d49845bb55fbc19d52c2c0ad6e30405e1de8d62b6bdf0940c68f3d2e6c1d.mp3', 5433, '2026-09-14 01:09:47.794665', 'afead1b132c0933d3de2e283d8b2bf75542a756844d82e76034d1f736bbb62b8', 'validated', '{"audio_key":"fc82d49845bb55fbc19d52c2c0ad6e30405e1de8d62b6bdf0940c68f3d2e6c1d","entity_key":"e_humor_irony_and_cultural_nuance_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"afead1b132c0933d3de2e283d8b2bf75542a756844d82e76034d1f736bbb62b8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/fc82d49845bb55fbc19d52c2c0ad6e30405e1de8d62b6bdf0940c68f3d2e6c1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_source_synthesis_and_framing_01 -> audio/generated/ko-KR/utterances/ff8984de4b799df0b11f2a3bd0501feb68275f0f9876aff0313ad2c00e57f038.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('722c14ea-84ed-58b7-a09c-5ca5ac397d33', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_source_synthesis_and_framing_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b5834efae89885d9e2bc67517fb1cc47d39fb7bcacf9a7b4d01f1474cf61879d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('560f948e-8a98-5857-939b-12115ea5f779', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('722c14ea-84ed-58b7-a09c-5ca5ac397d33', 1), 'b5834efae89885d9e2bc67517fb1cc47d39fb7bcacf9a7b4d01f1474cf61879d',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/ff8984de4b799df0b11f2a3bd0501feb68275f0f9876aff0313ad2c00e57f038.mp3', 5381, '2026-09-14 01:09:48.392913', 'ff20792836b731c9a96d720b3dc2647a9c88c89a0fce2d4ec89808f456b4e6d4', 'validated', '{"audio_key":"ff8984de4b799df0b11f2a3bd0501feb68275f0f9876aff0313ad2c00e57f038","entity_key":"u_source_synthesis_and_framing_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ff20792836b731c9a96d720b3dc2647a9c88c89a0fce2d4ec89808f456b4e6d4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/ff8984de4b799df0b11f2a3bd0501feb68275f0f9876aff0313ad2c00e57f038.mp3"}'
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

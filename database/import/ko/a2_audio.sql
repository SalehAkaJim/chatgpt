-- Generated audio link import for ko-KR A2
-- Source manifest: audio/manifests/ko/A2.json
-- Generated rows: 260
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'ko' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'ko-KR' LIMIT 1);
START TRANSACTION;

-- d_ability_and_permission_01:1 -> audio/generated/ko-KR/dialogues/0099c287f0daf8a7b941b02b6a614d321938ac6372eec386f79dd08b5c259d33.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4f8030cf-8354-59a0-9275-1e1939eaa8fb', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ability_and_permission_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de4e0f670010e699b0c259ed49776881802bfa3faab41d38babdcf3cfff58e65'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dc25fe00-b4e3-5462-9000-07db76c35ba8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4f8030cf-8354-59a0-9275-1e1939eaa8fb', 1), 'de4e0f670010e699b0c259ed49776881802bfa3faab41d38babdcf3cfff58e65',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/0099c287f0daf8a7b941b02b6a614d321938ac6372eec386f79dd08b5c259d33.mp3', 1854, '2026-09-13 22:24:04.215435', 'aca5d7ed66efa63ace0228da0fbfa3a2fb5672c6349be0c9fea2e5c6fa457b66', 'validated', '{"audio_key":"0099c287f0daf8a7b941b02b6a614d321938ac6372eec386f79dd08b5c259d33","entity_key":"d_ability_and_permission_01:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"aca5d7ed66efa63ace0228da0fbfa3a2fb5672c6349be0c9fea2e5c6fa457b66","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/0099c287f0daf8a7b941b02b6a614d321938ac6372eec386f79dd08b5c259d33.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_softening_01:1 -> audio/generated/ko-KR/dialogues/00c176cb8ded973c2f02378869ebebcfaa8130a58e71c35f2303f3f008c3f6d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('254723c0-cd44-5992-b050-7fa39a9521b4', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_softening_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ab96eca0a360096d805294568c3d8c208245e5b2ac1428d7c213a0c80efc22a8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a0e3c01-8ccd-56f9-88a1-054ee2972664', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('254723c0-cd44-5992-b050-7fa39a9521b4', 1), 'ab96eca0a360096d805294568c3d8c208245e5b2ac1428d7c213a0c80efc22a8',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/00c176cb8ded973c2f02378869ebebcfaa8130a58e71c35f2303f3f008c3f6d9.mp3', 1515, '2026-09-13 22:24:04.251656', 'a2345b52ca9e4feeef8ab96fbdef7e3af50eda1f09db49b5283da8182b743529', 'validated', '{"audio_key":"00c176cb8ded973c2f02378869ebebcfaa8130a58e71c35f2303f3f008c3f6d9","entity_key":"d_opinions_and_softening_01:1","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a2345b52ca9e4feeef8ab96fbdef7e3af50eda1f09db49b5283da8182b743529","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/00c176cb8ded973c2f02378869ebebcfaa8130a58e71c35f2303f3f008c3f6d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_past_experiences_02:1 -> audio/generated/ko-KR/dialogues/0cf1fee59a912825ae971ddb02c5fa412d91f9d0ab72a98effc8dfb9e7422398.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('af798b82-0894-5c82-bf77-3d5184a43c6a', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_past_experiences_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '532781b197b02a4edd80b342f9ed8275871389d834bbfaf38ed98c78b221d879'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d9e9e00a-425d-5b13-8668-4b17774d267b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('af798b82-0894-5c82-bf77-3d5184a43c6a', 1), '532781b197b02a4edd80b342f9ed8275871389d834bbfaf38ed98c78b221d879',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/0cf1fee59a912825ae971ddb02c5fa412d91f9d0ab72a98effc8dfb9e7422398.mp3', 1515, '2026-09-13 22:24:05.316322', '21e578c0c2a4d12a20a221ad6c0e3d2e88dd31e81e535ef14f4deda557698b8a', 'validated', '{"audio_key":"0cf1fee59a912825ae971ddb02c5fa412d91f9d0ab72a98effc8dfb9e7422398","entity_key":"d_past_experiences_02:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"21e578c0c2a4d12a20a221ad6c0e3d2e88dd31e81e535ef14f4deda557698b8a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/0cf1fee59a912825ae971ddb02c5fa412d91f9d0ab72a98effc8dfb9e7422398.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reasons_and_results_01:1 -> audio/generated/ko-KR/dialogues/0fac13d3ee5d7daae7834a36e48c4db7d0434b0a3ee9b0254d01502d9ada0910.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f1a6d1ec-94ad-5dfa-a2a5-80ac7890a596', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reasons_and_results_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '961c704084f0265679730da83538a78002c2e65332a109d9df2fdefd1fbef281'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f407b1fd-10ef-5c62-a45e-c0ca7db4dbd0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f1a6d1ec-94ad-5dfa-a2a5-80ac7890a596', 1), '961c704084f0265679730da83538a78002c2e65332a109d9df2fdefd1fbef281',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/0fac13d3ee5d7daae7834a36e48c4db7d0434b0a3ee9b0254d01502d9ada0910.mp3', 1488, '2026-09-13 22:24:05.331086', '1d09a107b2f6778a6dd21c8154be2ff6a361cbfb11ab5e15666a691263b8bb1b', 'validated', '{"audio_key":"0fac13d3ee5d7daae7834a36e48c4db7d0434b0a3ee9b0254d01502d9ada0910","entity_key":"d_reasons_and_results_01:1","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1d09a107b2f6778a6dd21c8154be2ff6a361cbfb11ab5e15666a691263b8bb1b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/0fac13d3ee5d7daae7834a36e48c4db7d0434b0a3ee9b0254d01502d9ada0910.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ability_and_permission_02:4 -> audio/generated/ko-KR/dialogues/10835d2aa6ff8991cd07c64973557975097a0885e964e34194477d96da1f36f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9c6bcfc4-5be6-5fed-848a-43f5c4c14fda', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ability_and_permission_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '988cccbcc7b12f25b312fbefaf0ef5181e8d3f90f42fc91a50eadf26acb00e9c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af69491b-46f1-520e-9b37-1e205cdd24f0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9c6bcfc4-5be6-5fed-848a-43f5c4c14fda', 1), '988cccbcc7b12f25b312fbefaf0ef5181e8d3f90f42fc91a50eadf26acb00e9c',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/10835d2aa6ff8991cd07c64973557975097a0885e964e34194477d96da1f36f9.mp3', 1619, '2026-09-13 22:24:06.424207', '33cda7598465efd8882485ab489be34b70f1dcbb55a925723c1f631ccedf9034', 'validated', '{"audio_key":"10835d2aa6ff8991cd07c64973557975097a0885e964e34194477d96da1f36f9","entity_key":"d_ability_and_permission_02:4","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"33cda7598465efd8882485ab489be34b70f1dcbb55a925723c1f631ccedf9034","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/10835d2aa6ff8991cd07c64973557975097a0885e964e34194477d96da1f36f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_weather_and_change_01:2 -> audio/generated/ko-KR/dialogues/1ddfc78fbdac8255d90c93d4e4f9f8bc8bf5809d82ce92048255108ec789dd62.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('40fa39d3-01a5-5bfb-8f03-e3287ca6a3f7', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_weather_and_change_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5edca92a15a0b358beb87585053b3a8643068e80ae2bbd2ec4a5a169c4fc5951'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a499230-9ca8-53d2-8746-0faf288c937b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('40fa39d3-01a5-5bfb-8f03-e3287ca6a3f7', 1), '5edca92a15a0b358beb87585053b3a8643068e80ae2bbd2ec4a5a169c4fc5951',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/1ddfc78fbdac8255d90c93d4e4f9f8bc8bf5809d82ce92048255108ec789dd62.mp3', 2037, '2026-09-13 22:24:06.486818', '0b2c3bf2f02437284bbd15833f2f0473621b65bf12609025728f191d8d779b3a', 'validated', '{"audio_key":"1ddfc78fbdac8255d90c93d4e4f9f8bc8bf5809d82ce92048255108ec789dd62","entity_key":"d_weather_and_change_01:2","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0b2c3bf2f02437284bbd15833f2f0473621b65bf12609025728f191d8d779b3a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/1ddfc78fbdac8255d90c93d4e4f9f8bc8bf5809d82ce92048255108ec789dd62.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_seoul_weekend_capstone_01:3 -> audio/generated/ko-KR/dialogues/1e5df35968db9e5403a5256dc1d68c0079f1eb8f7168f83c3eb9b8f2668221a8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e5d74b9c-b810-5fcf-a744-bdd2b5269bfa', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_seoul_weekend_capstone_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4deda10c09efe714d8ccd7f0edca57d5fbea5e56a2a84b1ac7aa568c980ed56e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1912e237-4c51-5394-b308-f6b360be52cc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e5d74b9c-b810-5fcf-a744-bdd2b5269bfa', 1), '4deda10c09efe714d8ccd7f0edca57d5fbea5e56a2a84b1ac7aa568c980ed56e',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/1e5df35968db9e5403a5256dc1d68c0079f1eb8f7168f83c3eb9b8f2668221a8.mp3', 1697, '2026-09-13 22:24:07.518422', 'd2bbf813b6932f7b5e3efa2ce3cef5b2f1dc25a64932764d505fbf474e761fe1', 'validated', '{"audio_key":"1e5df35968db9e5403a5256dc1d68c0079f1eb8f7168f83c3eb9b8f2668221a8","entity_key":"d_a2_seoul_weekend_capstone_01:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d2bbf813b6932f7b5e3efa2ce3cef5b2f1dc25a64932764d505fbf474e761fe1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/1e5df35968db9e5403a5256dc1d68c0079f1eb8f7168f83c3eb9b8f2668221a8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_and_hotel_02:2 -> audio/generated/ko-KR/dialogues/24a32637429315c6a0c93e7c0961ff5f0f8c08bb05a70b5a672dc85fe6e222f4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bc2c66e5-5bee-55e8-951a-2fc5c06b4908', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_and_hotel_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3fd84b75aa59b470f88b52952a084b9a0c109823ad19c9723cd0e37e943bbee7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8641911d-0cdc-5a4d-b4d0-1c79cad0d0c8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bc2c66e5-5bee-55e8-951a-2fc5c06b4908', 1), '3fd84b75aa59b470f88b52952a084b9a0c109823ad19c9723cd0e37e943bbee7',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/24a32637429315c6a0c93e7c0961ff5f0f8c08bb05a70b5a672dc85fe6e222f4.mp3', 1697, '2026-09-13 22:24:07.550892', '2e536cad4eb660378a54e374c6118f7739c2f384745b1fc29afc6d19017d8965', 'validated', '{"audio_key":"24a32637429315c6a0c93e7c0961ff5f0f8c08bb05a70b5a672dc85fe6e222f4","entity_key":"d_travel_and_hotel_02:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2e536cad4eb660378a54e374c6118f7739c2f384745b1fc29afc6d19017d8965","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/24a32637429315c6a0c93e7c0961ff5f0f8c08bb05a70b5a672dc85fe6e222f4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reasons_and_results_01:3 -> audio/generated/ko-KR/dialogues/2587ad8165d3f00203db0b1a63450c40fbcdf7c3721c0d4ebd3ab8de5744c4ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7ef12fbc-6263-5dd5-b3e3-abbe50b21fe0', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reasons_and_results_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61a2ac6c454fffc8b3921e9d754e5c6c2b8a3d9ac09756f99accf190806999f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e6dd1ebf-8a5d-58c1-892e-ed2cb9f1e507', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7ef12fbc-6263-5dd5-b3e3-abbe50b21fe0', 1), '61a2ac6c454fffc8b3921e9d754e5c6c2b8a3d9ac09756f99accf190806999f1',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2587ad8165d3f00203db0b1a63450c40fbcdf7c3721c0d4ebd3ab8de5744c4ac.mp3', 1280, '2026-09-13 22:24:08.543916', '87f6e3786d3a505587d6740c81a75ab4f10e9a95b40d40b6af3e0053ece109b3', 'validated', '{"audio_key":"2587ad8165d3f00203db0b1a63450c40fbcdf7c3721c0d4ebd3ab8de5744c4ac","entity_key":"d_reasons_and_results_01:3","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"87f6e3786d3a505587d6740c81a75ab4f10e9a95b40d40b6af3e0053ece109b3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/2587ad8165d3f00203db0b1a63450c40fbcdf7c3721c0d4ebd3ab8de5744c4ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_weather_and_change_01:4 -> audio/generated/ko-KR/dialogues/262f6343ace6415115558bfd9d6d795e328adba94b99ada791b2155d5821a2dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1fdb6846-1558-5e47-8d60-3b9a7a95c5fe', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_weather_and_change_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15604076fe104b1e9c9c137ebba9699efa947d050d1c696389e506b67e4bca1e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7d4f0527-125a-5023-9c2f-d271792740b6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1fdb6846-1558-5e47-8d60-3b9a7a95c5fe', 1), '15604076fe104b1e9c9c137ebba9699efa947d050d1c696389e506b67e4bca1e',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/262f6343ace6415115558bfd9d6d795e328adba94b99ada791b2155d5821a2dd.mp3', 1567, '2026-09-13 22:24:08.622987', '6e2708cf45f410c269c9dc626a9cda406f6a35b03a9dfc7896a6651dcfc5dd20', 'validated', '{"audio_key":"262f6343ace6415115558bfd9d6d795e328adba94b99ada791b2155d5821a2dd","entity_key":"d_weather_and_change_01:4","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6e2708cf45f410c269c9dc626a9cda406f6a35b03a9dfc7896a6651dcfc5dd20","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/262f6343ace6415115558bfd9d6d795e328adba94b99ada791b2155d5821a2dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_softening_01:3 -> audio/generated/ko-KR/dialogues/2ac931bbd0b8137b498b58591cd09c770767db3a5381d6bb43591c25ad620a50.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('14e18229-4003-5fa9-9d3b-ad6941455577', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_softening_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '80dff50f391f5f6cb43ca691c72eeb98104fe28804f5ec4d705342d143c9c38b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b958fa6e-bc23-52f7-a4ce-494788fbeb4b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('14e18229-4003-5fa9-9d3b-ad6941455577', 1), '80dff50f391f5f6cb43ca691c72eeb98104fe28804f5ec4d705342d143c9c38b',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2ac931bbd0b8137b498b58591cd09c770767db3a5381d6bb43591c25ad620a50.mp3', 1567, '2026-09-13 22:24:09.583043', '96bd78ad0b915a0144b00e18c38d75b4f4a556281cd019f3a516e6d38d781a7f', 'validated', '{"audio_key":"2ac931bbd0b8137b498b58591cd09c770767db3a5381d6bb43591c25ad620a50","entity_key":"d_opinions_and_softening_01:3","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"96bd78ad0b915a0144b00e18c38d75b4f4a556281cd019f3a516e6d38d781a7f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/2ac931bbd0b8137b498b58591cd09c770767db3a5381d6bb43591c25ad620a50.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_and_hotel_02:1 -> audio/generated/ko-KR/dialogues/2acb26541e2b89bf804ec32a3b39496a9d1658e32b2c0adb08b0be6fff272689.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('03f5ec15-a8cb-5177-8098-357dec90e655', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_and_hotel_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f2dc2f01494b563cbc92ba38ade2d6015183ce63f66117b4c7a0e649a6dc9087'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7f6487b-cce0-5d95-99a0-e75479cd84aa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('03f5ec15-a8cb-5177-8098-357dec90e655', 1), 'f2dc2f01494b563cbc92ba38ade2d6015183ce63f66117b4c7a0e649a6dc9087',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2acb26541e2b89bf804ec32a3b39496a9d1658e32b2c0adb08b0be6fff272689.mp3', 3709, '2026-09-13 22:24:09.957978', '01cf810bba2f99d53e050cc1a330848deb24523d0935fa6cdea521bbf3b09868', 'validated', '{"audio_key":"2acb26541e2b89bf804ec32a3b39496a9d1658e32b2c0adb08b0be6fff272689","entity_key":"d_travel_and_hotel_02:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"01cf810bba2f99d53e050cc1a330848deb24523d0935fa6cdea521bbf3b09868","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/2acb26541e2b89bf804ec32a3b39496a9d1658e32b2c0adb08b0be6fff272689.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_comparisons_and_choice_01:2 -> audio/generated/ko-KR/dialogues/2d067bab5af007d198af6a45fd9f0419c0bc3d3638e0dc85c3dde32f813d4eb9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3b392c31-207a-5fdb-a64d-d9a5fbe24a84', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_comparisons_and_choice_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc5b98bfdbef6eeb3ca160fc64998c959812a036e370f147d8f09a4c1e3eb5f2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2b903d7-6825-5cde-9c2f-0cf9d4d19402', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3b392c31-207a-5fdb-a64d-d9a5fbe24a84', 1), 'cc5b98bfdbef6eeb3ca160fc64998c959812a036e370f147d8f09a4c1e3eb5f2',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2d067bab5af007d198af6a45fd9f0419c0bc3d3638e0dc85c3dde32f813d4eb9.mp3', 1933, '2026-09-13 22:24:10.689898', 'a2844160f6117679b8937d2a18a7b028231b5b85efbff17f21f9da59818147ce', 'validated', '{"audio_key":"2d067bab5af007d198af6a45fd9f0419c0bc3d3638e0dc85c3dde32f813d4eb9","entity_key":"d_comparisons_and_choice_01:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a2844160f6117679b8937d2a18a7b028231b5b85efbff17f21f9da59818147ce","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/2d067bab5af007d198af6a45fd9f0419c0bc3d3638e0dc85c3dde32f813d4eb9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_past_experiences_02:4 -> audio/generated/ko-KR/dialogues/2de881afcec8a9fcd86a0e11d2083e0e73f0e59b0b25c86ef8a89bdb22412e75.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a4b0b9cf-ae43-56e7-ac67-8415b1e37759', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_past_experiences_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '11dedf0ef81af4d4aa0d1422ca5a12196288f3a9c4a7009fe861a43d2aa33809'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac27373f-441c-532d-8516-aa79b2718ca2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a4b0b9cf-ae43-56e7-ac67-8415b1e37759', 1), '11dedf0ef81af4d4aa0d1422ca5a12196288f3a9c4a7009fe861a43d2aa33809',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2de881afcec8a9fcd86a0e11d2083e0e73f0e59b0b25c86ef8a89bdb22412e75.mp3', 1515, '2026-09-13 22:24:11.104153', 'fb445bb2bcb443f1f10a7e5ed7126882bd2d85df47e91e0d93ff4229fc89a127', 'validated', '{"audio_key":"2de881afcec8a9fcd86a0e11d2083e0e73f0e59b0b25c86ef8a89bdb22412e75","entity_key":"d_past_experiences_02:4","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fb445bb2bcb443f1f10a7e5ed7126882bd2d85df47e91e0d93ff4229fc89a127","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/2de881afcec8a9fcd86a0e11d2083e0e73f0e59b0b25c86ef8a89bdb22412e75.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_softening_02:1 -> audio/generated/ko-KR/dialogues/2e33d1e9e5fcfe107b5a2f5e05bf5871752a7ad38b23464ea52fcb6e79431555.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a0149cee-2338-5e7c-a34a-06ce965f2298', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_softening_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee6ee5127324edb39d4c83dec28b3527cefbd3830b4dd43946ecfa43d7bab212'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33cb96bc-4fea-5cc5-8a37-0ce8387d455d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a0149cee-2338-5e7c-a34a-06ce965f2298', 1), 'ee6ee5127324edb39d4c83dec28b3527cefbd3830b4dd43946ecfa43d7bab212',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2e33d1e9e5fcfe107b5a2f5e05bf5871752a7ad38b23464ea52fcb6e79431555.mp3', 1515, '2026-09-13 22:24:11.720024', '6173f7674725e7dd904fb4a658f0b3c88e9ae52050de26d610f71a40f3672590', 'validated', '{"audio_key":"2e33d1e9e5fcfe107b5a2f5e05bf5871752a7ad38b23464ea52fcb6e79431555","entity_key":"d_opinions_and_softening_02:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6173f7674725e7dd904fb4a658f0b3c88e9ae52050de26d610f71a40f3672590","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/2e33d1e9e5fcfe107b5a2f5e05bf5871752a7ad38b23464ea52fcb6e79431555.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_and_hotel_01:2 -> audio/generated/ko-KR/dialogues/359c1c137e4224e441fab8645d015c86a47f6d6bd56da19666a0055c932c0f5e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3d62d192-70ae-5808-9a1b-594aeb0309c6', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_and_hotel_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac7b76dcb45ebe4d398cd69a2f56feafb8d5a07b6ec16b380a35ad08381bda80'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2739b94-cc37-55fd-93fe-bacf0ddae73a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3d62d192-70ae-5808-9a1b-594aeb0309c6', 1), 'ac7b76dcb45ebe4d398cd69a2f56feafb8d5a07b6ec16b380a35ad08381bda80',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/359c1c137e4224e441fab8645d015c86a47f6d6bd56da19666a0055c932c0f5e.mp3', 1488, '2026-09-13 22:24:12.189443', '34402cfc51f127656c6b5e8f9c405905e49f483dba0a8f370741a0d7e788fd8f', 'validated', '{"audio_key":"359c1c137e4224e441fab8645d015c86a47f6d6bd56da19666a0055c932c0f5e","entity_key":"d_travel_and_hotel_01:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"34402cfc51f127656c6b5e8f9c405905e49f483dba0a8f370741a0d7e788fd8f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/359c1c137e4224e441fab8645d015c86a47f6d6bd56da19666a0055c932c0f5e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_weather_and_change_02:1 -> audio/generated/ko-KR/dialogues/3888011172d7de52bb0a97f96a1950eaecd1fa3734b68c6799ab7e90bf32f86a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('56450cef-a019-5112-b2af-f43f4fe7bd53', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_weather_and_change_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '78f9fe218a2b96651214083240dc9007978e676b205e9c99c9f06d3313d88064'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a3b0ee4-51ba-56cc-8c54-e9b14013f70c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('56450cef-a019-5112-b2af-f43f4fe7bd53', 1), '78f9fe218a2b96651214083240dc9007978e676b205e9c99c9f06d3313d88064',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/3888011172d7de52bb0a97f96a1950eaecd1fa3734b68c6799ab7e90bf32f86a.mp3', 2324, '2026-09-13 22:24:12.814070', 'd02bd37604e63cdb03b5f44901f7cfc7b0bca69def4bbd92ea401fa23dd6c31d', 'validated', '{"audio_key":"3888011172d7de52bb0a97f96a1950eaecd1fa3734b68c6799ab7e90bf32f86a","entity_key":"d_weather_and_change_02:1","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d02bd37604e63cdb03b5f44901f7cfc7b0bca69def4bbd92ea401fa23dd6c31d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/3888011172d7de52bb0a97f96a1950eaecd1fa3734b68c6799ab7e90bf32f86a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ability_and_permission_02:3 -> audio/generated/ko-KR/dialogues/38f69fc68b342b0cf656a865f7c350744206e474099c01b90edc8f132a0ad391.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bccf7622-e08d-5a69-a8bf-4264071eed2b', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ability_and_permission_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3b3d83c9f8dcf53c353d2d1d6d505c68f8478c14a5f53804a2b34db975475712'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a29a58de-fa32-5293-8437-0362cb45f7d0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bccf7622-e08d-5a69-a8bf-4264071eed2b', 1), '3b3d83c9f8dcf53c353d2d1d6d505c68f8478c14a5f53804a2b34db975475712',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/38f69fc68b342b0cf656a865f7c350744206e474099c01b90edc8f132a0ad391.mp3', 1201, '2026-09-13 22:24:13.185595', '96e6fe0ccfb64991cbd82262bbaace1d29a418864a0021e42efbfc9907c95ed0', 'validated', '{"audio_key":"38f69fc68b342b0cf656a865f7c350744206e474099c01b90edc8f132a0ad391","entity_key":"d_ability_and_permission_02:3","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"96e6fe0ccfb64991cbd82262bbaace1d29a418864a0021e42efbfc9907c95ed0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/38f69fc68b342b0cf656a865f7c350744206e474099c01b90edc8f132a0ad391.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_weather_and_change_02:3 -> audio/generated/ko-KR/dialogues/3b5ee79c48c43f3f4261c92200bb914ee7a2d2b53ce51ff014e15d69bda01933.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('04b5c439-0525-5c28-be03-c0d5392800d5', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_weather_and_change_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '81bfab0faba1cbb2518af1190d15304ae70bdc1982b0f2fa152d226008775fe7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef1f3469-4bc1-5407-a65b-72acae802c88', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('04b5c439-0525-5c28-be03-c0d5392800d5', 1), '81bfab0faba1cbb2518af1190d15304ae70bdc1982b0f2fa152d226008775fe7',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/3b5ee79c48c43f3f4261c92200bb914ee7a2d2b53ce51ff014e15d69bda01933.mp3', 1697, '2026-09-13 22:24:13.888255', '0ad6ed8276e75d0418b04b5f0b1ac80c467053db63ffa07b5c5ab2aa384c5934', 'validated', '{"audio_key":"3b5ee79c48c43f3f4261c92200bb914ee7a2d2b53ce51ff014e15d69bda01933","entity_key":"d_weather_and_change_02:3","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0ad6ed8276e75d0418b04b5f0b1ac80c467053db63ffa07b5c5ab2aa384c5934","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/3b5ee79c48c43f3f4261c92200bb914ee7a2d2b53ce51ff014e15d69bda01933.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_and_hotel_01:3 -> audio/generated/ko-KR/dialogues/40db03fe1a43cc0b5b975dfc63d393fee4bc9005bc43bfe9eb75741210f7b923.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e5387772-13c5-5d61-a799-b756fac4d3f6', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_and_hotel_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b419d9317b9bb9eb653d5ad606ab96d18c653c51f3762c58ed9083a46296689'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e0461660-2a86-5929-93a3-44f86734acae', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e5387772-13c5-5d61-a799-b756fac4d3f6', 1), '6b419d9317b9bb9eb653d5ad606ab96d18c653c51f3762c58ed9083a46296689',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/40db03fe1a43cc0b5b975dfc63d393fee4bc9005bc43bfe9eb75741210f7b923.mp3', 1201, '2026-09-13 22:24:14.208222', '014db2b008f92558045120a8f201a8081b54bf1112f9534769b8768baab3cedb', 'validated', '{"audio_key":"40db03fe1a43cc0b5b975dfc63d393fee4bc9005bc43bfe9eb75741210f7b923","entity_key":"d_travel_and_hotel_01:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"014db2b008f92558045120a8f201a8081b54bf1112f9534769b8768baab3cedb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/40db03fe1a43cc0b5b975dfc63d393fee4bc9005bc43bfe9eb75741210f7b923.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_softening_01:2 -> audio/generated/ko-KR/dialogues/420e4263feb28d74f365838c9e7b3e6141c487c14713877b484385c25987099e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b8a43649-afbc-5eac-a3ae-9100a8751ec2', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_softening_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fb1dd2234340dbe4bb1bf1021f57457c78d286a8e8c867029d615d8534c89e50'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6954824b-9e35-552c-bb06-d3cbadab68be', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b8a43649-afbc-5eac-a3ae-9100a8751ec2', 1), 'fb1dd2234340dbe4bb1bf1021f57457c78d286a8e8c867029d615d8534c89e50',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/420e4263feb28d74f365838c9e7b3e6141c487c14713877b484385c25987099e.mp3', 2455, '2026-09-13 22:24:15.017256', 'a75a289af0351ec63477de1ad41e82c37529aa8d6ca672afd33ffc16e646a591', 'validated', '{"audio_key":"420e4263feb28d74f365838c9e7b3e6141c487c14713877b484385c25987099e","entity_key":"d_opinions_and_softening_01:2","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a75a289af0351ec63477de1ad41e82c37529aa8d6ca672afd33ffc16e646a591","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/420e4263feb28d74f365838c9e7b3e6141c487c14713877b484385c25987099e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_seoul_weekend_capstone_02:3 -> audio/generated/ko-KR/dialogues/48a58c90e1593ca2d8085cd93a8f54a5eb49eef1965cf1a23c3438f738bde8e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9adf7c88-38c2-5b68-924b-5d331422b6c2', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_seoul_weekend_capstone_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d44fead4471c65f66401117fb9c59c4ab575818114accf1c4ea4a7519db25ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8818b808-9e75-55d6-acc9-8bbf3dfe7e8e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9adf7c88-38c2-5b68-924b-5d331422b6c2', 1), '5d44fead4471c65f66401117fb9c59c4ab575818114accf1c4ea4a7519db25ea',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/48a58c90e1593ca2d8085cd93a8f54a5eb49eef1965cf1a23c3438f738bde8e7.mp3', 2168, '2026-09-13 22:24:15.295795', '074219e4b6f5c2b0f9d49996e7d08cd93cf5d5c7e4f3fc66b37b6a7864a060b3', 'validated', '{"audio_key":"48a58c90e1593ca2d8085cd93a8f54a5eb49eef1965cf1a23c3438f738bde8e7","entity_key":"d_a2_seoul_weekend_capstone_02:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"074219e4b6f5c2b0f9d49996e7d08cd93cf5d5c7e4f3fc66b37b6a7864a060b3","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/48a58c90e1593ca2d8085cd93a8f54a5eb49eef1965cf1a23c3438f738bde8e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_comparisons_and_choice_02:1 -> audio/generated/ko-KR/dialogues/4a1aa22ba76e280d7495044e51ba59992c7319607624565df8d3c8aa6bb9d60e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4e4dd66d-b991-55a9-b37d-9ac9cd844400', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_comparisons_and_choice_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '21623644d9a3daf74792a1c97f9fc04f69a12e76d062fa130a56b78570eab55e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f059e2f-7786-57e2-a24b-c58ccca3a7b4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4e4dd66d-b991-55a9-b37d-9ac9cd844400', 1), '21623644d9a3daf74792a1c97f9fc04f69a12e76d062fa130a56b78570eab55e',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/4a1aa22ba76e280d7495044e51ba59992c7319607624565df8d3c8aa6bb9d60e.mp3', 1488, '2026-09-13 22:24:16.082471', 'ab58bd45bbd033a683f14f3a103cfb23f2d88787db6ef3864ffd3b2eb3cc83a4', 'validated', '{"audio_key":"4a1aa22ba76e280d7495044e51ba59992c7319607624565df8d3c8aa6bb9d60e","entity_key":"d_comparisons_and_choice_02:1","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ab58bd45bbd033a683f14f3a103cfb23f2d88787db6ef3864ffd3b2eb3cc83a4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/4a1aa22ba76e280d7495044e51ba59992c7319607624565df8d3c8aa6bb9d60e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_advice_02:2 -> audio/generated/ko-KR/dialogues/4ca8013c8896a76d01cb212feab60d5916094f7a22778b4b0377e2bf4f984fb6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('90f4ac06-82ad-581e-b1c1-7e5957af0053', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_advice_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dba7460cdbbb21b8b89b8b70bb64b98b4e37793ebb0514da5b71056ace334b69'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5525efa3-8c06-51fb-a592-44776ff31cd1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('90f4ac06-82ad-581e-b1c1-7e5957af0053', 1), 'dba7460cdbbb21b8b89b8b70bb64b98b4e37793ebb0514da5b71056ace334b69',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/4ca8013c8896a76d01cb212feab60d5916094f7a22778b4b0377e2bf4f984fb6.mp3', 1619, '2026-09-13 22:24:16.415423', '9ab8fe0118f36d56743ffd8b445bbe3dcb3fd92442d70d0821fc44dda5e65e09', 'validated', '{"audio_key":"4ca8013c8896a76d01cb212feab60d5916094f7a22778b4b0377e2bf4f984fb6","entity_key":"d_health_and_advice_02:2","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9ab8fe0118f36d56743ffd8b445bbe3dcb3fd92442d70d0821fc44dda5e65e09","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/4ca8013c8896a76d01cb212feab60d5916094f7a22778b4b0377e2bf4f984fb6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_weather_and_change_01:1 -> audio/generated/ko-KR/dialogues/4d7fdde43c27250d3b083c1a4ce4d3026eeaa75b918534b08ff379dc13763c95.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b90cce74-07b9-58d4-93da-d2fa575e03d3', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_weather_and_change_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a558866dd91b1ed256f07dd16d97bf7a7f4a88e38b2cf8bfc3c2fa997f4a3ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d91775cb-62f8-5e29-91a5-051ae4e88c3f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b90cce74-07b9-58d4-93da-d2fa575e03d3', 1), '5a558866dd91b1ed256f07dd16d97bf7a7f4a88e38b2cf8bfc3c2fa997f4a3ed',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/4d7fdde43c27250d3b083c1a4ce4d3026eeaa75b918534b08ff379dc13763c95.mp3', 2115, '2026-09-13 22:24:17.250551', 'bc66ef90aed51c29c8a02898a7d25ba1890712567e4ff622f93348b546b7c4a1', 'validated', '{"audio_key":"4d7fdde43c27250d3b083c1a4ce4d3026eeaa75b918534b08ff379dc13763c95","entity_key":"d_weather_and_change_01:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bc66ef90aed51c29c8a02898a7d25ba1890712567e4ff622f93348b546b7c4a1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/4d7fdde43c27250d3b083c1a4ce4d3026eeaa75b918534b08ff379dc13763c95.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ability_and_permission_02:1 -> audio/generated/ko-KR/dialogues/4e46d6ec11efbef9a3cf16fc1618e64379cb9e11fa6f9b0fb4d74fab63546554.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('141cbdbc-a4d3-5cc2-8274-7e937a7927fb', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ability_and_permission_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c75744fc5661933380c6c11236c995b3da23a5cad532273949787022763b6495'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('90a117a1-4898-55ff-a0be-436fef144894', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('141cbdbc-a4d3-5cc2-8274-7e937a7927fb', 1), 'c75744fc5661933380c6c11236c995b3da23a5cad532273949787022763b6495',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/4e46d6ec11efbef9a3cf16fc1618e64379cb9e11fa6f9b0fb4d74fab63546554.mp3', 2115, '2026-09-13 22:24:17.554120', '8354e6203226a56d9bc5bcd4c3392d33075ecc6913f4aa4f91962653ea04876f', 'validated', '{"audio_key":"4e46d6ec11efbef9a3cf16fc1618e64379cb9e11fa6f9b0fb4d74fab63546554","entity_key":"d_ability_and_permission_02:1","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8354e6203226a56d9bc5bcd4c3392d33075ecc6913f4aa4f91962653ea04876f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/4e46d6ec11efbef9a3cf16fc1618e64379cb9e11fa6f9b0fb4d74fab63546554.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_plans_and_intentions_01:3 -> audio/generated/ko-KR/dialogues/4f3b0d15e113c44321baac543193ee2eb5a9334b514a0b95480cf993201ea27f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('51e8c009-0cb8-5306-a2ab-c5ffd62e4be7', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_plans_and_intentions_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad4459aaf2e271bce9283db469a4a191c221ca49d7451a61120a6558ba0479c6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1fc29cf5-a586-5418-a2d2-060f73e90b84', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('51e8c009-0cb8-5306-a2ab-c5ffd62e4be7', 1), 'ad4459aaf2e271bce9283db469a4a191c221ca49d7451a61120a6558ba0479c6',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/4f3b0d15e113c44321baac543193ee2eb5a9334b514a0b95480cf993201ea27f.mp3', 1280, '2026-09-13 22:24:18.309072', '98f43aa9fc833c98e45ff1022d77777150d4bc3a7e3de617781240fac6a285f3', 'validated', '{"audio_key":"4f3b0d15e113c44321baac543193ee2eb5a9334b514a0b95480cf993201ea27f","entity_key":"d_plans_and_intentions_01:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"98f43aa9fc833c98e45ff1022d77777150d4bc3a7e3de617781240fac6a285f3","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/4f3b0d15e113c44321baac543193ee2eb5a9334b514a0b95480cf993201ea27f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_seoul_weekend_capstone_01:1 -> audio/generated/ko-KR/dialogues/54f7319f9a25498c01d6a3d6a636d9b6ac5dbd781a03d3fea715c32b413678b6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cc48e181-34dc-55f2-a9a7-75245f792b62', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_seoul_weekend_capstone_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd11ef2c075059b2e2d51222eb2ffe71af32f709e42e5fceb2af897c7d21f110c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a26d4ee5-c6fe-5a2e-be57-159c7248bc09', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cc48e181-34dc-55f2-a9a7-75245f792b62', 1), 'd11ef2c075059b2e2d51222eb2ffe71af32f709e42e5fceb2af897c7d21f110c',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/54f7319f9a25498c01d6a3d6a636d9b6ac5dbd781a03d3fea715c32b413678b6.mp3', 1619, '2026-09-13 22:24:18.747146', 'ecf2a2815f8fe5eb284fc6bef748f7391186c52dd7560e5f2e5f98c28066a39a', 'validated', '{"audio_key":"54f7319f9a25498c01d6a3d6a636d9b6ac5dbd781a03d3fea715c32b413678b6","entity_key":"d_a2_seoul_weekend_capstone_01:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ecf2a2815f8fe5eb284fc6bef748f7391186c52dd7560e5f2e5f98c28066a39a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/54f7319f9a25498c01d6a3d6a636d9b6ac5dbd781a03d3fea715c32b413678b6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_and_hotel_02:3 -> audio/generated/ko-KR/dialogues/5895a6531342f1d0a797902376063e9e44312a29269e869f9f99858b03807aeb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('26418d12-defa-50fe-8b16-a5879b289046', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_and_hotel_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e951aae21fa2384a611eed2a1d42748cae6cf497908e3b499a14eab036f868d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f54eece5-78c2-5239-8272-811bcf2c3d69', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('26418d12-defa-50fe-8b16-a5879b289046', 1), 'e951aae21fa2384a611eed2a1d42748cae6cf497908e3b499a14eab036f868d5',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/5895a6531342f1d0a797902376063e9e44312a29269e869f9f99858b03807aeb.mp3', 1332, '2026-09-13 22:24:19.322426', 'a944331a3514153ce8329ce539ad71c48d73f1935a276411d2b05653e625641b', 'validated', '{"audio_key":"5895a6531342f1d0a797902376063e9e44312a29269e869f9f99858b03807aeb","entity_key":"d_travel_and_hotel_02:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a944331a3514153ce8329ce539ad71c48d73f1935a276411d2b05653e625641b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/5895a6531342f1d0a797902376063e9e44312a29269e869f9f99858b03807aeb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_advice_01:3 -> audio/generated/ko-KR/dialogues/5dd62008a5500da6bf5deb93607e7cb1c60de94828a6c6ff293ec9362ddda970.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1ad5e89a-b222-526a-9cfc-e302dbbf6304', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_advice_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d695c8122664f413a06eadca4d990f2df3adfb954165c73a82ff4abf5c7f367'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac9f46ad-c905-515b-856b-8e47ed7a9cb7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1ad5e89a-b222-526a-9cfc-e302dbbf6304', 1), '0d695c8122664f413a06eadca4d990f2df3adfb954165c73a82ff4abf5c7f367',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/5dd62008a5500da6bf5deb93607e7cb1c60de94828a6c6ff293ec9362ddda970.mp3', 2324, '2026-09-13 22:24:19.860324', '9a9a795398990a2bc9bc5cb7ea6133ab4e9e1f50b7893107d7af290a7b593dc4', 'validated', '{"audio_key":"5dd62008a5500da6bf5deb93607e7cb1c60de94828a6c6ff293ec9362ddda970","entity_key":"d_health_and_advice_01:3","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9a9a795398990a2bc9bc5cb7ea6133ab4e9e1f50b7893107d7af290a7b593dc4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/5dd62008a5500da6bf5deb93607e7cb1c60de94828a6c6ff293ec9362ddda970.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_advice_01:2 -> audio/generated/ko-KR/dialogues/620b25c946ae4489d22bd1e6eaf486a01c4b59dc6a3e0d6d3135107fb6a204c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4ca09071-2468-5313-a84f-c8b0b1796135', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_advice_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '730f1765affeffecf4e7ecbcd14b88e3aaa259d5ee18faf15f31e1589b5f28a5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21817c3d-74da-5464-b11c-7007c28f546d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4ca09071-2468-5313-a84f-c8b0b1796135', 1), '730f1765affeffecf4e7ecbcd14b88e3aaa259d5ee18faf15f31e1589b5f28a5',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/620b25c946ae4489d22bd1e6eaf486a01c4b59dc6a3e0d6d3135107fb6a204c8.mp3', 1436, '2026-09-13 22:24:20.369305', '5afe473b17f5fe173a4a76d5fd134a201b8ee5bd1a4a009ff99e8efb955e8e68', 'validated', '{"audio_key":"620b25c946ae4489d22bd1e6eaf486a01c4b59dc6a3e0d6d3135107fb6a204c8","entity_key":"d_health_and_advice_01:2","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5afe473b17f5fe173a4a76d5fd134a201b8ee5bd1a4a009ff99e8efb955e8e68","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/620b25c946ae4489d22bd1e6eaf486a01c4b59dc6a3e0d6d3135107fb6a204c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_comparisons_and_choice_01:3 -> audio/generated/ko-KR/dialogues/66d20806ba69f9ba6970daad4cd46c257202ea24a2ff9d18160006f4ff324077.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bdede357-bc0d-5834-ab4c-358970ee60f2', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_comparisons_and_choice_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd0f9449205bd99d139ec63471baf114b908ba4f753ea2a457b77e578747c348b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e977bd5b-7de9-5fa1-ad62-942687bc71d2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bdede357-bc0d-5834-ab4c-358970ee60f2', 1), 'd0f9449205bd99d139ec63471baf114b908ba4f753ea2a457b77e578747c348b',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/66d20806ba69f9ba6970daad4cd46c257202ea24a2ff9d18160006f4ff324077.mp3', 1201, '2026-09-13 22:24:20.850840', '63687e09173ff5840ad3abd6b55a57e777857ccd4277eec49c5b8b105158a929', 'validated', '{"audio_key":"66d20806ba69f9ba6970daad4cd46c257202ea24a2ff9d18160006f4ff324077","entity_key":"d_comparisons_and_choice_01:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"63687e09173ff5840ad3abd6b55a57e777857ccd4277eec49c5b8b105158a929","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/66d20806ba69f9ba6970daad4cd46c257202ea24a2ff9d18160006f4ff324077.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_and_hotel_01:4 -> audio/generated/ko-KR/dialogues/6bdc6348214130c1760d0400ba631e97e9e3d475f70f77449ba3b381baec912d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2c8c831a-82ab-5e32-bc33-ad2f4778882b', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_and_hotel_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6925e76318d8f95f279cc1171a5c30f45f7d46813d819976145947cc013f3876'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d852652-413f-5140-82a2-837a7bba4bf0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2c8c831a-82ab-5e32-bc33-ad2f4778882b', 1), '6925e76318d8f95f279cc1171a5c30f45f7d46813d819976145947cc013f3876',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6bdc6348214130c1760d0400ba631e97e9e3d475f70f77449ba3b381baec912d.mp3', 2168, '2026-09-13 22:24:21.486412', '71bfd03fdf6b175e917812b39606c00c12022dff1bf76d2c16f3af51ca34a198', 'validated', '{"audio_key":"6bdc6348214130c1760d0400ba631e97e9e3d475f70f77449ba3b381baec912d","entity_key":"d_travel_and_hotel_01:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"71bfd03fdf6b175e917812b39606c00c12022dff1bf76d2c16f3af51ca34a198","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/6bdc6348214130c1760d0400ba631e97e9e3d475f70f77449ba3b381baec912d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_comparisons_and_choice_02:4 -> audio/generated/ko-KR/dialogues/6d94b26000289d582fe54f42530ccaaf27a266604623018995dd575d44b795be.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('65ab7efe-ed18-5664-b11e-b19ca3f88446', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_comparisons_and_choice_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da29cc3d56f6057f023990df11df76fbf8774abb0e89442ccc718822f24ba0a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ddf2dd60-1eff-5f95-a6f8-b989787ba723', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('65ab7efe-ed18-5664-b11e-b19ca3f88446', 1), 'da29cc3d56f6057f023990df11df76fbf8774abb0e89442ccc718822f24ba0a1',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6d94b26000289d582fe54f42530ccaaf27a266604623018995dd575d44b795be.mp3', 914, '2026-09-13 22:24:21.834341', '50cd20886ac958aec624834c436ab331f0fcaa74472063387926c2c121fd2248', 'validated', '{"audio_key":"6d94b26000289d582fe54f42530ccaaf27a266604623018995dd575d44b795be","entity_key":"d_comparisons_and_choice_02:4","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"50cd20886ac958aec624834c436ab331f0fcaa74472063387926c2c121fd2248","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/6d94b26000289d582fe54f42530ccaaf27a266604623018995dd575d44b795be.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_and_hotel_02:4 -> audio/generated/ko-KR/dialogues/743c9fe4e49f8c03e0a65a636d7f075e63cb76862c93634fac5d4a131885d84c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('907e77f1-33ba-570a-8677-913fcc5f55f9', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_and_hotel_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3845289941c47f5cddd51006243c4237e9ebac7f1a08ff63b4204623eea8e42d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da46eade-4162-5e6d-9cd8-58014ed262cc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('907e77f1-33ba-570a-8677-913fcc5f55f9', 1), '3845289941c47f5cddd51006243c4237e9ebac7f1a08ff63b4204623eea8e42d',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/743c9fe4e49f8c03e0a65a636d7f075e63cb76862c93634fac5d4a131885d84c.mp3', 1071, '2026-09-13 22:24:22.468627', '01520234a6c607d6d12f775eb8a9b9d592557d92abb5f7cc7b518a15f1e193b2', 'validated', '{"audio_key":"743c9fe4e49f8c03e0a65a636d7f075e63cb76862c93634fac5d4a131885d84c","entity_key":"d_travel_and_hotel_02:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"01520234a6c607d6d12f775eb8a9b9d592557d92abb5f7cc7b518a15f1e193b2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/743c9fe4e49f8c03e0a65a636d7f075e63cb76862c93634fac5d4a131885d84c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_past_experiences_01:2 -> audio/generated/ko-KR/dialogues/77edfdfd3e51adefbc26e8988c71dc69d59fb9c7f4723fa3302f6f7d628e0820.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('42b29942-b027-563c-8880-ac5191e961f2', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_past_experiences_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2b9412071caf6e45132508487359963b1999ef8a059b4eb781cde934d1d87ed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d842532-5375-5349-829f-2792481a9c94', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('42b29942-b027-563c-8880-ac5191e961f2', 1), 'b2b9412071caf6e45132508487359963b1999ef8a059b4eb781cde934d1d87ed',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/77edfdfd3e51adefbc26e8988c71dc69d59fb9c7f4723fa3302f6f7d628e0820.mp3', 2089, '2026-09-13 22:24:22.927417', '73c0c9aadc19ba48a851640cff6a232f5956aa16b6ed2b88b78c03b154117e61', 'validated', '{"audio_key":"77edfdfd3e51adefbc26e8988c71dc69d59fb9c7f4723fa3302f6f7d628e0820","entity_key":"d_past_experiences_01:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"73c0c9aadc19ba48a851640cff6a232f5956aa16b6ed2b88b78c03b154117e61","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/77edfdfd3e51adefbc26e8988c71dc69d59fb9c7f4723fa3302f6f7d628e0820.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reasons_and_results_02:1 -> audio/generated/ko-KR/dialogues/79f5727f13a9bc71c596e8faea9f2edb84433c6c9f7949364d7d1747270f1ce8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ec6585d3-6bdf-5cde-86c3-bc79907a3ad0', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reasons_and_results_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c179f7077f50f6508c6445cddd3170c6276e5753ee6ad1aead6d4f896bedbcaa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ad3dc56-d32d-5e42-b8f7-1cb944db8b00', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ec6585d3-6bdf-5cde-86c3-bc79907a3ad0', 1), 'c179f7077f50f6508c6445cddd3170c6276e5753ee6ad1aead6d4f896bedbcaa',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/79f5727f13a9bc71c596e8faea9f2edb84433c6c9f7949364d7d1747270f1ce8.mp3', 1567, '2026-09-13 22:24:23.527729', '1c71b9a63e6f35e8a6b7cf4e6d6940e868b03f4950da8d5e17c430531d11d9a0', 'validated', '{"audio_key":"79f5727f13a9bc71c596e8faea9f2edb84433c6c9f7949364d7d1747270f1ce8","entity_key":"d_reasons_and_results_02:1","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1c71b9a63e6f35e8a6b7cf4e6d6940e868b03f4950da8d5e17c430531d11d9a0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/79f5727f13a9bc71c596e8faea9f2edb84433c6c9f7949364d7d1747270f1ce8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_advice_02:3 -> audio/generated/ko-KR/dialogues/7af0f7df14c0c55bcaf471fe88b8cf675994b5db171f994bd15e28dd2e6c657a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7ee757fa-4c59-5bc8-8110-ee8104aa876d', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_advice_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b71ecae5e979ddf095b0b364069a5b7d05cc2e9aca12efc577027a5f4441a03'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d200074-3fd3-5ac6-9e8e-7cc5c758d7f1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7ee757fa-4c59-5bc8-8110-ee8104aa876d', 1), '0b71ecae5e979ddf095b0b364069a5b7d05cc2e9aca12efc577027a5f4441a03',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7af0f7df14c0c55bcaf471fe88b8cf675994b5db171f994bd15e28dd2e6c657a.mp3', 1906, '2026-09-13 22:24:24.036847', 'e55e659e12f4aa928b307fc6f902f0243e0ee3b7bd834200bd7f47883385d51f', 'validated', '{"audio_key":"7af0f7df14c0c55bcaf471fe88b8cf675994b5db171f994bd15e28dd2e6c657a","entity_key":"d_health_and_advice_02:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e55e659e12f4aa928b307fc6f902f0243e0ee3b7bd834200bd7f47883385d51f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/7af0f7df14c0c55bcaf471fe88b8cf675994b5db171f994bd15e28dd2e6c657a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_softening_02:2 -> audio/generated/ko-KR/dialogues/7e6ec47d90cd68e58049abb194ac14d4b042de19cebe8bf1158384ea2b410b4f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('27ab4208-6aad-5e14-94e2-e5ceca5b28e9', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_softening_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd317d30bc2615056fed1e24f30c2253366efe8334ee54c4413a1b6af632442d8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c870041-3aaf-5540-9a2f-ebfc935ebad6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('27ab4208-6aad-5e14-94e2-e5ceca5b28e9', 1), 'd317d30bc2615056fed1e24f30c2253366efe8334ee54c4413a1b6af632442d8',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7e6ec47d90cd68e58049abb194ac14d4b042de19cebe8bf1158384ea2b410b4f.mp3', 1619, '2026-09-13 22:24:24.590476', 'ecc00b0d340fc61f56ce371f167e207f2afac121c343cb59503e29be674d4d0a', 'validated', '{"audio_key":"7e6ec47d90cd68e58049abb194ac14d4b042de19cebe8bf1158384ea2b410b4f","entity_key":"d_opinions_and_softening_02:2","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ecc00b0d340fc61f56ce371f167e207f2afac121c343cb59503e29be674d4d0a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/7e6ec47d90cd68e58049abb194ac14d4b042de19cebe8bf1158384ea2b410b4f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ability_and_permission_02:2 -> audio/generated/ko-KR/dialogues/814b95ea7d924fd175f8147594c09c7b7f85e57efd7b56c4f99624f2e92b66fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('77bbf4b4-7a8e-57db-a20f-c924f53fc6b0', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ability_and_permission_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4770bbb77e851881a2c2b24be30b79db8447788e6d85e75e0536430a629767a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3dc5daf-8066-50e3-8cdc-8fc0d85b074e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('77bbf4b4-7a8e-57db-a20f-c924f53fc6b0', 1), '4770bbb77e851881a2c2b24be30b79db8447788e6d85e75e0536430a629767a1',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/814b95ea7d924fd175f8147594c09c7b7f85e57efd7b56c4f99624f2e92b66fc.mp3', 2768, '2026-09-13 22:24:25.250836', '8767638b8639e2af0ee0faf09ac3ce193bd60fb6847622e497aab4fec30b4d92', 'validated', '{"audio_key":"814b95ea7d924fd175f8147594c09c7b7f85e57efd7b56c4f99624f2e92b66fc","entity_key":"d_ability_and_permission_02:2","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8767638b8639e2af0ee0faf09ac3ce193bd60fb6847622e497aab4fec30b4d92","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/814b95ea7d924fd175f8147594c09c7b7f85e57efd7b56c4f99624f2e92b66fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_plans_and_intentions_02:3 -> audio/generated/ko-KR/dialogues/837d471cc3a2719458013c6f0201c0e96b6461f5dce5c265437598724edade4a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ad7fe103-c330-556e-8fa8-16f3512c7c6f', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_plans_and_intentions_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9922dd1873b952c17808e4dc40ff60eda43aa2631caa3bab0567e87887fe11c8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0123632f-64bd-5108-af7e-6b436ef25da2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ad7fe103-c330-556e-8fa8-16f3512c7c6f', 1), '9922dd1873b952c17808e4dc40ff60eda43aa2631caa3bab0567e87887fe11c8',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/837d471cc3a2719458013c6f0201c0e96b6461f5dce5c265437598724edade4a.mp3', 1619, '2026-09-13 22:24:25.648158', 'd49c11e6edf20de979a1e34cad49c0a72b3fef53aae40963e6f9fdd9fcd7e6a0', 'validated', '{"audio_key":"837d471cc3a2719458013c6f0201c0e96b6461f5dce5c265437598724edade4a","entity_key":"d_plans_and_intentions_02:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d49c11e6edf20de979a1e34cad49c0a72b3fef53aae40963e6f9fdd9fcd7e6a0","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/837d471cc3a2719458013c6f0201c0e96b6461f5dce5c265437598724edade4a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reasons_and_results_01:4 -> audio/generated/ko-KR/dialogues/85a63b1171b3ec34492f7cdd044c6497bc0345078f5a8ce72f06d8a2d414f72d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('66de76c9-782a-5bb7-a68f-3f2690043f94', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reasons_and_results_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '891b4abdeb75452c61005e687fd9dafdbd913845e352c33df31dca6a473597de'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('21404144-dc66-5d61-9106-02f1ff086cb1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('66de76c9-782a-5bb7-a68f-3f2690043f94', 1), '891b4abdeb75452c61005e687fd9dafdbd913845e352c33df31dca6a473597de',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/85a63b1171b3ec34492f7cdd044c6497bc0345078f5a8ce72f06d8a2d414f72d.mp3', 2324, '2026-09-13 22:24:26.369406', '19a310dbf11d11b6c3367834a02e39fa7ea8e35d34885ff49292dcb2acac02fd', 'validated', '{"audio_key":"85a63b1171b3ec34492f7cdd044c6497bc0345078f5a8ce72f06d8a2d414f72d","entity_key":"d_reasons_and_results_01:4","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"19a310dbf11d11b6c3367834a02e39fa7ea8e35d34885ff49292dcb2acac02fd","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/85a63b1171b3ec34492f7cdd044c6497bc0345078f5a8ce72f06d8a2d414f72d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_weather_and_change_01:3 -> audio/generated/ko-KR/dialogues/872d026153fc295c75fa2e0db1f9cdfff5cddd8738eb049d69cf2347bf57096b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('59231b5b-6176-5b14-9536-007af3aea1c6', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_weather_and_change_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eae3b7b33d0e3b7ca17c8d4a7c1da170eaf8c9eeb1eed1268cdfe585691f3e0e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('00c1e22b-5901-529c-bace-6a1712dd231b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('59231b5b-6176-5b14-9536-007af3aea1c6', 1), 'eae3b7b33d0e3b7ca17c8d4a7c1da170eaf8c9eeb1eed1268cdfe585691f3e0e',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/872d026153fc295c75fa2e0db1f9cdfff5cddd8738eb049d69cf2347bf57096b.mp3', 1697, '2026-09-13 22:24:26.680741', '8221baef65e281da642dea8ed96e820964c2fd16e0a1c004fc12f10bd6a21238', 'validated', '{"audio_key":"872d026153fc295c75fa2e0db1f9cdfff5cddd8738eb049d69cf2347bf57096b","entity_key":"d_weather_and_change_01:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"8221baef65e281da642dea8ed96e820964c2fd16e0a1c004fc12f10bd6a21238","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/872d026153fc295c75fa2e0db1f9cdfff5cddd8738eb049d69cf2347bf57096b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_past_experiences_01:4 -> audio/generated/ko-KR/dialogues/89b271129379e9013b10fead1dbe6dd19614bbabb7112f576b95310b047ff0c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('afbf4265-2f0c-5933-a300-3a175022e76d', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_past_experiences_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0411819c781b655766b3db071eef952168b9061a9ec8422621477215ad25e809'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('07a06533-bed0-59e0-91f4-2ec28d0d2716', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('afbf4265-2f0c-5933-a300-3a175022e76d', 1), '0411819c781b655766b3db071eef952168b9061a9ec8422621477215ad25e809',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/89b271129379e9013b10fead1dbe6dd19614bbabb7112f576b95310b047ff0c9.mp3', 1750, '2026-09-13 22:24:27.457186', 'eb9f37a47b4999f941cf66b4d5bb509ec6edc7e215bcd3f49b935a8bbfa843af', 'validated', '{"audio_key":"89b271129379e9013b10fead1dbe6dd19614bbabb7112f576b95310b047ff0c9","entity_key":"d_past_experiences_01:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"eb9f37a47b4999f941cf66b4d5bb509ec6edc7e215bcd3f49b935a8bbfa843af","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/89b271129379e9013b10fead1dbe6dd19614bbabb7112f576b95310b047ff0c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_plans_and_intentions_01:2 -> audio/generated/ko-KR/dialogues/8bc3fd29ba2213f6af8403496acc65ffd20d9104de8e0ced63f0df221ed63a4a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b9fb7be2-202e-529a-a44e-081e3109a679', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_plans_and_intentions_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '380196afaf7e258b846a98a52a60d3fbc996b63fb15d9fd7061b7919b7c16d1d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e4609271-2520-5672-92ba-50b00f924cc3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b9fb7be2-202e-529a-a44e-081e3109a679', 1), '380196afaf7e258b846a98a52a60d3fbc996b63fb15d9fd7061b7919b7c16d1d',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/8bc3fd29ba2213f6af8403496acc65ffd20d9104de8e0ced63f0df221ed63a4a.mp3', 2220, '2026-09-13 22:24:27.763692', 'f819d2408b9ba49bf99d6a3e05e075defd3ebbce0f61a07f5af7a2c823b086c4', 'validated', '{"audio_key":"8bc3fd29ba2213f6af8403496acc65ffd20d9104de8e0ced63f0df221ed63a4a","entity_key":"d_plans_and_intentions_01:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f819d2408b9ba49bf99d6a3e05e075defd3ebbce0f61a07f5af7a2c823b086c4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/8bc3fd29ba2213f6af8403496acc65ffd20d9104de8e0ced63f0df221ed63a4a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_softening_02:3 -> audio/generated/ko-KR/dialogues/8f0b52154fd9ee7de0249e1c4a9421950a5f82e59f4c68152516266a22686b0f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('be233558-c08c-501b-92d6-86bd5ee0463e', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_softening_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '051d9ff12915be688414ac306c7be59c3c9ff2e56d0b581219dc95c460bf227d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5244b214-c1cf-5845-b4d8-1b12f3ced884', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('be233558-c08c-501b-92d6-86bd5ee0463e', 1), '051d9ff12915be688414ac306c7be59c3c9ff2e56d0b581219dc95c460bf227d',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/8f0b52154fd9ee7de0249e1c4a9421950a5f82e59f4c68152516266a22686b0f.mp3', 2351, '2026-09-13 22:24:28.568858', '62a7f088281174aace679f5156288f236807bb99afbd0e74f348518dcb158bd1', 'validated', '{"audio_key":"8f0b52154fd9ee7de0249e1c4a9421950a5f82e59f4c68152516266a22686b0f","entity_key":"d_opinions_and_softening_02:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"62a7f088281174aace679f5156288f236807bb99afbd0e74f348518dcb158bd1","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/8f0b52154fd9ee7de0249e1c4a9421950a5f82e59f4c68152516266a22686b0f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_weather_and_change_02:4 -> audio/generated/ko-KR/dialogues/93dac41cca3e949f744b4da1d8b2ad8004f82710e3e7e80357f798e28cf562b6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d53a6bf2-89d9-5d1d-a3cc-805fe2b41ab7', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_weather_and_change_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1596ccf6f602b5638380936089c457764f8de27ba3db988580affda1dcbc061a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e503fc29-f553-58ce-b799-d23b9eaecf8d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d53a6bf2-89d9-5d1d-a3cc-805fe2b41ab7', 1), '1596ccf6f602b5638380936089c457764f8de27ba3db988580affda1dcbc061a',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/93dac41cca3e949f744b4da1d8b2ad8004f82710e3e7e80357f798e28cf562b6.mp3', 1619, '2026-09-13 22:24:28.819306', '865ef850095ac149688e2f0881dbbebcdce4706152441c0b756a9771477dc2c9', 'validated', '{"audio_key":"93dac41cca3e949f744b4da1d8b2ad8004f82710e3e7e80357f798e28cf562b6","entity_key":"d_weather_and_change_02:4","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"865ef850095ac149688e2f0881dbbebcdce4706152441c0b756a9771477dc2c9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/93dac41cca3e949f744b4da1d8b2ad8004f82710e3e7e80357f798e28cf562b6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_advice_01:1 -> audio/generated/ko-KR/dialogues/9add21278fd4294e4bc093a32daf18a583ad93f2404d3fb38914d1336bcac01a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c88d7960-ea0d-574d-83b4-b6e558d0e77f', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_advice_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '360ee64d30260e429c937a9a2e6419b0339410c7b4828c2058b511970c7aa18b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('95acb624-42de-55f1-af28-9c67cf3e645c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c88d7960-ea0d-574d-83b4-b6e558d0e77f', 1), '360ee64d30260e429c937a9a2e6419b0339410c7b4828c2058b511970c7aa18b',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9add21278fd4294e4bc093a32daf18a583ad93f2404d3fb38914d1336bcac01a.mp3', 1619, '2026-09-13 22:24:29.718955', 'e76599602cabb231f74e6bd00eaac370b79203e6f7b6e9cbb3da4f978c9911d4', 'validated', '{"audio_key":"9add21278fd4294e4bc093a32daf18a583ad93f2404d3fb38914d1336bcac01a","entity_key":"d_health_and_advice_01:1","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e76599602cabb231f74e6bd00eaac370b79203e6f7b6e9cbb3da4f978c9911d4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/9add21278fd4294e4bc093a32daf18a583ad93f2404d3fb38914d1336bcac01a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_comparisons_and_choice_02:2 -> audio/generated/ko-KR/dialogues/9c46cc20f23f8caa8cd3856739faac14b7aa63acb315f075ee56b4a7a3468034.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('04e10450-55bf-5985-b9f7-90368ac2269c', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_comparisons_and_choice_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea52d6eedbc299ce6543879773cae97d4d8a82bc0c103e47a5ebd3c4e0ce0d2f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cbf38d1f-4423-5c4b-80d5-419f5f964eb2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('04e10450-55bf-5985-b9f7-90368ac2269c', 1), 'ea52d6eedbc299ce6543879773cae97d4d8a82bc0c103e47a5ebd3c4e0ce0d2f',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9c46cc20f23f8caa8cd3856739faac14b7aa63acb315f075ee56b4a7a3468034.mp3', 2115, '2026-09-13 22:24:29.935355', 'ba6ebe03aa2adee5d0362ae5fbdfad073735aef829085f374c5e8d5f2da8eb23', 'validated', '{"audio_key":"9c46cc20f23f8caa8cd3856739faac14b7aa63acb315f075ee56b4a7a3468034","entity_key":"d_comparisons_and_choice_02:2","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ba6ebe03aa2adee5d0362ae5fbdfad073735aef829085f374c5e8d5f2da8eb23","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/9c46cc20f23f8caa8cd3856739faac14b7aa63acb315f075ee56b4a7a3468034.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_softening_02:4 -> audio/generated/ko-KR/dialogues/9ea0dc1846b2272293cb2931f80a396261e05643c4606ce0087d5cd7f928e978.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('675d2eab-378a-59a2-bcd8-8db8c37c038c', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_softening_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd9970b19e369365e7d2a8e3500ad22032bbfed013e1750ef5bcb64a01c057d47'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('464d459d-247e-5786-9e37-6f98f27cb81d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('675d2eab-378a-59a2-bcd8-8db8c37c038c', 1), 'd9970b19e369365e7d2a8e3500ad22032bbfed013e1750ef5bcb64a01c057d47',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9ea0dc1846b2272293cb2931f80a396261e05643c4606ce0087d5cd7f928e978.mp3', 2168, '2026-09-13 22:24:30.791135', '42b1e32d2d1ccd78669237340d7f83caca119665c58936b0dfd263ed98976bbd', 'validated', '{"audio_key":"9ea0dc1846b2272293cb2931f80a396261e05643c4606ce0087d5cd7f928e978","entity_key":"d_opinions_and_softening_02:4","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"42b1e32d2d1ccd78669237340d7f83caca119665c58936b0dfd263ed98976bbd","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/9ea0dc1846b2272293cb2931f80a396261e05643c4606ce0087d5cd7f928e978.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_seoul_weekend_capstone_01:4 -> audio/generated/ko-KR/dialogues/a26ed5106d96c5df0c8f36ea2313743142fa5bbd96e7aa2272799a314a1a09d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3e98560c-9459-5225-be3c-e642e156edfe', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_seoul_weekend_capstone_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '25646e0d075e7ee6fc27b894a6f8881b5592fa39ddb88d58700cc8834e3e2af8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b11cd28d-74ea-51e2-827d-5596325c5b49', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3e98560c-9459-5225-be3c-e642e156edfe', 1), '25646e0d075e7ee6fc27b894a6f8881b5592fa39ddb88d58700cc8834e3e2af8',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a26ed5106d96c5df0c8f36ea2313743142fa5bbd96e7aa2272799a314a1a09d3.mp3', 2115, '2026-09-13 22:24:31.051274', 'e4997e6cba0b2ee0b78637fa299aa3552f644d21645e5a1de22503e927bb36a8', 'validated', '{"audio_key":"a26ed5106d96c5df0c8f36ea2313743142fa5bbd96e7aa2272799a314a1a09d3","entity_key":"d_a2_seoul_weekend_capstone_01:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e4997e6cba0b2ee0b78637fa299aa3552f644d21645e5a1de22503e927bb36a8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/a26ed5106d96c5df0c8f36ea2313743142fa5bbd96e7aa2272799a314a1a09d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_comparisons_and_choice_01:4 -> audio/generated/ko-KR/dialogues/ab548cb335411a2a04c6be56008c2223e4d66a7f78f6ae4ddb0fd1709d5f0f0c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('31d0e2d7-d401-5caa-b46b-2aa2283207b4', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_comparisons_and_choice_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '417b66e1fbbccbf8e8b41c4ebc845e6a242b17379c91fa616969553a545ac62a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee94baf9-f06b-567c-90b5-3b4954497a39', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('31d0e2d7-d401-5caa-b46b-2aa2283207b4', 1), '417b66e1fbbccbf8e8b41c4ebc845e6a242b17379c91fa616969553a545ac62a',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ab548cb335411a2a04c6be56008c2223e4d66a7f78f6ae4ddb0fd1709d5f0f0c.mp3', 1515, '2026-09-13 22:24:31.805778', '3f3077aa6bfb188b5a8551fdeb8c1279269f2dabfb2b5dc5e89ae26c37eac695', 'validated', '{"audio_key":"ab548cb335411a2a04c6be56008c2223e4d66a7f78f6ae4ddb0fd1709d5f0f0c","entity_key":"d_comparisons_and_choice_01:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3f3077aa6bfb188b5a8551fdeb8c1279269f2dabfb2b5dc5e89ae26c37eac695","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/ab548cb335411a2a04c6be56008c2223e4d66a7f78f6ae4ddb0fd1709d5f0f0c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_past_experiences_02:2 -> audio/generated/ko-KR/dialogues/ad6b0be709e4fc585bf8fba343be974761d6d843406071298e812d825b6c4bab.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ffc41315-54e7-5aea-9cf0-0894a5cc208b', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_past_experiences_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b3ca6f2a4775af16a799816a0daeed69ffc1060b2498c2a7df8dbd80f55e8ef9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62a7bd2c-5a0d-5ba7-a384-68f616f18909', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ffc41315-54e7-5aea-9cf0-0894a5cc208b', 1), 'b3ca6f2a4775af16a799816a0daeed69ffc1060b2498c2a7df8dbd80f55e8ef9',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ad6b0be709e4fc585bf8fba343be974761d6d843406071298e812d825b6c4bab.mp3', 2351, '2026-09-13 22:24:32.198502', 'a797b698ea0597b5591776749b5bcd104501691bfad30148d3d05086d14c653c', 'validated', '{"audio_key":"ad6b0be709e4fc585bf8fba343be974761d6d843406071298e812d825b6c4bab","entity_key":"d_past_experiences_02:2","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a797b698ea0597b5591776749b5bcd104501691bfad30148d3d05086d14c653c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/ad6b0be709e4fc585bf8fba343be974761d6d843406071298e812d825b6c4bab.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_seoul_weekend_capstone_02:2 -> audio/generated/ko-KR/dialogues/ae8ce4f43a0b8152c765a65afbaae8fa83aa5962de3b41aff49ab82bf2ebbe80.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('91f94d3a-9dd0-5880-9752-d9f8abdb9260', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_seoul_weekend_capstone_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd817a1b827c23b890191a300e70fac511c6f89af25491cdb020ce7d51122cc8d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bbf1fc0-5f8b-5800-a09a-616119c39d71', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('91f94d3a-9dd0-5880-9752-d9f8abdb9260', 1), 'd817a1b827c23b890191a300e70fac511c6f89af25491cdb020ce7d51122cc8d',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ae8ce4f43a0b8152c765a65afbaae8fa83aa5962de3b41aff49ab82bf2ebbe80.mp3', 3108, '2026-09-13 22:24:33.034920', 'cfd5cb6f7b604a29be9a726e054bd44a30c0004bc9ee1236aec3b24cbed0ad0c', 'validated', '{"audio_key":"ae8ce4f43a0b8152c765a65afbaae8fa83aa5962de3b41aff49ab82bf2ebbe80","entity_key":"d_a2_seoul_weekend_capstone_02:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cfd5cb6f7b604a29be9a726e054bd44a30c0004bc9ee1236aec3b24cbed0ad0c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/ae8ce4f43a0b8152c765a65afbaae8fa83aa5962de3b41aff49ab82bf2ebbe80.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_past_experiences_01:1 -> audio/generated/ko-KR/dialogues/b1232da65f33153684cec92f7cc6186331117fab2c574521f961acc4fcf4ae0d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cb4b0d8b-1728-5bbe-b118-56a905e0bb79', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_past_experiences_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '127e274ef897dd30d8405966b981b3d149561e406724c5f421ea1842f75ca349'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f50f6122-89fd-5460-b4fa-c29b141585bb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cb4b0d8b-1728-5bbe-b118-56a905e0bb79', 1), '127e274ef897dd30d8405966b981b3d149561e406724c5f421ea1842f75ca349',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b1232da65f33153684cec92f7cc6186331117fab2c574521f961acc4fcf4ae0d.mp3', 1567, '2026-09-13 22:24:33.249535', 'e52f475cc30ff09954e754966de181a2eb9feb872867dd5b5415b3b75e487dda', 'validated', '{"audio_key":"b1232da65f33153684cec92f7cc6186331117fab2c574521f961acc4fcf4ae0d","entity_key":"d_past_experiences_01:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e52f475cc30ff09954e754966de181a2eb9feb872867dd5b5415b3b75e487dda","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/b1232da65f33153684cec92f7cc6186331117fab2c574521f961acc4fcf4ae0d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reasons_and_results_02:4 -> audio/generated/ko-KR/dialogues/b1a6cb7619c665c0b1b8abb735c3112417cd7cc5ea0ae49c289fb8934833538b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3ebebfe3-9598-5fb3-b8e0-9bea1146926b', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reasons_and_results_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da29cc3d56f6057f023990df11df76fbf8774abb0e89442ccc718822f24ba0a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5ccdd69-c80e-578b-88d6-41c3d339b53f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3ebebfe3-9598-5fb3-b8e0-9bea1146926b', 1), 'da29cc3d56f6057f023990df11df76fbf8774abb0e89442ccc718822f24ba0a1',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b1a6cb7619c665c0b1b8abb735c3112417cd7cc5ea0ae49c289fb8934833538b.mp3', 966, '2026-09-13 22:24:33.997241', '8a7cf25733e1da211b2bbee46b43a61fbb0ef7e5b6270ce753a523e2f091c0df', 'validated', '{"audio_key":"b1a6cb7619c665c0b1b8abb735c3112417cd7cc5ea0ae49c289fb8934833538b","entity_key":"d_reasons_and_results_02:4","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8a7cf25733e1da211b2bbee46b43a61fbb0ef7e5b6270ce753a523e2f091c0df","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/b1a6cb7619c665c0b1b8abb735c3112417cd7cc5ea0ae49c289fb8934833538b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reasons_and_results_02:3 -> audio/generated/ko-KR/dialogues/b2413d5fe60b9d722a98f2155512a405a0b3478bf4101d9014067b306fa21605.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b0f98c01-8c0e-5a97-99a6-e260cd8ff566', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reasons_and_results_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a9206f42e37bdeaae511991da35bb416a208f8ca22795ff576a129fc98aa761'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d1923b1-8bae-5bad-9719-3358a28b3035', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b0f98c01-8c0e-5a97-99a6-e260cd8ff566', 1), '1a9206f42e37bdeaae511991da35bb416a208f8ca22795ff576a129fc98aa761',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b2413d5fe60b9d722a98f2155512a405a0b3478bf4101d9014067b306fa21605.mp3', 1488, '2026-09-13 22:24:34.288307', 'e45872fe32076e01872bd41ca4936773dfd3c4a9a3ef9d4abf5a61aa707ee670', 'validated', '{"audio_key":"b2413d5fe60b9d722a98f2155512a405a0b3478bf4101d9014067b306fa21605","entity_key":"d_reasons_and_results_02:3","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e45872fe32076e01872bd41ca4936773dfd3c4a9a3ef9d4abf5a61aa707ee670","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/b2413d5fe60b9d722a98f2155512a405a0b3478bf4101d9014067b306fa21605.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_plans_and_intentions_02:2 -> audio/generated/ko-KR/dialogues/b3ea6d732bfbb87ac1cb6795fed21b3771b02ad2ae4b1551b9a23e03fb32faec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ff4658bf-c5f1-547e-bea9-577afd403bf1', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_plans_and_intentions_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '228069750838d501c01b2da09fba4b5c2b7b00a94c5091188896320c40a52046'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('98c7a39d-0e48-5ca2-a029-e7a71414a1e2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ff4658bf-c5f1-547e-bea9-577afd403bf1', 1), '228069750838d501c01b2da09fba4b5c2b7b00a94c5091188896320c40a52046',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b3ea6d732bfbb87ac1cb6795fed21b3771b02ad2ae4b1551b9a23e03fb32faec.mp3', 2324, '2026-09-13 22:24:35.101396', 'd8d02c463dab5259d7c1b211efa1e9c716f70634be2a97dcc6a280768d43aba4', 'validated', '{"audio_key":"b3ea6d732bfbb87ac1cb6795fed21b3771b02ad2ae4b1551b9a23e03fb32faec","entity_key":"d_plans_and_intentions_02:2","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d8d02c463dab5259d7c1b211efa1e9c716f70634be2a97dcc6a280768d43aba4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/b3ea6d732bfbb87ac1cb6795fed21b3771b02ad2ae4b1551b9a23e03fb32faec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reasons_and_results_01:2 -> audio/generated/ko-KR/dialogues/bad1a9bf878b1e9a90804a8e4886b964e193f61b496de9d0f065d64100ddf225.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('23f1d922-99dd-5208-a532-87c0547444ee', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reasons_and_results_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2f7980b67d1bf39981b70b81b8fbb7d77a594374f158fce6cb20276ad6e561f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a318c2f-34fc-5220-a4e5-180568eeec8b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('23f1d922-99dd-5208-a532-87c0547444ee', 1), '2f7980b67d1bf39981b70b81b8fbb7d77a594374f158fce6cb20276ad6e561f3',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/bad1a9bf878b1e9a90804a8e4886b964e193f61b496de9d0f065d64100ddf225.mp3', 2168, '2026-09-13 22:24:35.399273', 'b83b7581580fbfb019b22f0abe1578570f2fcb425ac01a397a24b4c947ad3097', 'validated', '{"audio_key":"bad1a9bf878b1e9a90804a8e4886b964e193f61b496de9d0f065d64100ddf225","entity_key":"d_reasons_and_results_01:2","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b83b7581580fbfb019b22f0abe1578570f2fcb425ac01a397a24b4c947ad3097","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/bad1a9bf878b1e9a90804a8e4886b964e193f61b496de9d0f065d64100ddf225.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_travel_and_hotel_01:1 -> audio/generated/ko-KR/dialogues/c373bf033d896cdd1746a7ce0e8d354b18ed8b3571f62ba1a06da0ff4e8aa06d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cdaa753b-5b37-55b7-9281-590a6fe0eb62', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_travel_and_hotel_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '14e307cdc8cdde66adf9e11f17238f2381b5039aedd7afe36135772f09e543b5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f63ac2d-198a-5fb7-a4af-aec5ec0ba3b3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cdaa753b-5b37-55b7-9281-590a6fe0eb62', 1), '14e307cdc8cdde66adf9e11f17238f2381b5039aedd7afe36135772f09e543b5',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c373bf033d896cdd1746a7ce0e8d354b18ed8b3571f62ba1a06da0ff4e8aa06d.mp3', 2324, '2026-09-13 22:24:36.504572', '0b346b9525518c22394b266749dd42c776d9603e27948f2fa6d6171e24934d96', 'validated', '{"audio_key":"c373bf033d896cdd1746a7ce0e8d354b18ed8b3571f62ba1a06da0ff4e8aa06d","entity_key":"d_travel_and_hotel_01:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0b346b9525518c22394b266749dd42c776d9603e27948f2fa6d6171e24934d96","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/c373bf033d896cdd1746a7ce0e8d354b18ed8b3571f62ba1a06da0ff4e8aa06d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_comparisons_and_choice_01:1 -> audio/generated/ko-KR/dialogues/c40f88b77a0b29f986940944fad859d51b72ad547880dcfba16707040e9f6929.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('76c9fa88-d421-51eb-8e84-5ccadb97f89c', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_comparisons_and_choice_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e574a700d11e3b4be03214af8e02efde6c0acc3616e7c345c363b17e6938ffb2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ea3f339-df92-5c8f-b971-d5c5703717ba', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('76c9fa88-d421-51eb-8e84-5ccadb97f89c', 1), 'e574a700d11e3b4be03214af8e02efde6c0acc3616e7c345c363b17e6938ffb2',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c40f88b77a0b29f986940944fad859d51b72ad547880dcfba16707040e9f6929.mp3', 1567, '2026-09-13 22:24:36.433405', '7df0237336e59d33086f0efc6776890f31a5d69ef8c1513bc144afa347591dcb', 'validated', '{"audio_key":"c40f88b77a0b29f986940944fad859d51b72ad547880dcfba16707040e9f6929","entity_key":"d_comparisons_and_choice_01:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7df0237336e59d33086f0efc6776890f31a5d69ef8c1513bc144afa347591dcb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/c40f88b77a0b29f986940944fad859d51b72ad547880dcfba16707040e9f6929.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_seoul_weekend_capstone_02:1 -> audio/generated/ko-KR/dialogues/cbe7116c35d16296cbdf0ed3c4b184e79fbf66e599ce97412ed7fc35ddff6739.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fa8df4fb-e07e-5791-93a3-d5552207a843', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_seoul_weekend_capstone_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '915a1dde2f84c7b62250c7615a9d7c1f9663557baca8287821e3d1ce1240f622'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05394358-9d17-5963-bc8d-6a56ba59cd40', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fa8df4fb-e07e-5791-93a3-d5552207a843', 1), '915a1dde2f84c7b62250c7615a9d7c1f9663557baca8287821e3d1ce1240f622',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/cbe7116c35d16296cbdf0ed3c4b184e79fbf66e599ce97412ed7fc35ddff6739.mp3', 1619, '2026-09-13 22:24:37.490276', '823847189656d92ba38437378b7fc156cad811d22eaa49dbe0f7802269c989a8', 'validated', '{"audio_key":"cbe7116c35d16296cbdf0ed3c4b184e79fbf66e599ce97412ed7fc35ddff6739","entity_key":"d_a2_seoul_weekend_capstone_02:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"823847189656d92ba38437378b7fc156cad811d22eaa49dbe0f7802269c989a8","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/cbe7116c35d16296cbdf0ed3c4b184e79fbf66e599ce97412ed7fc35ddff6739.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_plans_and_intentions_02:1 -> audio/generated/ko-KR/dialogues/ccfc88f8e9022ca99436165c09c9f2e4b2904eb5b90152311b4cb72d2521160a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('db0c5359-199a-5432-93db-b005f3e2661f', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_plans_and_intentions_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b8b4aea7b0fd73419487850d90e841c5893bd384112dcbc867e1d24a3ff026f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('71cfd951-46e0-51f7-8241-b8c39cdc893c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('db0c5359-199a-5432-93db-b005f3e2661f', 1), 'b8b4aea7b0fd73419487850d90e841c5893bd384112dcbc867e1d24a3ff026f5',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ccfc88f8e9022ca99436165c09c9f2e4b2904eb5b90152311b4cb72d2521160a.mp3', 1671, '2026-09-13 22:24:37.563293', '61a7f5e0794afa802dda8e2e5cf32e89c6933e780dd526829d3f350321a6fae5', 'validated', '{"audio_key":"ccfc88f8e9022ca99436165c09c9f2e4b2904eb5b90152311b4cb72d2521160a","entity_key":"d_plans_and_intentions_02:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"61a7f5e0794afa802dda8e2e5cf32e89c6933e780dd526829d3f350321a6fae5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/ccfc88f8e9022ca99436165c09c9f2e4b2904eb5b90152311b4cb72d2521160a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ability_and_permission_01:2 -> audio/generated/ko-KR/dialogues/d5cd89108fc97509ded11bcf223845dd115a108586fde4af5a4f52355e6eaf67.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3a4d23c3-3cf4-5e54-b549-21a95318df1f', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ability_and_permission_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a00bb79dfd2c86a75c29d0654a45ac63bbf609538fa2b067f639b01e720f51a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('297223fb-efc5-5bc8-9c64-025499362dd9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3a4d23c3-3cf4-5e54-b549-21a95318df1f', 1), '9a00bb79dfd2c86a75c29d0654a45ac63bbf609538fa2b067f639b01e720f51a',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d5cd89108fc97509ded11bcf223845dd115a108586fde4af5a4f52355e6eaf67.mp3', 1985, '2026-09-13 22:24:38.580097', '24f35116c468b550c176acbece1eb1748ba45c48dff5f05a2928ccdc2c623743', 'validated', '{"audio_key":"d5cd89108fc97509ded11bcf223845dd115a108586fde4af5a4f52355e6eaf67","entity_key":"d_ability_and_permission_01:2","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"24f35116c468b550c176acbece1eb1748ba45c48dff5f05a2928ccdc2c623743","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/d5cd89108fc97509ded11bcf223845dd115a108586fde4af5a4f52355e6eaf67.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_seoul_weekend_capstone_01:2 -> audio/generated/ko-KR/dialogues/daa357a96f4e7bcb57e5d82261a5e64d739216cf659cf5ac16b2fe7da5b790ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('95195a8a-b704-5537-8936-3a736806294b', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_seoul_weekend_capstone_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6fa34c6bc4ad4fc1f78c250a51f04208495dde25a81020580ecba61939d8c872'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('273da1ef-1653-5724-91f4-6efbcfefcd02', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('95195a8a-b704-5537-8936-3a736806294b', 1), '6fa34c6bc4ad4fc1f78c250a51f04208495dde25a81020580ecba61939d8c872',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/daa357a96f4e7bcb57e5d82261a5e64d739216cf659cf5ac16b2fe7da5b790ad.mp3', 2272, '2026-09-13 22:24:38.667583', 'ed254ecce288ea38a3eb1377433bf866b98f5ffcd034be1f2be4da6e2109112c', 'validated', '{"audio_key":"daa357a96f4e7bcb57e5d82261a5e64d739216cf659cf5ac16b2fe7da5b790ad","entity_key":"d_a2_seoul_weekend_capstone_01:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ed254ecce288ea38a3eb1377433bf866b98f5ffcd034be1f2be4da6e2109112c","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/daa357a96f4e7bcb57e5d82261a5e64d739216cf659cf5ac16b2fe7da5b790ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ability_and_permission_01:4 -> audio/generated/ko-KR/dialogues/e17ec3cb9c82fd4599df5013aa6587a488953ac496836e752a73a592bb4935e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dd81773c-ec27-5ddd-b1ed-8e7bf2f6ee52', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ability_and_permission_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da29cc3d56f6057f023990df11df76fbf8774abb0e89442ccc718822f24ba0a1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('35f73cbf-68e2-5536-818b-b3b05f33fb2a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dd81773c-ec27-5ddd-b1ed-8e7bf2f6ee52', 1), 'da29cc3d56f6057f023990df11df76fbf8774abb0e89442ccc718822f24ba0a1',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e17ec3cb9c82fd4599df5013aa6587a488953ac496836e752a73a592bb4935e3.mp3', 1071, '2026-09-13 22:24:39.567399', 'bafed887de6419edd45b55ffc2d36edc2420e659db57d51d3a2233a86cd14602', 'validated', '{"audio_key":"e17ec3cb9c82fd4599df5013aa6587a488953ac496836e752a73a592bb4935e3","entity_key":"d_ability_and_permission_01:4","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bafed887de6419edd45b55ffc2d36edc2420e659db57d51d3a2233a86cd14602","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/e17ec3cb9c82fd4599df5013aa6587a488953ac496836e752a73a592bb4935e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_plans_and_intentions_01:1 -> audio/generated/ko-KR/dialogues/e1a20751407fdcb14d144db8a90660f05298fe0facc06344ed2d6001f720dfd3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9d93bd51-25c4-5331-ba3c-49e459f82d57', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_plans_and_intentions_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52bf0565e4fda9f9a03074ae782eb83a23fe05dd496f2fcd29624e580607e171'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d2c71c3-4f6c-5eac-8e4e-cd67d9973f8a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9d93bd51-25c4-5331-ba3c-49e459f82d57', 1), '52bf0565e4fda9f9a03074ae782eb83a23fe05dd496f2fcd29624e580607e171',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e1a20751407fdcb14d144db8a90660f05298fe0facc06344ed2d6001f720dfd3.mp3', 2037, '2026-09-13 22:24:39.757842', '721c8dfad553fcd0235b9455ceb410494ce40d54a8edf6301f261c42b45c427f', 'validated', '{"audio_key":"e1a20751407fdcb14d144db8a90660f05298fe0facc06344ed2d6001f720dfd3","entity_key":"d_plans_and_intentions_01:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"721c8dfad553fcd0235b9455ceb410494ce40d54a8edf6301f261c42b45c427f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/e1a20751407fdcb14d144db8a90660f05298fe0facc06344ed2d6001f720dfd3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_advice_02:4 -> audio/generated/ko-KR/dialogues/e26d2ff66544f20dc5cb27e376db4c2fd080b9bad1bd75eea9050080786a9f6d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ceca11cf-148e-59f7-a2a7-604f5fad0a17', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_advice_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bead0f8b33f14d169b39725e9994d6ebdd1421a796a8b9e8d0f21411927624e3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ad1ac7b-39cb-5153-9dc6-f101c3c0f559', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ceca11cf-148e-59f7-a2a7-604f5fad0a17', 1), 'bead0f8b33f14d169b39725e9994d6ebdd1421a796a8b9e8d0f21411927624e3',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e26d2ff66544f20dc5cb27e376db4c2fd080b9bad1bd75eea9050080786a9f6d.mp3', 1750, '2026-09-13 22:24:40.638632', '6703bd00b9be9db68ea5d95a8b8cc9a8eccd11cfa787ae47f161f5591342673a', 'validated', '{"audio_key":"e26d2ff66544f20dc5cb27e376db4c2fd080b9bad1bd75eea9050080786a9f6d","entity_key":"d_health_and_advice_02:4","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"6703bd00b9be9db68ea5d95a8b8cc9a8eccd11cfa787ae47f161f5591342673a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/e26d2ff66544f20dc5cb27e376db4c2fd080b9bad1bd75eea9050080786a9f6d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_past_experiences_01:3 -> audio/generated/ko-KR/dialogues/e2b40250c88cfa23eeeb3ba28493ec498aaeb65728327650f2e66c9bf77dad41.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('513d8a10-5242-5f10-b0c9-fefa7c03bf2c', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_past_experiences_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '807dda71babe1bd56ab84a418d14d7584bd53a30cc6b79b6e517d85fde6ac1dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ff15aa8-914a-50f0-822f-e065403bfc3a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('513d8a10-5242-5f10-b0c9-fefa7c03bf2c', 1), '807dda71babe1bd56ab84a418d14d7584bd53a30cc6b79b6e517d85fde6ac1dc',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e2b40250c88cfa23eeeb3ba28493ec498aaeb65728327650f2e66c9bf77dad41.mp3', 1436, '2026-09-13 22:24:40.906214', '5c3846dd4be1904c65bf080ea43d62b2d902417601e501f1bdc6fa2b4aca8fd1', 'validated', '{"audio_key":"e2b40250c88cfa23eeeb3ba28493ec498aaeb65728327650f2e66c9bf77dad41","entity_key":"d_past_experiences_01:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"5c3846dd4be1904c65bf080ea43d62b2d902417601e501f1bdc6fa2b4aca8fd1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/e2b40250c88cfa23eeeb3ba28493ec498aaeb65728327650f2e66c9bf77dad41.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_advice_02:1 -> audio/generated/ko-KR/dialogues/e7a876f6b2647acb3fa6777decc3d49eb92f5a700e3224946f443f3ad1839197.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('38aedf72-e751-5f17-bd73-e92c997ff9eb', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_advice_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0bf9c9a49ac6c25c1e2a26fa25564756ec316b6022f36a84a5fa2cf20d72d5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7688be2c-cd4c-551c-8e4b-3e199bd64855', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('38aedf72-e751-5f17-bd73-e92c997ff9eb', 1), 'b0bf9c9a49ac6c25c1e2a26fa25564756ec316b6022f36a84a5fa2cf20d72d5a',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e7a876f6b2647acb3fa6777decc3d49eb92f5a700e3224946f443f3ad1839197.mp3', 1280, '2026-09-13 22:24:41.676479', '5a6336fa89033371f44aca56f40a4b7207cfbe159a5f70a81dd1299f487afd4b', 'validated', '{"audio_key":"e7a876f6b2647acb3fa6777decc3d49eb92f5a700e3224946f443f3ad1839197","entity_key":"d_health_and_advice_02:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a6336fa89033371f44aca56f40a4b7207cfbe159a5f70a81dd1299f487afd4b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/e7a876f6b2647acb3fa6777decc3d49eb92f5a700e3224946f443f3ad1839197.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_plans_and_intentions_02:4 -> audio/generated/ko-KR/dialogues/e9b25a4cbea6f4d034e9f10e507268c7aa1224ffc61cbc1d546178ca73b8ec67.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d21916b8-b20d-5a6e-98a7-04f2d1fd14ee', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_plans_and_intentions_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '56a45215eb7ee20bf05a82deb37fdc727be85bef9635932a17fe93672c4324a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14f131a2-149e-56c0-bb3f-f714ba9f2b4a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d21916b8-b20d-5a6e-98a7-04f2d1fd14ee', 1), '56a45215eb7ee20bf05a82deb37fdc727be85bef9635932a17fe93672c4324a3',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e9b25a4cbea6f4d034e9f10e507268c7aa1224ffc61cbc1d546178ca73b8ec67.mp3', 2220, '2026-09-13 22:24:42.000225', 'b895da9832b154da7cade94c8c9ad20250b23edd2fb40ec50ce5916c32223902', 'validated', '{"audio_key":"e9b25a4cbea6f4d034e9f10e507268c7aa1224ffc61cbc1d546178ca73b8ec67","entity_key":"d_plans_and_intentions_02:4","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b895da9832b154da7cade94c8c9ad20250b23edd2fb40ec50ce5916c32223902","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/e9b25a4cbea6f4d034e9f10e507268c7aa1224ffc61cbc1d546178ca73b8ec67.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_reasons_and_results_02:2 -> audio/generated/ko-KR/dialogues/eb2041207100d55e08c9a8ca120798fddf4502df035cc0c0446759e8a92a86a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f9669f42-8238-546c-acc2-26f566889f27', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_reasons_and_results_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd210c3e01608073f3c68195bd1c0757326b8d1d45b90f47ee68263a2e684c9af'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f835d0e8-0125-5ec8-b840-df0d8967b4b5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f9669f42-8238-546c-acc2-26f566889f27', 1), 'd210c3e01608073f3c68195bd1c0757326b8d1d45b90f47ee68263a2e684c9af',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/eb2041207100d55e08c9a8ca120798fddf4502df035cc0c0446759e8a92a86a2.mp3', 2925, '2026-09-13 22:24:42.870320', '542ed651cad3332f6a8261e9c24cf69ccf5ab649e2cb6e7a5a6580642522841b', 'validated', '{"audio_key":"eb2041207100d55e08c9a8ca120798fddf4502df035cc0c0446759e8a92a86a2","entity_key":"d_reasons_and_results_02:2","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"542ed651cad3332f6a8261e9c24cf69ccf5ab649e2cb6e7a5a6580642522841b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/eb2041207100d55e08c9a8ca120798fddf4502df035cc0c0446759e8a92a86a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_opinions_and_softening_01:4 -> audio/generated/ko-KR/dialogues/eb7a9128bdf534a97afc88aa1a64af05ca04a5ac3e61e6db023d45742897f526.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('79063630-8016-56c0-92fd-671a1c92cb1d', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_opinions_and_softening_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db7e941767667e62a822b2bc0001e1cf34a8acaea81321138a1bb600f44c4471'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc858b27-21f5-56ce-b9f9-d4fa74790acc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('79063630-8016-56c0-92fd-671a1c92cb1d', 1), 'db7e941767667e62a822b2bc0001e1cf34a8acaea81321138a1bb600f44c4471',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/eb7a9128bdf534a97afc88aa1a64af05ca04a5ac3e61e6db023d45742897f526.mp3', 1802, '2026-09-13 22:24:43.050862', 'e6ba4a9d807eca170f4d06d9cff6b7eaf3668a22d882219b8ad55510f33f195d', 'validated', '{"audio_key":"eb7a9128bdf534a97afc88aa1a64af05ca04a5ac3e61e6db023d45742897f526","entity_key":"d_opinions_and_softening_01:4","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e6ba4a9d807eca170f4d06d9cff6b7eaf3668a22d882219b8ad55510f33f195d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/eb7a9128bdf534a97afc88aa1a64af05ca04a5ac3e61e6db023d45742897f526.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_past_experiences_02:3 -> audio/generated/ko-KR/dialogues/f28adb0936ce635a51c3277b5bc1a15c43df37f6beb04b13a3cae4d135f7bbdf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a9ce95a2-9fa4-5543-9ef8-33e8725e4033', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_past_experiences_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4522b6058d6d6e75abde95f78f4b3f24022aaf9be8afd21267db51c5e79d98aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('401004c9-389c-5da0-b6c0-0b487c197594', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a9ce95a2-9fa4-5543-9ef8-33e8725e4033', 1), '4522b6058d6d6e75abde95f78f4b3f24022aaf9be8afd21267db51c5e79d98aa',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f28adb0936ce635a51c3277b5bc1a15c43df37f6beb04b13a3cae4d135f7bbdf.mp3', 1071, '2026-09-13 22:24:43.844698', '47f61b3feac54f9d3e09e2464d380d0100eda79aea47f8228299d9e055bac377', 'validated', '{"audio_key":"f28adb0936ce635a51c3277b5bc1a15c43df37f6beb04b13a3cae4d135f7bbdf","entity_key":"d_past_experiences_02:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"47f61b3feac54f9d3e09e2464d380d0100eda79aea47f8228299d9e055bac377","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/f28adb0936ce635a51c3277b5bc1a15c43df37f6beb04b13a3cae4d135f7bbdf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ability_and_permission_01:3 -> audio/generated/ko-KR/dialogues/f3722a09555f5ecdb8096059948a8d67fd7c54963fcc91e29714a3e3b6d1e000.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('86657fd4-fa9e-5270-9736-a9611e3765bc', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ability_and_permission_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae10cac32d3526663e93a11fec0de8529198ab7eebcea2a96398d1bacc38eeb3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e38957bc-6909-5c9a-b51c-6c905902e198', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('86657fd4-fa9e-5270-9736-a9611e3765bc', 1), 'ae10cac32d3526663e93a11fec0de8529198ab7eebcea2a96398d1bacc38eeb3',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f3722a09555f5ecdb8096059948a8d67fd7c54963fcc91e29714a3e3b6d1e000.mp3', 1436, '2026-09-13 22:24:44.096427', 'c4c20ededc31ab562de1d45f9b3eb970b77019eb45fec726a286bf94dc5d814f', 'validated', '{"audio_key":"f3722a09555f5ecdb8096059948a8d67fd7c54963fcc91e29714a3e3b6d1e000","entity_key":"d_ability_and_permission_01:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c4c20ededc31ab562de1d45f9b3eb970b77019eb45fec726a286bf94dc5d814f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/f3722a09555f5ecdb8096059948a8d67fd7c54963fcc91e29714a3e3b6d1e000.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_plans_and_intentions_01:4 -> audio/generated/ko-KR/dialogues/f54edc7a85e64f75470827b11a4f8be213eb612b8b443a0df526028949ad6a51.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4484afd6-8fa8-5e67-86bc-4d2aed557d5c', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_plans_and_intentions_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '093bf7f33712efb0cdaee784807fd401ee547434327c72e5d3d5bef49730b1c9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9382050-0f82-53c0-b5ed-018ba6981c06', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4484afd6-8fa8-5e67-86bc-4d2aed557d5c', 1), '093bf7f33712efb0cdaee784807fd401ee547434327c72e5d3d5bef49730b1c9',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f54edc7a85e64f75470827b11a4f8be213eb612b8b443a0df526028949ad6a51.mp3', 1384, '2026-09-13 22:24:44.884854', '2026998de76f415c182a57435fcc5f3d00aa7835b0c080fd40e372549b2d1b58', 'validated', '{"audio_key":"f54edc7a85e64f75470827b11a4f8be213eb612b8b443a0df526028949ad6a51","entity_key":"d_plans_and_intentions_01:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2026998de76f415c182a57435fcc5f3d00aa7835b0c080fd40e372549b2d1b58","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/f54edc7a85e64f75470827b11a4f8be213eb612b8b443a0df526028949ad6a51.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_comparisons_and_choice_02:3 -> audio/generated/ko-KR/dialogues/f614143072243a6243e2c5a97e4899b5436a76f613d96aac8d6013f760571114.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4520869e-76b9-5f4e-9dc1-1c07239c9f48', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_comparisons_and_choice_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a732c4d6b49aa9094efa96826ee2392aaeaaa3265eff84390302123c18192ee9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('870c3f7a-592b-5e3c-adf7-8d1357ba6668', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4520869e-76b9-5f4e-9dc1-1c07239c9f48', 1), 'a732c4d6b49aa9094efa96826ee2392aaeaaa3265eff84390302123c18192ee9',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f614143072243a6243e2c5a97e4899b5436a76f613d96aac8d6013f760571114.mp3', 1933, '2026-09-13 22:24:45.175134', 'e640b8cf5aed4b938635ed8f76656f01c10e7c6a77dc5097db08ad15f11cf354', 'validated', '{"audio_key":"f614143072243a6243e2c5a97e4899b5436a76f613d96aac8d6013f760571114","entity_key":"d_comparisons_and_choice_02:3","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e640b8cf5aed4b938635ed8f76656f01c10e7c6a77dc5097db08ad15f11cf354","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/f614143072243a6243e2c5a97e4899b5436a76f613d96aac8d6013f760571114.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_weather_and_change_02:2 -> audio/generated/ko-KR/dialogues/f91077c5170ef929f0833a351252ae030df054a01b5225697b1a8df0583d8098.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f671b873-83e9-5d19-806b-d444919bbd9c', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_weather_and_change_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '29ca9e4a0e4a8e056627ae4309649e3ada605214707842db72c348dd08d306d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8a08fea-7630-5cec-a475-b4f2df19c79c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f671b873-83e9-5d19-806b-d444919bbd9c', 1), '29ca9e4a0e4a8e056627ae4309649e3ada605214707842db72c348dd08d306d6',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f91077c5170ef929f0833a351252ae030df054a01b5225697b1a8df0583d8098.mp3', 1488, '2026-09-13 22:24:45.995964', '0e7857dc01ba93d37b872e0b2679e7c77b3c781ed3ddc7b5ad8224f700c4176c', 'validated', '{"audio_key":"f91077c5170ef929f0833a351252ae030df054a01b5225697b1a8df0583d8098","entity_key":"d_weather_and_change_02:2","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0e7857dc01ba93d37b872e0b2679e7c77b3c781ed3ddc7b5ad8224f700c4176c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/f91077c5170ef929f0833a351252ae030df054a01b5225697b1a8df0583d8098.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_health_and_advice_01:4 -> audio/generated/ko-KR/dialogues/faf17464e94bd28ccf2045d3f4453b6570915fa8d098446fa9c4887b13290783.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1ec66544-da39-5e20-b5c8-9e88c258712f', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_health_and_advice_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1764017b9b72bd745f8fd696d91a519a8c6681ff904017a25a607297bfc124f1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('508c5b7b-c73c-58fc-ab01-d43e687bec4a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1ec66544-da39-5e20-b5c8-9e88c258712f', 1), '1764017b9b72bd745f8fd696d91a519a8c6681ff904017a25a607297bfc124f1',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/faf17464e94bd28ccf2045d3f4453b6570915fa8d098446fa9c4887b13290783.mp3', 1515, '2026-09-13 22:24:46.194888', '8e8d4b5e5764e75c3349db4562aab993f4f016687642711211c9bd39e156390b', 'validated', '{"audio_key":"faf17464e94bd28ccf2045d3f4453b6570915fa8d098446fa9c4887b13290783","entity_key":"d_health_and_advice_01:4","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8e8d4b5e5764e75c3349db4562aab993f4f016687642711211c9bd39e156390b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/faf17464e94bd28ccf2045d3f4453b6570915fa8d098446fa9c4887b13290783.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_a2_seoul_weekend_capstone_02:4 -> audio/generated/ko-KR/dialogues/fc22d2351e83d0afb5ea3c47ee1f2f2b47e908d9a70e92c2e91e8d2db4b8bb2b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('98ba9094-aa0e-50ed-997e-b727dfee5a28', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_a2_seoul_weekend_capstone_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e0393222eb24f371ea954a5acae8623e9c574aef1682176a7d78688960de3b4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('65452e3a-38d0-5df3-90c2-97ee00c237dc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('98ba9094-aa0e-50ed-997e-b727dfee5a28', 1), '1e0393222eb24f371ea954a5acae8623e9c574aef1682176a7d78688960de3b4',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/fc22d2351e83d0afb5ea3c47ee1f2f2b47e908d9a70e92c2e91e8d2db4b8bb2b.mp3', 2455, '2026-09-13 22:24:47.109414', '49d8e9daaa0af92ceff00a387c4233e59cbe9154be48f8cca6a92a2bc96b11e0', 'validated', '{"audio_key":"fc22d2351e83d0afb5ea3c47ee1f2f2b47e908d9a70e92c2e91e8d2db4b8bb2b","entity_key":"d_a2_seoul_weekend_capstone_02:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"49d8e9daaa0af92ceff00a387c4233e59cbe9154be48f8cca6a92a2bc96b11e0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/fc22d2351e83d0afb5ea3c47ee1f2f2b47e908d9a70e92c2e91e8d2db4b8bb2b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_softening_06 -> audio/generated/ko-KR/lexical/01c5bce1584bb96430f35de2a53b75b5dbd7bf5fab5228ba971fe84b42662356.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b3da236f-7c84-5208-986f-a9ce7a118b03', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_softening_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1eaed37a207480d88b786dd4aeb41c3c6db1ac8130a4fbb6f5dea535f6b4ff91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6e97e85-cf6d-5236-805b-80b367e509f7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b3da236f-7c84-5208-986f-a9ce7a118b03', 1), '1eaed37a207480d88b786dd4aeb41c3c6db1ac8130a4fbb6f5dea535f6b4ff91',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/01c5bce1584bb96430f35de2a53b75b5dbd7bf5fab5228ba971fe84b42662356.mp3', 914, '2026-09-13 22:24:47.172740', '9e3e5cf41efeec635411d62a4dcf8ac602a77eb612e9481b2a8ff77e04669098', 'validated', '{"audio_key":"01c5bce1584bb96430f35de2a53b75b5dbd7bf5fab5228ba971fe84b42662356","entity_key":"lx_opinions_and_softening_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9e3e5cf41efeec635411d62a4dcf8ac602a77eb612e9481b2a8ff77e04669098","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/01c5bce1584bb96430f35de2a53b75b5dbd7bf5fab5228ba971fe84b42662356.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_softening_06 -> audio/generated/ko-KR/lexical/01c5bce1584bb96430f35de2a53b75b5dbd7bf5fab5228ba971fe84b42662356.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ec7afb21-a6be-538d-bcca-a43d3a6e9044', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_softening_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1eaed37a207480d88b786dd4aeb41c3c6db1ac8130a4fbb6f5dea535f6b4ff91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0aeeed2e-0fc0-521b-b796-efd4720a5910', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ec7afb21-a6be-538d-bcca-a43d3a6e9044', 1), '1eaed37a207480d88b786dd4aeb41c3c6db1ac8130a4fbb6f5dea535f6b4ff91',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/01c5bce1584bb96430f35de2a53b75b5dbd7bf5fab5228ba971fe84b42662356.mp3', 914, '2026-09-13 22:24:47.172740', '9e3e5cf41efeec635411d62a4dcf8ac602a77eb612e9481b2a8ff77e04669098', 'validated', '{"audio_key":"01c5bce1584bb96430f35de2a53b75b5dbd7bf5fab5228ba971fe84b42662356","entity_key":"wf_opinions_and_softening_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9e3e5cf41efeec635411d62a4dcf8ac602a77eb612e9481b2a8ff77e04669098","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/01c5bce1584bb96430f35de2a53b75b5dbd7bf5fab5228ba971fe84b42662356.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_ability_and_permission_06 -> audio/generated/ko-KR/lexical/021bef426b6f690600152f794962e4b54fe77845eed889b53e18ff6b874074e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e51179fe-8634-5419-8d63-b03c5d961cb6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_ability_and_permission_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c13089162f79c61744a9fa1d854638fffac19be3311379c4a91ab46e85cb3264'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('71578f18-5fa8-5657-ad0a-324092475c76', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e51179fe-8634-5419-8d63-b03c5d961cb6', 1), 'c13089162f79c61744a9fa1d854638fffac19be3311379c4a91ab46e85cb3264',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/021bef426b6f690600152f794962e4b54fe77845eed889b53e18ff6b874074e9.mp3', 862, '2026-09-13 22:24:48.108718', 'a61d8c8b9abb762cb80782068fb1946da34ec9790c845abfadc4023d25c2d78c', 'validated', '{"audio_key":"021bef426b6f690600152f794962e4b54fe77845eed889b53e18ff6b874074e9","entity_key":"lx_ability_and_permission_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a61d8c8b9abb762cb80782068fb1946da34ec9790c845abfadc4023d25c2d78c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/021bef426b6f690600152f794962e4b54fe77845eed889b53e18ff6b874074e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_ability_and_permission_06 -> audio/generated/ko-KR/lexical/021bef426b6f690600152f794962e4b54fe77845eed889b53e18ff6b874074e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c1fc43c6-ff55-5c72-af2c-1cb5a3966982', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_ability_and_permission_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c13089162f79c61744a9fa1d854638fffac19be3311379c4a91ab46e85cb3264'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2252ab65-672c-5e74-9d2d-0af2f583304e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c1fc43c6-ff55-5c72-af2c-1cb5a3966982', 1), 'c13089162f79c61744a9fa1d854638fffac19be3311379c4a91ab46e85cb3264',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/021bef426b6f690600152f794962e4b54fe77845eed889b53e18ff6b874074e9.mp3', 862, '2026-09-13 22:24:48.108718', 'a61d8c8b9abb762cb80782068fb1946da34ec9790c845abfadc4023d25c2d78c', 'validated', '{"audio_key":"021bef426b6f690600152f794962e4b54fe77845eed889b53e18ff6b874074e9","entity_key":"wf_ability_and_permission_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a61d8c8b9abb762cb80782068fb1946da34ec9790c845abfadc4023d25c2d78c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/021bef426b6f690600152f794962e4b54fe77845eed889b53e18ff6b874074e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a2_seoul_weekend_capstone_03 -> audio/generated/ko-KR/lexical/043507f64b0ee0c483a1e19c382e646a55164209cb7a7a43a54cd204a81566a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1cc19a73-b7da-5651-8dcf-6fada4e9b038', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a2_seoul_weekend_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3725567246990eb8a507b0f65cca72292d91631fa25ffcd2daa1ce8955ba3347'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ed834d8-96c6-519d-8659-45a9d2f5565a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1cc19a73-b7da-5651-8dcf-6fada4e9b038', 1), '3725567246990eb8a507b0f65cca72292d91631fa25ffcd2daa1ce8955ba3347',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/043507f64b0ee0c483a1e19c382e646a55164209cb7a7a43a54cd204a81566a0.mp3', 1201, '2026-09-13 22:24:48.159327', 'bbfd194d0ead2df76b5b6870eb54d80cc36fb8a8e372fb53ab379fa2a8b458b0', 'validated', '{"audio_key":"043507f64b0ee0c483a1e19c382e646a55164209cb7a7a43a54cd204a81566a0","entity_key":"lx_a2_seoul_weekend_capstone_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bbfd194d0ead2df76b5b6870eb54d80cc36fb8a8e372fb53ab379fa2a8b458b0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/043507f64b0ee0c483a1e19c382e646a55164209cb7a7a43a54cd204a81566a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a2_seoul_weekend_capstone_03 -> audio/generated/ko-KR/lexical/043507f64b0ee0c483a1e19c382e646a55164209cb7a7a43a54cd204a81566a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('86a1bd87-22d4-5766-a8ea-3889f2e83abb', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a2_seoul_weekend_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3725567246990eb8a507b0f65cca72292d91631fa25ffcd2daa1ce8955ba3347'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5423f0b5-ec4e-5a00-b162-54d373e75c60', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('86a1bd87-22d4-5766-a8ea-3889f2e83abb', 1), '3725567246990eb8a507b0f65cca72292d91631fa25ffcd2daa1ce8955ba3347',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/043507f64b0ee0c483a1e19c382e646a55164209cb7a7a43a54cd204a81566a0.mp3', 1201, '2026-09-13 22:24:48.159327', 'bbfd194d0ead2df76b5b6870eb54d80cc36fb8a8e372fb53ab379fa2a8b458b0', 'validated', '{"audio_key":"043507f64b0ee0c483a1e19c382e646a55164209cb7a7a43a54cd204a81566a0","entity_key":"wf_a2_seoul_weekend_capstone_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bbfd194d0ead2df76b5b6870eb54d80cc36fb8a8e372fb53ab379fa2a8b458b0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/043507f64b0ee0c483a1e19c382e646a55164209cb7a7a43a54cd204a81566a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_weather_and_change_05 -> audio/generated/ko-KR/lexical/0732993769b3685fff45c62c26466ab84f2ac39c4a573956c71f09763ceeabcb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7fe2ba8d-e2d9-5d43-b0b2-77244f830344', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_weather_and_change_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '738d8592c1d1233b899d85119d8075ec8aa8b72646be051f4618eb52b5d05343'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('be3342f2-e426-563c-8413-fe55497055e6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7fe2ba8d-e2d9-5d43-b0b2-77244f830344', 1), '738d8592c1d1233b899d85119d8075ec8aa8b72646be051f4618eb52b5d05343',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0732993769b3685fff45c62c26466ab84f2ac39c4a573956c71f09763ceeabcb.mp3', 1201, '2026-09-13 22:24:49.110161', '878ad1b69d5ea8a93080bbd440c4afe50788992f68b2023f0cbf94a629908df9', 'validated', '{"audio_key":"0732993769b3685fff45c62c26466ab84f2ac39c4a573956c71f09763ceeabcb","entity_key":"lx_weather_and_change_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"878ad1b69d5ea8a93080bbd440c4afe50788992f68b2023f0cbf94a629908df9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0732993769b3685fff45c62c26466ab84f2ac39c4a573956c71f09763ceeabcb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_weather_and_change_05 -> audio/generated/ko-KR/lexical/0732993769b3685fff45c62c26466ab84f2ac39c4a573956c71f09763ceeabcb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('fde560da-fbf1-5acb-b321-66fb7db0e9cd', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_weather_and_change_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '738d8592c1d1233b899d85119d8075ec8aa8b72646be051f4618eb52b5d05343'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b13bd69-c395-5beb-9fa1-ad3e38e5196e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('fde560da-fbf1-5acb-b321-66fb7db0e9cd', 1), '738d8592c1d1233b899d85119d8075ec8aa8b72646be051f4618eb52b5d05343',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0732993769b3685fff45c62c26466ab84f2ac39c4a573956c71f09763ceeabcb.mp3', 1201, '2026-09-13 22:24:49.110161', '878ad1b69d5ea8a93080bbd440c4afe50788992f68b2023f0cbf94a629908df9', 'validated', '{"audio_key":"0732993769b3685fff45c62c26466ab84f2ac39c4a573956c71f09763ceeabcb","entity_key":"wf_weather_and_change_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"878ad1b69d5ea8a93080bbd440c4afe50788992f68b2023f0cbf94a629908df9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0732993769b3685fff45c62c26466ab84f2ac39c4a573956c71f09763ceeabcb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_weather_and_change_01 -> audio/generated/ko-KR/lexical/0db4648576e99df9fac8a7b6486265d7f4c6f6b864707cec27660d70918e76db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('61bff9b6-1433-5872-8cc0-2175ae697310', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_weather_and_change_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe655cf1d979cf3db76c247fd5adc30c9b7d5e56bd83d5de8d00bf5533d73ff8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca49f11e-4182-5974-9759-fd399aa989fa', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('61bff9b6-1433-5872-8cc0-2175ae697310', 1), 'fe655cf1d979cf3db76c247fd5adc30c9b7d5e56bd83d5de8d00bf5533d73ff8',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0db4648576e99df9fac8a7b6486265d7f4c6f6b864707cec27660d70918e76db.mp3', 1018, '2026-09-13 22:24:49.142339', '8b8d0152600c7142eacf69f11808087c1fd4b1fd7240b41153ff0c3666de0842', 'validated', '{"audio_key":"0db4648576e99df9fac8a7b6486265d7f4c6f6b864707cec27660d70918e76db","entity_key":"lx_weather_and_change_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8b8d0152600c7142eacf69f11808087c1fd4b1fd7240b41153ff0c3666de0842","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0db4648576e99df9fac8a7b6486265d7f4c6f6b864707cec27660d70918e76db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_weather_and_change_01 -> audio/generated/ko-KR/lexical/0db4648576e99df9fac8a7b6486265d7f4c6f6b864707cec27660d70918e76db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('90d5145a-b4e0-52ea-b515-dff0f9ee4290', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_weather_and_change_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fe655cf1d979cf3db76c247fd5adc30c9b7d5e56bd83d5de8d00bf5533d73ff8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('82a6221a-3ec3-52df-b93b-b577ee391853', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('90d5145a-b4e0-52ea-b515-dff0f9ee4290', 1), 'fe655cf1d979cf3db76c247fd5adc30c9b7d5e56bd83d5de8d00bf5533d73ff8',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0db4648576e99df9fac8a7b6486265d7f4c6f6b864707cec27660d70918e76db.mp3', 1018, '2026-09-13 22:24:49.142339', '8b8d0152600c7142eacf69f11808087c1fd4b1fd7240b41153ff0c3666de0842', 'validated', '{"audio_key":"0db4648576e99df9fac8a7b6486265d7f4c6f6b864707cec27660d70918e76db","entity_key":"wf_weather_and_change_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8b8d0152600c7142eacf69f11808087c1fd4b1fd7240b41153ff0c3666de0842","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0db4648576e99df9fac8a7b6486265d7f4c6f6b864707cec27660d70918e76db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_softening_05 -> audio/generated/ko-KR/lexical/0e6b36490329b4c0c4e6c07b044d4ab21c3828c80e7a1af09f716a11e0948b4c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bf81a0fd-a13e-5350-a7e7-db6e1a9a49e9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_softening_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '962ae18a075d06e2b7fd325ee6845d76578623f2e6318495d3d5332f16482a7f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af4071be-cceb-58e0-b3e9-83cb3b189622', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bf81a0fd-a13e-5350-a7e7-db6e1a9a49e9', 1), '962ae18a075d06e2b7fd325ee6845d76578623f2e6318495d3d5332f16482a7f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0e6b36490329b4c0c4e6c07b044d4ab21c3828c80e7a1af09f716a11e0948b4c.mp3', 862, '2026-09-13 22:24:50.093908', 'bf58586135c0af1828a4413314e76a0e3b4637bf1a2356d98541bff2ab0815d2', 'validated', '{"audio_key":"0e6b36490329b4c0c4e6c07b044d4ab21c3828c80e7a1af09f716a11e0948b4c","entity_key":"lx_opinions_and_softening_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bf58586135c0af1828a4413314e76a0e3b4637bf1a2356d98541bff2ab0815d2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0e6b36490329b4c0c4e6c07b044d4ab21c3828c80e7a1af09f716a11e0948b4c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_softening_05 -> audio/generated/ko-KR/lexical/0e6b36490329b4c0c4e6c07b044d4ab21c3828c80e7a1af09f716a11e0948b4c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2928275c-fb9f-5724-8b9c-f39af82ce3ea', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_softening_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '962ae18a075d06e2b7fd325ee6845d76578623f2e6318495d3d5332f16482a7f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb939685-ebf0-54d4-9990-9f940cafee44', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2928275c-fb9f-5724-8b9c-f39af82ce3ea', 1), '962ae18a075d06e2b7fd325ee6845d76578623f2e6318495d3d5332f16482a7f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0e6b36490329b4c0c4e6c07b044d4ab21c3828c80e7a1af09f716a11e0948b4c.mp3', 862, '2026-09-13 22:24:50.093908', 'bf58586135c0af1828a4413314e76a0e3b4637bf1a2356d98541bff2ab0815d2', 'validated', '{"audio_key":"0e6b36490329b4c0c4e6c07b044d4ab21c3828c80e7a1af09f716a11e0948b4c","entity_key":"wf_opinions_and_softening_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bf58586135c0af1828a4413314e76a0e3b4637bf1a2356d98541bff2ab0815d2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0e6b36490329b4c0c4e6c07b044d4ab21c3828c80e7a1af09f716a11e0948b4c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_and_advice_04 -> audio/generated/ko-KR/lexical/1985b31dfa219b500bacaa47e9eb0a383fcb22d86c197eb95788fccae3c800d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('88879204-4743-5225-b1c3-77304ed12a94', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_and_advice_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbfc687cbb29318d3ccd36efd0cbe0c53854eb29b82341428f8ee9e5b4a41678'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('715553fa-3212-5b7f-b627-5fc25e1866d6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('88879204-4743-5225-b1c3-77304ed12a94', 1), 'dbfc687cbb29318d3ccd36efd0cbe0c53854eb29b82341428f8ee9e5b4a41678',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1985b31dfa219b500bacaa47e9eb0a383fcb22d86c197eb95788fccae3c800d3.mp3', 1018, '2026-09-13 22:24:50.126471', 'a13cc99ea197242a2ce358e62c40e528e11228bf5bb118da7046f9280523d69f', 'validated', '{"audio_key":"1985b31dfa219b500bacaa47e9eb0a383fcb22d86c197eb95788fccae3c800d3","entity_key":"lx_health_and_advice_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a13cc99ea197242a2ce358e62c40e528e11228bf5bb118da7046f9280523d69f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1985b31dfa219b500bacaa47e9eb0a383fcb22d86c197eb95788fccae3c800d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_and_advice_04 -> audio/generated/ko-KR/lexical/1985b31dfa219b500bacaa47e9eb0a383fcb22d86c197eb95788fccae3c800d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0ec1c142-5838-5235-bdd8-134198b1830c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_and_advice_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbfc687cbb29318d3ccd36efd0cbe0c53854eb29b82341428f8ee9e5b4a41678'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c94cb6fb-b8a9-56e1-a8de-5b719867efca', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0ec1c142-5838-5235-bdd8-134198b1830c', 1), 'dbfc687cbb29318d3ccd36efd0cbe0c53854eb29b82341428f8ee9e5b4a41678',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1985b31dfa219b500bacaa47e9eb0a383fcb22d86c197eb95788fccae3c800d3.mp3', 1018, '2026-09-13 22:24:50.126471', 'a13cc99ea197242a2ce358e62c40e528e11228bf5bb118da7046f9280523d69f', 'validated', '{"audio_key":"1985b31dfa219b500bacaa47e9eb0a383fcb22d86c197eb95788fccae3c800d3","entity_key":"wf_health_and_advice_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a13cc99ea197242a2ce358e62c40e528e11228bf5bb118da7046f9280523d69f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1985b31dfa219b500bacaa47e9eb0a383fcb22d86c197eb95788fccae3c800d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_plans_and_intentions_02 -> audio/generated/ko-KR/lexical/1b0b48487ef885c4ea7f636ac16a793a9353b27e70ec0c79fc73be8f7dc7e4c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1012a335-06e3-505a-85ff-674b01622b42', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_plans_and_intentions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc80d0fe247835379f4ff13377da69fba1674d6828fae52cef56ad5f36f6bb32'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('157deafd-52c8-5337-87e8-2b07ed198714', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1012a335-06e3-505a-85ff-674b01622b42', 1), 'dc80d0fe247835379f4ff13377da69fba1674d6828fae52cef56ad5f36f6bb32',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1b0b48487ef885c4ea7f636ac16a793a9353b27e70ec0c79fc73be8f7dc7e4c6.mp3', 966, '2026-09-13 22:24:51.076485', '2f702f391520eb3e8762e025f55918b54b915ee891e9096dacf9933fa1e84aec', 'validated', '{"audio_key":"1b0b48487ef885c4ea7f636ac16a793a9353b27e70ec0c79fc73be8f7dc7e4c6","entity_key":"lx_plans_and_intentions_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2f702f391520eb3e8762e025f55918b54b915ee891e9096dacf9933fa1e84aec","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1b0b48487ef885c4ea7f636ac16a793a9353b27e70ec0c79fc73be8f7dc7e4c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_plans_and_intentions_02 -> audio/generated/ko-KR/lexical/1b0b48487ef885c4ea7f636ac16a793a9353b27e70ec0c79fc73be8f7dc7e4c6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ccf320bd-7fce-5888-bc31-7640c449188b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_plans_and_intentions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc80d0fe247835379f4ff13377da69fba1674d6828fae52cef56ad5f36f6bb32'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('470c6126-b9b2-5a9a-b6a7-8c7cf5cfa82c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ccf320bd-7fce-5888-bc31-7640c449188b', 1), 'dc80d0fe247835379f4ff13377da69fba1674d6828fae52cef56ad5f36f6bb32',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1b0b48487ef885c4ea7f636ac16a793a9353b27e70ec0c79fc73be8f7dc7e4c6.mp3', 966, '2026-09-13 22:24:51.076485', '2f702f391520eb3e8762e025f55918b54b915ee891e9096dacf9933fa1e84aec', 'validated', '{"audio_key":"1b0b48487ef885c4ea7f636ac16a793a9353b27e70ec0c79fc73be8f7dc7e4c6","entity_key":"wf_plans_and_intentions_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2f702f391520eb3e8762e025f55918b54b915ee891e9096dacf9933fa1e84aec","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1b0b48487ef885c4ea7f636ac16a793a9353b27e70ec0c79fc73be8f7dc7e4c6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a2_seoul_weekend_capstone_02 -> audio/generated/ko-KR/lexical/1b2b1d12f21d495a19d8064c05e9ec5223e3e091f8fad04f325b5fda180e0e51.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('243b3d7a-9d11-5cf3-8133-4e3fdb98ca31', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a2_seoul_weekend_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5891b70a9b6fdf41d3b66ede01b27aba448e53e2379b76180997715a7a6cf44d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a6d5c11-1e1d-5c0a-9198-a80c5ba52aca', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('243b3d7a-9d11-5cf3-8133-4e3fdb98ca31', 1), '5891b70a9b6fdf41d3b66ede01b27aba448e53e2379b76180997715a7a6cf44d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1b2b1d12f21d495a19d8064c05e9ec5223e3e091f8fad04f325b5fda180e0e51.mp3', 1018, '2026-09-13 22:24:51.104752', 'b3fd6d0a1ece0be4439cdb9c3f735a0d2304d74ec95329e45d61b531c834928c', 'validated', '{"audio_key":"1b2b1d12f21d495a19d8064c05e9ec5223e3e091f8fad04f325b5fda180e0e51","entity_key":"lx_a2_seoul_weekend_capstone_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b3fd6d0a1ece0be4439cdb9c3f735a0d2304d74ec95329e45d61b531c834928c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1b2b1d12f21d495a19d8064c05e9ec5223e3e091f8fad04f325b5fda180e0e51.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a2_seoul_weekend_capstone_02 -> audio/generated/ko-KR/lexical/1b2b1d12f21d495a19d8064c05e9ec5223e3e091f8fad04f325b5fda180e0e51.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d61c2290-eade-5753-84ad-6e044da70d94', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a2_seoul_weekend_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5891b70a9b6fdf41d3b66ede01b27aba448e53e2379b76180997715a7a6cf44d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('153c2eda-f44c-52a8-a42c-7ce020437350', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d61c2290-eade-5753-84ad-6e044da70d94', 1), '5891b70a9b6fdf41d3b66ede01b27aba448e53e2379b76180997715a7a6cf44d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1b2b1d12f21d495a19d8064c05e9ec5223e3e091f8fad04f325b5fda180e0e51.mp3', 1018, '2026-09-13 22:24:51.104752', 'b3fd6d0a1ece0be4439cdb9c3f735a0d2304d74ec95329e45d61b531c834928c', 'validated', '{"audio_key":"1b2b1d12f21d495a19d8064c05e9ec5223e3e091f8fad04f325b5fda180e0e51","entity_key":"wf_a2_seoul_weekend_capstone_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b3fd6d0a1ece0be4439cdb9c3f735a0d2304d74ec95329e45d61b531c834928c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1b2b1d12f21d495a19d8064c05e9ec5223e3e091f8fad04f325b5fda180e0e51.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_weather_and_change_06 -> audio/generated/ko-KR/lexical/1d3e684fd3fb1cf84bc0ab002ffe1be0e1c693463ef97f3d973eb266fd166c77.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c18af86f-e9b7-5e77-9d9d-4a3bd42b221a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_weather_and_change_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '712074afaec5737d4bcbdd43795533885dd9d4d12f7d6da9d0170b2af94a0013'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad554618-64d5-58e4-8973-b6e79aa7abbd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c18af86f-e9b7-5e77-9d9d-4a3bd42b221a', 1), '712074afaec5737d4bcbdd43795533885dd9d4d12f7d6da9d0170b2af94a0013',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1d3e684fd3fb1cf84bc0ab002ffe1be0e1c693463ef97f3d973eb266fd166c77.mp3', 1071, '2026-09-13 22:24:52.056385', '6942067de141437950d19500f55a388076ee043ac4337c25d5cfc305f2d4e3fc', 'validated', '{"audio_key":"1d3e684fd3fb1cf84bc0ab002ffe1be0e1c693463ef97f3d973eb266fd166c77","entity_key":"lx_weather_and_change_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6942067de141437950d19500f55a388076ee043ac4337c25d5cfc305f2d4e3fc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1d3e684fd3fb1cf84bc0ab002ffe1be0e1c693463ef97f3d973eb266fd166c77.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_weather_and_change_06 -> audio/generated/ko-KR/lexical/1d3e684fd3fb1cf84bc0ab002ffe1be0e1c693463ef97f3d973eb266fd166c77.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2150fcbd-f62c-5285-9f4b-7a36c7561c7e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_weather_and_change_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '712074afaec5737d4bcbdd43795533885dd9d4d12f7d6da9d0170b2af94a0013'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3fa12c5d-59b2-56f0-813d-e3cbee596b84', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2150fcbd-f62c-5285-9f4b-7a36c7561c7e', 1), '712074afaec5737d4bcbdd43795533885dd9d4d12f7d6da9d0170b2af94a0013',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1d3e684fd3fb1cf84bc0ab002ffe1be0e1c693463ef97f3d973eb266fd166c77.mp3', 1071, '2026-09-13 22:24:52.056385', '6942067de141437950d19500f55a388076ee043ac4337c25d5cfc305f2d4e3fc', 'validated', '{"audio_key":"1d3e684fd3fb1cf84bc0ab002ffe1be0e1c693463ef97f3d973eb266fd166c77","entity_key":"wf_weather_and_change_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6942067de141437950d19500f55a388076ee043ac4337c25d5cfc305f2d4e3fc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1d3e684fd3fb1cf84bc0ab002ffe1be0e1c693463ef97f3d973eb266fd166c77.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_plans_and_intentions_06 -> audio/generated/ko-KR/lexical/1ea36414c2e2ba07474c071b0df42b80fc14b6ca4488f08f6af7c0b68e2f958b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1c21c93d-f4b0-59f9-a1dd-85692d4e9b51', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_plans_and_intentions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f0a9d32bbf42b6d556fd80a4440e928ed0db4bb341280cd8a3b204524e85383'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13354bab-9c69-5eb2-b3ad-1eccf334dccf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1c21c93d-f4b0-59f9-a1dd-85692d4e9b51', 1), '1f0a9d32bbf42b6d556fd80a4440e928ed0db4bb341280cd8a3b204524e85383',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1ea36414c2e2ba07474c071b0df42b80fc14b6ca4488f08f6af7c0b68e2f958b.mp3', 966, '2026-09-13 22:24:52.093463', 'c0f765a87a77b0ae3edf8d6ae84232fa937ed9da90e918a13e0a4bad0cccaee1', 'validated', '{"audio_key":"1ea36414c2e2ba07474c071b0df42b80fc14b6ca4488f08f6af7c0b68e2f958b","entity_key":"lx_plans_and_intentions_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c0f765a87a77b0ae3edf8d6ae84232fa937ed9da90e918a13e0a4bad0cccaee1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1ea36414c2e2ba07474c071b0df42b80fc14b6ca4488f08f6af7c0b68e2f958b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_plans_and_intentions_06 -> audio/generated/ko-KR/lexical/1ea36414c2e2ba07474c071b0df42b80fc14b6ca4488f08f6af7c0b68e2f958b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4c20f900-ee77-5e47-803f-bde2d6e83f71', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_plans_and_intentions_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f0a9d32bbf42b6d556fd80a4440e928ed0db4bb341280cd8a3b204524e85383'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c43db6c0-99b8-563c-a14b-c0f67e1d2f94', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4c20f900-ee77-5e47-803f-bde2d6e83f71', 1), '1f0a9d32bbf42b6d556fd80a4440e928ed0db4bb341280cd8a3b204524e85383',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1ea36414c2e2ba07474c071b0df42b80fc14b6ca4488f08f6af7c0b68e2f958b.mp3', 966, '2026-09-13 22:24:52.093463', 'c0f765a87a77b0ae3edf8d6ae84232fa937ed9da90e918a13e0a4bad0cccaee1', 'validated', '{"audio_key":"1ea36414c2e2ba07474c071b0df42b80fc14b6ca4488f08f6af7c0b68e2f958b","entity_key":"wf_plans_and_intentions_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c0f765a87a77b0ae3edf8d6ae84232fa937ed9da90e918a13e0a4bad0cccaee1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1ea36414c2e2ba07474c071b0df42b80fc14b6ca4488f08f6af7c0b68e2f958b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_and_hotel_06 -> audio/generated/ko-KR/lexical/1f60d3f2135fd12c914fdf1de084beac45bc7c2d61c87464d561e282033dc62a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c9ae5c17-e4f0-5270-b5b8-8570f0285c5a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_and_hotel_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d95bbb883f1e751326003706335475fcf7413faba9d1a4e684bf39d7cdfee42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25407b45-8d4a-549c-bbdc-16366c3ee67c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c9ae5c17-e4f0-5270-b5b8-8570f0285c5a', 1), '3d95bbb883f1e751326003706335475fcf7413faba9d1a4e684bf39d7cdfee42',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1f60d3f2135fd12c914fdf1de084beac45bc7c2d61c87464d561e282033dc62a.mp3', 914, '2026-09-13 22:24:53.036666', 'b409a126f73397f72e84ce6eb454b8602c2ebee91807a8d906e345963fd6ad2c', 'validated', '{"audio_key":"1f60d3f2135fd12c914fdf1de084beac45bc7c2d61c87464d561e282033dc62a","entity_key":"lx_travel_and_hotel_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b409a126f73397f72e84ce6eb454b8602c2ebee91807a8d906e345963fd6ad2c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1f60d3f2135fd12c914fdf1de084beac45bc7c2d61c87464d561e282033dc62a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_and_hotel_06 -> audio/generated/ko-KR/lexical/1f60d3f2135fd12c914fdf1de084beac45bc7c2d61c87464d561e282033dc62a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1e0c7567-621a-57e5-bcc7-c351dc2eea6b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_and_hotel_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3d95bbb883f1e751326003706335475fcf7413faba9d1a4e684bf39d7cdfee42'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9176e495-bd32-52ca-bf37-10d7de3187f5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1e0c7567-621a-57e5-bcc7-c351dc2eea6b', 1), '3d95bbb883f1e751326003706335475fcf7413faba9d1a4e684bf39d7cdfee42',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1f60d3f2135fd12c914fdf1de084beac45bc7c2d61c87464d561e282033dc62a.mp3', 914, '2026-09-13 22:24:53.036666', 'b409a126f73397f72e84ce6eb454b8602c2ebee91807a8d906e345963fd6ad2c', 'validated', '{"audio_key":"1f60d3f2135fd12c914fdf1de084beac45bc7c2d61c87464d561e282033dc62a","entity_key":"wf_travel_and_hotel_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b409a126f73397f72e84ce6eb454b8602c2ebee91807a8d906e345963fd6ad2c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1f60d3f2135fd12c914fdf1de084beac45bc7c2d61c87464d561e282033dc62a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_ability_and_permission_01 -> audio/generated/ko-KR/lexical/21f0bdb5e16309bb86c845d22c9bef44fb2c21ab1d3cc3d3e8a61a93d038f45f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1a008da9-6312-5463-bbd4-ccc47cd56f9e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_ability_and_permission_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd036b1e97e754f76944d3763ef2cbdc757647c950e713f088597993938f4ae66'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14472b38-2305-5ccc-9536-090520636c7f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1a008da9-6312-5463-bbd4-ccc47cd56f9e', 1), 'd036b1e97e754f76944d3763ef2cbdc757647c950e713f088597993938f4ae66',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/21f0bdb5e16309bb86c845d22c9bef44fb2c21ab1d3cc3d3e8a61a93d038f45f.mp3', 1018, '2026-09-13 22:24:53.064404', 'f25b0e8c000ecbb218ab92d8ac5b8f60638270e1a030787169f1e21a9579a810', 'validated', '{"audio_key":"21f0bdb5e16309bb86c845d22c9bef44fb2c21ab1d3cc3d3e8a61a93d038f45f","entity_key":"lx_ability_and_permission_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f25b0e8c000ecbb218ab92d8ac5b8f60638270e1a030787169f1e21a9579a810","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/21f0bdb5e16309bb86c845d22c9bef44fb2c21ab1d3cc3d3e8a61a93d038f45f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_ability_and_permission_01 -> audio/generated/ko-KR/lexical/21f0bdb5e16309bb86c845d22c9bef44fb2c21ab1d3cc3d3e8a61a93d038f45f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2d642d7d-3b74-5557-8484-4394aeca13e2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_ability_and_permission_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd036b1e97e754f76944d3763ef2cbdc757647c950e713f088597993938f4ae66'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6602af44-8378-5e59-bcb1-939c5b01f090', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2d642d7d-3b74-5557-8484-4394aeca13e2', 1), 'd036b1e97e754f76944d3763ef2cbdc757647c950e713f088597993938f4ae66',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/21f0bdb5e16309bb86c845d22c9bef44fb2c21ab1d3cc3d3e8a61a93d038f45f.mp3', 1018, '2026-09-13 22:24:53.064404', 'f25b0e8c000ecbb218ab92d8ac5b8f60638270e1a030787169f1e21a9579a810', 'validated', '{"audio_key":"21f0bdb5e16309bb86c845d22c9bef44fb2c21ab1d3cc3d3e8a61a93d038f45f","entity_key":"wf_ability_and_permission_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f25b0e8c000ecbb218ab92d8ac5b8f60638270e1a030787169f1e21a9579a810","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/21f0bdb5e16309bb86c845d22c9bef44fb2c21ab1d3cc3d3e8a61a93d038f45f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_comparisons_and_choice_05 -> audio/generated/ko-KR/lexical/28b2c46d605795eea134bd21feda1d8307e754f6f210fa155714c80c63e9d389.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c80a0752-8a4b-5595-b714-4c7700e38306', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_comparisons_and_choice_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77632f6eee12aa1b173673bb083f78dc1d9c38d30ea956ca0ffe55f704333e91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e64c6b06-8521-5beb-91b9-4920b08084cb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c80a0752-8a4b-5595-b714-4c7700e38306', 1), '77632f6eee12aa1b173673bb083f78dc1d9c38d30ea956ca0ffe55f704333e91',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/28b2c46d605795eea134bd21feda1d8307e754f6f210fa155714c80c63e9d389.mp3', 1097, '2026-09-13 22:24:54.027285', '08069f7e46e8c0173c0a954badcdc7d2b8c7f9e75cdd12813459042e5dd0645e', 'validated', '{"audio_key":"28b2c46d605795eea134bd21feda1d8307e754f6f210fa155714c80c63e9d389","entity_key":"lx_comparisons_and_choice_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"08069f7e46e8c0173c0a954badcdc7d2b8c7f9e75cdd12813459042e5dd0645e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/28b2c46d605795eea134bd21feda1d8307e754f6f210fa155714c80c63e9d389.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_comparisons_and_choice_05 -> audio/generated/ko-KR/lexical/28b2c46d605795eea134bd21feda1d8307e754f6f210fa155714c80c63e9d389.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4d7cf3a0-1faa-526f-b0c6-13490fd72ca7', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_comparisons_and_choice_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77632f6eee12aa1b173673bb083f78dc1d9c38d30ea956ca0ffe55f704333e91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80aa4de9-eb03-5d27-9d35-33837fb3b05a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4d7cf3a0-1faa-526f-b0c6-13490fd72ca7', 1), '77632f6eee12aa1b173673bb083f78dc1d9c38d30ea956ca0ffe55f704333e91',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/28b2c46d605795eea134bd21feda1d8307e754f6f210fa155714c80c63e9d389.mp3', 1097, '2026-09-13 22:24:54.027285', '08069f7e46e8c0173c0a954badcdc7d2b8c7f9e75cdd12813459042e5dd0645e', 'validated', '{"audio_key":"28b2c46d605795eea134bd21feda1d8307e754f6f210fa155714c80c63e9d389","entity_key":"wf_comparisons_and_choice_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"08069f7e46e8c0173c0a954badcdc7d2b8c7f9e75cdd12813459042e5dd0645e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/28b2c46d605795eea134bd21feda1d8307e754f6f210fa155714c80c63e9d389.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_comparisons_and_choice_02 -> audio/generated/ko-KR/lexical/3126b2e169fa45d4a84fb8f199bad22e9df1f80e329c14f0993c1ff2fb8877f1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ab67bb69-3e53-537c-a3d9-f5c9a2075aef', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_comparisons_and_choice_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e2cb79b6970d0213fd9c56c96a0d04cff3ae29131a54707d1efab5753ab0260'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e71326d-d327-5e01-8be3-fdcc8b45c3d7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ab67bb69-3e53-537c-a3d9-f5c9a2075aef', 1), '1e2cb79b6970d0213fd9c56c96a0d04cff3ae29131a54707d1efab5753ab0260',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/3126b2e169fa45d4a84fb8f199bad22e9df1f80e329c14f0993c1ff2fb8877f1.mp3', 731, '2026-09-13 22:24:54.045600', '805d91870687f0f02b4ffc46bfbde78b165c3068a57117dae450fd2dc11e9798', 'validated', '{"audio_key":"3126b2e169fa45d4a84fb8f199bad22e9df1f80e329c14f0993c1ff2fb8877f1","entity_key":"lx_comparisons_and_choice_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"805d91870687f0f02b4ffc46bfbde78b165c3068a57117dae450fd2dc11e9798","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/3126b2e169fa45d4a84fb8f199bad22e9df1f80e329c14f0993c1ff2fb8877f1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_comparisons_and_choice_02 -> audio/generated/ko-KR/lexical/3126b2e169fa45d4a84fb8f199bad22e9df1f80e329c14f0993c1ff2fb8877f1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c6cd6e75-32a3-5a5d-8f07-feb399b50a75', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_comparisons_and_choice_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1e2cb79b6970d0213fd9c56c96a0d04cff3ae29131a54707d1efab5753ab0260'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49fb0d9b-057e-523d-be12-d1f26b4b6a19', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c6cd6e75-32a3-5a5d-8f07-feb399b50a75', 1), '1e2cb79b6970d0213fd9c56c96a0d04cff3ae29131a54707d1efab5753ab0260',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/3126b2e169fa45d4a84fb8f199bad22e9df1f80e329c14f0993c1ff2fb8877f1.mp3', 731, '2026-09-13 22:24:54.045600', '805d91870687f0f02b4ffc46bfbde78b165c3068a57117dae450fd2dc11e9798', 'validated', '{"audio_key":"3126b2e169fa45d4a84fb8f199bad22e9df1f80e329c14f0993c1ff2fb8877f1","entity_key":"wf_comparisons_and_choice_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"805d91870687f0f02b4ffc46bfbde78b165c3068a57117dae450fd2dc11e9798","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/3126b2e169fa45d4a84fb8f199bad22e9df1f80e329c14f0993c1ff2fb8877f1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_past_experiences_06 -> audio/generated/ko-KR/lexical/36b39dec113bfdb29aececde3de9d4c3c2060961ca4e16e34393bdfc37d710dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('da50ed95-79ad-52e6-a436-5bc4acea0961', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_past_experiences_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd038c1cb7ee215cbfceebefe0a3092e3205d47f67890b52b2c25497716c06328'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11bd641c-2cf6-5a43-a773-1b59760a3c22', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('da50ed95-79ad-52e6-a436-5bc4acea0961', 1), 'd038c1cb7ee215cbfceebefe0a3092e3205d47f67890b52b2c25497716c06328',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/36b39dec113bfdb29aececde3de9d4c3c2060961ca4e16e34393bdfc37d710dd.mp3', 1097, '2026-09-13 22:24:55.040903', 'c8d6dcb58106959eb7e75b8226a8b54b2bb42947a4e05170dab3cf6aaef2596c', 'validated', '{"audio_key":"36b39dec113bfdb29aececde3de9d4c3c2060961ca4e16e34393bdfc37d710dd","entity_key":"lx_past_experiences_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c8d6dcb58106959eb7e75b8226a8b54b2bb42947a4e05170dab3cf6aaef2596c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/36b39dec113bfdb29aececde3de9d4c3c2060961ca4e16e34393bdfc37d710dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_past_experiences_06 -> audio/generated/ko-KR/lexical/36b39dec113bfdb29aececde3de9d4c3c2060961ca4e16e34393bdfc37d710dd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a0b8a705-f9a0-5109-8449-7a9f0a801e8c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_past_experiences_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd038c1cb7ee215cbfceebefe0a3092e3205d47f67890b52b2c25497716c06328'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dbd3e55c-4484-54c5-9fbb-a14d5f5736b1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a0b8a705-f9a0-5109-8449-7a9f0a801e8c', 1), 'd038c1cb7ee215cbfceebefe0a3092e3205d47f67890b52b2c25497716c06328',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/36b39dec113bfdb29aececde3de9d4c3c2060961ca4e16e34393bdfc37d710dd.mp3', 1097, '2026-09-13 22:24:55.040903', 'c8d6dcb58106959eb7e75b8226a8b54b2bb42947a4e05170dab3cf6aaef2596c', 'validated', '{"audio_key":"36b39dec113bfdb29aececde3de9d4c3c2060961ca4e16e34393bdfc37d710dd","entity_key":"wf_past_experiences_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c8d6dcb58106959eb7e75b8226a8b54b2bb42947a4e05170dab3cf6aaef2596c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/36b39dec113bfdb29aececde3de9d4c3c2060961ca4e16e34393bdfc37d710dd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_ability_and_permission_02 -> audio/generated/ko-KR/lexical/41bdd9514711656f712e5d793f1ffefb50cb47c4d7376ab4b15f9e5181dcf585.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a8a94a98-c241-59c2-815f-77ee4dd7cdbd', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_ability_and_permission_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bba727cfce6e26555f12486b4c66d5b87f6285811dba68fc4c6a188ff25adeb6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e875f87-4eaa-5972-9962-11476cc72202', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a8a94a98-c241-59c2-815f-77ee4dd7cdbd', 1), 'bba727cfce6e26555f12486b4c66d5b87f6285811dba68fc4c6a188ff25adeb6',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/41bdd9514711656f712e5d793f1ffefb50cb47c4d7376ab4b15f9e5181dcf585.mp3', 1071, '2026-09-13 22:24:55.026370', 'e28720bcd234eed4f78006ba4cac808c3147759a2cbce9dc39b8cd3d1bc0dab9', 'validated', '{"audio_key":"41bdd9514711656f712e5d793f1ffefb50cb47c4d7376ab4b15f9e5181dcf585","entity_key":"lx_ability_and_permission_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e28720bcd234eed4f78006ba4cac808c3147759a2cbce9dc39b8cd3d1bc0dab9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/41bdd9514711656f712e5d793f1ffefb50cb47c4d7376ab4b15f9e5181dcf585.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_ability_and_permission_02 -> audio/generated/ko-KR/lexical/41bdd9514711656f712e5d793f1ffefb50cb47c4d7376ab4b15f9e5181dcf585.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c71b3e61-952c-5f0d-a8d9-7635c3b061a4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_ability_and_permission_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bba727cfce6e26555f12486b4c66d5b87f6285811dba68fc4c6a188ff25adeb6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96f456e9-571b-51df-9db3-0ecd6bd9cc65', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c71b3e61-952c-5f0d-a8d9-7635c3b061a4', 1), 'bba727cfce6e26555f12486b4c66d5b87f6285811dba68fc4c6a188ff25adeb6',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/41bdd9514711656f712e5d793f1ffefb50cb47c4d7376ab4b15f9e5181dcf585.mp3', 1071, '2026-09-13 22:24:55.026370', 'e28720bcd234eed4f78006ba4cac808c3147759a2cbce9dc39b8cd3d1bc0dab9', 'validated', '{"audio_key":"41bdd9514711656f712e5d793f1ffefb50cb47c4d7376ab4b15f9e5181dcf585","entity_key":"wf_ability_and_permission_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e28720bcd234eed4f78006ba4cac808c3147759a2cbce9dc39b8cd3d1bc0dab9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/41bdd9514711656f712e5d793f1ffefb50cb47c4d7376ab4b15f9e5181dcf585.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_softening_04 -> audio/generated/ko-KR/lexical/43de2095f250262a505a4d2abedfdb4d117613269928cb879f87d389d70a356b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7e1e7ca3-94c2-507b-bbfa-aa849bcf9c75', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_softening_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a39c0e9196a70295a55f573a1fd64bcfeaa6fdc7c41e61a5c3d3c6a07383a4fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9f707b77-8ee3-5549-91e9-cc7c5769d926', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7e1e7ca3-94c2-507b-bbfa-aa849bcf9c75', 1), 'a39c0e9196a70295a55f573a1fd64bcfeaa6fdc7c41e61a5c3d3c6a07383a4fa',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/43de2095f250262a505a4d2abedfdb4d117613269928cb879f87d389d70a356b.mp3', 914, '2026-09-13 22:24:56.012025', '202eea6ea515ee52636c15810f21122192524920f910c4c31dbfc17acbc76d03', 'validated', '{"audio_key":"43de2095f250262a505a4d2abedfdb4d117613269928cb879f87d389d70a356b","entity_key":"lx_opinions_and_softening_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"202eea6ea515ee52636c15810f21122192524920f910c4c31dbfc17acbc76d03","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/43de2095f250262a505a4d2abedfdb4d117613269928cb879f87d389d70a356b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_softening_04 -> audio/generated/ko-KR/lexical/43de2095f250262a505a4d2abedfdb4d117613269928cb879f87d389d70a356b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f69a5fd1-20fe-5773-bc0a-107ee1cf2234', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_softening_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a39c0e9196a70295a55f573a1fd64bcfeaa6fdc7c41e61a5c3d3c6a07383a4fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('62f7e510-e8ab-5445-82a2-26f774d64ab9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f69a5fd1-20fe-5773-bc0a-107ee1cf2234', 1), 'a39c0e9196a70295a55f573a1fd64bcfeaa6fdc7c41e61a5c3d3c6a07383a4fa',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/43de2095f250262a505a4d2abedfdb4d117613269928cb879f87d389d70a356b.mp3', 914, '2026-09-13 22:24:56.012025', '202eea6ea515ee52636c15810f21122192524920f910c4c31dbfc17acbc76d03', 'validated', '{"audio_key":"43de2095f250262a505a4d2abedfdb4d117613269928cb879f87d389d70a356b","entity_key":"wf_opinions_and_softening_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"202eea6ea515ee52636c15810f21122192524920f910c4c31dbfc17acbc76d03","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/43de2095f250262a505a4d2abedfdb4d117613269928cb879f87d389d70a356b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reasons_and_results_02 -> audio/generated/ko-KR/lexical/485cdb1e9f700b6f8dd9544ee0c09f29126f476d24a079bc3f6293a2c7d697a8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('57b64b37-a9b1-59fe-aef2-a90cb1772d64', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reasons_and_results_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '51f7012fc45f3fcc60200fdc73bda057295ad9f7e9d811a9d6bc914de37ac94c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63fab494-8122-5d3f-a9e7-ede6ad5ec6b8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('57b64b37-a9b1-59fe-aef2-a90cb1772d64', 1), '51f7012fc45f3fcc60200fdc73bda057295ad9f7e9d811a9d6bc914de37ac94c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/485cdb1e9f700b6f8dd9544ee0c09f29126f476d24a079bc3f6293a2c7d697a8.mp3', 1097, '2026-09-13 22:24:56.017216', '389b4a913551354c2dcb20634d8937c5be81983c2a930c31b993e3a200c480f5', 'validated', '{"audio_key":"485cdb1e9f700b6f8dd9544ee0c09f29126f476d24a079bc3f6293a2c7d697a8","entity_key":"lx_reasons_and_results_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"389b4a913551354c2dcb20634d8937c5be81983c2a930c31b993e3a200c480f5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/485cdb1e9f700b6f8dd9544ee0c09f29126f476d24a079bc3f6293a2c7d697a8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reasons_and_results_02 -> audio/generated/ko-KR/lexical/485cdb1e9f700b6f8dd9544ee0c09f29126f476d24a079bc3f6293a2c7d697a8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d840ecfe-74b7-5100-a56a-e1fa1027caa9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reasons_and_results_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '51f7012fc45f3fcc60200fdc73bda057295ad9f7e9d811a9d6bc914de37ac94c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0d834b02-621b-50fc-a6ed-2e6773435b57', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d840ecfe-74b7-5100-a56a-e1fa1027caa9', 1), '51f7012fc45f3fcc60200fdc73bda057295ad9f7e9d811a9d6bc914de37ac94c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/485cdb1e9f700b6f8dd9544ee0c09f29126f476d24a079bc3f6293a2c7d697a8.mp3', 1097, '2026-09-13 22:24:56.017216', '389b4a913551354c2dcb20634d8937c5be81983c2a930c31b993e3a200c480f5', 'validated', '{"audio_key":"485cdb1e9f700b6f8dd9544ee0c09f29126f476d24a079bc3f6293a2c7d697a8","entity_key":"wf_reasons_and_results_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"389b4a913551354c2dcb20634d8937c5be81983c2a930c31b993e3a200c480f5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/485cdb1e9f700b6f8dd9544ee0c09f29126f476d24a079bc3f6293a2c7d697a8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a2_seoul_weekend_capstone_04 -> audio/generated/ko-KR/lexical/4d03cd283553cbe41e45a358aa730c228632ec56818a0ab9317b253ac638f4a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c347bdf7-8d0c-5c00-a9dd-6cabda5f3a2b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a2_seoul_weekend_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9f53aa764518b2bf8c30a14a08c9ded6f7ce5f915d14438f625618328bf67c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef6f0343-58fd-5813-ae8b-fe7a5edfca6f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c347bdf7-8d0c-5c00-a9dd-6cabda5f3a2b', 1), 'b9f53aa764518b2bf8c30a14a08c9ded6f7ce5f915d14438f625618328bf67c5',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4d03cd283553cbe41e45a358aa730c228632ec56818a0ab9317b253ac638f4a9.mp3', 1280, '2026-09-13 22:24:57.035838', 'c93386da3621b97ff299f90211b5a743689cd57677ecbd0495375f4cdcf385da', 'validated', '{"audio_key":"4d03cd283553cbe41e45a358aa730c228632ec56818a0ab9317b253ac638f4a9","entity_key":"lx_a2_seoul_weekend_capstone_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c93386da3621b97ff299f90211b5a743689cd57677ecbd0495375f4cdcf385da","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4d03cd283553cbe41e45a358aa730c228632ec56818a0ab9317b253ac638f4a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a2_seoul_weekend_capstone_04 -> audio/generated/ko-KR/lexical/4d03cd283553cbe41e45a358aa730c228632ec56818a0ab9317b253ac638f4a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ae938ea3-6006-5f73-9ac3-3abc039fbe8f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a2_seoul_weekend_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9f53aa764518b2bf8c30a14a08c9ded6f7ce5f915d14438f625618328bf67c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aeac1ef4-7a89-5a77-b0d2-545eeeea2e30', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ae938ea3-6006-5f73-9ac3-3abc039fbe8f', 1), 'b9f53aa764518b2bf8c30a14a08c9ded6f7ce5f915d14438f625618328bf67c5',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/4d03cd283553cbe41e45a358aa730c228632ec56818a0ab9317b253ac638f4a9.mp3', 1280, '2026-09-13 22:24:57.035838', 'c93386da3621b97ff299f90211b5a743689cd57677ecbd0495375f4cdcf385da', 'validated', '{"audio_key":"4d03cd283553cbe41e45a358aa730c228632ec56818a0ab9317b253ac638f4a9","entity_key":"wf_a2_seoul_weekend_capstone_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c93386da3621b97ff299f90211b5a743689cd57677ecbd0495375f4cdcf385da","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/4d03cd283553cbe41e45a358aa730c228632ec56818a0ab9317b253ac638f4a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_and_advice_03 -> audio/generated/ko-KR/lexical/511cbb0b5c3905c409791c09bccb252aa6b56a980bd4b97b776b7c3b9d9bfef2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b3fb58ee-455d-5ea1-9c3b-737edb3a3988', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_and_advice_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a9db5dfd1480367dc36b5e40a11081f46c23e85160cbd0785589265853bc5b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c6cdb7b1-d0f3-527d-ba83-8476c6723578', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b3fb58ee-455d-5ea1-9c3b-737edb3a3988', 1), '2a9db5dfd1480367dc36b5e40a11081f46c23e85160cbd0785589265853bc5b7',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/511cbb0b5c3905c409791c09bccb252aa6b56a980bd4b97b776b7c3b9d9bfef2.mp3', 1018, '2026-09-13 22:24:56.991546', '4ee6b14ab70ef025bc0576bd259b968f8f8bbe472e6f2650bc3251df5fd29a8e', 'validated', '{"audio_key":"511cbb0b5c3905c409791c09bccb252aa6b56a980bd4b97b776b7c3b9d9bfef2","entity_key":"lx_health_and_advice_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4ee6b14ab70ef025bc0576bd259b968f8f8bbe472e6f2650bc3251df5fd29a8e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/511cbb0b5c3905c409791c09bccb252aa6b56a980bd4b97b776b7c3b9d9bfef2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_and_advice_03 -> audio/generated/ko-KR/lexical/511cbb0b5c3905c409791c09bccb252aa6b56a980bd4b97b776b7c3b9d9bfef2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ff75085f-06bc-5f39-9db2-0c103e7a55af', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_and_advice_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a9db5dfd1480367dc36b5e40a11081f46c23e85160cbd0785589265853bc5b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6c8f6b6d-617a-580c-8f9f-c160b9325c1e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ff75085f-06bc-5f39-9db2-0c103e7a55af', 1), '2a9db5dfd1480367dc36b5e40a11081f46c23e85160cbd0785589265853bc5b7',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/511cbb0b5c3905c409791c09bccb252aa6b56a980bd4b97b776b7c3b9d9bfef2.mp3', 1018, '2026-09-13 22:24:56.991546', '4ee6b14ab70ef025bc0576bd259b968f8f8bbe472e6f2650bc3251df5fd29a8e', 'validated', '{"audio_key":"511cbb0b5c3905c409791c09bccb252aa6b56a980bd4b97b776b7c3b9d9bfef2","entity_key":"wf_health_and_advice_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4ee6b14ab70ef025bc0576bd259b968f8f8bbe472e6f2650bc3251df5fd29a8e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/511cbb0b5c3905c409791c09bccb252aa6b56a980bd4b97b776b7c3b9d9bfef2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_and_advice_01 -> audio/generated/ko-KR/lexical/52c653f23e08d8a038bb0e9af016c16a018c6b6f3ebfa230f686daadd9980d55.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3a6d1f43-3472-5cc0-b368-084712277fe1', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_and_advice_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '912c6f176a189a34657977263788992a2f826da8e2b06f5568447989ef27e2a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1016d907-b343-5ab8-a3c9-f91db199b89e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3a6d1f43-3472-5cc0-b368-084712277fe1', 1), '912c6f176a189a34657977263788992a2f826da8e2b06f5568447989ef27e2a7',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/52c653f23e08d8a038bb0e9af016c16a018c6b6f3ebfa230f686daadd9980d55.mp3', 1071, '2026-09-13 22:24:57.985731', '17478ce84d9285b744ab91c22f100dceb2082af67662090c16b5578e3f7f3ae3', 'validated', '{"audio_key":"52c653f23e08d8a038bb0e9af016c16a018c6b6f3ebfa230f686daadd9980d55","entity_key":"lx_health_and_advice_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"17478ce84d9285b744ab91c22f100dceb2082af67662090c16b5578e3f7f3ae3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/52c653f23e08d8a038bb0e9af016c16a018c6b6f3ebfa230f686daadd9980d55.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_and_advice_01 -> audio/generated/ko-KR/lexical/52c653f23e08d8a038bb0e9af016c16a018c6b6f3ebfa230f686daadd9980d55.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7be236a4-161d-5390-8ca1-42ff45b6b160', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_and_advice_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '912c6f176a189a34657977263788992a2f826da8e2b06f5568447989ef27e2a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3bf6b9d7-313f-5550-afac-4bc1bd4c449f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7be236a4-161d-5390-8ca1-42ff45b6b160', 1), '912c6f176a189a34657977263788992a2f826da8e2b06f5568447989ef27e2a7',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/52c653f23e08d8a038bb0e9af016c16a018c6b6f3ebfa230f686daadd9980d55.mp3', 1071, '2026-09-13 22:24:57.985731', '17478ce84d9285b744ab91c22f100dceb2082af67662090c16b5578e3f7f3ae3', 'validated', '{"audio_key":"52c653f23e08d8a038bb0e9af016c16a018c6b6f3ebfa230f686daadd9980d55","entity_key":"wf_health_and_advice_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"17478ce84d9285b744ab91c22f100dceb2082af67662090c16b5578e3f7f3ae3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/52c653f23e08d8a038bb0e9af016c16a018c6b6f3ebfa230f686daadd9980d55.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_and_hotel_04 -> audio/generated/ko-KR/lexical/56bfa4d12d5a218d0049d16722d8150eb71ba114ca3e72a617abc13713c7d08b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('41431ce7-436c-5901-a2d9-1e10846b6be9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_and_hotel_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '66661500c7bf41ffb4ccfa0a08160aa78a18ed8c46c6ed9fb893ed2eef2e0522'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('422a8bef-fb2a-54bf-914e-185681692707', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('41431ce7-436c-5901-a2d9-1e10846b6be9', 1), '66661500c7bf41ffb4ccfa0a08160aa78a18ed8c46c6ed9fb893ed2eef2e0522',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/56bfa4d12d5a218d0049d16722d8150eb71ba114ca3e72a617abc13713c7d08b.mp3', 966, '2026-09-13 22:24:58.038233', 'd7a48a23dece9bb00febf064577b870cca61000bbe000b629e0be23361e72c2e', 'validated', '{"audio_key":"56bfa4d12d5a218d0049d16722d8150eb71ba114ca3e72a617abc13713c7d08b","entity_key":"lx_travel_and_hotel_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d7a48a23dece9bb00febf064577b870cca61000bbe000b629e0be23361e72c2e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/56bfa4d12d5a218d0049d16722d8150eb71ba114ca3e72a617abc13713c7d08b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_and_hotel_04 -> audio/generated/ko-KR/lexical/56bfa4d12d5a218d0049d16722d8150eb71ba114ca3e72a617abc13713c7d08b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('efb1db5d-4067-5b1d-b3bf-2ad288f92496', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_and_hotel_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '66661500c7bf41ffb4ccfa0a08160aa78a18ed8c46c6ed9fb893ed2eef2e0522'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45720592-d8d6-574e-aeec-6b071ea10072', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('efb1db5d-4067-5b1d-b3bf-2ad288f92496', 1), '66661500c7bf41ffb4ccfa0a08160aa78a18ed8c46c6ed9fb893ed2eef2e0522',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/56bfa4d12d5a218d0049d16722d8150eb71ba114ca3e72a617abc13713c7d08b.mp3', 966, '2026-09-13 22:24:58.038233', 'd7a48a23dece9bb00febf064577b870cca61000bbe000b629e0be23361e72c2e', 'validated', '{"audio_key":"56bfa4d12d5a218d0049d16722d8150eb71ba114ca3e72a617abc13713c7d08b","entity_key":"wf_travel_and_hotel_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d7a48a23dece9bb00febf064577b870cca61000bbe000b629e0be23361e72c2e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/56bfa4d12d5a218d0049d16722d8150eb71ba114ca3e72a617abc13713c7d08b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_ability_and_permission_03 -> audio/generated/ko-KR/lexical/5b41ae7b5a591b0f3b39a1315d2b9e20584e0d556b40abe47ee3024c079cb326.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9ac7e25f-ba8e-537d-a269-fac124ed3ba0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_ability_and_permission_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc82df55affb977bd3f4daf93f7a639f499a1f5353049fb3c3bd8e5699a70938'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4d6d4bc-c01c-5d55-985f-5f6e8f3c79da', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9ac7e25f-ba8e-537d-a269-fac124ed3ba0', 1), 'dc82df55affb977bd3f4daf93f7a639f499a1f5353049fb3c3bd8e5699a70938',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5b41ae7b5a591b0f3b39a1315d2b9e20584e0d556b40abe47ee3024c079cb326.mp3', 1071, '2026-09-13 22:24:58.990786', '0bf0ea8ff4aff65e820374d8f2c37ff98146b1414fc108a9271ec459bd3c2f19', 'validated', '{"audio_key":"5b41ae7b5a591b0f3b39a1315d2b9e20584e0d556b40abe47ee3024c079cb326","entity_key":"lx_ability_and_permission_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0bf0ea8ff4aff65e820374d8f2c37ff98146b1414fc108a9271ec459bd3c2f19","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5b41ae7b5a591b0f3b39a1315d2b9e20584e0d556b40abe47ee3024c079cb326.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_ability_and_permission_03 -> audio/generated/ko-KR/lexical/5b41ae7b5a591b0f3b39a1315d2b9e20584e0d556b40abe47ee3024c079cb326.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c324db93-6b37-5da5-ae3b-58be0f249a87', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_ability_and_permission_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc82df55affb977bd3f4daf93f7a639f499a1f5353049fb3c3bd8e5699a70938'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb293a72-87ab-5660-8626-a87b371b63a8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c324db93-6b37-5da5-ae3b-58be0f249a87', 1), 'dc82df55affb977bd3f4daf93f7a639f499a1f5353049fb3c3bd8e5699a70938',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5b41ae7b5a591b0f3b39a1315d2b9e20584e0d556b40abe47ee3024c079cb326.mp3', 1071, '2026-09-13 22:24:58.990786', '0bf0ea8ff4aff65e820374d8f2c37ff98146b1414fc108a9271ec459bd3c2f19', 'validated', '{"audio_key":"5b41ae7b5a591b0f3b39a1315d2b9e20584e0d556b40abe47ee3024c079cb326","entity_key":"wf_ability_and_permission_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0bf0ea8ff4aff65e820374d8f2c37ff98146b1414fc108a9271ec459bd3c2f19","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5b41ae7b5a591b0f3b39a1315d2b9e20584e0d556b40abe47ee3024c079cb326.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_and_hotel_05 -> audio/generated/ko-KR/lexical/5bc0453d070c87fc8c76d71703554b5b5008b632465f1b07a5f9e6a618eb7b3f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('af85c094-a5b2-58ff-8452-e13013fb24b3', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_and_hotel_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b412dfdf32d8431c3aad141d5077bb731fdc4c918883360185e1108376d6cdcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4b42b573-604f-5245-a3b0-4cc11a0e8dd1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('af85c094-a5b2-58ff-8452-e13013fb24b3', 1), 'b412dfdf32d8431c3aad141d5077bb731fdc4c918883360185e1108376d6cdcb',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5bc0453d070c87fc8c76d71703554b5b5008b632465f1b07a5f9e6a618eb7b3f.mp3', 1149, '2026-09-13 22:24:59.044188', '2a2f9709691bfc372d76e4f468932cfb95e086d1ee595f2ecc0bbcabb447a905', 'validated', '{"audio_key":"5bc0453d070c87fc8c76d71703554b5b5008b632465f1b07a5f9e6a618eb7b3f","entity_key":"lx_travel_and_hotel_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2a2f9709691bfc372d76e4f468932cfb95e086d1ee595f2ecc0bbcabb447a905","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5bc0453d070c87fc8c76d71703554b5b5008b632465f1b07a5f9e6a618eb7b3f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_and_hotel_05 -> audio/generated/ko-KR/lexical/5bc0453d070c87fc8c76d71703554b5b5008b632465f1b07a5f9e6a618eb7b3f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d7c7c2b4-6ecf-5ca1-b804-b9e6378020b2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_and_hotel_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b412dfdf32d8431c3aad141d5077bb731fdc4c918883360185e1108376d6cdcb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2662e45-a8db-51d5-af3e-30c05e997edd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d7c7c2b4-6ecf-5ca1-b804-b9e6378020b2', 1), 'b412dfdf32d8431c3aad141d5077bb731fdc4c918883360185e1108376d6cdcb',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5bc0453d070c87fc8c76d71703554b5b5008b632465f1b07a5f9e6a618eb7b3f.mp3', 1149, '2026-09-13 22:24:59.044188', '2a2f9709691bfc372d76e4f468932cfb95e086d1ee595f2ecc0bbcabb447a905', 'validated', '{"audio_key":"5bc0453d070c87fc8c76d71703554b5b5008b632465f1b07a5f9e6a618eb7b3f","entity_key":"wf_travel_and_hotel_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2a2f9709691bfc372d76e4f468932cfb95e086d1ee595f2ecc0bbcabb447a905","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5bc0453d070c87fc8c76d71703554b5b5008b632465f1b07a5f9e6a618eb7b3f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_and_advice_02 -> audio/generated/ko-KR/lexical/5e2579406738b15bdab71f1812841f7853d7ab6639a800163de1778fcb2d0eac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('515ba676-1023-5a97-9c34-de35e4367a04', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_and_advice_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74eee3ddf202a62b75965f70444cc4c09538e67a005a6da657d3043a8e25ce39'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d7a92cb-90f0-5ecd-b9f1-1f96c7675674', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('515ba676-1023-5a97-9c34-de35e4367a04', 1), '74eee3ddf202a62b75965f70444cc4c09538e67a005a6da657d3043a8e25ce39',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5e2579406738b15bdab71f1812841f7853d7ab6639a800163de1778fcb2d0eac.mp3', 966, '2026-09-13 22:24:59.987856', 'a258fc8d15b0be7a1d6d352445460267191c192696981e2aa1ab37fde3b9315f', 'validated', '{"audio_key":"5e2579406738b15bdab71f1812841f7853d7ab6639a800163de1778fcb2d0eac","entity_key":"lx_health_and_advice_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a258fc8d15b0be7a1d6d352445460267191c192696981e2aa1ab37fde3b9315f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5e2579406738b15bdab71f1812841f7853d7ab6639a800163de1778fcb2d0eac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_and_advice_02 -> audio/generated/ko-KR/lexical/5e2579406738b15bdab71f1812841f7853d7ab6639a800163de1778fcb2d0eac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('71ca4b34-f3f5-582f-a429-2214f497d1d1', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_and_advice_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '74eee3ddf202a62b75965f70444cc4c09538e67a005a6da657d3043a8e25ce39'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f43ba7b2-0d85-5d75-84ce-a715c493a8b0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('71ca4b34-f3f5-582f-a429-2214f497d1d1', 1), '74eee3ddf202a62b75965f70444cc4c09538e67a005a6da657d3043a8e25ce39',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5e2579406738b15bdab71f1812841f7853d7ab6639a800163de1778fcb2d0eac.mp3', 966, '2026-09-13 22:24:59.987856', 'a258fc8d15b0be7a1d6d352445460267191c192696981e2aa1ab37fde3b9315f', 'validated', '{"audio_key":"5e2579406738b15bdab71f1812841f7853d7ab6639a800163de1778fcb2d0eac","entity_key":"wf_health_and_advice_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a258fc8d15b0be7a1d6d352445460267191c192696981e2aa1ab37fde3b9315f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5e2579406738b15bdab71f1812841f7853d7ab6639a800163de1778fcb2d0eac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a2_seoul_weekend_capstone_05 -> audio/generated/ko-KR/lexical/64e29611c0f0b1711d4ab47b9c39d45087a237d1a48474d7c94abb16a9027694.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a8a0a5d4-65c6-5edf-b07c-c2b322ee17ee', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a2_seoul_weekend_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b46fa208d9de21d2daf1d3d628ad78496cf201f655b89b8ab8612c28faf47c3b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f52a3039-5047-5969-89d5-6ae635f33e37', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a8a0a5d4-65c6-5edf-b07c-c2b322ee17ee', 1), 'b46fa208d9de21d2daf1d3d628ad78496cf201f655b89b8ab8612c28faf47c3b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/64e29611c0f0b1711d4ab47b9c39d45087a237d1a48474d7c94abb16a9027694.mp3', 1018, '2026-09-13 22:25:00.055057', '26b4cbaa2cf985062e6586202f390208ec33e4b6bdc6725ac67e848667175997', 'validated', '{"audio_key":"64e29611c0f0b1711d4ab47b9c39d45087a237d1a48474d7c94abb16a9027694","entity_key":"lx_a2_seoul_weekend_capstone_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"26b4cbaa2cf985062e6586202f390208ec33e4b6bdc6725ac67e848667175997","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/64e29611c0f0b1711d4ab47b9c39d45087a237d1a48474d7c94abb16a9027694.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a2_seoul_weekend_capstone_05 -> audio/generated/ko-KR/lexical/64e29611c0f0b1711d4ab47b9c39d45087a237d1a48474d7c94abb16a9027694.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2aa8d8ca-4ea4-51f0-ad04-5d1dc4039c55', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a2_seoul_weekend_capstone_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b46fa208d9de21d2daf1d3d628ad78496cf201f655b89b8ab8612c28faf47c3b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b3720e67-660a-5c37-b847-9d491f88fdba', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2aa8d8ca-4ea4-51f0-ad04-5d1dc4039c55', 1), 'b46fa208d9de21d2daf1d3d628ad78496cf201f655b89b8ab8612c28faf47c3b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/64e29611c0f0b1711d4ab47b9c39d45087a237d1a48474d7c94abb16a9027694.mp3', 1018, '2026-09-13 22:25:00.055057', '26b4cbaa2cf985062e6586202f390208ec33e4b6bdc6725ac67e848667175997', 'validated', '{"audio_key":"64e29611c0f0b1711d4ab47b9c39d45087a237d1a48474d7c94abb16a9027694","entity_key":"wf_a2_seoul_weekend_capstone_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"26b4cbaa2cf985062e6586202f390208ec33e4b6bdc6725ac67e848667175997","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/64e29611c0f0b1711d4ab47b9c39d45087a237d1a48474d7c94abb16a9027694.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_and_hotel_03 -> audio/generated/ko-KR/lexical/6c353c0d80e59842676e1120186e037778e93e3c20311061b70b5dd950d38197.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9b4df0f9-9962-503a-968e-3d608ecf3ab3', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_and_hotel_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76102fe82462d111be2a7d663bdc667173bffd227e74f40f58af620361d0bb75'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9fa6b4f-e211-59ec-b6a4-78e6199ba262', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9b4df0f9-9962-503a-968e-3d608ecf3ab3', 1), '76102fe82462d111be2a7d663bdc667173bffd227e74f40f58af620361d0bb75',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6c353c0d80e59842676e1120186e037778e93e3c20311061b70b5dd950d38197.mp3', 862, '2026-09-13 22:05:06.417562', '16608206d5b1f611c52953f92e8aaea8f9355ad2a55082150364fc988d157654', 'validated', '{"audio_key":"6c353c0d80e59842676e1120186e037778e93e3c20311061b70b5dd950d38197","entity_key":"lx_travel_and_hotel_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"16608206d5b1f611c52953f92e8aaea8f9355ad2a55082150364fc988d157654","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6c353c0d80e59842676e1120186e037778e93e3c20311061b70b5dd950d38197.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_and_hotel_03 -> audio/generated/ko-KR/lexical/6c353c0d80e59842676e1120186e037778e93e3c20311061b70b5dd950d38197.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e3fb7dcb-65d5-5f20-b121-40c9ef0d2c98', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_and_hotel_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76102fe82462d111be2a7d663bdc667173bffd227e74f40f58af620361d0bb75'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('399bfdd2-3ac6-5298-8df6-e87bb8b0eafd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e3fb7dcb-65d5-5f20-b121-40c9ef0d2c98', 1), '76102fe82462d111be2a7d663bdc667173bffd227e74f40f58af620361d0bb75',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6c353c0d80e59842676e1120186e037778e93e3c20311061b70b5dd950d38197.mp3', 862, '2026-09-13 22:05:06.417562', '16608206d5b1f611c52953f92e8aaea8f9355ad2a55082150364fc988d157654', 'validated', '{"audio_key":"6c353c0d80e59842676e1120186e037778e93e3c20311061b70b5dd950d38197","entity_key":"wf_travel_and_hotel_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"16608206d5b1f611c52953f92e8aaea8f9355ad2a55082150364fc988d157654","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6c353c0d80e59842676e1120186e037778e93e3c20311061b70b5dd950d38197.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_weather_and_change_03 -> audio/generated/ko-KR/lexical/704277db0ede4cbec119b2512b386346115bbcccd3f894607376e57dafd2494d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b33ae64b-924a-5c94-9a1e-5f55fbd2d330', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_weather_and_change_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c651efb56d12a6540a4ac9cb63fc188c4a02c549a19c59c83630f6fe956927c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a40b7218-4ff5-5b7c-8f3b-2a5139d9147b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b33ae64b-924a-5c94-9a1e-5f55fbd2d330', 1), '7c651efb56d12a6540a4ac9cb63fc188c4a02c549a19c59c83630f6fe956927c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/704277db0ede4cbec119b2512b386346115bbcccd3f894607376e57dafd2494d.mp3', 914, '2026-09-13 22:25:01.002911', 'd855e51e650e0a135ca3fdd53f48db64de6dd13b21197723eb59912ffedb238c', 'validated', '{"audio_key":"704277db0ede4cbec119b2512b386346115bbcccd3f894607376e57dafd2494d","entity_key":"lx_weather_and_change_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d855e51e650e0a135ca3fdd53f48db64de6dd13b21197723eb59912ffedb238c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/704277db0ede4cbec119b2512b386346115bbcccd3f894607376e57dafd2494d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_weather_and_change_03 -> audio/generated/ko-KR/lexical/704277db0ede4cbec119b2512b386346115bbcccd3f894607376e57dafd2494d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2bc57810-7a06-5721-b805-e44e97b55b84', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_weather_and_change_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c651efb56d12a6540a4ac9cb63fc188c4a02c549a19c59c83630f6fe956927c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac3e8778-a741-55d4-9281-b56b6327a3a8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2bc57810-7a06-5721-b805-e44e97b55b84', 1), '7c651efb56d12a6540a4ac9cb63fc188c4a02c549a19c59c83630f6fe956927c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/704277db0ede4cbec119b2512b386346115bbcccd3f894607376e57dafd2494d.mp3', 914, '2026-09-13 22:25:01.002911', 'd855e51e650e0a135ca3fdd53f48db64de6dd13b21197723eb59912ffedb238c', 'validated', '{"audio_key":"704277db0ede4cbec119b2512b386346115bbcccd3f894607376e57dafd2494d","entity_key":"wf_weather_and_change_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d855e51e650e0a135ca3fdd53f48db64de6dd13b21197723eb59912ffedb238c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/704277db0ede4cbec119b2512b386346115bbcccd3f894607376e57dafd2494d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_comparisons_and_choice_03 -> audio/generated/ko-KR/lexical/7070078785d4267cd019e237ff42296f696d7c67447a1ebb23aeb5e0ccfb7ccc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9800fe77-684a-50e7-b7e3-9b10e33e246c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_comparisons_and_choice_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b291179e0fe019b65663e1cb3ad3d99a7d544309db522954dbfae8116fcafc0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7ae5928c-99ee-53a2-b9b9-a484d8b65665', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9800fe77-684a-50e7-b7e3-9b10e33e246c', 1), 'b291179e0fe019b65663e1cb3ad3d99a7d544309db522954dbfae8116fcafc0f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7070078785d4267cd019e237ff42296f696d7c67447a1ebb23aeb5e0ccfb7ccc.mp3', 914, '2026-09-13 22:05:08.419783', 'c310657f0f67565bce732fe885cdcf97fc42333488734f123a4fd4ec64754f9a', 'validated', '{"audio_key":"7070078785d4267cd019e237ff42296f696d7c67447a1ebb23aeb5e0ccfb7ccc","entity_key":"lx_comparisons_and_choice_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c310657f0f67565bce732fe885cdcf97fc42333488734f123a4fd4ec64754f9a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7070078785d4267cd019e237ff42296f696d7c67447a1ebb23aeb5e0ccfb7ccc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_comparisons_and_choice_03 -> audio/generated/ko-KR/lexical/7070078785d4267cd019e237ff42296f696d7c67447a1ebb23aeb5e0ccfb7ccc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7d5cc408-9306-5cb0-a55b-efa22c8e41f2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_comparisons_and_choice_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b291179e0fe019b65663e1cb3ad3d99a7d544309db522954dbfae8116fcafc0f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a145cb1-4d5e-56ab-95fc-60b76315b492', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7d5cc408-9306-5cb0-a55b-efa22c8e41f2', 1), 'b291179e0fe019b65663e1cb3ad3d99a7d544309db522954dbfae8116fcafc0f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7070078785d4267cd019e237ff42296f696d7c67447a1ebb23aeb5e0ccfb7ccc.mp3', 914, '2026-09-13 22:05:08.419783', 'c310657f0f67565bce732fe885cdcf97fc42333488734f123a4fd4ec64754f9a', 'validated', '{"audio_key":"7070078785d4267cd019e237ff42296f696d7c67447a1ebb23aeb5e0ccfb7ccc","entity_key":"wf_comparisons_and_choice_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c310657f0f67565bce732fe885cdcf97fc42333488734f123a4fd4ec64754f9a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7070078785d4267cd019e237ff42296f696d7c67447a1ebb23aeb5e0ccfb7ccc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reasons_and_results_05 -> audio/generated/ko-KR/lexical/7b37fbe45ca66c8af49fb424fdf6a5f8af87c83ee9f1246edece44d811f3f742.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1601b722-a61e-588d-b06f-3d345f4383af', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reasons_and_results_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8df56b9bfbdae2fd84634581e2d6945e2a15c7307dc56f1f93b299f132d6ed35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('468436bb-b192-52d8-b839-e24d0c703a7c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1601b722-a61e-588d-b06f-3d345f4383af', 1), '8df56b9bfbdae2fd84634581e2d6945e2a15c7307dc56f1f93b299f132d6ed35',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7b37fbe45ca66c8af49fb424fdf6a5f8af87c83ee9f1246edece44d811f3f742.mp3', 1071, '2026-09-13 22:25:01.068657', '7f232764a13412497c98386604e64202feac0153b29a10a654979accd9f221a2', 'validated', '{"audio_key":"7b37fbe45ca66c8af49fb424fdf6a5f8af87c83ee9f1246edece44d811f3f742","entity_key":"lx_reasons_and_results_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7f232764a13412497c98386604e64202feac0153b29a10a654979accd9f221a2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7b37fbe45ca66c8af49fb424fdf6a5f8af87c83ee9f1246edece44d811f3f742.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reasons_and_results_05 -> audio/generated/ko-KR/lexical/7b37fbe45ca66c8af49fb424fdf6a5f8af87c83ee9f1246edece44d811f3f742.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('42cfa005-cfc5-597c-af3c-2bcd5039998b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reasons_and_results_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8df56b9bfbdae2fd84634581e2d6945e2a15c7307dc56f1f93b299f132d6ed35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20057456-3a1e-54e4-8699-35b5b046c0dc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('42cfa005-cfc5-597c-af3c-2bcd5039998b', 1), '8df56b9bfbdae2fd84634581e2d6945e2a15c7307dc56f1f93b299f132d6ed35',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7b37fbe45ca66c8af49fb424fdf6a5f8af87c83ee9f1246edece44d811f3f742.mp3', 1071, '2026-09-13 22:25:01.068657', '7f232764a13412497c98386604e64202feac0153b29a10a654979accd9f221a2', 'validated', '{"audio_key":"7b37fbe45ca66c8af49fb424fdf6a5f8af87c83ee9f1246edece44d811f3f742","entity_key":"wf_reasons_and_results_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7f232764a13412497c98386604e64202feac0153b29a10a654979accd9f221a2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7b37fbe45ca66c8af49fb424fdf6a5f8af87c83ee9f1246edece44d811f3f742.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_comparisons_and_choice_01 -> audio/generated/ko-KR/lexical/7f627440884b55386f9df89c39621e44e694b904c7f30e64b27b2ac8a3a64990.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('798e91b9-0715-5ceb-8975-b20babcc13a0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_comparisons_and_choice_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6a45cf834264a5ec36113824c2c48dea888e2fbafcad2d12c110a34932728e7a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('356078d8-f88b-5a55-97fa-382b69032aeb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('798e91b9-0715-5ceb-8975-b20babcc13a0', 1), '6a45cf834264a5ec36113824c2c48dea888e2fbafcad2d12c110a34932728e7a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7f627440884b55386f9df89c39621e44e694b904c7f30e64b27b2ac8a3a64990.mp3', 1018, '2026-09-13 22:25:01.980680', '78e660f4bd10c79547b53f3c2902888966e1093b77e26b0971cdf4b4037d4361', 'validated', '{"audio_key":"7f627440884b55386f9df89c39621e44e694b904c7f30e64b27b2ac8a3a64990","entity_key":"lx_comparisons_and_choice_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"78e660f4bd10c79547b53f3c2902888966e1093b77e26b0971cdf4b4037d4361","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7f627440884b55386f9df89c39621e44e694b904c7f30e64b27b2ac8a3a64990.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_comparisons_and_choice_01 -> audio/generated/ko-KR/lexical/7f627440884b55386f9df89c39621e44e694b904c7f30e64b27b2ac8a3a64990.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('94c6f7fa-da45-5a0e-ab5e-1c3a881fe47f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_comparisons_and_choice_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6a45cf834264a5ec36113824c2c48dea888e2fbafcad2d12c110a34932728e7a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf65e37b-66e0-5c57-ab8d-c83f2f20ff1a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('94c6f7fa-da45-5a0e-ab5e-1c3a881fe47f', 1), '6a45cf834264a5ec36113824c2c48dea888e2fbafcad2d12c110a34932728e7a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7f627440884b55386f9df89c39621e44e694b904c7f30e64b27b2ac8a3a64990.mp3', 1018, '2026-09-13 22:25:01.980680', '78e660f4bd10c79547b53f3c2902888966e1093b77e26b0971cdf4b4037d4361', 'validated', '{"audio_key":"7f627440884b55386f9df89c39621e44e694b904c7f30e64b27b2ac8a3a64990","entity_key":"wf_comparisons_and_choice_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"78e660f4bd10c79547b53f3c2902888966e1093b77e26b0971cdf4b4037d4361","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7f627440884b55386f9df89c39621e44e694b904c7f30e64b27b2ac8a3a64990.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a2_seoul_weekend_capstone_01 -> audio/generated/ko-KR/lexical/8254baf46ac5f2eb94d5779ae9cc7669d9a73bba48e6ed8b84c2e803f700d672.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('01887448-682e-5b07-83f8-31174b5d3ac9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a2_seoul_weekend_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '510d062ea38e7953e8878d513df1e91ba1e7ba857f7863abedfe9968e6592dd1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a40129b2-12bf-5cfe-80cc-403bcd9ab92c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('01887448-682e-5b07-83f8-31174b5d3ac9', 1), '510d062ea38e7953e8878d513df1e91ba1e7ba857f7863abedfe9968e6592dd1',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8254baf46ac5f2eb94d5779ae9cc7669d9a73bba48e6ed8b84c2e803f700d672.mp3', 1018, '2026-09-13 22:25:02.105476', '63d88d875bd4f6f22ab70134ef0b630f8847b359b40a47e5bf2d9f7ce7b0ca8c', 'validated', '{"audio_key":"8254baf46ac5f2eb94d5779ae9cc7669d9a73bba48e6ed8b84c2e803f700d672","entity_key":"lx_a2_seoul_weekend_capstone_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"63d88d875bd4f6f22ab70134ef0b630f8847b359b40a47e5bf2d9f7ce7b0ca8c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8254baf46ac5f2eb94d5779ae9cc7669d9a73bba48e6ed8b84c2e803f700d672.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a2_seoul_weekend_capstone_01 -> audio/generated/ko-KR/lexical/8254baf46ac5f2eb94d5779ae9cc7669d9a73bba48e6ed8b84c2e803f700d672.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6102d4a3-9fd2-5aed-852f-40d636e8d44a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a2_seoul_weekend_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '510d062ea38e7953e8878d513df1e91ba1e7ba857f7863abedfe9968e6592dd1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47cd7abf-d523-5dbb-9549-412fbf027454', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6102d4a3-9fd2-5aed-852f-40d636e8d44a', 1), '510d062ea38e7953e8878d513df1e91ba1e7ba857f7863abedfe9968e6592dd1',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8254baf46ac5f2eb94d5779ae9cc7669d9a73bba48e6ed8b84c2e803f700d672.mp3', 1018, '2026-09-13 22:25:02.105476', '63d88d875bd4f6f22ab70134ef0b630f8847b359b40a47e5bf2d9f7ce7b0ca8c', 'validated', '{"audio_key":"8254baf46ac5f2eb94d5779ae9cc7669d9a73bba48e6ed8b84c2e803f700d672","entity_key":"wf_a2_seoul_weekend_capstone_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"63d88d875bd4f6f22ab70134ef0b630f8847b359b40a47e5bf2d9f7ce7b0ca8c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8254baf46ac5f2eb94d5779ae9cc7669d9a73bba48e6ed8b84c2e803f700d672.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_plans_and_intentions_01 -> audio/generated/ko-KR/lexical/855867abf6310e75a351598f3a2b83ff5e53e0e14bfe4353424723761f11e80a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8734f79d-e2f2-5ed4-a50f-abc5761350c5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_plans_and_intentions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0fe4ea3ac5ac4022d19c29dae32b66aed2539dcdbbf858414ac6f94d39634dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4a094eb7-e93f-59e4-84a1-4b1048b5ac46', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8734f79d-e2f2-5ed4-a50f-abc5761350c5', 1), 'b0fe4ea3ac5ac4022d19c29dae32b66aed2539dcdbbf858414ac6f94d39634dd',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/855867abf6310e75a351598f3a2b83ff5e53e0e14bfe4353424723761f11e80a.mp3', 1071, '2026-09-13 22:25:03.008054', 'e3613a381c31b993a81bef92ee2accb491a71216240aebc5d480d2f459f5ff7c', 'validated', '{"audio_key":"855867abf6310e75a351598f3a2b83ff5e53e0e14bfe4353424723761f11e80a","entity_key":"lx_plans_and_intentions_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e3613a381c31b993a81bef92ee2accb491a71216240aebc5d480d2f459f5ff7c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/855867abf6310e75a351598f3a2b83ff5e53e0e14bfe4353424723761f11e80a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_plans_and_intentions_01 -> audio/generated/ko-KR/lexical/855867abf6310e75a351598f3a2b83ff5e53e0e14bfe4353424723761f11e80a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('386d5130-cb3d-5838-9b8e-20ed62a31097', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_plans_and_intentions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0fe4ea3ac5ac4022d19c29dae32b66aed2539dcdbbf858414ac6f94d39634dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd49acb5-679e-5952-ac11-227a62b3439d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('386d5130-cb3d-5838-9b8e-20ed62a31097', 1), 'b0fe4ea3ac5ac4022d19c29dae32b66aed2539dcdbbf858414ac6f94d39634dd',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/855867abf6310e75a351598f3a2b83ff5e53e0e14bfe4353424723761f11e80a.mp3', 1071, '2026-09-13 22:25:03.008054', 'e3613a381c31b993a81bef92ee2accb491a71216240aebc5d480d2f459f5ff7c', 'validated', '{"audio_key":"855867abf6310e75a351598f3a2b83ff5e53e0e14bfe4353424723761f11e80a","entity_key":"wf_plans_and_intentions_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e3613a381c31b993a81bef92ee2accb491a71216240aebc5d480d2f459f5ff7c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/855867abf6310e75a351598f3a2b83ff5e53e0e14bfe4353424723761f11e80a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_comparisons_and_choice_04 -> audio/generated/ko-KR/lexical/86305097fd2fe3d8b96b3a37b023406095308ef7c09d33660fc4bb385ea621aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('527f7748-9ee9-5cee-9541-c3d9757eeb74', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_comparisons_and_choice_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '33bf1e37d2739b22abddcc942c157a00a94cae8049af52aa40333446b9fd8db1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('345253fe-154c-5d39-861f-f02f9779d212', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('527f7748-9ee9-5cee-9541-c3d9757eeb74', 1), '33bf1e37d2739b22abddcc942c157a00a94cae8049af52aa40333446b9fd8db1',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/86305097fd2fe3d8b96b3a37b023406095308ef7c09d33660fc4bb385ea621aa.mp3', 1149, '2026-09-13 22:25:03.209718', 'b4940e4d10fcf6d8da2ba9c714ef340df0ffc03f6e90317cda2eca1e5997b7f8', 'validated', '{"audio_key":"86305097fd2fe3d8b96b3a37b023406095308ef7c09d33660fc4bb385ea621aa","entity_key":"lx_comparisons_and_choice_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b4940e4d10fcf6d8da2ba9c714ef340df0ffc03f6e90317cda2eca1e5997b7f8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/86305097fd2fe3d8b96b3a37b023406095308ef7c09d33660fc4bb385ea621aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_comparisons_and_choice_04 -> audio/generated/ko-KR/lexical/86305097fd2fe3d8b96b3a37b023406095308ef7c09d33660fc4bb385ea621aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0c134b42-cbf4-5051-9b6c-aa705396a3e5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_comparisons_and_choice_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '33bf1e37d2739b22abddcc942c157a00a94cae8049af52aa40333446b9fd8db1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b43b216a-85db-5c34-a8a5-be66b6df38c9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0c134b42-cbf4-5051-9b6c-aa705396a3e5', 1), '33bf1e37d2739b22abddcc942c157a00a94cae8049af52aa40333446b9fd8db1',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/86305097fd2fe3d8b96b3a37b023406095308ef7c09d33660fc4bb385ea621aa.mp3', 1149, '2026-09-13 22:25:03.209718', 'b4940e4d10fcf6d8da2ba9c714ef340df0ffc03f6e90317cda2eca1e5997b7f8', 'validated', '{"audio_key":"86305097fd2fe3d8b96b3a37b023406095308ef7c09d33660fc4bb385ea621aa","entity_key":"wf_comparisons_and_choice_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b4940e4d10fcf6d8da2ba9c714ef340df0ffc03f6e90317cda2eca1e5997b7f8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/86305097fd2fe3d8b96b3a37b023406095308ef7c09d33660fc4bb385ea621aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_softening_02 -> audio/generated/ko-KR/lexical/8a7953f14c87d448a2ba18757f31a2cb45afaa670f18e16a5db5dc77d931ca25.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9b99e42a-6d87-58e0-96cf-52adbbbe84e4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_softening_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9a2699f824000e36e45abe7371b538ab500913906a9010971bb1bea104a5e06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('06ef976e-37dc-5c78-a95e-c6ee4cb52b22', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9b99e42a-6d87-58e0-96cf-52adbbbe84e4', 1), 'b9a2699f824000e36e45abe7371b538ab500913906a9010971bb1bea104a5e06',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8a7953f14c87d448a2ba18757f31a2cb45afaa670f18e16a5db5dc77d931ca25.mp3', 1097, '2026-09-13 22:05:11.302860', '63597e4d804b2675e8bbc5b42415cb720c22f01a75a58d1e709164f3957432fd', 'validated', '{"audio_key":"8a7953f14c87d448a2ba18757f31a2cb45afaa670f18e16a5db5dc77d931ca25","entity_key":"lx_opinions_and_softening_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"63597e4d804b2675e8bbc5b42415cb720c22f01a75a58d1e709164f3957432fd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8a7953f14c87d448a2ba18757f31a2cb45afaa670f18e16a5db5dc77d931ca25.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_softening_02 -> audio/generated/ko-KR/lexical/8a7953f14c87d448a2ba18757f31a2cb45afaa670f18e16a5db5dc77d931ca25.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9784c80d-47be-5b61-8bf3-f3ae82858735', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_softening_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9a2699f824000e36e45abe7371b538ab500913906a9010971bb1bea104a5e06'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ce0ef4a-6f42-57ca-820e-48c4907a00fc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9784c80d-47be-5b61-8bf3-f3ae82858735', 1), 'b9a2699f824000e36e45abe7371b538ab500913906a9010971bb1bea104a5e06',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8a7953f14c87d448a2ba18757f31a2cb45afaa670f18e16a5db5dc77d931ca25.mp3', 1097, '2026-09-13 22:05:11.302860', '63597e4d804b2675e8bbc5b42415cb720c22f01a75a58d1e709164f3957432fd', 'validated', '{"audio_key":"8a7953f14c87d448a2ba18757f31a2cb45afaa670f18e16a5db5dc77d931ca25","entity_key":"wf_opinions_and_softening_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"63597e4d804b2675e8bbc5b42415cb720c22f01a75a58d1e709164f3957432fd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8a7953f14c87d448a2ba18757f31a2cb45afaa670f18e16a5db5dc77d931ca25.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_and_advice_05 -> audio/generated/ko-KR/lexical/8f0bd86b3497e5c85a8bdb984547e755665a52772c990f8f0991d877e44a8cae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('66257395-724d-547a-bc7c-c3210000f113', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_and_advice_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62b3b824836a1f2cb1c5fe65cb5b3db8058b69013f2acb8f4486c9743e64b591'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c71f558-7af2-5ae4-8b8d-836c21718d40', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('66257395-724d-547a-bc7c-c3210000f113', 1), '62b3b824836a1f2cb1c5fe65cb5b3db8058b69013f2acb8f4486c9743e64b591',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8f0bd86b3497e5c85a8bdb984547e755665a52772c990f8f0991d877e44a8cae.mp3', 1097, '2026-09-13 22:25:04.004178', '2152134cb375ed9b4accd3268a7fb64d38da9def8e7028aa6d7e0b131feb29ba', 'validated', '{"audio_key":"8f0bd86b3497e5c85a8bdb984547e755665a52772c990f8f0991d877e44a8cae","entity_key":"lx_health_and_advice_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2152134cb375ed9b4accd3268a7fb64d38da9def8e7028aa6d7e0b131feb29ba","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8f0bd86b3497e5c85a8bdb984547e755665a52772c990f8f0991d877e44a8cae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_and_advice_05 -> audio/generated/ko-KR/lexical/8f0bd86b3497e5c85a8bdb984547e755665a52772c990f8f0991d877e44a8cae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ffffeaaa-c6a9-554f-a0f5-edcf470724e5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_and_advice_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62b3b824836a1f2cb1c5fe65cb5b3db8058b69013f2acb8f4486c9743e64b591'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9ea4187-b086-5a09-8190-dab5f083d676', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ffffeaaa-c6a9-554f-a0f5-edcf470724e5', 1), '62b3b824836a1f2cb1c5fe65cb5b3db8058b69013f2acb8f4486c9743e64b591',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8f0bd86b3497e5c85a8bdb984547e755665a52772c990f8f0991d877e44a8cae.mp3', 1097, '2026-09-13 22:25:04.004178', '2152134cb375ed9b4accd3268a7fb64d38da9def8e7028aa6d7e0b131feb29ba', 'validated', '{"audio_key":"8f0bd86b3497e5c85a8bdb984547e755665a52772c990f8f0991d877e44a8cae","entity_key":"wf_health_and_advice_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2152134cb375ed9b4accd3268a7fb64d38da9def8e7028aa6d7e0b131feb29ba","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8f0bd86b3497e5c85a8bdb984547e755665a52772c990f8f0991d877e44a8cae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reasons_and_results_06 -> audio/generated/ko-KR/lexical/8f0bd86b3497e5c85a8bdb984547e755665a52772c990f8f0991d877e44a8cae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('66257395-724d-547a-bc7c-c3210000f113', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reasons_and_results_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62b3b824836a1f2cb1c5fe65cb5b3db8058b69013f2acb8f4486c9743e64b591'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3c71f558-7af2-5ae4-8b8d-836c21718d40', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('66257395-724d-547a-bc7c-c3210000f113', 1), '62b3b824836a1f2cb1c5fe65cb5b3db8058b69013f2acb8f4486c9743e64b591',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8f0bd86b3497e5c85a8bdb984547e755665a52772c990f8f0991d877e44a8cae.mp3', 1097, '2026-09-13 22:25:04.004178', '2152134cb375ed9b4accd3268a7fb64d38da9def8e7028aa6d7e0b131feb29ba', 'validated', '{"audio_key":"8f0bd86b3497e5c85a8bdb984547e755665a52772c990f8f0991d877e44a8cae","entity_key":"lx_reasons_and_results_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2152134cb375ed9b4accd3268a7fb64d38da9def8e7028aa6d7e0b131feb29ba","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8f0bd86b3497e5c85a8bdb984547e755665a52772c990f8f0991d877e44a8cae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reasons_and_results_06 -> audio/generated/ko-KR/lexical/8f0bd86b3497e5c85a8bdb984547e755665a52772c990f8f0991d877e44a8cae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b9958f26-0b98-50fd-ab2b-cc2afac65384', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reasons_and_results_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '62b3b824836a1f2cb1c5fe65cb5b3db8058b69013f2acb8f4486c9743e64b591'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9d2ff70-e5dd-5fa8-8b06-e619daa672ea', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b9958f26-0b98-50fd-ab2b-cc2afac65384', 1), '62b3b824836a1f2cb1c5fe65cb5b3db8058b69013f2acb8f4486c9743e64b591',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/8f0bd86b3497e5c85a8bdb984547e755665a52772c990f8f0991d877e44a8cae.mp3', 1097, '2026-09-13 22:25:04.004178', '2152134cb375ed9b4accd3268a7fb64d38da9def8e7028aa6d7e0b131feb29ba', 'validated', '{"audio_key":"8f0bd86b3497e5c85a8bdb984547e755665a52772c990f8f0991d877e44a8cae","entity_key":"wf_reasons_and_results_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2152134cb375ed9b4accd3268a7fb64d38da9def8e7028aa6d7e0b131feb29ba","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/8f0bd86b3497e5c85a8bdb984547e755665a52772c990f8f0991d877e44a8cae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_a2_seoul_weekend_capstone_06 -> audio/generated/ko-KR/lexical/9e80604ec9914629780291ab8780328fb6280751eab1d999d9302aee48e6ad76.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('11791f38-8e91-5b36-8023-6de7063a4bd1', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_a2_seoul_weekend_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '603669bd762779d981692da6277555a7202a7dd987bdc5dda3c9ca733bbdba8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c0dd565-c498-5c0a-b87c-7af5c8a8b27c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('11791f38-8e91-5b36-8023-6de7063a4bd1', 1), '603669bd762779d981692da6277555a7202a7dd987bdc5dda3c9ca733bbdba8b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/9e80604ec9914629780291ab8780328fb6280751eab1d999d9302aee48e6ad76.mp3', 966, '2026-09-13 22:25:04.191075', '75a141c1027d176ac6859bbf4dd278816e868859952039fce15e4932cf120f96', 'validated', '{"audio_key":"9e80604ec9914629780291ab8780328fb6280751eab1d999d9302aee48e6ad76","entity_key":"lx_a2_seoul_weekend_capstone_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"75a141c1027d176ac6859bbf4dd278816e868859952039fce15e4932cf120f96","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/9e80604ec9914629780291ab8780328fb6280751eab1d999d9302aee48e6ad76.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_a2_seoul_weekend_capstone_06 -> audio/generated/ko-KR/lexical/9e80604ec9914629780291ab8780328fb6280751eab1d999d9302aee48e6ad76.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('340daed2-12d7-5ef1-89ca-7f3a59a51dba', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_a2_seoul_weekend_capstone_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '603669bd762779d981692da6277555a7202a7dd987bdc5dda3c9ca733bbdba8b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0dac12d-4a55-518e-9be4-5000e7d80013', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('340daed2-12d7-5ef1-89ca-7f3a59a51dba', 1), '603669bd762779d981692da6277555a7202a7dd987bdc5dda3c9ca733bbdba8b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/9e80604ec9914629780291ab8780328fb6280751eab1d999d9302aee48e6ad76.mp3', 966, '2026-09-13 22:25:04.191075', '75a141c1027d176ac6859bbf4dd278816e868859952039fce15e4932cf120f96', 'validated', '{"audio_key":"9e80604ec9914629780291ab8780328fb6280751eab1d999d9302aee48e6ad76","entity_key":"wf_a2_seoul_weekend_capstone_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"75a141c1027d176ac6859bbf4dd278816e868859952039fce15e4932cf120f96","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/9e80604ec9914629780291ab8780328fb6280751eab1d999d9302aee48e6ad76.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_past_experiences_04 -> audio/generated/ko-KR/lexical/a2195519ec7c1bea85caeec866c9853f411d9a98cc029b6ace93c0bb5f3c95c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('54fbb6d9-0f24-5b53-b87e-ae711927ac5a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_past_experiences_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3261e0265a777c39ccbd3038913d7087176f2b30264d38e22df87d053fc95bcc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6bb6e820-8d92-5dd6-817f-0b3cd48a559a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('54fbb6d9-0f24-5b53-b87e-ae711927ac5a', 1), '3261e0265a777c39ccbd3038913d7087176f2b30264d38e22df87d053fc95bcc',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a2195519ec7c1bea85caeec866c9853f411d9a98cc029b6ace93c0bb5f3c95c0.mp3', 1071, '2026-09-13 22:25:05.015328', '99ad74e5e1e91cee5685212219ec197c2cab5835627c8a70c73d14da0fefe6ae', 'validated', '{"audio_key":"a2195519ec7c1bea85caeec866c9853f411d9a98cc029b6ace93c0bb5f3c95c0","entity_key":"lx_past_experiences_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"99ad74e5e1e91cee5685212219ec197c2cab5835627c8a70c73d14da0fefe6ae","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a2195519ec7c1bea85caeec866c9853f411d9a98cc029b6ace93c0bb5f3c95c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_past_experiences_04 -> audio/generated/ko-KR/lexical/a2195519ec7c1bea85caeec866c9853f411d9a98cc029b6ace93c0bb5f3c95c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('15855dec-c947-52c0-aabb-cbe72d6590b2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_past_experiences_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3261e0265a777c39ccbd3038913d7087176f2b30264d38e22df87d053fc95bcc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fea8af52-387d-562f-8765-df2e26b994f9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('15855dec-c947-52c0-aabb-cbe72d6590b2', 1), '3261e0265a777c39ccbd3038913d7087176f2b30264d38e22df87d053fc95bcc',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a2195519ec7c1bea85caeec866c9853f411d9a98cc029b6ace93c0bb5f3c95c0.mp3', 1071, '2026-09-13 22:25:05.015328', '99ad74e5e1e91cee5685212219ec197c2cab5835627c8a70c73d14da0fefe6ae', 'validated', '{"audio_key":"a2195519ec7c1bea85caeec866c9853f411d9a98cc029b6ace93c0bb5f3c95c0","entity_key":"wf_past_experiences_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"99ad74e5e1e91cee5685212219ec197c2cab5835627c8a70c73d14da0fefe6ae","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a2195519ec7c1bea85caeec866c9853f411d9a98cc029b6ace93c0bb5f3c95c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_and_hotel_02 -> audio/generated/ko-KR/lexical/a2a874d3ba908eb24402f30b1fca5407254d9e6170549906031acc3d894109e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a175e6f3-9ade-5229-9be0-2a6f77fb5c97', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_and_hotel_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '895c2bcd51e10cf1d30ac6b87a039fb8d83b9800577f15d46db065ef8f4fec21'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4b7329fd-657d-5409-9d11-d3998b786bff', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a175e6f3-9ade-5229-9be0-2a6f77fb5c97', 1), '895c2bcd51e10cf1d30ac6b87a039fb8d83b9800577f15d46db065ef8f4fec21',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a2a874d3ba908eb24402f30b1fca5407254d9e6170549906031acc3d894109e5.mp3', 1097, '2026-09-13 22:25:05.193084', '1ea9238930e26527c7c9b3da8c9676c7c3de5578e077857bb07b57bf882445c9', 'validated', '{"audio_key":"a2a874d3ba908eb24402f30b1fca5407254d9e6170549906031acc3d894109e5","entity_key":"lx_travel_and_hotel_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1ea9238930e26527c7c9b3da8c9676c7c3de5578e077857bb07b57bf882445c9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a2a874d3ba908eb24402f30b1fca5407254d9e6170549906031acc3d894109e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_and_hotel_02 -> audio/generated/ko-KR/lexical/a2a874d3ba908eb24402f30b1fca5407254d9e6170549906031acc3d894109e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('342e19eb-6daf-5342-b90c-3855a13c5464', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_and_hotel_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '895c2bcd51e10cf1d30ac6b87a039fb8d83b9800577f15d46db065ef8f4fec21'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd643ac7-1bb1-5118-ae59-e19ffd19732f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('342e19eb-6daf-5342-b90c-3855a13c5464', 1), '895c2bcd51e10cf1d30ac6b87a039fb8d83b9800577f15d46db065ef8f4fec21',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a2a874d3ba908eb24402f30b1fca5407254d9e6170549906031acc3d894109e5.mp3', 1097, '2026-09-13 22:25:05.193084', '1ea9238930e26527c7c9b3da8c9676c7c3de5578e077857bb07b57bf882445c9', 'validated', '{"audio_key":"a2a874d3ba908eb24402f30b1fca5407254d9e6170549906031acc3d894109e5","entity_key":"wf_travel_and_hotel_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1ea9238930e26527c7c9b3da8c9676c7c3de5578e077857bb07b57bf882445c9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a2a874d3ba908eb24402f30b1fca5407254d9e6170549906031acc3d894109e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_weather_and_change_02 -> audio/generated/ko-KR/lexical/a41690cc88f8e668fd405da631fbc2b1a2e4e939f04be24bb40dae4f258b2a92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f70f6843-d4fc-5d10-b782-afb5e6fd64ec', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_weather_and_change_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4840ad0903352f1e2e3d35c49633ff9d6041366fefe4d2089383e0a4695dae9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1e433876-19d8-521e-b60a-3524580a86a6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f70f6843-d4fc-5d10-b782-afb5e6fd64ec', 1), 'e4840ad0903352f1e2e3d35c49633ff9d6041366fefe4d2089383e0a4695dae9',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a41690cc88f8e668fd405da631fbc2b1a2e4e939f04be24bb40dae4f258b2a92.mp3', 1280, '2026-09-13 22:25:06.069279', 'f15c51d788e74a7cfd460522549ee6786cd7e81b11eb07f06a0843c3f3d5f05b', 'validated', '{"audio_key":"a41690cc88f8e668fd405da631fbc2b1a2e4e939f04be24bb40dae4f258b2a92","entity_key":"lx_weather_and_change_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f15c51d788e74a7cfd460522549ee6786cd7e81b11eb07f06a0843c3f3d5f05b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a41690cc88f8e668fd405da631fbc2b1a2e4e939f04be24bb40dae4f258b2a92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_weather_and_change_02 -> audio/generated/ko-KR/lexical/a41690cc88f8e668fd405da631fbc2b1a2e4e939f04be24bb40dae4f258b2a92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9679b9b7-04b1-5189-a577-d9cd518737f2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_weather_and_change_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e4840ad0903352f1e2e3d35c49633ff9d6041366fefe4d2089383e0a4695dae9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eab7166e-9c46-5a6b-9e47-87d8bc3d47e6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9679b9b7-04b1-5189-a577-d9cd518737f2', 1), 'e4840ad0903352f1e2e3d35c49633ff9d6041366fefe4d2089383e0a4695dae9',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a41690cc88f8e668fd405da631fbc2b1a2e4e939f04be24bb40dae4f258b2a92.mp3', 1280, '2026-09-13 22:25:06.069279', 'f15c51d788e74a7cfd460522549ee6786cd7e81b11eb07f06a0843c3f3d5f05b', 'validated', '{"audio_key":"a41690cc88f8e668fd405da631fbc2b1a2e4e939f04be24bb40dae4f258b2a92","entity_key":"wf_weather_and_change_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f15c51d788e74a7cfd460522549ee6786cd7e81b11eb07f06a0843c3f3d5f05b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a41690cc88f8e668fd405da631fbc2b1a2e4e939f04be24bb40dae4f258b2a92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_plans_and_intentions_05 -> audio/generated/ko-KR/lexical/a5a9cc23467a52156dcdbdbe7a341e9831204a010f9535e44a1c2d88fe4fdcbd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('868a7725-13e8-59f9-978b-c40101eaefb0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_plans_and_intentions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '36170cc58deed32d9dcedae21af7bee5359845f6446dfe89b11fb1a6b5b0cb66'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80d1035d-3b37-5b93-9a66-0ee357e27762', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('868a7725-13e8-59f9-978b-c40101eaefb0', 1), '36170cc58deed32d9dcedae21af7bee5359845f6446dfe89b11fb1a6b5b0cb66',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a5a9cc23467a52156dcdbdbe7a341e9831204a010f9535e44a1c2d88fe4fdcbd.mp3', 1201, '2026-09-13 22:25:06.197049', '200149e7c03078eb22baad10a9be16cf5cc2380e97b032d2cc90f876cb462778', 'validated', '{"audio_key":"a5a9cc23467a52156dcdbdbe7a341e9831204a010f9535e44a1c2d88fe4fdcbd","entity_key":"lx_plans_and_intentions_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"200149e7c03078eb22baad10a9be16cf5cc2380e97b032d2cc90f876cb462778","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a5a9cc23467a52156dcdbdbe7a341e9831204a010f9535e44a1c2d88fe4fdcbd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_plans_and_intentions_05 -> audio/generated/ko-KR/lexical/a5a9cc23467a52156dcdbdbe7a341e9831204a010f9535e44a1c2d88fe4fdcbd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('91feec31-78b2-50b3-bdb6-05b6bd92fc23', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_plans_and_intentions_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '36170cc58deed32d9dcedae21af7bee5359845f6446dfe89b11fb1a6b5b0cb66'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d34b9c5-5f00-55ba-b36a-bda34ee193bb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('91feec31-78b2-50b3-bdb6-05b6bd92fc23', 1), '36170cc58deed32d9dcedae21af7bee5359845f6446dfe89b11fb1a6b5b0cb66',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a5a9cc23467a52156dcdbdbe7a341e9831204a010f9535e44a1c2d88fe4fdcbd.mp3', 1201, '2026-09-13 22:25:06.197049', '200149e7c03078eb22baad10a9be16cf5cc2380e97b032d2cc90f876cb462778', 'validated', '{"audio_key":"a5a9cc23467a52156dcdbdbe7a341e9831204a010f9535e44a1c2d88fe4fdcbd","entity_key":"wf_plans_and_intentions_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"200149e7c03078eb22baad10a9be16cf5cc2380e97b032d2cc90f876cb462778","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a5a9cc23467a52156dcdbdbe7a341e9831204a010f9535e44a1c2d88fe4fdcbd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_plans_and_intentions_04 -> audio/generated/ko-KR/lexical/b75a3c8212a071894dd57a749f34b4b7e4f543b30634b7a0bdc686fc44425ec8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a86ba70d-6b45-58e8-a6c3-5ad9b909e4d4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_plans_and_intentions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a04df23492bdcfa7ff7ba9dc1ac0e5406db351840a01733f34d1100a02fa05d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26fcce40-2175-5997-9103-12a9a5c63267', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a86ba70d-6b45-58e8-a6c3-5ad9b909e4d4', 1), 'a04df23492bdcfa7ff7ba9dc1ac0e5406db351840a01733f34d1100a02fa05d2',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b75a3c8212a071894dd57a749f34b4b7e4f543b30634b7a0bdc686fc44425ec8.mp3', 914, '2026-09-13 22:25:07.064050', '2ff79598155437ceac0d3c43b67dad64862b19f460d24e51c66e21a80d4d95eb', 'validated', '{"audio_key":"b75a3c8212a071894dd57a749f34b4b7e4f543b30634b7a0bdc686fc44425ec8","entity_key":"lx_plans_and_intentions_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2ff79598155437ceac0d3c43b67dad64862b19f460d24e51c66e21a80d4d95eb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b75a3c8212a071894dd57a749f34b4b7e4f543b30634b7a0bdc686fc44425ec8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_plans_and_intentions_04 -> audio/generated/ko-KR/lexical/b75a3c8212a071894dd57a749f34b4b7e4f543b30634b7a0bdc686fc44425ec8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('658a6ec5-7fdc-560e-acb9-d6cbbc33b214', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_plans_and_intentions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a04df23492bdcfa7ff7ba9dc1ac0e5406db351840a01733f34d1100a02fa05d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('06ea1d6e-01e1-5e59-bbce-9515be2b7f90', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('658a6ec5-7fdc-560e-acb9-d6cbbc33b214', 1), 'a04df23492bdcfa7ff7ba9dc1ac0e5406db351840a01733f34d1100a02fa05d2',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b75a3c8212a071894dd57a749f34b4b7e4f543b30634b7a0bdc686fc44425ec8.mp3', 914, '2026-09-13 22:25:07.064050', '2ff79598155437ceac0d3c43b67dad64862b19f460d24e51c66e21a80d4d95eb', 'validated', '{"audio_key":"b75a3c8212a071894dd57a749f34b4b7e4f543b30634b7a0bdc686fc44425ec8","entity_key":"wf_plans_and_intentions_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2ff79598155437ceac0d3c43b67dad64862b19f460d24e51c66e21a80d4d95eb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b75a3c8212a071894dd57a749f34b4b7e4f543b30634b7a0bdc686fc44425ec8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_travel_and_hotel_01 -> audio/generated/ko-KR/lexical/b75a3c8212a071894dd57a749f34b4b7e4f543b30634b7a0bdc686fc44425ec8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a86ba70d-6b45-58e8-a6c3-5ad9b909e4d4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_travel_and_hotel_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a04df23492bdcfa7ff7ba9dc1ac0e5406db351840a01733f34d1100a02fa05d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26fcce40-2175-5997-9103-12a9a5c63267', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a86ba70d-6b45-58e8-a6c3-5ad9b909e4d4', 1), 'a04df23492bdcfa7ff7ba9dc1ac0e5406db351840a01733f34d1100a02fa05d2',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b75a3c8212a071894dd57a749f34b4b7e4f543b30634b7a0bdc686fc44425ec8.mp3', 914, '2026-09-13 22:25:07.064050', '2ff79598155437ceac0d3c43b67dad64862b19f460d24e51c66e21a80d4d95eb', 'validated', '{"audio_key":"b75a3c8212a071894dd57a749f34b4b7e4f543b30634b7a0bdc686fc44425ec8","entity_key":"lx_travel_and_hotel_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2ff79598155437ceac0d3c43b67dad64862b19f460d24e51c66e21a80d4d95eb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b75a3c8212a071894dd57a749f34b4b7e4f543b30634b7a0bdc686fc44425ec8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_travel_and_hotel_01 -> audio/generated/ko-KR/lexical/b75a3c8212a071894dd57a749f34b4b7e4f543b30634b7a0bdc686fc44425ec8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1616753e-db63-59ab-a109-6baa759a5de7', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_travel_and_hotel_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a04df23492bdcfa7ff7ba9dc1ac0e5406db351840a01733f34d1100a02fa05d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c5afa91-9cd6-5fb0-b6cc-3aa617f88beb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1616753e-db63-59ab-a109-6baa759a5de7', 1), 'a04df23492bdcfa7ff7ba9dc1ac0e5406db351840a01733f34d1100a02fa05d2',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b75a3c8212a071894dd57a749f34b4b7e4f543b30634b7a0bdc686fc44425ec8.mp3', 914, '2026-09-13 22:25:07.064050', '2ff79598155437ceac0d3c43b67dad64862b19f460d24e51c66e21a80d4d95eb', 'validated', '{"audio_key":"b75a3c8212a071894dd57a749f34b4b7e4f543b30634b7a0bdc686fc44425ec8","entity_key":"wf_travel_and_hotel_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2ff79598155437ceac0d3c43b67dad64862b19f460d24e51c66e21a80d4d95eb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b75a3c8212a071894dd57a749f34b4b7e4f543b30634b7a0bdc686fc44425ec8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_weather_and_change_04 -> audio/generated/ko-KR/lexical/b846e3c580e6fe500ca6c736236211694a4c99b9e8f73f9bc6ec83efe39af72a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4dba5a7c-66bf-551f-ae43-c5ad2e9ee524', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_weather_and_change_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35e71a5db7e3493cf6ffd40656c82e8bda1004e33cd26e8c9741be8816222ac7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba70f969-e217-5a60-b3ac-b372ab08a455', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4dba5a7c-66bf-551f-ae43-c5ad2e9ee524', 1), '35e71a5db7e3493cf6ffd40656c82e8bda1004e33cd26e8c9741be8816222ac7',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b846e3c580e6fe500ca6c736236211694a4c99b9e8f73f9bc6ec83efe39af72a.mp3', 1071, '2026-09-13 22:25:07.193864', 'a76f5a99e9dc840dff41101dbfadc26e7d95d214966dd5a5dbd731ba294fb32a', 'validated', '{"audio_key":"b846e3c580e6fe500ca6c736236211694a4c99b9e8f73f9bc6ec83efe39af72a","entity_key":"lx_weather_and_change_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a76f5a99e9dc840dff41101dbfadc26e7d95d214966dd5a5dbd731ba294fb32a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b846e3c580e6fe500ca6c736236211694a4c99b9e8f73f9bc6ec83efe39af72a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_weather_and_change_04 -> audio/generated/ko-KR/lexical/b846e3c580e6fe500ca6c736236211694a4c99b9e8f73f9bc6ec83efe39af72a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7b5bc3df-a029-5431-9664-ac924a538c00', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_weather_and_change_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '35e71a5db7e3493cf6ffd40656c82e8bda1004e33cd26e8c9741be8816222ac7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26e904f4-a832-5819-8cc0-b3099b229ff6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7b5bc3df-a029-5431-9664-ac924a538c00', 1), '35e71a5db7e3493cf6ffd40656c82e8bda1004e33cd26e8c9741be8816222ac7',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b846e3c580e6fe500ca6c736236211694a4c99b9e8f73f9bc6ec83efe39af72a.mp3', 1071, '2026-09-13 22:25:07.193864', 'a76f5a99e9dc840dff41101dbfadc26e7d95d214966dd5a5dbd731ba294fb32a', 'validated', '{"audio_key":"b846e3c580e6fe500ca6c736236211694a4c99b9e8f73f9bc6ec83efe39af72a","entity_key":"wf_weather_and_change_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a76f5a99e9dc840dff41101dbfadc26e7d95d214966dd5a5dbd731ba294fb32a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b846e3c580e6fe500ca6c736236211694a4c99b9e8f73f9bc6ec83efe39af72a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_past_experiences_03 -> audio/generated/ko-KR/lexical/bb5b67a52002f837fd069785a6fdb4def6e829f1193333353e53ee0d2d9851df.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4a46bb63-9900-512e-b1e7-fdf9e64975bb', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_past_experiences_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42dfae8ece13d4f63697711ef49bbe314552667559f2458d99322c140ee46f25'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13a29a7f-1d01-501e-8bd4-24fc49fd3667', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4a46bb63-9900-512e-b1e7-fdf9e64975bb', 1), '42dfae8ece13d4f63697711ef49bbe314552667559f2458d99322c140ee46f25',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bb5b67a52002f837fd069785a6fdb4def6e829f1193333353e53ee0d2d9851df.mp3', 1097, '2026-09-13 22:25:08.062051', '6c465cc8b00e6fd911bfed4e30979a4da5cda259704cc8f58fe74bfaa9afe3a6', 'validated', '{"audio_key":"bb5b67a52002f837fd069785a6fdb4def6e829f1193333353e53ee0d2d9851df","entity_key":"lx_past_experiences_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6c465cc8b00e6fd911bfed4e30979a4da5cda259704cc8f58fe74bfaa9afe3a6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bb5b67a52002f837fd069785a6fdb4def6e829f1193333353e53ee0d2d9851df.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_past_experiences_03 -> audio/generated/ko-KR/lexical/bb5b67a52002f837fd069785a6fdb4def6e829f1193333353e53ee0d2d9851df.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('03edd9ed-3893-54d0-9f4c-217d39fc891b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_past_experiences_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '42dfae8ece13d4f63697711ef49bbe314552667559f2458d99322c140ee46f25'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3743f689-917b-5301-8376-fddd2ac8c265', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('03edd9ed-3893-54d0-9f4c-217d39fc891b', 1), '42dfae8ece13d4f63697711ef49bbe314552667559f2458d99322c140ee46f25',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bb5b67a52002f837fd069785a6fdb4def6e829f1193333353e53ee0d2d9851df.mp3', 1097, '2026-09-13 22:25:08.062051', '6c465cc8b00e6fd911bfed4e30979a4da5cda259704cc8f58fe74bfaa9afe3a6', 'validated', '{"audio_key":"bb5b67a52002f837fd069785a6fdb4def6e829f1193333353e53ee0d2d9851df","entity_key":"wf_past_experiences_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6c465cc8b00e6fd911bfed4e30979a4da5cda259704cc8f58fe74bfaa9afe3a6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bb5b67a52002f837fd069785a6fdb4def6e829f1193333353e53ee0d2d9851df.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_past_experiences_05 -> audio/generated/ko-KR/lexical/c0e8e3936610fdf09c572cc4e271ff37496ea5aabcaf464b732be7a6f4ccb4d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7f6f35c1-c928-5e22-b3df-9f79d0ff39a8', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_past_experiences_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '91390eadfad43d09c4585d2ee3b2e8d5e9682755241851afb6cc5a4f54c56ae8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1801f3c1-a09e-5784-994e-b0418fa5face', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7f6f35c1-c928-5e22-b3df-9f79d0ff39a8', 1), '91390eadfad43d09c4585d2ee3b2e8d5e9682755241851afb6cc5a4f54c56ae8',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/c0e8e3936610fdf09c572cc4e271ff37496ea5aabcaf464b732be7a6f4ccb4d6.mp3', 914, '2026-09-13 22:25:08.179071', '241f5b288f03d427b9da7ef22937c3966833772e59d1dc7b967d44d25186a104', 'validated', '{"audio_key":"c0e8e3936610fdf09c572cc4e271ff37496ea5aabcaf464b732be7a6f4ccb4d6","entity_key":"lx_past_experiences_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"241f5b288f03d427b9da7ef22937c3966833772e59d1dc7b967d44d25186a104","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/c0e8e3936610fdf09c572cc4e271ff37496ea5aabcaf464b732be7a6f4ccb4d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_past_experiences_05 -> audio/generated/ko-KR/lexical/c0e8e3936610fdf09c572cc4e271ff37496ea5aabcaf464b732be7a6f4ccb4d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('521daa1d-129a-5105-883e-172d899dc3d1', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_past_experiences_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '91390eadfad43d09c4585d2ee3b2e8d5e9682755241851afb6cc5a4f54c56ae8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('afee1dfb-56c1-5fea-9b02-3d37aa5d6c44', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('521daa1d-129a-5105-883e-172d899dc3d1', 1), '91390eadfad43d09c4585d2ee3b2e8d5e9682755241851afb6cc5a4f54c56ae8',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/c0e8e3936610fdf09c572cc4e271ff37496ea5aabcaf464b732be7a6f4ccb4d6.mp3', 914, '2026-09-13 22:25:08.179071', '241f5b288f03d427b9da7ef22937c3966833772e59d1dc7b967d44d25186a104', 'validated', '{"audio_key":"c0e8e3936610fdf09c572cc4e271ff37496ea5aabcaf464b732be7a6f4ccb4d6","entity_key":"wf_past_experiences_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"241f5b288f03d427b9da7ef22937c3966833772e59d1dc7b967d44d25186a104","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/c0e8e3936610fdf09c572cc4e271ff37496ea5aabcaf464b732be7a6f4ccb4d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_plans_and_intentions_03 -> audio/generated/ko-KR/lexical/c421c50333167c3ea414c4679d39d2b2fcde55d780e24ec5c4fc23ec2f676ab5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('46684c66-9176-54f3-9ddd-061e2498b257', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_plans_and_intentions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1bced847edb7e2eec5ea66bfc96583a55781626c09026259b352424d58a93ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4e6703a-5fd7-5eae-a5cf-cd40b93e327c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('46684c66-9176-54f3-9ddd-061e2498b257', 1), 'b1bced847edb7e2eec5ea66bfc96583a55781626c09026259b352424d58a93ff',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/c421c50333167c3ea414c4679d39d2b2fcde55d780e24ec5c4fc23ec2f676ab5.mp3', 1018, '2026-09-13 22:05:16.036011', '16afe3a05c34283a178f785f588061a3596bdcf1f5c9cd0a317a1a588dfca57b', 'validated', '{"audio_key":"c421c50333167c3ea414c4679d39d2b2fcde55d780e24ec5c4fc23ec2f676ab5","entity_key":"lx_plans_and_intentions_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"16afe3a05c34283a178f785f588061a3596bdcf1f5c9cd0a317a1a588dfca57b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/c421c50333167c3ea414c4679d39d2b2fcde55d780e24ec5c4fc23ec2f676ab5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_plans_and_intentions_03 -> audio/generated/ko-KR/lexical/c421c50333167c3ea414c4679d39d2b2fcde55d780e24ec5c4fc23ec2f676ab5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5e68ec18-425d-51f8-b1a0-fa1638d7a83f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_plans_and_intentions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1bced847edb7e2eec5ea66bfc96583a55781626c09026259b352424d58a93ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0489477b-cf4c-5e11-920f-d4e7d534f9f0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5e68ec18-425d-51f8-b1a0-fa1638d7a83f', 1), 'b1bced847edb7e2eec5ea66bfc96583a55781626c09026259b352424d58a93ff',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/c421c50333167c3ea414c4679d39d2b2fcde55d780e24ec5c4fc23ec2f676ab5.mp3', 1018, '2026-09-13 22:05:16.036011', '16afe3a05c34283a178f785f588061a3596bdcf1f5c9cd0a317a1a588dfca57b', 'validated', '{"audio_key":"c421c50333167c3ea414c4679d39d2b2fcde55d780e24ec5c4fc23ec2f676ab5","entity_key":"wf_plans_and_intentions_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"16afe3a05c34283a178f785f588061a3596bdcf1f5c9cd0a317a1a588dfca57b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/c421c50333167c3ea414c4679d39d2b2fcde55d780e24ec5c4fc23ec2f676ab5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_past_experiences_02 -> audio/generated/ko-KR/lexical/c78955a551652b966591ba2c079fe6747eb6ebda5bd76cef5a976e0fe2a04397.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6f287fac-3f56-5894-a352-915ef538bf86', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_past_experiences_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '340b9a0fcd5fc1d6bfa3757709faa7d07e149deb3784f11e9b5bd70e7adb0065'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45e3d657-a67f-5b07-85ab-4d9856ca259f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6f287fac-3f56-5894-a352-915ef538bf86', 1), '340b9a0fcd5fc1d6bfa3757709faa7d07e149deb3784f11e9b5bd70e7adb0065',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/c78955a551652b966591ba2c079fe6747eb6ebda5bd76cef5a976e0fe2a04397.mp3', 1097, '2026-09-13 22:25:09.074179', 'dda2e7dd73865cd1fdb67178083e21727328cfbbb526fd6a5c1eb96daabee9e5', 'validated', '{"audio_key":"c78955a551652b966591ba2c079fe6747eb6ebda5bd76cef5a976e0fe2a04397","entity_key":"lx_past_experiences_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"dda2e7dd73865cd1fdb67178083e21727328cfbbb526fd6a5c1eb96daabee9e5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/c78955a551652b966591ba2c079fe6747eb6ebda5bd76cef5a976e0fe2a04397.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_past_experiences_02 -> audio/generated/ko-KR/lexical/c78955a551652b966591ba2c079fe6747eb6ebda5bd76cef5a976e0fe2a04397.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('36bdfe96-67af-54b0-b59c-ca7daa51fb15', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_past_experiences_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '340b9a0fcd5fc1d6bfa3757709faa7d07e149deb3784f11e9b5bd70e7adb0065'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aff6491c-7f4c-5bb6-a416-fd13b9717a8a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('36bdfe96-67af-54b0-b59c-ca7daa51fb15', 1), '340b9a0fcd5fc1d6bfa3757709faa7d07e149deb3784f11e9b5bd70e7adb0065',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/c78955a551652b966591ba2c079fe6747eb6ebda5bd76cef5a976e0fe2a04397.mp3', 1097, '2026-09-13 22:25:09.074179', 'dda2e7dd73865cd1fdb67178083e21727328cfbbb526fd6a5c1eb96daabee9e5', 'validated', '{"audio_key":"c78955a551652b966591ba2c079fe6747eb6ebda5bd76cef5a976e0fe2a04397","entity_key":"wf_past_experiences_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"dda2e7dd73865cd1fdb67178083e21727328cfbbb526fd6a5c1eb96daabee9e5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/c78955a551652b966591ba2c079fe6747eb6ebda5bd76cef5a976e0fe2a04397.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_ability_and_permission_04 -> audio/generated/ko-KR/lexical/cbb38658523c9687cc7d132c1d3f53cdc021138500f4d20049678b0e4da1d136.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bed5c582-503e-5263-95e9-b0e24f5e8607', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_ability_and_permission_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b5903acacdca3b885c9433396cf0195bff6ed86af04b5f25bd8e668fe5be26e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b5e794f6-f5c6-5855-bc95-899ea90c0a22', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bed5c582-503e-5263-95e9-b0e24f5e8607', 1), '5b5903acacdca3b885c9433396cf0195bff6ed86af04b5f25bd8e668fe5be26e',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/cbb38658523c9687cc7d132c1d3f53cdc021138500f4d20049678b0e4da1d136.mp3', 1149, '2026-09-13 22:25:09.179988', '33fddc5b3ebddff16cede7d0fd59f68a39ce9a6e6f31cc36933f976d42938feb', 'validated', '{"audio_key":"cbb38658523c9687cc7d132c1d3f53cdc021138500f4d20049678b0e4da1d136","entity_key":"lx_ability_and_permission_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"33fddc5b3ebddff16cede7d0fd59f68a39ce9a6e6f31cc36933f976d42938feb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/cbb38658523c9687cc7d132c1d3f53cdc021138500f4d20049678b0e4da1d136.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_ability_and_permission_04 -> audio/generated/ko-KR/lexical/cbb38658523c9687cc7d132c1d3f53cdc021138500f4d20049678b0e4da1d136.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1c9482b9-e2ca-5cbf-b3a8-8270a9916dcf', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_ability_and_permission_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5b5903acacdca3b885c9433396cf0195bff6ed86af04b5f25bd8e668fe5be26e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('98879276-9934-5d14-98d5-027ebb32cc2b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1c9482b9-e2ca-5cbf-b3a8-8270a9916dcf', 1), '5b5903acacdca3b885c9433396cf0195bff6ed86af04b5f25bd8e668fe5be26e',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/cbb38658523c9687cc7d132c1d3f53cdc021138500f4d20049678b0e4da1d136.mp3', 1149, '2026-09-13 22:25:09.179988', '33fddc5b3ebddff16cede7d0fd59f68a39ce9a6e6f31cc36933f976d42938feb', 'validated', '{"audio_key":"cbb38658523c9687cc7d132c1d3f53cdc021138500f4d20049678b0e4da1d136","entity_key":"wf_ability_and_permission_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"33fddc5b3ebddff16cede7d0fd59f68a39ce9a6e6f31cc36933f976d42938feb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/cbb38658523c9687cc7d132c1d3f53cdc021138500f4d20049678b0e4da1d136.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_comparisons_and_choice_06 -> audio/generated/ko-KR/lexical/ce2fe38f1a432a04fabd92c8f98f184daabfa2529cd8b762edd0432593b280e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('28a66a5f-4b56-5d39-885b-b75d6bfdfb69', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_comparisons_and_choice_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d1a750c9351d1b803fc94973fe32aad800263e2cc68f1d13e8eb3539fc6a4ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('00089b71-a3d3-5c59-bac6-f6b8aaa9d213', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('28a66a5f-4b56-5d39-885b-b75d6bfdfb69', 1), '8d1a750c9351d1b803fc94973fe32aad800263e2cc68f1d13e8eb3539fc6a4ab',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ce2fe38f1a432a04fabd92c8f98f184daabfa2529cd8b762edd0432593b280e8.mp3', 1018, '2026-09-13 22:25:10.115767', 'a33b9b0938cb9da7b5b8ae1da7c6c94f02976a387949bcd6da70ecd78bac0c69', 'validated', '{"audio_key":"ce2fe38f1a432a04fabd92c8f98f184daabfa2529cd8b762edd0432593b280e8","entity_key":"lx_comparisons_and_choice_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a33b9b0938cb9da7b5b8ae1da7c6c94f02976a387949bcd6da70ecd78bac0c69","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ce2fe38f1a432a04fabd92c8f98f184daabfa2529cd8b762edd0432593b280e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_comparisons_and_choice_06 -> audio/generated/ko-KR/lexical/ce2fe38f1a432a04fabd92c8f98f184daabfa2529cd8b762edd0432593b280e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e1802b98-85cc-559c-900b-ce15be3f4679', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_comparisons_and_choice_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8d1a750c9351d1b803fc94973fe32aad800263e2cc68f1d13e8eb3539fc6a4ab'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a713a53c-2961-589a-8b79-1ccaa2269be6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e1802b98-85cc-559c-900b-ce15be3f4679', 1), '8d1a750c9351d1b803fc94973fe32aad800263e2cc68f1d13e8eb3539fc6a4ab',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ce2fe38f1a432a04fabd92c8f98f184daabfa2529cd8b762edd0432593b280e8.mp3', 1018, '2026-09-13 22:25:10.115767', 'a33b9b0938cb9da7b5b8ae1da7c6c94f02976a387949bcd6da70ecd78bac0c69', 'validated', '{"audio_key":"ce2fe38f1a432a04fabd92c8f98f184daabfa2529cd8b762edd0432593b280e8","entity_key":"wf_comparisons_and_choice_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a33b9b0938cb9da7b5b8ae1da7c6c94f02976a387949bcd6da70ecd78bac0c69","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ce2fe38f1a432a04fabd92c8f98f184daabfa2529cd8b762edd0432593b280e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_softening_01 -> audio/generated/ko-KR/lexical/d25d93be9246d920876a4b17c071d34a1642e0a49c422b921613ae77ef900f18.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a8b0748e-9e3c-51dc-a09c-5ebde4ffc66c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_softening_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6ac12a8f8e4e4c22657b2970d159ade8e0948d98f360febd53d416f3a029b913'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34a3b7e3-08a5-5fb5-afce-1d72425b6407', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a8b0748e-9e3c-51dc-a09c-5ebde4ffc66c', 1), '6ac12a8f8e4e4c22657b2970d159ade8e0948d98f360febd53d416f3a029b913',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/d25d93be9246d920876a4b17c071d34a1642e0a49c422b921613ae77ef900f18.mp3', 914, '2026-09-13 22:25:10.164938', '753b1c24ba7417e9e039843687a8800ad9f39d5aa0557c09b2e682f079bea514', 'validated', '{"audio_key":"d25d93be9246d920876a4b17c071d34a1642e0a49c422b921613ae77ef900f18","entity_key":"lx_opinions_and_softening_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"753b1c24ba7417e9e039843687a8800ad9f39d5aa0557c09b2e682f079bea514","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/d25d93be9246d920876a4b17c071d34a1642e0a49c422b921613ae77ef900f18.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_softening_01 -> audio/generated/ko-KR/lexical/d25d93be9246d920876a4b17c071d34a1642e0a49c422b921613ae77ef900f18.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('10732347-eee7-56ab-84a7-4db7c3007522', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_softening_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6ac12a8f8e4e4c22657b2970d159ade8e0948d98f360febd53d416f3a029b913'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36b8c043-9048-5bdf-90a2-16ebac950f01', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('10732347-eee7-56ab-84a7-4db7c3007522', 1), '6ac12a8f8e4e4c22657b2970d159ade8e0948d98f360febd53d416f3a029b913',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/d25d93be9246d920876a4b17c071d34a1642e0a49c422b921613ae77ef900f18.mp3', 914, '2026-09-13 22:25:10.164938', '753b1c24ba7417e9e039843687a8800ad9f39d5aa0557c09b2e682f079bea514', 'validated', '{"audio_key":"d25d93be9246d920876a4b17c071d34a1642e0a49c422b921613ae77ef900f18","entity_key":"wf_opinions_and_softening_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"753b1c24ba7417e9e039843687a8800ad9f39d5aa0557c09b2e682f079bea514","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/d25d93be9246d920876a4b17c071d34a1642e0a49c422b921613ae77ef900f18.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reasons_and_results_03 -> audio/generated/ko-KR/lexical/d9cc73732c88bfd720b10f1e88fb4aaf6051cf35b984a9858f1056440c42036d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('bc80c3fb-2201-5766-b7b0-f605f6f2d493', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reasons_and_results_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69e26389ae2a6e2f50d86a8963f2cdc1c1cd475dd04d3339803223c33696342a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('243be0c0-8e07-50a9-b0f0-0022f6000824', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('bc80c3fb-2201-5766-b7b0-f605f6f2d493', 1), '69e26389ae2a6e2f50d86a8963f2cdc1c1cd475dd04d3339803223c33696342a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/d9cc73732c88bfd720b10f1e88fb4aaf6051cf35b984a9858f1056440c42036d.mp3', 1097, '2026-09-13 22:25:11.110375', '9d6a0057672efc539cf4547bb19df870047911a779bf284cfd3f049076f1492c', 'validated', '{"audio_key":"d9cc73732c88bfd720b10f1e88fb4aaf6051cf35b984a9858f1056440c42036d","entity_key":"lx_reasons_and_results_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9d6a0057672efc539cf4547bb19df870047911a779bf284cfd3f049076f1492c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/d9cc73732c88bfd720b10f1e88fb4aaf6051cf35b984a9858f1056440c42036d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reasons_and_results_03 -> audio/generated/ko-KR/lexical/d9cc73732c88bfd720b10f1e88fb4aaf6051cf35b984a9858f1056440c42036d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b9f6f5af-53ff-5d49-b930-03c0f215e716', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reasons_and_results_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69e26389ae2a6e2f50d86a8963f2cdc1c1cd475dd04d3339803223c33696342a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09c3f56e-b498-54af-b5c7-ad7febd0b14b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b9f6f5af-53ff-5d49-b930-03c0f215e716', 1), '69e26389ae2a6e2f50d86a8963f2cdc1c1cd475dd04d3339803223c33696342a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/d9cc73732c88bfd720b10f1e88fb4aaf6051cf35b984a9858f1056440c42036d.mp3', 1097, '2026-09-13 22:25:11.110375', '9d6a0057672efc539cf4547bb19df870047911a779bf284cfd3f049076f1492c', 'validated', '{"audio_key":"d9cc73732c88bfd720b10f1e88fb4aaf6051cf35b984a9858f1056440c42036d","entity_key":"wf_reasons_and_results_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9d6a0057672efc539cf4547bb19df870047911a779bf284cfd3f049076f1492c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/d9cc73732c88bfd720b10f1e88fb4aaf6051cf35b984a9858f1056440c42036d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_ability_and_permission_05 -> audio/generated/ko-KR/lexical/df24469ca7fd6b82828baf62fc3ea0541ba666bcd70ef7bca837beb274dd37b4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8ff714c9-81a5-53ba-95e6-504fc6dc6833', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_ability_and_permission_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a3b0d8b05ae781d7f0fe55a6d94cd6a8e9bd07ce0d3b2925c9b0a00cf844478'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a898e069-cdca-52b4-80ad-e30002cf4955', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8ff714c9-81a5-53ba-95e6-504fc6dc6833', 1), '5a3b0d8b05ae781d7f0fe55a6d94cd6a8e9bd07ce0d3b2925c9b0a00cf844478',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/df24469ca7fd6b82828baf62fc3ea0541ba666bcd70ef7bca837beb274dd37b4.mp3', 1149, '2026-09-13 22:25:11.219752', 'ee42cef94ab78f370cfcfa8396981c261d376d5c75e047c5ecdf2acd428ed64f', 'validated', '{"audio_key":"df24469ca7fd6b82828baf62fc3ea0541ba666bcd70ef7bca837beb274dd37b4","entity_key":"lx_ability_and_permission_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ee42cef94ab78f370cfcfa8396981c261d376d5c75e047c5ecdf2acd428ed64f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/df24469ca7fd6b82828baf62fc3ea0541ba666bcd70ef7bca837beb274dd37b4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_ability_and_permission_05 -> audio/generated/ko-KR/lexical/df24469ca7fd6b82828baf62fc3ea0541ba666bcd70ef7bca837beb274dd37b4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b44fe16d-34dc-570e-9df5-e2fdb4179764', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_ability_and_permission_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a3b0d8b05ae781d7f0fe55a6d94cd6a8e9bd07ce0d3b2925c9b0a00cf844478'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('596c71fc-3702-5cee-b0d8-460112603988', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b44fe16d-34dc-570e-9df5-e2fdb4179764', 1), '5a3b0d8b05ae781d7f0fe55a6d94cd6a8e9bd07ce0d3b2925c9b0a00cf844478',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/df24469ca7fd6b82828baf62fc3ea0541ba666bcd70ef7bca837beb274dd37b4.mp3', 1149, '2026-09-13 22:25:11.219752', 'ee42cef94ab78f370cfcfa8396981c261d376d5c75e047c5ecdf2acd428ed64f', 'validated', '{"audio_key":"df24469ca7fd6b82828baf62fc3ea0541ba666bcd70ef7bca837beb274dd37b4","entity_key":"wf_ability_and_permission_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ee42cef94ab78f370cfcfa8396981c261d376d5c75e047c5ecdf2acd428ed64f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/df24469ca7fd6b82828baf62fc3ea0541ba666bcd70ef7bca837beb274dd37b4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reasons_and_results_04 -> audio/generated/ko-KR/lexical/e0ae3c960a0ac6244c92a82dfa0bb26ab6232042b2e6bb1d4bb21ffb1713bb9f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('607012b7-b4d4-5abd-a17c-a16f354d88d0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reasons_and_results_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8678e3dcf30b4fad0aa5408802879dbf19ba32c77db42690e642595228cfea2b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c31bc1a1-0f36-57c5-878b-c0f64d3e16e2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('607012b7-b4d4-5abd-a17c-a16f354d88d0', 1), '8678e3dcf30b4fad0aa5408802879dbf19ba32c77db42690e642595228cfea2b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e0ae3c960a0ac6244c92a82dfa0bb26ab6232042b2e6bb1d4bb21ffb1713bb9f.mp3', 1097, '2026-09-13 22:25:12.111212', 'da6f85e0aaf47345c2358d0153ed07be031c4117cfd6fa02484eb758201347c5', 'validated', '{"audio_key":"e0ae3c960a0ac6244c92a82dfa0bb26ab6232042b2e6bb1d4bb21ffb1713bb9f","entity_key":"lx_reasons_and_results_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"da6f85e0aaf47345c2358d0153ed07be031c4117cfd6fa02484eb758201347c5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e0ae3c960a0ac6244c92a82dfa0bb26ab6232042b2e6bb1d4bb21ffb1713bb9f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reasons_and_results_04 -> audio/generated/ko-KR/lexical/e0ae3c960a0ac6244c92a82dfa0bb26ab6232042b2e6bb1d4bb21ffb1713bb9f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6c5480f4-e67c-5ae9-be34-770dcd246081', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reasons_and_results_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8678e3dcf30b4fad0aa5408802879dbf19ba32c77db42690e642595228cfea2b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1d7cb2f-9005-515c-b817-2e1941b0b4c2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6c5480f4-e67c-5ae9-be34-770dcd246081', 1), '8678e3dcf30b4fad0aa5408802879dbf19ba32c77db42690e642595228cfea2b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e0ae3c960a0ac6244c92a82dfa0bb26ab6232042b2e6bb1d4bb21ffb1713bb9f.mp3', 1097, '2026-09-13 22:25:12.111212', 'da6f85e0aaf47345c2358d0153ed07be031c4117cfd6fa02484eb758201347c5', 'validated', '{"audio_key":"e0ae3c960a0ac6244c92a82dfa0bb26ab6232042b2e6bb1d4bb21ffb1713bb9f","entity_key":"wf_reasons_and_results_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"da6f85e0aaf47345c2358d0153ed07be031c4117cfd6fa02484eb758201347c5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e0ae3c960a0ac6244c92a82dfa0bb26ab6232042b2e6bb1d4bb21ffb1713bb9f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_opinions_and_softening_03 -> audio/generated/ko-KR/lexical/e12b8a62b6b2318e9da2aa1c8a6ff628ce5d45dfbd5c459e3f98ec10212ff4ec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f56d5967-fb6b-56a6-b78d-ef1834840395', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_opinions_and_softening_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55d0f08434308816bcaf96a7fa1a2a63f04390730441b00f8c88779e2ac9fe33'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a39a23fe-e639-5a3f-8782-f16808b758b5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f56d5967-fb6b-56a6-b78d-ef1834840395', 1), '55d0f08434308816bcaf96a7fa1a2a63f04390730441b00f8c88779e2ac9fe33',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e12b8a62b6b2318e9da2aa1c8a6ff628ce5d45dfbd5c459e3f98ec10212ff4ec.mp3', 1018, '2026-09-13 22:25:12.236524', '67d978bfe8a01da94987a324e168a843b1344bfe50300a0d206b35359f27297f', 'validated', '{"audio_key":"e12b8a62b6b2318e9da2aa1c8a6ff628ce5d45dfbd5c459e3f98ec10212ff4ec","entity_key":"lx_opinions_and_softening_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"67d978bfe8a01da94987a324e168a843b1344bfe50300a0d206b35359f27297f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e12b8a62b6b2318e9da2aa1c8a6ff628ce5d45dfbd5c459e3f98ec10212ff4ec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_opinions_and_softening_03 -> audio/generated/ko-KR/lexical/e12b8a62b6b2318e9da2aa1c8a6ff628ce5d45dfbd5c459e3f98ec10212ff4ec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e89001f0-cb88-5728-99d4-438544c5df08', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_opinions_and_softening_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '55d0f08434308816bcaf96a7fa1a2a63f04390730441b00f8c88779e2ac9fe33'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb48a746-f35a-5231-b6cd-4c93a1f56eea', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e89001f0-cb88-5728-99d4-438544c5df08', 1), '55d0f08434308816bcaf96a7fa1a2a63f04390730441b00f8c88779e2ac9fe33',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e12b8a62b6b2318e9da2aa1c8a6ff628ce5d45dfbd5c459e3f98ec10212ff4ec.mp3', 1018, '2026-09-13 22:25:12.236524', '67d978bfe8a01da94987a324e168a843b1344bfe50300a0d206b35359f27297f', 'validated', '{"audio_key":"e12b8a62b6b2318e9da2aa1c8a6ff628ce5d45dfbd5c459e3f98ec10212ff4ec","entity_key":"wf_opinions_and_softening_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"67d978bfe8a01da94987a324e168a843b1344bfe50300a0d206b35359f27297f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e12b8a62b6b2318e9da2aa1c8a6ff628ce5d45dfbd5c459e3f98ec10212ff4ec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_health_and_advice_06 -> audio/generated/ko-KR/lexical/eaf0f128191c5edea0910cf723f46b85ab79f1a82cc698b5d1024b58a34dbff4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1754c955-17ef-5074-bdda-b21553b0dfe9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_health_and_advice_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f4c2d79c47ca512edb75c4d51ffb30e338f4220a6ca9ab12f925ed22ef2308c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87ce1a4e-383c-5f1c-911b-718991541b3f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1754c955-17ef-5074-bdda-b21553b0dfe9', 1), '4f4c2d79c47ca512edb75c4d51ffb30e338f4220a6ca9ab12f925ed22ef2308c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/eaf0f128191c5edea0910cf723f46b85ab79f1a82cc698b5d1024b58a34dbff4.mp3', 1149, '2026-09-13 22:25:13.112285', 'f857c156577597b3eadc64a592bcedddb8d01ff4a34a8ac628de3e4f5aec7270', 'validated', '{"audio_key":"eaf0f128191c5edea0910cf723f46b85ab79f1a82cc698b5d1024b58a34dbff4","entity_key":"lx_health_and_advice_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f857c156577597b3eadc64a592bcedddb8d01ff4a34a8ac628de3e4f5aec7270","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/eaf0f128191c5edea0910cf723f46b85ab79f1a82cc698b5d1024b58a34dbff4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_health_and_advice_06 -> audio/generated/ko-KR/lexical/eaf0f128191c5edea0910cf723f46b85ab79f1a82cc698b5d1024b58a34dbff4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('975b2019-ca0e-555f-906e-56d4cbecfd5c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_health_and_advice_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f4c2d79c47ca512edb75c4d51ffb30e338f4220a6ca9ab12f925ed22ef2308c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9f0bb9bc-347a-5417-8650-4499cc48b7d9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('975b2019-ca0e-555f-906e-56d4cbecfd5c', 1), '4f4c2d79c47ca512edb75c4d51ffb30e338f4220a6ca9ab12f925ed22ef2308c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/eaf0f128191c5edea0910cf723f46b85ab79f1a82cc698b5d1024b58a34dbff4.mp3', 1149, '2026-09-13 22:25:13.112285', 'f857c156577597b3eadc64a592bcedddb8d01ff4a34a8ac628de3e4f5aec7270', 'validated', '{"audio_key":"eaf0f128191c5edea0910cf723f46b85ab79f1a82cc698b5d1024b58a34dbff4","entity_key":"wf_health_and_advice_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f857c156577597b3eadc64a592bcedddb8d01ff4a34a8ac628de3e4f5aec7270","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/eaf0f128191c5edea0910cf723f46b85ab79f1a82cc698b5d1024b58a34dbff4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_reasons_and_results_01 -> audio/generated/ko-KR/lexical/ed52b6c96bc0df4c6ce126840b8a54f3c5db1ecfde872182e42aaa24f6278a0e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ffbfcc8e-9425-5f87-9b5c-e7132f7d08fd', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_reasons_and_results_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6445cb23ec9811b5f35a6cf2868b7baf1bb4df26529cf9a63d0965bc26c0cf56'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d98dfe11-ed84-5791-86ea-8961a9cd0675', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ffbfcc8e-9425-5f87-9b5c-e7132f7d08fd', 1), '6445cb23ec9811b5f35a6cf2868b7baf1bb4df26529cf9a63d0965bc26c0cf56',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ed52b6c96bc0df4c6ce126840b8a54f3c5db1ecfde872182e42aaa24f6278a0e.mp3', 862, '2026-09-13 22:25:13.201092', '8ffd5bcf21542f99e4ff5d135718b6c0ef6159c26eab43640220b8281e1197ad', 'validated', '{"audio_key":"ed52b6c96bc0df4c6ce126840b8a54f3c5db1ecfde872182e42aaa24f6278a0e","entity_key":"lx_reasons_and_results_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8ffd5bcf21542f99e4ff5d135718b6c0ef6159c26eab43640220b8281e1197ad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ed52b6c96bc0df4c6ce126840b8a54f3c5db1ecfde872182e42aaa24f6278a0e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_reasons_and_results_01 -> audio/generated/ko-KR/lexical/ed52b6c96bc0df4c6ce126840b8a54f3c5db1ecfde872182e42aaa24f6278a0e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e5f6d998-55b7-537b-b5bf-f3c1a3d21eca', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_reasons_and_results_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6445cb23ec9811b5f35a6cf2868b7baf1bb4df26529cf9a63d0965bc26c0cf56'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1228a8e-6188-5283-97d3-f8aeae93c214', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e5f6d998-55b7-537b-b5bf-f3c1a3d21eca', 1), '6445cb23ec9811b5f35a6cf2868b7baf1bb4df26529cf9a63d0965bc26c0cf56',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ed52b6c96bc0df4c6ce126840b8a54f3c5db1ecfde872182e42aaa24f6278a0e.mp3', 862, '2026-09-13 22:25:13.201092', '8ffd5bcf21542f99e4ff5d135718b6c0ef6159c26eab43640220b8281e1197ad', 'validated', '{"audio_key":"ed52b6c96bc0df4c6ce126840b8a54f3c5db1ecfde872182e42aaa24f6278a0e","entity_key":"wf_reasons_and_results_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8ffd5bcf21542f99e4ff5d135718b6c0ef6159c26eab43640220b8281e1197ad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ed52b6c96bc0df4c6ce126840b8a54f3c5db1ecfde872182e42aaa24f6278a0e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_past_experiences_01 -> audio/generated/ko-KR/lexical/f02a7048c55f85118f78501ac1ed9bfdb6bfa3a205257160f20c646edbdfb1a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('52e42968-6ccd-5b21-aa33-55d505a8cdb0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_past_experiences_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b5d87b0a7b5d6b82f2a830da7586ae806e2802bb1b911fa2d1b0b8bacf212afc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01ffb565-8030-5822-96d1-d41616949b83', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('52e42968-6ccd-5b21-aa33-55d505a8cdb0', 1), 'b5d87b0a7b5d6b82f2a830da7586ae806e2802bb1b911fa2d1b0b8bacf212afc',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f02a7048c55f85118f78501ac1ed9bfdb6bfa3a205257160f20c646edbdfb1a0.mp3', 966, '2026-09-13 22:25:14.084107', '42b5ae50741f8fbcf5dc34b8216072af22d6e47568c1a6c9265e1712ae7d223d', 'validated', '{"audio_key":"f02a7048c55f85118f78501ac1ed9bfdb6bfa3a205257160f20c646edbdfb1a0","entity_key":"lx_past_experiences_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"42b5ae50741f8fbcf5dc34b8216072af22d6e47568c1a6c9265e1712ae7d223d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f02a7048c55f85118f78501ac1ed9bfdb6bfa3a205257160f20c646edbdfb1a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_past_experiences_01 -> audio/generated/ko-KR/lexical/f02a7048c55f85118f78501ac1ed9bfdb6bfa3a205257160f20c646edbdfb1a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('82b2555c-530c-52b3-a8c0-e0077b5ac4a5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_past_experiences_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b5d87b0a7b5d6b82f2a830da7586ae806e2802bb1b911fa2d1b0b8bacf212afc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b338ff67-8f65-5070-9ff1-955364aea814', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('82b2555c-530c-52b3-a8c0-e0077b5ac4a5', 1), 'b5d87b0a7b5d6b82f2a830da7586ae806e2802bb1b911fa2d1b0b8bacf212afc',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f02a7048c55f85118f78501ac1ed9bfdb6bfa3a205257160f20c646edbdfb1a0.mp3', 966, '2026-09-13 22:25:14.084107', '42b5ae50741f8fbcf5dc34b8216072af22d6e47568c1a6c9265e1712ae7d223d', 'validated', '{"audio_key":"f02a7048c55f85118f78501ac1ed9bfdb6bfa3a205257160f20c646edbdfb1a0","entity_key":"wf_past_experiences_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"42b5ae50741f8fbcf5dc34b8216072af22d6e47568c1a6c9265e1712ae7d223d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f02a7048c55f85118f78501ac1ed9bfdb6bfa3a205257160f20c646edbdfb1a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ability_and_permission_04 -> audio/generated/ko-KR/utterances/030fef57b6c941646e1a33ca064fba425205f8a1e96760dc15e2fa101086f0fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0f293861-e1d9-5f9c-aa4c-944a5266ab52', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ability_and_permission_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '542461a2a504f32defce5be88a75f36b76c820638ed2031bd095af7a46d229f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('27296d73-d42b-5ef1-a367-449ee788a2eb', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0f293861-e1d9-5f9c-aa4c-944a5266ab52', 1), '542461a2a504f32defce5be88a75f36b76c820638ed2031bd095af7a46d229f5',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/030fef57b6c941646e1a33ca064fba425205f8a1e96760dc15e2fa101086f0fc.mp3', 2272, '2026-09-13 22:25:14.296116', 'b8f49d2ed5d2db6b9bc04e501f5c66872b513469479272f89f03f144f5ca0336', 'validated', '{"audio_key":"030fef57b6c941646e1a33ca064fba425205f8a1e96760dc15e2fa101086f0fc","entity_key":"u_ability_and_permission_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b8f49d2ed5d2db6b9bc04e501f5c66872b513469479272f89f03f144f5ca0336","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/030fef57b6c941646e1a33ca064fba425205f8a1e96760dc15e2fa101086f0fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_ability_and_permission_02_listen -> audio/generated/ko-KR/utterances/030fef57b6c941646e1a33ca064fba425205f8a1e96760dc15e2fa101086f0fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('95a8ea82-c384-5232-8cfa-5bfa6333354a', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_ability_and_permission_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '542461a2a504f32defce5be88a75f36b76c820638ed2031bd095af7a46d229f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2ff1c392-86b1-5044-bbf2-71a595a7e2f7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('95a8ea82-c384-5232-8cfa-5bfa6333354a', 1), '542461a2a504f32defce5be88a75f36b76c820638ed2031bd095af7a46d229f5',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/030fef57b6c941646e1a33ca064fba425205f8a1e96760dc15e2fa101086f0fc.mp3', 2272, '2026-09-13 22:25:14.296116', 'b8f49d2ed5d2db6b9bc04e501f5c66872b513469479272f89f03f144f5ca0336', 'validated', '{"audio_key":"030fef57b6c941646e1a33ca064fba425205f8a1e96760dc15e2fa101086f0fc","entity_key":"e_ability_and_permission_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b8f49d2ed5d2db6b9bc04e501f5c66872b513469479272f89f03f144f5ca0336","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/030fef57b6c941646e1a33ca064fba425205f8a1e96760dc15e2fa101086f0fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reasons_and_results_03 -> audio/generated/ko-KR/utterances/0eff824147b219bd8c31a08e27e382d2e6ba8e6ec779ee0d0c51d9f7d2fa1186.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bc0dcea2-2ce1-5538-93d5-dcfcc32bbc3e', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reasons_and_results_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dcc7ecd69c3fd1523dafb18735faa0ae7c2770f47cfa98c7a474d1c970ab8428'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da5c402e-4a71-5313-b479-83ec8718b26c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bc0dcea2-2ce1-5538-93d5-dcfcc32bbc3e', 1), 'dcc7ecd69c3fd1523dafb18735faa0ae7c2770f47cfa98c7a474d1c970ab8428',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/0eff824147b219bd8c31a08e27e382d2e6ba8e6ec779ee0d0c51d9f7d2fa1186.mp3', 1619, '2026-09-13 22:25:15.149084', '24b2c509624bb01423e36d674c935ba65d0328a98d173a130e13b83b6051e06f', 'validated', '{"audio_key":"0eff824147b219bd8c31a08e27e382d2e6ba8e6ec779ee0d0c51d9f7d2fa1186","entity_key":"u_reasons_and_results_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"24b2c509624bb01423e36d674c935ba65d0328a98d173a130e13b83b6051e06f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/0eff824147b219bd8c31a08e27e382d2e6ba8e6ec779ee0d0c51d9f7d2fa1186.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reasons_and_results_01 -> audio/generated/ko-KR/utterances/13e475951aed20ceb8a89c96cd80f3bd60edbc5db5d56d4413edbb5991c2f674.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('43906854-2b62-5c16-a4b4-0a0237220688', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reasons_and_results_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e56843cc5914d1723281a27e12ab428071b00fc78bfec87452f2074b5cec2d2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da7b14b4-c664-5191-aa0d-9cb7b8fba795', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('43906854-2b62-5c16-a4b4-0a0237220688', 1), '2e56843cc5914d1723281a27e12ab428071b00fc78bfec87452f2074b5cec2d2',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/13e475951aed20ceb8a89c96cd80f3bd60edbc5db5d56d4413edbb5991c2f674.mp3', 1750, '2026-09-13 22:25:15.430114', 'f57ba2bab09649ea97b7dd183c14f202145e2e76c369b58e0bde3474bc382978', 'validated', '{"audio_key":"13e475951aed20ceb8a89c96cd80f3bd60edbc5db5d56d4413edbb5991c2f674","entity_key":"u_reasons_and_results_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f57ba2bab09649ea97b7dd183c14f202145e2e76c369b58e0bde3474bc382978","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/13e475951aed20ceb8a89c96cd80f3bd60edbc5db5d56d4413edbb5991c2f674.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travel_and_hotel_01 -> audio/generated/ko-KR/utterances/256fb6f3502885fce606fec95734294e1bf72a3714a4dc831a6d351d8665ecdf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ea3e301f-07ee-50d8-b2fd-1b6f2bb289e2', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travel_and_hotel_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1b97d9e89fff39ed410690e9e9447a1855100eaf494ffb43bd235ba025ef432c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b5adf010-d9f4-5b89-b8ed-8dbecf6b1493', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ea3e301f-07ee-50d8-b2fd-1b6f2bb289e2', 1), '1b97d9e89fff39ed410690e9e9447a1855100eaf494ffb43bd235ba025ef432c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/256fb6f3502885fce606fec95734294e1bf72a3714a4dc831a6d351d8665ecdf.mp3', 1619, '2026-09-13 22:25:16.246169', 'cf9fade0ecee80185b51e767c3ccbaeb88a02c1b157ff6d3f3faa9c85288e6f4', 'validated', '{"audio_key":"256fb6f3502885fce606fec95734294e1bf72a3714a4dc831a6d351d8665ecdf","entity_key":"u_travel_and_hotel_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cf9fade0ecee80185b51e767c3ccbaeb88a02c1b157ff6d3f3faa9c85288e6f4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/256fb6f3502885fce606fec95734294e1bf72a3714a4dc831a6d351d8665ecdf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_past_experiences_01 -> audio/generated/ko-KR/utterances/2b4dbdf9f2393863f4a5c438342c593f47cbd45f244005da90f7a337b6338a5a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ca4b3a8b-599a-5d17-8e60-78450c022c29', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_past_experiences_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7ebca7469afb2f77a1a795b310c82ee423eb4e4724ae255462b9b7a88133a607'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dabeff28-18ae-5db1-baa7-7f9fde74880b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ca4b3a8b-599a-5d17-8e60-78450c022c29', 1), '7ebca7469afb2f77a1a795b310c82ee423eb4e4724ae255462b9b7a88133a607',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/2b4dbdf9f2393863f4a5c438342c593f47cbd45f244005da90f7a337b6338a5a.mp3', 1619, '2026-09-13 22:25:16.472237', '2a997eab6da68c0f28a7ce159b6f2fe25ec2b0ae35f4752da7a7c2ab4267d327', 'validated', '{"audio_key":"2b4dbdf9f2393863f4a5c438342c593f47cbd45f244005da90f7a337b6338a5a","entity_key":"u_past_experiences_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2a997eab6da68c0f28a7ce159b6f2fe25ec2b0ae35f4752da7a7c2ab4267d327","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/2b4dbdf9f2393863f4a5c438342c593f47cbd45f244005da90f7a337b6338a5a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ability_and_permission_02 -> audio/generated/ko-KR/utterances/33a9ba7cf835ac012f61ebbe178bbb01c9e205ff2d83e12a6594cab9e61cb92e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('df0484ff-6033-5399-949c-eca7fd1d7de8', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ability_and_permission_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0341399938c19b733989ab31afe00b13f8419fee4a9dc7cf3b4aefdc97afd7b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a59cc11c-cfe6-5ffe-b26d-b39f7aa9c4c2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('df0484ff-6033-5399-949c-eca7fd1d7de8', 1), 'a0341399938c19b733989ab31afe00b13f8419fee4a9dc7cf3b4aefdc97afd7b',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/33a9ba7cf835ac012f61ebbe178bbb01c9e205ff2d83e12a6594cab9e61cb92e.mp3', 2403, '2026-09-13 22:25:17.426145', '567c5b9d39bb4d3e0b2e85b1663f60884443b1c4d8078ae1b9509e4bcd738495', 'validated', '{"audio_key":"33a9ba7cf835ac012f61ebbe178bbb01c9e205ff2d83e12a6594cab9e61cb92e","entity_key":"u_ability_and_permission_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"567c5b9d39bb4d3e0b2e85b1663f60884443b1c4d8078ae1b9509e4bcd738495","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/33a9ba7cf835ac012f61ebbe178bbb01c9e205ff2d83e12a6594cab9e61cb92e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_ability_and_permission_01_listen -> audio/generated/ko-KR/utterances/33a9ba7cf835ac012f61ebbe178bbb01c9e205ff2d83e12a6594cab9e61cb92e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2f746f2b-32f9-5e7a-850f-98955aef5300', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_ability_and_permission_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a0341399938c19b733989ab31afe00b13f8419fee4a9dc7cf3b4aefdc97afd7b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2532b3eb-1e09-5c53-b9c0-54a6fd2a9e6e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2f746f2b-32f9-5e7a-850f-98955aef5300', 1), 'a0341399938c19b733989ab31afe00b13f8419fee4a9dc7cf3b4aefdc97afd7b',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/33a9ba7cf835ac012f61ebbe178bbb01c9e205ff2d83e12a6594cab9e61cb92e.mp3', 2403, '2026-09-13 22:25:17.426145', '567c5b9d39bb4d3e0b2e85b1663f60884443b1c4d8078ae1b9509e4bcd738495', 'validated', '{"audio_key":"33a9ba7cf835ac012f61ebbe178bbb01c9e205ff2d83e12a6594cab9e61cb92e","entity_key":"e_ability_and_permission_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"567c5b9d39bb4d3e0b2e85b1663f60884443b1c4d8078ae1b9509e4bcd738495","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/33a9ba7cf835ac012f61ebbe178bbb01c9e205ff2d83e12a6594cab9e61cb92e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reasons_and_results_04 -> audio/generated/ko-KR/utterances/37510d85337d3799d19bfdda63df0efe6a1c4c36bef0ac5b8a0fea749ec8828a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b0eadfa2-8cea-5aad-8a03-00747f561583', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reasons_and_results_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be8f7d26108802e5dd795d6c8dee24febdb4feca856fa0f0579bad780e708643'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13654af9-8d59-5691-a1c3-343e5a14137d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b0eadfa2-8cea-5aad-8a03-00747f561583', 1), 'be8f7d26108802e5dd795d6c8dee24febdb4feca856fa0f0579bad780e708643',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/37510d85337d3799d19bfdda63df0efe6a1c4c36bef0ac5b8a0fea749ec8828a.mp3', 2507, '2026-09-13 22:25:17.589286', '607cff66bcdd3cfab7ab1ce804b61d2c9166407932c256e493703f7cc8bd4c4c', 'validated', '{"audio_key":"37510d85337d3799d19bfdda63df0efe6a1c4c36bef0ac5b8a0fea749ec8828a","entity_key":"u_reasons_and_results_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"607cff66bcdd3cfab7ab1ce804b61d2c9166407932c256e493703f7cc8bd4c4c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/37510d85337d3799d19bfdda63df0efe6a1c4c36bef0ac5b8a0fea749ec8828a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_reasons_and_results_02_listen -> audio/generated/ko-KR/utterances/37510d85337d3799d19bfdda63df0efe6a1c4c36bef0ac5b8a0fea749ec8828a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('64fa7e44-97a5-5fa4-a349-1212e3ce8a16', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_reasons_and_results_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be8f7d26108802e5dd795d6c8dee24febdb4feca856fa0f0579bad780e708643'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3cebd096-4f39-541c-beea-f57db03012d8', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('64fa7e44-97a5-5fa4-a349-1212e3ce8a16', 1), 'be8f7d26108802e5dd795d6c8dee24febdb4feca856fa0f0579bad780e708643',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/37510d85337d3799d19bfdda63df0efe6a1c4c36bef0ac5b8a0fea749ec8828a.mp3', 2507, '2026-09-13 22:25:17.589286', '607cff66bcdd3cfab7ab1ce804b61d2c9166407932c256e493703f7cc8bd4c4c', 'validated', '{"audio_key":"37510d85337d3799d19bfdda63df0efe6a1c4c36bef0ac5b8a0fea749ec8828a","entity_key":"e_reasons_and_results_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"607cff66bcdd3cfab7ab1ce804b61d2c9166407932c256e493703f7cc8bd4c4c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/37510d85337d3799d19bfdda63df0efe6a1c4c36bef0ac5b8a0fea749ec8828a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_plans_and_intentions_03 -> audio/generated/ko-KR/utterances/413f5412593f7376a3c62c187f5fec4b5671c38cf514b10b8848578080e32b40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('eacb7117-f7a2-5c10-aba4-538cf3cd6e55', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_plans_and_intentions_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '401e397d441f48d087bee56162b984eb116c05358a5a1eeddfa54916201f0258'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01001c8f-b052-52bd-85b9-222e2ffbe133', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('eacb7117-f7a2-5c10-aba4-538cf3cd6e55', 1), '401e397d441f48d087bee56162b984eb116c05358a5a1eeddfa54916201f0258',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/413f5412593f7376a3c62c187f5fec4b5671c38cf514b10b8848578080e32b40.mp3', 1802, '2026-09-13 22:25:18.504781', 'da7e635aaff66ac65c0b65e2c35b4ea3587f21e297093b11d23294d38af2f770', 'validated', '{"audio_key":"413f5412593f7376a3c62c187f5fec4b5671c38cf514b10b8848578080e32b40","entity_key":"u_plans_and_intentions_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"da7e635aaff66ac65c0b65e2c35b4ea3587f21e297093b11d23294d38af2f770","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/413f5412593f7376a3c62c187f5fec4b5671c38cf514b10b8848578080e32b40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a2_seoul_weekend_capstone_03 -> audio/generated/ko-KR/utterances/44468d88ea6ce214556771706e8e8d20f2b3488dcc6b24a553ad194ae95cacf0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0450cad5-e2ca-59e2-a569-a46607634451', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a2_seoul_weekend_capstone_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b75e15f960e1c0325c19281244d6982d073b54e27359f729bbb26ec9abb27dcd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c376af46-f092-5c2a-91c7-f782b998dbf7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0450cad5-e2ca-59e2-a569-a46607634451', 1), 'b75e15f960e1c0325c19281244d6982d073b54e27359f729bbb26ec9abb27dcd',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/44468d88ea6ce214556771706e8e8d20f2b3488dcc6b24a553ad194ae95cacf0.mp3', 2220, '2026-09-13 22:25:18.736446', 'f1c5bbb2c8a8b1607c67e993e79c352ba0e7b444b99f2f92c4531b5bf490be54', 'validated', '{"audio_key":"44468d88ea6ce214556771706e8e8d20f2b3488dcc6b24a553ad194ae95cacf0","entity_key":"u_a2_seoul_weekend_capstone_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f1c5bbb2c8a8b1607c67e993e79c352ba0e7b444b99f2f92c4531b5bf490be54","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/44468d88ea6ce214556771706e8e8d20f2b3488dcc6b24a553ad194ae95cacf0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_and_softening_03 -> audio/generated/ko-KR/utterances/48a8a86ada147c81140f30a8111975d05cea829e26ffe1d8383e9cbf3278fea9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('10caaaab-43ae-5936-8514-08f71f9d6d22', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_and_softening_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '903bad90363d75943bef8f9275584e47e54b2a537b0ff5bf11b3936a3eb54ef6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37f341c3-c955-5994-b246-8107d4663aa3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('10caaaab-43ae-5936-8514-08f71f9d6d22', 1), '903bad90363d75943bef8f9275584e47e54b2a537b0ff5bf11b3936a3eb54ef6',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/48a8a86ada147c81140f30a8111975d05cea829e26ffe1d8383e9cbf3278fea9.mp3', 2507, '2026-09-13 22:25:19.636978', '1fc8980cce868e410050bcf5d03c307c5196e2cbb400b4beb5fdf0bb462a9457', 'validated', '{"audio_key":"48a8a86ada147c81140f30a8111975d05cea829e26ffe1d8383e9cbf3278fea9","entity_key":"u_opinions_and_softening_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1fc8980cce868e410050bcf5d03c307c5196e2cbb400b4beb5fdf0bb462a9457","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/48a8a86ada147c81140f30a8111975d05cea829e26ffe1d8383e9cbf3278fea9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_comparisons_and_choice_04 -> audio/generated/ko-KR/utterances/554a715f4bad002d15612809ad1da0fc029396c581efbb9d4548193fb6f1478f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c348c027-dfee-5bb8-b3c7-4701ddece4e8', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_comparisons_and_choice_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cea3ddc6400010d085f920db6fba118d788cd02042c613b33e596125359c8035'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75500809-d323-576f-907f-c4cb39f50cf4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c348c027-dfee-5bb8-b3c7-4701ddece4e8', 1), 'cea3ddc6400010d085f920db6fba118d788cd02042c613b33e596125359c8035',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/554a715f4bad002d15612809ad1da0fc029396c581efbb9d4548193fb6f1478f.mp3', 2324, '2026-09-13 22:25:19.886151', 'e0c42ee994eff4242187b0dcd769e406b40218b4a77d5156d8954adb253ae112', 'validated', '{"audio_key":"554a715f4bad002d15612809ad1da0fc029396c581efbb9d4548193fb6f1478f","entity_key":"u_comparisons_and_choice_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e0c42ee994eff4242187b0dcd769e406b40218b4a77d5156d8954adb253ae112","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/554a715f4bad002d15612809ad1da0fc029396c581efbb9d4548193fb6f1478f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_comparisons_and_choice_02_listen -> audio/generated/ko-KR/utterances/554a715f4bad002d15612809ad1da0fc029396c581efbb9d4548193fb6f1478f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8f343eb1-2cf7-5cad-9b06-7800726f13d9', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_comparisons_and_choice_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cea3ddc6400010d085f920db6fba118d788cd02042c613b33e596125359c8035'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd7d9e98-b781-5a10-916f-b41a788c4ead', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8f343eb1-2cf7-5cad-9b06-7800726f13d9', 1), 'cea3ddc6400010d085f920db6fba118d788cd02042c613b33e596125359c8035',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/554a715f4bad002d15612809ad1da0fc029396c581efbb9d4548193fb6f1478f.mp3', 2324, '2026-09-13 22:25:19.886151', 'e0c42ee994eff4242187b0dcd769e406b40218b4a77d5156d8954adb253ae112', 'validated', '{"audio_key":"554a715f4bad002d15612809ad1da0fc029396c581efbb9d4548193fb6f1478f","entity_key":"e_comparisons_and_choice_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e0c42ee994eff4242187b0dcd769e406b40218b4a77d5156d8954adb253ae112","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/554a715f4bad002d15612809ad1da0fc029396c581efbb9d4548193fb6f1478f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_plans_and_intentions_01 -> audio/generated/ko-KR/utterances/5990b325f2c53dac38568d3db60f21d0e3f91b39a484a50649f457844e8811f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e80f174f-4c50-57bd-a893-b53e00bfff23', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_plans_and_intentions_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6fd40da98af3f0815db0144fa0f894b25a9e4318f84dbc9df42f0308ea26f664'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6afbf0ca-dc4c-53e9-90d8-553eadfe7b97', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e80f174f-4c50-57bd-a893-b53e00bfff23', 1), '6fd40da98af3f0815db0144fa0f894b25a9e4318f84dbc9df42f0308ea26f664',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5990b325f2c53dac38568d3db60f21d0e3f91b39a484a50649f457844e8811f0.mp3', 2324, '2026-09-13 22:25:20.753678', '80bce622a19cb2bbbac34eb39f62326ec932d8feaecc833cd4fb25c4bf927aa0', 'validated', '{"audio_key":"5990b325f2c53dac38568d3db60f21d0e3f91b39a484a50649f457844e8811f0","entity_key":"u_plans_and_intentions_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"80bce622a19cb2bbbac34eb39f62326ec932d8feaecc833cd4fb25c4bf927aa0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5990b325f2c53dac38568d3db60f21d0e3f91b39a484a50649f457844e8811f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_weather_and_change_03 -> audio/generated/ko-KR/utterances/5b6e6b82d63b1d06a037538234bc79c0b2a65be47a0192542c82b1ae6876a6a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2ef512c8-4262-569d-85f6-40a871b6fdfb', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_weather_and_change_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fae90aad8ad766f884e626302745c888b52a1573b811c5161148263ad0128e5b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81763947-672e-577f-b482-b4baffd52265', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2ef512c8-4262-569d-85f6-40a871b6fdfb', 1), 'fae90aad8ad766f884e626302745c888b52a1573b811c5161148263ad0128e5b',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5b6e6b82d63b1d06a037538234bc79c0b2a65be47a0192542c82b1ae6876a6a2.mp3', 1985, '2026-09-13 22:25:20.961702', '244a885cd80fabd8bc951226292bd4afe1755d957eda85d1ceb40f622018b685', 'validated', '{"audio_key":"5b6e6b82d63b1d06a037538234bc79c0b2a65be47a0192542c82b1ae6876a6a2","entity_key":"u_weather_and_change_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"244a885cd80fabd8bc951226292bd4afe1755d957eda85d1ceb40f622018b685","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5b6e6b82d63b1d06a037538234bc79c0b2a65be47a0192542c82b1ae6876a6a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_and_softening_01 -> audio/generated/ko-KR/utterances/672f3a03ece370367495c8b63e2dcd73154f58dd089f68ff59212811bc250964.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1289c51b-0827-5736-a20b-4215c384b967', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_and_softening_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '316dbab581aa301e7233d2e736cb860863b2d063ec4420299ea9868f68d42910'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9c91d1bd-ed57-55b6-a6ee-db55399a1bff', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1289c51b-0827-5736-a20b-4215c384b967', 1), '316dbab581aa301e7233d2e736cb860863b2d063ec4420299ea9868f68d42910',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/672f3a03ece370367495c8b63e2dcd73154f58dd089f68ff59212811bc250964.mp3', 2351, '2026-09-13 22:25:21.865897', 'c23394b6ca3d8598681be6c11308e84d07d66dea91c16310ac7d300cab443884', 'validated', '{"audio_key":"672f3a03ece370367495c8b63e2dcd73154f58dd089f68ff59212811bc250964","entity_key":"u_opinions_and_softening_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c23394b6ca3d8598681be6c11308e84d07d66dea91c16310ac7d300cab443884","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/672f3a03ece370367495c8b63e2dcd73154f58dd089f68ff59212811bc250964.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_comparisons_and_choice_03 -> audio/generated/ko-KR/utterances/67979cc33831fb4c25e77635a7141309c722da0385c6e658813695d5d5005340.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('67e289be-930d-53ef-a26b-0c9d0a00eb66', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_comparisons_and_choice_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b57f658d9f261ba4281e1b9cbd6132f08d6dafab40e995f789ba88684d4a4ca0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7cf4008-43db-5d50-8369-d3b1a7475d72', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('67e289be-930d-53ef-a26b-0c9d0a00eb66', 1), 'b57f658d9f261ba4281e1b9cbd6132f08d6dafab40e995f789ba88684d4a4ca0',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/67979cc33831fb4c25e77635a7141309c722da0385c6e658813695d5d5005340.mp3', 2586, '2026-09-13 22:25:22.102200', 'e300e86bea70937c49177d09a7ba4189dbf12abf7989ddedf7c0ab2f3be3ce87', 'validated', '{"audio_key":"67979cc33831fb4c25e77635a7141309c722da0385c6e658813695d5d5005340","entity_key":"u_comparisons_and_choice_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e300e86bea70937c49177d09a7ba4189dbf12abf7989ddedf7c0ab2f3be3ce87","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/67979cc33831fb4c25e77635a7141309c722da0385c6e658813695d5d5005340.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travel_and_hotel_02 -> audio/generated/ko-KR/utterances/687a66aee9138b718a7fdddb67d1d4704b894f19e8cdcdac169e8e80756e5f8f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('79e85ffc-ecef-5c79-822f-6e1d5e4de20b', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travel_and_hotel_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d42ead2dc6980d557e8909584c5fc5263646cd1dd1cd926bda2339871e1f58d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('10dded2a-a275-5342-84ec-b748ef9998c9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('79e85ffc-ecef-5c79-822f-6e1d5e4de20b', 1), '1d42ead2dc6980d557e8909584c5fc5263646cd1dd1cd926bda2339871e1f58d',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/687a66aee9138b718a7fdddb67d1d4704b894f19e8cdcdac169e8e80756e5f8f.mp3', 1933, '2026-09-13 22:25:23.007463', '6e73209db1c83b03d2e3fea4f464010e0a5d0d703b6e114ca5a159a27593c0b7', 'validated', '{"audio_key":"687a66aee9138b718a7fdddb67d1d4704b894f19e8cdcdac169e8e80756e5f8f","entity_key":"u_travel_and_hotel_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6e73209db1c83b03d2e3fea4f464010e0a5d0d703b6e114ca5a159a27593c0b7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/687a66aee9138b718a7fdddb67d1d4704b894f19e8cdcdac169e8e80756e5f8f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_travel_and_hotel_01_listen -> audio/generated/ko-KR/utterances/687a66aee9138b718a7fdddb67d1d4704b894f19e8cdcdac169e8e80756e5f8f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f381f60f-9f5c-57f8-a528-d9a0405fdf40', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_travel_and_hotel_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d42ead2dc6980d557e8909584c5fc5263646cd1dd1cd926bda2339871e1f58d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9299cbf5-9f4f-553a-92c6-231a1224c541', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f381f60f-9f5c-57f8-a528-d9a0405fdf40', 1), '1d42ead2dc6980d557e8909584c5fc5263646cd1dd1cd926bda2339871e1f58d',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/687a66aee9138b718a7fdddb67d1d4704b894f19e8cdcdac169e8e80756e5f8f.mp3', 1933, '2026-09-13 22:25:23.007463', '6e73209db1c83b03d2e3fea4f464010e0a5d0d703b6e114ca5a159a27593c0b7', 'validated', '{"audio_key":"687a66aee9138b718a7fdddb67d1d4704b894f19e8cdcdac169e8e80756e5f8f","entity_key":"e_travel_and_hotel_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6e73209db1c83b03d2e3fea4f464010e0a5d0d703b6e114ca5a159a27593c0b7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/687a66aee9138b718a7fdddb67d1d4704b894f19e8cdcdac169e8e80756e5f8f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_health_and_advice_04 -> audio/generated/ko-KR/utterances/6986006caf3680a484b8ebf7e296f6079d2496c93451eac76d98e044f41e63aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bcd74cb3-3387-53a8-872a-a171ae8c90da', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_health_and_advice_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a89c59799b01d78afe184113b34b298496911b9697a277433fa2da09340527c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('571aab1b-28df-5bd0-b373-ca5887200460', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bcd74cb3-3387-53a8-872a-a171ae8c90da', 1), 'a89c59799b01d78afe184113b34b298496911b9697a277433fa2da09340527c7',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/6986006caf3680a484b8ebf7e296f6079d2496c93451eac76d98e044f41e63aa.mp3', 2272, '2026-09-13 22:25:23.194681', '21528030b3235af0eda0c3e22e948bcc78332d6755624ba03daa31e25ff13164', 'validated', '{"audio_key":"6986006caf3680a484b8ebf7e296f6079d2496c93451eac76d98e044f41e63aa","entity_key":"u_health_and_advice_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"21528030b3235af0eda0c3e22e948bcc78332d6755624ba03daa31e25ff13164","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/6986006caf3680a484b8ebf7e296f6079d2496c93451eac76d98e044f41e63aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_health_and_advice_02_listen -> audio/generated/ko-KR/utterances/6986006caf3680a484b8ebf7e296f6079d2496c93451eac76d98e044f41e63aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b89207c5-aa64-5724-afe8-96df61cabdb8', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_health_and_advice_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a89c59799b01d78afe184113b34b298496911b9697a277433fa2da09340527c7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('88910153-ece0-54d4-afb6-406acd87fb2c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b89207c5-aa64-5724-afe8-96df61cabdb8', 1), 'a89c59799b01d78afe184113b34b298496911b9697a277433fa2da09340527c7',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/6986006caf3680a484b8ebf7e296f6079d2496c93451eac76d98e044f41e63aa.mp3', 2272, '2026-09-13 22:25:23.194681', '21528030b3235af0eda0c3e22e948bcc78332d6755624ba03daa31e25ff13164', 'validated', '{"audio_key":"6986006caf3680a484b8ebf7e296f6079d2496c93451eac76d98e044f41e63aa","entity_key":"e_health_and_advice_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"21528030b3235af0eda0c3e22e948bcc78332d6755624ba03daa31e25ff13164","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/6986006caf3680a484b8ebf7e296f6079d2496c93451eac76d98e044f41e63aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_weather_and_change_02 -> audio/generated/ko-KR/utterances/7148607d3fec97d2d5913d07d180a41f58a6ab999770c9d4916b70d1d656982a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('40fd8dcf-a166-56f6-b80b-59af0ff07bed', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_weather_and_change_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c373cb811158aa4b0ac1c43de6376bda69e0f569e2999dc9ed139cb75d86d75c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d174588-ed03-51b6-bdec-fbcbb4a5a8b1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('40fd8dcf-a166-56f6-b80b-59af0ff07bed', 1), 'c373cb811158aa4b0ac1c43de6376bda69e0f569e2999dc9ed139cb75d86d75c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7148607d3fec97d2d5913d07d180a41f58a6ab999770c9d4916b70d1d656982a.mp3', 2455, '2026-09-13 22:25:24.131085', '6ce76669e31724acf3e11956c17fcd3933791261f92b2f0f2286a1da21324662', 'validated', '{"audio_key":"7148607d3fec97d2d5913d07d180a41f58a6ab999770c9d4916b70d1d656982a","entity_key":"u_weather_and_change_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6ce76669e31724acf3e11956c17fcd3933791261f92b2f0f2286a1da21324662","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7148607d3fec97d2d5913d07d180a41f58a6ab999770c9d4916b70d1d656982a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_weather_and_change_01_listen -> audio/generated/ko-KR/utterances/7148607d3fec97d2d5913d07d180a41f58a6ab999770c9d4916b70d1d656982a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('94bbd7e7-f29e-5024-9193-ce5a30bb54c3', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_weather_and_change_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c373cb811158aa4b0ac1c43de6376bda69e0f569e2999dc9ed139cb75d86d75c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e677e6f0-0312-5ab7-800a-3e4c60b81580', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('94bbd7e7-f29e-5024-9193-ce5a30bb54c3', 1), 'c373cb811158aa4b0ac1c43de6376bda69e0f569e2999dc9ed139cb75d86d75c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7148607d3fec97d2d5913d07d180a41f58a6ab999770c9d4916b70d1d656982a.mp3', 2455, '2026-09-13 22:25:24.131085', '6ce76669e31724acf3e11956c17fcd3933791261f92b2f0f2286a1da21324662', 'validated', '{"audio_key":"7148607d3fec97d2d5913d07d180a41f58a6ab999770c9d4916b70d1d656982a","entity_key":"e_weather_and_change_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6ce76669e31724acf3e11956c17fcd3933791261f92b2f0f2286a1da21324662","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7148607d3fec97d2d5913d07d180a41f58a6ab999770c9d4916b70d1d656982a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_and_softening_04 -> audio/generated/ko-KR/utterances/78cfd7bd5cc0180e274f908e8bbdf07c9b9fa563b48d65434e9b123eaf5de4d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d6239916-86b9-52dc-b7ae-193185380bf7', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_and_softening_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2d6257cd844416cd42fac7fdcf9efa5a31385c6d142bc71ac4188cdb2edecec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aca183d1-894c-5d63-88bd-b8e8745023b4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d6239916-86b9-52dc-b7ae-193185380bf7', 1), 'b2d6257cd844416cd42fac7fdcf9efa5a31385c6d142bc71ac4188cdb2edecec',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/78cfd7bd5cc0180e274f908e8bbdf07c9b9fa563b48d65434e9b123eaf5de4d2.mp3', 2115, '2026-09-13 22:25:24.313331', '58e47aa71c0b8edb8faba333db6c9229f58ea499bb795ac7c991245cf92f3500', 'validated', '{"audio_key":"78cfd7bd5cc0180e274f908e8bbdf07c9b9fa563b48d65434e9b123eaf5de4d2","entity_key":"u_opinions_and_softening_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"58e47aa71c0b8edb8faba333db6c9229f58ea499bb795ac7c991245cf92f3500","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/78cfd7bd5cc0180e274f908e8bbdf07c9b9fa563b48d65434e9b123eaf5de4d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_opinions_and_softening_02_listen -> audio/generated/ko-KR/utterances/78cfd7bd5cc0180e274f908e8bbdf07c9b9fa563b48d65434e9b123eaf5de4d2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c3f64630-7ed2-5381-9394-a34e739294c4', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_opinions_and_softening_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2d6257cd844416cd42fac7fdcf9efa5a31385c6d142bc71ac4188cdb2edecec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bdb66980-9f83-58f9-8ffd-fa09a17ae0e7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c3f64630-7ed2-5381-9394-a34e739294c4', 1), 'b2d6257cd844416cd42fac7fdcf9efa5a31385c6d142bc71ac4188cdb2edecec',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/78cfd7bd5cc0180e274f908e8bbdf07c9b9fa563b48d65434e9b123eaf5de4d2.mp3', 2115, '2026-09-13 22:25:24.313331', '58e47aa71c0b8edb8faba333db6c9229f58ea499bb795ac7c991245cf92f3500', 'validated', '{"audio_key":"78cfd7bd5cc0180e274f908e8bbdf07c9b9fa563b48d65434e9b123eaf5de4d2","entity_key":"e_opinions_and_softening_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"58e47aa71c0b8edb8faba333db6c9229f58ea499bb795ac7c991245cf92f3500","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/78cfd7bd5cc0180e274f908e8bbdf07c9b9fa563b48d65434e9b123eaf5de4d2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_weather_and_change_04 -> audio/generated/ko-KR/utterances/812a283d3a3fef3364a042896ca6462ccf9c88796d486ef30b9f025921ac1f4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c44e835d-6a92-5157-a550-93e04d8dbd4e', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_weather_and_change_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd04188f4ff8d46699075657695d058a67165dc808104776e6fda78c83ac74f17'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96deb961-5c5f-55c8-85db-d8cd77860c22', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c44e835d-6a92-5157-a550-93e04d8dbd4e', 1), 'd04188f4ff8d46699075657695d058a67165dc808104776e6fda78c83ac74f17',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/812a283d3a3fef3364a042896ca6462ccf9c88796d486ef30b9f025921ac1f4d.mp3', 2272, '2026-09-13 22:25:25.240188', '366a08f032d5935fe01e49abf1ea808ee97d450da709d81d5d8af0c89fe75b4c', 'validated', '{"audio_key":"812a283d3a3fef3364a042896ca6462ccf9c88796d486ef30b9f025921ac1f4d","entity_key":"u_weather_and_change_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"366a08f032d5935fe01e49abf1ea808ee97d450da709d81d5d8af0c89fe75b4c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/812a283d3a3fef3364a042896ca6462ccf9c88796d486ef30b9f025921ac1f4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_weather_and_change_02_listen -> audio/generated/ko-KR/utterances/812a283d3a3fef3364a042896ca6462ccf9c88796d486ef30b9f025921ac1f4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('726fcab3-8890-587e-b621-79deb748d388', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_weather_and_change_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd04188f4ff8d46699075657695d058a67165dc808104776e6fda78c83ac74f17'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd82cc10-e710-5679-b821-98722e07b29e', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('726fcab3-8890-587e-b621-79deb748d388', 1), 'd04188f4ff8d46699075657695d058a67165dc808104776e6fda78c83ac74f17',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/812a283d3a3fef3364a042896ca6462ccf9c88796d486ef30b9f025921ac1f4d.mp3', 2272, '2026-09-13 22:25:25.240188', '366a08f032d5935fe01e49abf1ea808ee97d450da709d81d5d8af0c89fe75b4c', 'validated', '{"audio_key":"812a283d3a3fef3364a042896ca6462ccf9c88796d486ef30b9f025921ac1f4d","entity_key":"e_weather_and_change_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"366a08f032d5935fe01e49abf1ea808ee97d450da709d81d5d8af0c89fe75b4c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/812a283d3a3fef3364a042896ca6462ccf9c88796d486ef30b9f025921ac1f4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ability_and_permission_01 -> audio/generated/ko-KR/utterances/8261b987d7240bff646506d4da8f32b185bb51aa9ac551ccb41f0146172ff6e2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3cb22398-2fcb-5eaf-bd48-f99e284d6e38', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ability_and_permission_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1caa191e9c91e08dd40b55b258436ba636175517d9a7963e4c0b555b11d840e2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6538382d-8411-5628-873a-afeb3af2ee80', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3cb22398-2fcb-5eaf-bd48-f99e284d6e38', 1), '1caa191e9c91e08dd40b55b258436ba636175517d9a7963e4c0b555b11d840e2',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/8261b987d7240bff646506d4da8f32b185bb51aa9ac551ccb41f0146172ff6e2.mp3', 2089, '2026-09-13 22:25:25.412494', '44e42064c2ae5b10fdb2f2dd21244c6dbf40e8db683dc026ce30c51c68484fe2', 'validated', '{"audio_key":"8261b987d7240bff646506d4da8f32b185bb51aa9ac551ccb41f0146172ff6e2","entity_key":"u_ability_and_permission_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"44e42064c2ae5b10fdb2f2dd21244c6dbf40e8db683dc026ce30c51c68484fe2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/8261b987d7240bff646506d4da8f32b185bb51aa9ac551ccb41f0146172ff6e2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_health_and_advice_01 -> audio/generated/ko-KR/utterances/83cbc15fc1eaa65271745eb492d08394754fa4a8fe3fd4842b50e80866adf6c8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4b0b9e8f-5b72-56eb-94e2-669a1fcfb3df', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_health_and_advice_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b2b9b440c74e8f2d6e0e77ea2dd9d2e6a512baa8877fde06a56536c0ed48b0fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a17cad41-f9b1-5970-9e3e-6b91e4aebdbd', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4b0b9e8f-5b72-56eb-94e2-669a1fcfb3df', 1), 'b2b9b440c74e8f2d6e0e77ea2dd9d2e6a512baa8877fde06a56536c0ed48b0fb',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/83cbc15fc1eaa65271745eb492d08394754fa4a8fe3fd4842b50e80866adf6c8.mp3', 1280, '2026-09-13 22:25:26.237505', '5412360ac678234e8cfdb222191ef05cbd11b357caa9ed8d5d7faa99bf806b8b', 'validated', '{"audio_key":"83cbc15fc1eaa65271745eb492d08394754fa4a8fe3fd4842b50e80866adf6c8","entity_key":"u_health_and_advice_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5412360ac678234e8cfdb222191ef05cbd11b357caa9ed8d5d7faa99bf806b8b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/83cbc15fc1eaa65271745eb492d08394754fa4a8fe3fd4842b50e80866adf6c8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_health_and_advice_02 -> audio/generated/ko-KR/utterances/8a4b620ffb2ba34b6331eb73aa43923d7541c14e6ad242723f1cc15284b46c94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2fc9689c-6fe4-5646-8ba8-bc49d3e56dc5', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_health_and_advice_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a3f731c2a64ab143fb666e2eb9acceae360861251c881dca5fec3b957c356b5d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d166711d-612b-5f55-9ea9-abd45d1f4661', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2fc9689c-6fe4-5646-8ba8-bc49d3e56dc5', 1), 'a3f731c2a64ab143fb666e2eb9acceae360861251c881dca5fec3b957c356b5d',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/8a4b620ffb2ba34b6331eb73aa43923d7541c14e6ad242723f1cc15284b46c94.mp3', 1671, '2026-09-13 22:25:26.498805', '636b0c06fc3190b6b7eb8d8e6ed496f7b93fbb1b1b3c85582f30a49be6baf888', 'validated', '{"audio_key":"8a4b620ffb2ba34b6331eb73aa43923d7541c14e6ad242723f1cc15284b46c94","entity_key":"u_health_and_advice_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"636b0c06fc3190b6b7eb8d8e6ed496f7b93fbb1b1b3c85582f30a49be6baf888","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/8a4b620ffb2ba34b6331eb73aa43923d7541c14e6ad242723f1cc15284b46c94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_health_and_advice_01_listen -> audio/generated/ko-KR/utterances/8a4b620ffb2ba34b6331eb73aa43923d7541c14e6ad242723f1cc15284b46c94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('dca94c16-910c-5771-a30f-54b8c278b111', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_health_and_advice_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a3f731c2a64ab143fb666e2eb9acceae360861251c881dca5fec3b957c356b5d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45a17477-be02-5c11-b66b-34d63c8a6e32', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('dca94c16-910c-5771-a30f-54b8c278b111', 1), 'a3f731c2a64ab143fb666e2eb9acceae360861251c881dca5fec3b957c356b5d',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/8a4b620ffb2ba34b6331eb73aa43923d7541c14e6ad242723f1cc15284b46c94.mp3', 1671, '2026-09-13 22:25:26.498805', '636b0c06fc3190b6b7eb8d8e6ed496f7b93fbb1b1b3c85582f30a49be6baf888', 'validated', '{"audio_key":"8a4b620ffb2ba34b6331eb73aa43923d7541c14e6ad242723f1cc15284b46c94","entity_key":"e_health_and_advice_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"636b0c06fc3190b6b7eb8d8e6ed496f7b93fbb1b1b3c85582f30a49be6baf888","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/8a4b620ffb2ba34b6331eb73aa43923d7541c14e6ad242723f1cc15284b46c94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_past_experiences_03 -> audio/generated/ko-KR/utterances/9f03042d801228b80d00cd1841322ae6382bd80bf1824dee7265c1d6011001ca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3a0cf303-6a18-52ae-8f44-d8a807c555d6', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_past_experiences_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '853cd73ca25fe5fa5af4185b08ada667aab280f7fd99ca52444711dace8c72dd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0200e2de-6c0b-53d7-8625-e4ae8b9f09e8', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3a0cf303-6a18-52ae-8f44-d8a807c555d6', 1), '853cd73ca25fe5fa5af4185b08ada667aab280f7fd99ca52444711dace8c72dd',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/9f03042d801228b80d00cd1841322ae6382bd80bf1824dee7265c1d6011001ca.mp3', 2638, '2026-09-13 22:25:27.361970', '835eb264ff43be51b7e77b1d9d6a29010cf8965c0184e14f80696f84dde2d7d1', 'validated', '{"audio_key":"9f03042d801228b80d00cd1841322ae6382bd80bf1824dee7265c1d6011001ca","entity_key":"u_past_experiences_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"835eb264ff43be51b7e77b1d9d6a29010cf8965c0184e14f80696f84dde2d7d1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/9f03042d801228b80d00cd1841322ae6382bd80bf1824dee7265c1d6011001ca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_plans_and_intentions_02 -> audio/generated/ko-KR/utterances/a64bb835dbf6923ad37f71d5ece15f955d5484c56631d198a6ff60412ce5c997.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('be29071a-2f7b-52f8-9c9b-d994be3704bc', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_plans_and_intentions_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '175b1db0c32185eba26f896546db941be093a1ff98cf7be65cded15325701f3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('81ffc7d6-92b7-50d3-910d-38262de204ac', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('be29071a-2f7b-52f8-9c9b-d994be3704bc', 1), '175b1db0c32185eba26f896546db941be093a1ff98cf7be65cded15325701f3d',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/a64bb835dbf6923ad37f71d5ece15f955d5484c56631d198a6ff60412ce5c997.mp3', 2220, '2026-09-13 22:25:27.611372', '1b624785ad81000f65bba3b979b61b5e38e065bd0296432f5d7b1340b3bd4ff2', 'validated', '{"audio_key":"a64bb835dbf6923ad37f71d5ece15f955d5484c56631d198a6ff60412ce5c997","entity_key":"u_plans_and_intentions_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1b624785ad81000f65bba3b979b61b5e38e065bd0296432f5d7b1340b3bd4ff2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/a64bb835dbf6923ad37f71d5ece15f955d5484c56631d198a6ff60412ce5c997.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_plans_and_intentions_01_listen -> audio/generated/ko-KR/utterances/a64bb835dbf6923ad37f71d5ece15f955d5484c56631d198a6ff60412ce5c997.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('55d4e27c-2281-5f67-ac18-8b75c1a8b24d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_plans_and_intentions_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '175b1db0c32185eba26f896546db941be093a1ff98cf7be65cded15325701f3d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a41109ca-8b12-5839-8b8e-4cc9349e3a79', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('55d4e27c-2281-5f67-ac18-8b75c1a8b24d', 1), '175b1db0c32185eba26f896546db941be093a1ff98cf7be65cded15325701f3d',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/a64bb835dbf6923ad37f71d5ece15f955d5484c56631d198a6ff60412ce5c997.mp3', 2220, '2026-09-13 22:25:27.611372', '1b624785ad81000f65bba3b979b61b5e38e065bd0296432f5d7b1340b3bd4ff2', 'validated', '{"audio_key":"a64bb835dbf6923ad37f71d5ece15f955d5484c56631d198a6ff60412ce5c997","entity_key":"e_plans_and_intentions_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1b624785ad81000f65bba3b979b61b5e38e065bd0296432f5d7b1340b3bd4ff2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/a64bb835dbf6923ad37f71d5ece15f955d5484c56631d198a6ff60412ce5c997.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a2_seoul_weekend_capstone_01 -> audio/generated/ko-KR/utterances/a7c35a1ff221e85eac58fc868fc92b13126c8bdb5fbe8cc792b034b25bb37ffa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8d1574cd-eb01-5102-896b-e7e5b0715aea', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a2_seoul_weekend_capstone_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6fa34c6bc4ad4fc1f78c250a51f04208495dde25a81020580ecba61939d8c872'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b75bedcb-d428-5cc3-871e-29e7bfde32a2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8d1574cd-eb01-5102-896b-e7e5b0715aea', 1), '6fa34c6bc4ad4fc1f78c250a51f04208495dde25a81020580ecba61939d8c872',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/a7c35a1ff221e85eac58fc868fc92b13126c8bdb5fbe8cc792b034b25bb37ffa.mp3', 2507, '2026-09-13 22:25:28.489647', '2d78716d5c1177635e8349b43c49dc3f2cce9d641236801b098220bdc46ee818', 'validated', '{"audio_key":"a7c35a1ff221e85eac58fc868fc92b13126c8bdb5fbe8cc792b034b25bb37ffa","entity_key":"u_a2_seoul_weekend_capstone_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2d78716d5c1177635e8349b43c49dc3f2cce9d641236801b098220bdc46ee818","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/a7c35a1ff221e85eac58fc868fc92b13126c8bdb5fbe8cc792b034b25bb37ffa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ability_and_permission_03 -> audio/generated/ko-KR/utterances/ab083a92c2262bf3de86d5ed82e04664286234df562d03b6ab180fc9e95b005e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e26d3447-eaa0-5536-8df3-5fef8b6d064d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ability_and_permission_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b13f9358a7b368ac3dfd744235d9998c117509a7644d6ab6074e90d3c58f9079'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3448f19-5de2-5720-8684-afd39887829e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e26d3447-eaa0-5536-8df3-5fef8b6d064d', 1), 'b13f9358a7b368ac3dfd744235d9998c117509a7644d6ab6074e90d3c58f9079',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/ab083a92c2262bf3de86d5ed82e04664286234df562d03b6ab180fc9e95b005e.mp3', 1985, '2026-09-13 22:25:28.680942', 'e86655edc92695f0992278e17e65ce1f7f025ccffb426094add90fc94a9d43b1', 'validated', '{"audio_key":"ab083a92c2262bf3de86d5ed82e04664286234df562d03b6ab180fc9e95b005e","entity_key":"u_ability_and_permission_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e86655edc92695f0992278e17e65ce1f7f025ccffb426094add90fc94a9d43b1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/ab083a92c2262bf3de86d5ed82e04664286234df562d03b6ab180fc9e95b005e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_comparisons_and_choice_02 -> audio/generated/ko-KR/utterances/b20b590bc534f5c5f8aef37a7e05bdecad9e00a2ace05a7298f598b59d11fe5f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('077cf3f4-f8a2-558a-81d3-fd7e2080d17f', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_comparisons_and_choice_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aad33d7d602220225e260d39017335b7b039745e36073c04fa1fa646d460ba99'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d7b8f7b-0790-57f6-a1fe-8a1f1bcb3303', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('077cf3f4-f8a2-558a-81d3-fd7e2080d17f', 1), 'aad33d7d602220225e260d39017335b7b039745e36073c04fa1fa646d460ba99',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/b20b590bc534f5c5f8aef37a7e05bdecad9e00a2ace05a7298f598b59d11fe5f.mp3', 1332, '2026-09-13 22:25:29.529813', '3e148355e5cffba4e3f4c38668bc8a1ef293e083f2fb817f0ab4c11dd5470432', 'validated', '{"audio_key":"b20b590bc534f5c5f8aef37a7e05bdecad9e00a2ace05a7298f598b59d11fe5f","entity_key":"u_comparisons_and_choice_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3e148355e5cffba4e3f4c38668bc8a1ef293e083f2fb817f0ab4c11dd5470432","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/b20b590bc534f5c5f8aef37a7e05bdecad9e00a2ace05a7298f598b59d11fe5f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_comparisons_and_choice_01_listen -> audio/generated/ko-KR/utterances/b20b590bc534f5c5f8aef37a7e05bdecad9e00a2ace05a7298f598b59d11fe5f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('287cb158-f4f8-561e-92d3-02d300e7920c', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_comparisons_and_choice_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aad33d7d602220225e260d39017335b7b039745e36073c04fa1fa646d460ba99'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9171a323-b434-519e-a0e8-74c0a01c6d3c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('287cb158-f4f8-561e-92d3-02d300e7920c', 1), 'aad33d7d602220225e260d39017335b7b039745e36073c04fa1fa646d460ba99',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/b20b590bc534f5c5f8aef37a7e05bdecad9e00a2ace05a7298f598b59d11fe5f.mp3', 1332, '2026-09-13 22:25:29.529813', '3e148355e5cffba4e3f4c38668bc8a1ef293e083f2fb817f0ab4c11dd5470432', 'validated', '{"audio_key":"b20b590bc534f5c5f8aef37a7e05bdecad9e00a2ace05a7298f598b59d11fe5f","entity_key":"e_comparisons_and_choice_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3e148355e5cffba4e3f4c38668bc8a1ef293e083f2fb817f0ab4c11dd5470432","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/b20b590bc534f5c5f8aef37a7e05bdecad9e00a2ace05a7298f598b59d11fe5f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travel_and_hotel_03 -> audio/generated/ko-KR/utterances/bf020a06082901fa2d58dc96921ed51ad071a4dc60d63618993d3e40c5ca0dcc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a109029c-b1bb-5ed6-a230-5ed50203df89', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travel_and_hotel_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb1f23d25e6e9336d4d071ae32feb41a852d8e53d6ff27aef562d0c2fe4876b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6fb27318-8b7a-52e3-8ce8-ace0f0c7eca5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a109029c-b1bb-5ed6-a230-5ed50203df89', 1), 'eb1f23d25e6e9336d4d071ae32feb41a852d8e53d6ff27aef562d0c2fe4876b8',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/bf020a06082901fa2d58dc96921ed51ad071a4dc60d63618993d3e40c5ca0dcc.mp3', 2272, '2026-09-13 22:25:29.794164', '659fa0f18e80fa1cc03a9ec894bdcb0722e05ae24db9821902c2bcc27c7729f5', 'validated', '{"audio_key":"bf020a06082901fa2d58dc96921ed51ad071a4dc60d63618993d3e40c5ca0dcc","entity_key":"u_travel_and_hotel_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"659fa0f18e80fa1cc03a9ec894bdcb0722e05ae24db9821902c2bcc27c7729f5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/bf020a06082901fa2d58dc96921ed51ad071a4dc60d63618993d3e40c5ca0dcc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_reasons_and_results_02 -> audio/generated/ko-KR/utterances/c32df9f682898b9528c07c55622b5d7762e84ab15a8788bbef1686344530cdf1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('10ead741-7f48-5712-aa78-2146f2c0c8a0', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_reasons_and_results_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a83de6dec9edb57694b0ca6cf61cc7b5645b535179193f95a7e2c96f541a3f6f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e824616d-2cb3-59d0-bcf8-7c3337f4670f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('10ead741-7f48-5712-aa78-2146f2c0c8a0', 1), 'a83de6dec9edb57694b0ca6cf61cc7b5645b535179193f95a7e2c96f541a3f6f',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c32df9f682898b9528c07c55622b5d7762e84ab15a8788bbef1686344530cdf1.mp3', 1332, '2026-09-13 22:25:30.532718', 'a90178a69ff3a2ca0cea57d7532b5c92f2858c72b4b36aa78d190184871af51a', 'validated', '{"audio_key":"c32df9f682898b9528c07c55622b5d7762e84ab15a8788bbef1686344530cdf1","entity_key":"u_reasons_and_results_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a90178a69ff3a2ca0cea57d7532b5c92f2858c72b4b36aa78d190184871af51a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c32df9f682898b9528c07c55622b5d7762e84ab15a8788bbef1686344530cdf1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_reasons_and_results_01_listen -> audio/generated/ko-KR/utterances/c32df9f682898b9528c07c55622b5d7762e84ab15a8788bbef1686344530cdf1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('fef980df-5f6b-5068-a0a4-bea0eeee3b2e', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_reasons_and_results_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a83de6dec9edb57694b0ca6cf61cc7b5645b535179193f95a7e2c96f541a3f6f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('23f30d24-7553-502a-84ed-55cf18d6a382', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('fef980df-5f6b-5068-a0a4-bea0eeee3b2e', 1), 'a83de6dec9edb57694b0ca6cf61cc7b5645b535179193f95a7e2c96f541a3f6f',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c32df9f682898b9528c07c55622b5d7762e84ab15a8788bbef1686344530cdf1.mp3', 1332, '2026-09-13 22:25:30.532718', 'a90178a69ff3a2ca0cea57d7532b5c92f2858c72b4b36aa78d190184871af51a', 'validated', '{"audio_key":"c32df9f682898b9528c07c55622b5d7762e84ab15a8788bbef1686344530cdf1","entity_key":"e_reasons_and_results_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a90178a69ff3a2ca0cea57d7532b5c92f2858c72b4b36aa78d190184871af51a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c32df9f682898b9528c07c55622b5d7762e84ab15a8788bbef1686344530cdf1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_past_experiences_02 -> audio/generated/ko-KR/utterances/c348c5765a7ac8fe12229d6a959f6557cbd2e2692a68a287ba198194bf7d3021.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7011f5ee-ff6a-5687-bed5-779c052f4f9c', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_past_experiences_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a51de256220fc99f932e5024b3071f2a63c4ddffda01590b8b76feb43cf0e2d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('acae5c34-7d75-5fad-9acf-93be2a5ad8ca', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7011f5ee-ff6a-5687-bed5-779c052f4f9c', 1), 'a51de256220fc99f932e5024b3071f2a63c4ddffda01590b8b76feb43cf0e2d9',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c348c5765a7ac8fe12229d6a959f6557cbd2e2692a68a287ba198194bf7d3021.mp3', 1619, '2026-09-13 22:25:30.846099', 'ee1e141176f3dbff670e83c55aefe537648b763dbb9b7d669a49247b2e560388', 'validated', '{"audio_key":"c348c5765a7ac8fe12229d6a959f6557cbd2e2692a68a287ba198194bf7d3021","entity_key":"u_past_experiences_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ee1e141176f3dbff670e83c55aefe537648b763dbb9b7d669a49247b2e560388","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c348c5765a7ac8fe12229d6a959f6557cbd2e2692a68a287ba198194bf7d3021.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_past_experiences_01_listen -> audio/generated/ko-KR/utterances/c348c5765a7ac8fe12229d6a959f6557cbd2e2692a68a287ba198194bf7d3021.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('91d59f7a-03ff-5176-9d08-3df40799e29a', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_past_experiences_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a51de256220fc99f932e5024b3071f2a63c4ddffda01590b8b76feb43cf0e2d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29f58546-57c7-5deb-ba45-aa872ff5c34f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('91d59f7a-03ff-5176-9d08-3df40799e29a', 1), 'a51de256220fc99f932e5024b3071f2a63c4ddffda01590b8b76feb43cf0e2d9',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c348c5765a7ac8fe12229d6a959f6557cbd2e2692a68a287ba198194bf7d3021.mp3', 1619, '2026-09-13 22:25:30.846099', 'ee1e141176f3dbff670e83c55aefe537648b763dbb9b7d669a49247b2e560388', 'validated', '{"audio_key":"c348c5765a7ac8fe12229d6a959f6557cbd2e2692a68a287ba198194bf7d3021","entity_key":"e_past_experiences_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ee1e141176f3dbff670e83c55aefe537648b763dbb9b7d669a49247b2e560388","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c348c5765a7ac8fe12229d6a959f6557cbd2e2692a68a287ba198194bf7d3021.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_opinions_and_softening_02 -> audio/generated/ko-KR/utterances/c491f1931e6735fcd49c867a8dc57e86662409f8d99670a2fe8f99874b429520.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e95d3dd6-bc8b-5c7f-8dff-aea22b7f6bd8', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_opinions_and_softening_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69bbf732a4dfc90a432a51e6d1a4bbdfb2917939db310fd8c4b1ea3034a1352b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2bd9a4ef-8b43-5888-9c71-9622f1e8e62b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e95d3dd6-bc8b-5c7f-8dff-aea22b7f6bd8', 1), '69bbf732a4dfc90a432a51e6d1a4bbdfb2917939db310fd8c4b1ea3034a1352b',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c491f1931e6735fcd49c867a8dc57e86662409f8d99670a2fe8f99874b429520.mp3', 2507, '2026-09-13 22:25:31.638803', '277cdc313d71babf7e34224b6d642b956915247d694f6d47f796d7941436a36a', 'validated', '{"audio_key":"c491f1931e6735fcd49c867a8dc57e86662409f8d99670a2fe8f99874b429520","entity_key":"u_opinions_and_softening_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"277cdc313d71babf7e34224b6d642b956915247d694f6d47f796d7941436a36a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c491f1931e6735fcd49c867a8dc57e86662409f8d99670a2fe8f99874b429520.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_opinions_and_softening_01_listen -> audio/generated/ko-KR/utterances/c491f1931e6735fcd49c867a8dc57e86662409f8d99670a2fe8f99874b429520.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6bbc5473-6931-5de9-8046-090e19b1f08a', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_opinions_and_softening_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69bbf732a4dfc90a432a51e6d1a4bbdfb2917939db310fd8c4b1ea3034a1352b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a888bf29-75b5-5f30-b19d-b9c55e081d8f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6bbc5473-6931-5de9-8046-090e19b1f08a', 1), '69bbf732a4dfc90a432a51e6d1a4bbdfb2917939db310fd8c4b1ea3034a1352b',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c491f1931e6735fcd49c867a8dc57e86662409f8d99670a2fe8f99874b429520.mp3', 2507, '2026-09-13 22:25:31.638803', '277cdc313d71babf7e34224b6d642b956915247d694f6d47f796d7941436a36a', 'validated', '{"audio_key":"c491f1931e6735fcd49c867a8dc57e86662409f8d99670a2fe8f99874b429520","entity_key":"e_opinions_and_softening_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"277cdc313d71babf7e34224b6d642b956915247d694f6d47f796d7941436a36a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c491f1931e6735fcd49c867a8dc57e86662409f8d99670a2fe8f99874b429520.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_plans_and_intentions_04 -> audio/generated/ko-KR/utterances/c91dea0181fdd580117402f41ce957dfe5da8e22fcee621308e2059b5667e576.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3517d397-07a6-539c-ac5e-13efc27330f7', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_plans_and_intentions_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc923aa791abbce37ffddc9f0ef23e3958108ceb65df3d2d4517be3efbfa4e70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e67078c7-de1b-5819-9a55-2cbcb54c841e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3517d397-07a6-539c-ac5e-13efc27330f7', 1), 'dc923aa791abbce37ffddc9f0ef23e3958108ceb65df3d2d4517be3efbfa4e70',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c91dea0181fdd580117402f41ce957dfe5da8e22fcee621308e2059b5667e576.mp3', 2272, '2026-09-13 22:25:31.967939', '4e803eb1d0f7146ab02f4ac0677545638a7baf76f9817f075b4b25b4eee730d2', 'validated', '{"audio_key":"c91dea0181fdd580117402f41ce957dfe5da8e22fcee621308e2059b5667e576","entity_key":"u_plans_and_intentions_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4e803eb1d0f7146ab02f4ac0677545638a7baf76f9817f075b4b25b4eee730d2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c91dea0181fdd580117402f41ce957dfe5da8e22fcee621308e2059b5667e576.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_plans_and_intentions_02_listen -> audio/generated/ko-KR/utterances/c91dea0181fdd580117402f41ce957dfe5da8e22fcee621308e2059b5667e576.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('680d438a-a53e-57c5-84da-42f34d7113f8', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_plans_and_intentions_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc923aa791abbce37ffddc9f0ef23e3958108ceb65df3d2d4517be3efbfa4e70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d77d781-e8a7-5d2a-a6f0-0371868d530f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('680d438a-a53e-57c5-84da-42f34d7113f8', 1), 'dc923aa791abbce37ffddc9f0ef23e3958108ceb65df3d2d4517be3efbfa4e70',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c91dea0181fdd580117402f41ce957dfe5da8e22fcee621308e2059b5667e576.mp3', 2272, '2026-09-13 22:25:31.967939', '4e803eb1d0f7146ab02f4ac0677545638a7baf76f9817f075b4b25b4eee730d2', 'validated', '{"audio_key":"c91dea0181fdd580117402f41ce957dfe5da8e22fcee621308e2059b5667e576","entity_key":"e_plans_and_intentions_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4e803eb1d0f7146ab02f4ac0677545638a7baf76f9817f075b4b25b4eee730d2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c91dea0181fdd580117402f41ce957dfe5da8e22fcee621308e2059b5667e576.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_past_experiences_04 -> audio/generated/ko-KR/utterances/d20838e942e081860ed82c7d6cf0a1da5e627e7f8dfe776432ddde301a66b293.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a7117f88-a1ea-5f01-bba6-b964c71825e6', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_past_experiences_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0379c848acfc7272422d418590cfc3c6d2a7aa9175820d01dc32024e0e4d730d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1376ec76-a10c-51e1-80f0-71442f0f2ccf', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a7117f88-a1ea-5f01-bba6-b964c71825e6', 1), '0379c848acfc7272422d418590cfc3c6d2a7aa9175820d01dc32024e0e4d730d',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d20838e942e081860ed82c7d6cf0a1da5e627e7f8dfe776432ddde301a66b293.mp3', 2220, '2026-09-13 22:25:32.738961', '2d080944c14ece4b0a0d5762f29020c6f14c471ddce589acb19b58c06c5b0a9f', 'validated', '{"audio_key":"d20838e942e081860ed82c7d6cf0a1da5e627e7f8dfe776432ddde301a66b293","entity_key":"u_past_experiences_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2d080944c14ece4b0a0d5762f29020c6f14c471ddce589acb19b58c06c5b0a9f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d20838e942e081860ed82c7d6cf0a1da5e627e7f8dfe776432ddde301a66b293.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_past_experiences_02_listen -> audio/generated/ko-KR/utterances/d20838e942e081860ed82c7d6cf0a1da5e627e7f8dfe776432ddde301a66b293.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2714381f-b762-5ebc-9c11-9f5bcb312f62', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_past_experiences_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0379c848acfc7272422d418590cfc3c6d2a7aa9175820d01dc32024e0e4d730d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c932abe-f507-54a4-97d2-6727cc6ca289', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2714381f-b762-5ebc-9c11-9f5bcb312f62', 1), '0379c848acfc7272422d418590cfc3c6d2a7aa9175820d01dc32024e0e4d730d',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d20838e942e081860ed82c7d6cf0a1da5e627e7f8dfe776432ddde301a66b293.mp3', 2220, '2026-09-13 22:25:32.738961', '2d080944c14ece4b0a0d5762f29020c6f14c471ddce589acb19b58c06c5b0a9f', 'validated', '{"audio_key":"d20838e942e081860ed82c7d6cf0a1da5e627e7f8dfe776432ddde301a66b293","entity_key":"e_past_experiences_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2d080944c14ece4b0a0d5762f29020c6f14c471ddce589acb19b58c06c5b0a9f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d20838e942e081860ed82c7d6cf0a1da5e627e7f8dfe776432ddde301a66b293.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_comparisons_and_choice_01 -> audio/generated/ko-KR/utterances/d4ae91f6265ed999c3ef6f78db8b04b58156d57a2d8458dc51fae31fca60d8ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d148d90d-91ee-5419-a7d3-fac72395e598', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_comparisons_and_choice_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '69d83f2e7914e7ebda7127fb17bf62bf71efce8727c1447c3c56e51e30a05648'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14bc6a31-53fe-545d-81c8-e9ccf395ed38', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d148d90d-91ee-5419-a7d3-fac72395e598', 1), '69d83f2e7914e7ebda7127fb17bf62bf71efce8727c1447c3c56e51e30a05648',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d4ae91f6265ed999c3ef6f78db8b04b58156d57a2d8458dc51fae31fca60d8ae.mp3', 1488, '2026-09-13 22:25:32.963781', '5a6987c2548e00491d886f5ec854867770dda0d38203cedb0d342299ddcd2fad', 'validated', '{"audio_key":"d4ae91f6265ed999c3ef6f78db8b04b58156d57a2d8458dc51fae31fca60d8ae","entity_key":"u_comparisons_and_choice_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5a6987c2548e00491d886f5ec854867770dda0d38203cedb0d342299ddcd2fad","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d4ae91f6265ed999c3ef6f78db8b04b58156d57a2d8458dc51fae31fca60d8ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_health_and_advice_03 -> audio/generated/ko-KR/utterances/e35ad1752e7ea9ac06e2c43db983021748f9d3d9a04361bed6c8ed2dc6d5a31d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5368e765-0c53-532d-ab33-1016d158495c', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_health_and_advice_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '226dbd820aa9ba84d8a8eaa69033471af2a6e6ce317e01c4c4a3b062a568587e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e4c608e-f892-50e3-9f19-5f7622df4026', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5368e765-0c53-532d-ab33-1016d158495c', 1), '226dbd820aa9ba84d8a8eaa69033471af2a6e6ce317e01c4c4a3b062a568587e',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/e35ad1752e7ea9ac06e2c43db983021748f9d3d9a04361bed6c8ed2dc6d5a31d.mp3', 2272, '2026-09-13 22:25:33.852438', '13510b0ad349b2dd3337fce2986b5daed4f7d12916d4808dfbab3a9511645c2f', 'validated', '{"audio_key":"e35ad1752e7ea9ac06e2c43db983021748f9d3d9a04361bed6c8ed2dc6d5a31d","entity_key":"u_health_and_advice_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"13510b0ad349b2dd3337fce2986b5daed4f7d12916d4808dfbab3a9511645c2f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/e35ad1752e7ea9ac06e2c43db983021748f9d3d9a04361bed6c8ed2dc6d5a31d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_weather_and_change_01 -> audio/generated/ko-KR/utterances/e799d652c8071bd6989a3cf329d746a6a91918396032e3fad6a10848184a4f98.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8594b320-f66f-5192-ab7a-0e2043fb02df', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_weather_and_change_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b1d6d9ce0b36a41bcacedd6015c691092f7030e1a3eb2652584342974e057f0a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('600e4168-32ca-5bca-98d9-dd1a02afc505', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8594b320-f66f-5192-ab7a-0e2043fb02df', 1), 'b1d6d9ce0b36a41bcacedd6015c691092f7030e1a3eb2652584342974e057f0a',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/e799d652c8071bd6989a3cf329d746a6a91918396032e3fad6a10848184a4f98.mp3', 2324, '2026-09-13 22:25:34.070206', '9f4adb4e9e7cedfb4faed13e21aea2d9f9c4c20c17a3c629976378cef0962dcd', 'validated', '{"audio_key":"e799d652c8071bd6989a3cf329d746a6a91918396032e3fad6a10848184a4f98","entity_key":"u_weather_and_change_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9f4adb4e9e7cedfb4faed13e21aea2d9f9c4c20c17a3c629976378cef0962dcd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/e799d652c8071bd6989a3cf329d746a6a91918396032e3fad6a10848184a4f98.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_travel_and_hotel_04 -> audio/generated/ko-KR/utterances/ebeb05a4ec3ce78b36f07b8e694c7b9aca41491ff43f66ea879628de6fea65c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('853337f2-f85f-5323-bf8b-ab92e6fe2d22', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_travel_and_hotel_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '648e4ce2ef59a26e07bc20ad24db63df7291d3d6391e064c63b3c882c3fc6634'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26a976ea-75b8-549f-b8a1-f09040ec072c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('853337f2-f85f-5323-bf8b-ab92e6fe2d22', 1), '648e4ce2ef59a26e07bc20ad24db63df7291d3d6391e064c63b3c882c3fc6634',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/ebeb05a4ec3ce78b36f07b8e694c7b9aca41491ff43f66ea879628de6fea65c2.mp3', 1671, '2026-09-13 22:25:34.893643', '67a8d773f9d081eb8ba75d0ef61db5d260b3a94b643a0ba5f0ced939296f5060', 'validated', '{"audio_key":"ebeb05a4ec3ce78b36f07b8e694c7b9aca41491ff43f66ea879628de6fea65c2","entity_key":"u_travel_and_hotel_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"67a8d773f9d081eb8ba75d0ef61db5d260b3a94b643a0ba5f0ced939296f5060","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/ebeb05a4ec3ce78b36f07b8e694c7b9aca41491ff43f66ea879628de6fea65c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_travel_and_hotel_02_listen -> audio/generated/ko-KR/utterances/ebeb05a4ec3ce78b36f07b8e694c7b9aca41491ff43f66ea879628de6fea65c2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4cc6187b-9994-556c-bf24-b4520fcdf9c6', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_travel_and_hotel_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '648e4ce2ef59a26e07bc20ad24db63df7291d3d6391e064c63b3c882c3fc6634'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('340cdd22-32ea-56e4-97f3-8ac21c88f6aa', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4cc6187b-9994-556c-bf24-b4520fcdf9c6', 1), '648e4ce2ef59a26e07bc20ad24db63df7291d3d6391e064c63b3c882c3fc6634',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/ebeb05a4ec3ce78b36f07b8e694c7b9aca41491ff43f66ea879628de6fea65c2.mp3', 1671, '2026-09-13 22:25:34.893643', '67a8d773f9d081eb8ba75d0ef61db5d260b3a94b643a0ba5f0ced939296f5060', 'validated', '{"audio_key":"ebeb05a4ec3ce78b36f07b8e694c7b9aca41491ff43f66ea879628de6fea65c2","entity_key":"e_travel_and_hotel_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"67a8d773f9d081eb8ba75d0ef61db5d260b3a94b643a0ba5f0ced939296f5060","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/ebeb05a4ec3ce78b36f07b8e694c7b9aca41491ff43f66ea879628de6fea65c2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a2_seoul_weekend_capstone_02 -> audio/generated/ko-KR/utterances/efef3de0e1e15c8879bd7a178656c9019f03aa480b25e65b72a2881f781ea637.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ef3782bf-eaa7-579b-828a-ba1f45c7d516', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a2_seoul_weekend_capstone_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '003a38dc180277cfa4a0f285f8e999e9dabdb29c8c3faac6700eef0559a4905d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1bc9a364-4bd0-545e-a403-f1f43aea0c38', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ef3782bf-eaa7-579b-828a-ba1f45c7d516', 1), '003a38dc180277cfa4a0f285f8e999e9dabdb29c8c3faac6700eef0559a4905d',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/efef3de0e1e15c8879bd7a178656c9019f03aa480b25e65b72a2881f781ea637.mp3', 2351, '2026-09-13 22:25:35.189218', '1d6f7c234cfb2ed038581ec2d7f34371d500cfd23f285c3612ab39e4c3f61a81', 'validated', '{"audio_key":"efef3de0e1e15c8879bd7a178656c9019f03aa480b25e65b72a2881f781ea637","entity_key":"u_a2_seoul_weekend_capstone_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1d6f7c234cfb2ed038581ec2d7f34371d500cfd23f285c3612ab39e4c3f61a81","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/efef3de0e1e15c8879bd7a178656c9019f03aa480b25e65b72a2881f781ea637.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_a2_seoul_weekend_capstone_01_listen -> audio/generated/ko-KR/utterances/efef3de0e1e15c8879bd7a178656c9019f03aa480b25e65b72a2881f781ea637.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b7bf07e1-710a-545e-b60f-6cabea77ac4e', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_a2_seoul_weekend_capstone_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '003a38dc180277cfa4a0f285f8e999e9dabdb29c8c3faac6700eef0559a4905d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2266603-1dd4-530d-97c5-27a63ca5fdff', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b7bf07e1-710a-545e-b60f-6cabea77ac4e', 1), '003a38dc180277cfa4a0f285f8e999e9dabdb29c8c3faac6700eef0559a4905d',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/efef3de0e1e15c8879bd7a178656c9019f03aa480b25e65b72a2881f781ea637.mp3', 2351, '2026-09-13 22:25:35.189218', '1d6f7c234cfb2ed038581ec2d7f34371d500cfd23f285c3612ab39e4c3f61a81', 'validated', '{"audio_key":"efef3de0e1e15c8879bd7a178656c9019f03aa480b25e65b72a2881f781ea637","entity_key":"e_a2_seoul_weekend_capstone_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1d6f7c234cfb2ed038581ec2d7f34371d500cfd23f285c3612ab39e4c3f61a81","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/efef3de0e1e15c8879bd7a178656c9019f03aa480b25e65b72a2881f781ea637.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_a2_seoul_weekend_capstone_04 -> audio/generated/ko-KR/utterances/ff70094ccbbe3e23e57ef7f309a160c75ddf26b1534d60baa8e905062c492793.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a02458f9-87be-5f23-9ef2-498e50383c8c', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_a2_seoul_weekend_capstone_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b4960647397ec07e3652cee36165f1887ac736b15dde73750427779fe25f5a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e07efdd9-b0b7-5c75-ab9c-d4aca6c62b97', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a02458f9-87be-5f23-9ef2-498e50383c8c', 1), '4b4960647397ec07e3652cee36165f1887ac736b15dde73750427779fe25f5a3',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/ff70094ccbbe3e23e57ef7f309a160c75ddf26b1534d60baa8e905062c492793.mp3', 3186, '2026-09-13 22:25:36.088404', 'e6ec1786c4630b7b96e2e14386c58576483af092734c2fb7e8397214074b5cba', 'validated', '{"audio_key":"ff70094ccbbe3e23e57ef7f309a160c75ddf26b1534d60baa8e905062c492793","entity_key":"u_a2_seoul_weekend_capstone_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e6ec1786c4630b7b96e2e14386c58576483af092734c2fb7e8397214074b5cba","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/ff70094ccbbe3e23e57ef7f309a160c75ddf26b1534d60baa8e905062c492793.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_a2_seoul_weekend_capstone_02_listen -> audio/generated/ko-KR/utterances/ff70094ccbbe3e23e57ef7f309a160c75ddf26b1534d60baa8e905062c492793.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('59fe6b07-78b9-5526-b1c7-0e1443afef30', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_a2_seoul_weekend_capstone_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b4960647397ec07e3652cee36165f1887ac736b15dde73750427779fe25f5a3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9f6ef14a-323c-5ff8-80d1-a5e213890588', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('59fe6b07-78b9-5526-b1c7-0e1443afef30', 1), '4b4960647397ec07e3652cee36165f1887ac736b15dde73750427779fe25f5a3',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/ff70094ccbbe3e23e57ef7f309a160c75ddf26b1534d60baa8e905062c492793.mp3', 3186, '2026-09-13 22:25:36.088404', 'e6ec1786c4630b7b96e2e14386c58576483af092734c2fb7e8397214074b5cba', 'validated', '{"audio_key":"ff70094ccbbe3e23e57ef7f309a160c75ddf26b1534d60baa8e905062c492793","entity_key":"e_a2_seoul_weekend_capstone_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e6ec1786c4630b7b96e2e14386c58576483af092734c2fb7e8397214074b5cba","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/ff70094ccbbe3e23e57ef7f309a160c75ddf26b1534d60baa8e905062c492793.mp3"}'
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

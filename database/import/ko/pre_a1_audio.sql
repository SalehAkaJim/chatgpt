-- Generated audio link import for ko-KR Pre-A1
-- Source manifest: audio/manifests/ko/Pre-A1.json
-- Generated rows: 377
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'ko' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'ko-KR' LIMIT 1);
START TRANSACTION;

-- d_ko_ko-real-world-gate_meet:2 -> audio/generated/ko-KR/dialogues/0165b4e29f8b22cb65d7b10259447df2352b457ea4598950534f997a91e19f4c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6740601a-b310-5c41-92e8-a8d66a22ed3d', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-real-world-gate_meet:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '86423ad4e65b327df933440f8591a5c11edd1ba7dd47cf4d56540ab033259c51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e0b1a5f-081b-5326-ae6b-5a5b77effa18', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6740601a-b310-5c41-92e8-a8d66a22ed3d', 1), '86423ad4e65b327df933440f8591a5c11edd1ba7dd47cf4d56540ab033259c51',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/0165b4e29f8b22cb65d7b10259447df2352b457ea4598950534f997a91e19f4c.mp3', 1280, '2026-09-14 13:39:30.810451', 'f6d6ecc2889340cfd8c4b77ce48325475df2f186a1d906c12b79cc4d6f92702d', 'validated', '{"audio_key":"0165b4e29f8b22cb65d7b10259447df2352b457ea4598950534f997a91e19f4c","entity_key":"d_ko_ko-real-world-gate_meet:2","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f6d6ecc2889340cfd8c4b77ce48325475df2f186a1d906c12b79cc4d6f92702d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/0165b4e29f8b22cb65d7b10259447df2352b457ea4598950534f997a91e19f4c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-about-me_origin_age:5 -> audio/generated/ko-KR/dialogues/12384cc4ba978712079743d5c1026447814aa1122362071ed9dfb80c1c981d22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bbcdd5d5-6a5c-5bee-bc2d-8551523ef687', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-about-me_origin_age:5')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8218bb6c3e130fe67e221d37757e98687a790d7f8d988ce6e54cb7f362255c64'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ac3b3a4-2e01-55ff-a26a-a0b0b45ea0d4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bbcdd5d5-6a5c-5bee-bc2d-8551523ef687', 1), '8218bb6c3e130fe67e221d37757e98687a790d7f8d988ce6e54cb7f362255c64',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/12384cc4ba978712079743d5c1026447814aa1122362071ed9dfb80c1c981d22.mp3', 1149, '2026-09-14 13:39:31.984237', 'c464f0f749c5277e94c68ae9b7d4b6cc7c14c89b918e4030f0cb99965c7ac58a', 'validated', '{"audio_key":"12384cc4ba978712079743d5c1026447814aa1122362071ed9dfb80c1c981d22","entity_key":"d_ko_ko-about-me_origin_age:5","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c464f0f749c5277e94c68ae9b7d4b6cc7c14c89b918e4030f0cb99965c7ac58a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/12384cc4ba978712079743d5c1026447814aa1122362071ed9dfb80c1c981d22.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_02:4 -> audio/generated/ko-KR/dialogues/13f6cc35f370b2302fa93fb0118dcc6795187172d254e251bf80929c94483a17.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8fae2ac6-522a-5ad4-a114-a1d2316812a3', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5af4227d3d4fe80e98f654fbb512e9bb5c4bafd1d8618af0035d41fde63cb71e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3dbb6d0f-1245-5214-9fc9-319c8b415e12', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8fae2ac6-522a-5ad4-a114-a1d2316812a3', 1), '5af4227d3d4fe80e98f654fbb512e9bb5c4bafd1d8618af0035d41fde63cb71e',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/13f6cc35f370b2302fa93fb0118dcc6795187172d254e251bf80929c94483a17.mp3', 1436, '2026-09-14 13:39:33.242401', '7dfc5db619deb7865747db5b7a19da6feca259c5d9ec21b49cb30bc25b986e67', 'validated', '{"audio_key":"13f6cc35f370b2302fa93fb0118dcc6795187172d254e251bf80929c94483a17","entity_key":"d_first_conversation_02:4","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7dfc5db619deb7865747db5b7a19da6feca259c5d9ec21b49cb30bc25b986e67","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/13f6cc35f370b2302fa93fb0118dcc6795187172d254e251bf80929c94483a17.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_01:2 -> audio/generated/ko-KR/dialogues/16f1a91c05ef90f3d34c6c188e5477eb9930315a5a100b62a8fb903db25f4013.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9258a1da-84a4-5de6-8cbe-3128f88a193e', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f9e3dbff64b01f3f82b3adc4b9fa3e7bacfc349e63ca426dd236dcd19b471405'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('675baca6-1a2e-5fc1-9fe0-fd9a8220e16a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9258a1da-84a4-5de6-8cbe-3128f88a193e', 1), 'f9e3dbff64b01f3f82b3adc4b9fa3e7bacfc349e63ca426dd236dcd19b471405',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/16f1a91c05ef90f3d34c6c188e5477eb9930315a5a100b62a8fb903db25f4013.mp3', 1253, '2026-09-14 13:39:34.286159', '328e382c165d97429c1144d3249d7d290a5653ae33b2897dfa759660da42ce24', 'validated', '{"audio_key":"16f1a91c05ef90f3d34c6c188e5477eb9930315a5a100b62a8fb903db25f4013","entity_key":"d_numbers_0_10_01:2","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"328e382c165d97429c1144d3249d7d290a5653ae33b2897dfa759660da42ce24","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/16f1a91c05ef90f3d34c6c188e5477eb9930315a5a100b62a8fb903db25f4013.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-forms-signs_sign:1 -> audio/generated/ko-KR/dialogues/1852328a5903fe99dfdefb053028e435d03eab192e084ffd178f4ebaa161f840.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d22ce9f4-32cd-5baf-9d55-ccd46ed41b40', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-forms-signs_sign:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eef29f00727e489aa72e3e23444865969bb47aa2dd4b6b25a3ea9dba0de67ec8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c929c45-1431-5264-b612-182cc1f7027e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d22ce9f4-32cd-5baf-9d55-ccd46ed41b40', 1), 'eef29f00727e489aa72e3e23444865969bb47aa2dd4b6b25a3ea9dba0de67ec8',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/1852328a5903fe99dfdefb053028e435d03eab192e084ffd178f4ebaa161f840.mp3', 1671, '2026-09-14 13:39:35.306118', '96de4af2dfe996a35f9248daae01a9eb18268d53221d335e921825a787ce44ab', 'validated', '{"audio_key":"1852328a5903fe99dfdefb053028e435d03eab192e084ffd178f4ebaa161f840","entity_key":"d_ko_ko-forms-signs_sign:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"96de4af2dfe996a35f9248daae01a9eb18268d53221d335e921825a787ce44ab","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/1852328a5903fe99dfdefb053028e435d03eab192e084ffd178f4ebaa161f840.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_01:1 -> audio/generated/ko-KR/dialogues/20f62849946c80e82adad6abdbd41704e7cc4e6b27ab93363bdd5e46ae178b41.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6ab5b4af-a39c-5cc1-9835-5eebad8ecac0', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dcc320d3b049f41d97e99864132c470d6e85bf67c53563e3f39710d37af4c2fa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('84e4865b-40eb-5da5-afaa-97cbb652451a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6ab5b4af-a39c-5cc1-9835-5eebad8ecac0', 1), 'dcc320d3b049f41d97e99864132c470d6e85bf67c53563e3f39710d37af4c2fa',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/20f62849946c80e82adad6abdbd41704e7cc4e6b27ab93363bdd5e46ae178b41.mp3', 2742, '2026-09-14 13:39:36.676500', '673d8c05127f4de4222ae4fac3702c18769896aefb0e45898319b027a41fa149', 'validated', '{"audio_key":"20f62849946c80e82adad6abdbd41704e7cc4e6b27ab93363bdd5e46ae178b41","entity_key":"d_my_name_01:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"673d8c05127f4de4222ae4fac3702c18769896aefb0e45898319b027a41fa149","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/20f62849946c80e82adad6abdbd41704e7cc4e6b27ab93363bdd5e46ae178b41.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_01:3 -> audio/generated/ko-KR/dialogues/2767511f48173a4081d53d0647571f92784141a08a59805a1142baf567eaa9e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f3e6a34c-254c-598b-ba6b-3988b1bcfad7', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a5fddbc201cb8774cdb7cc1eac3f320a72c32304900f12d2b0947040bdd4fc35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b76ff7ce-9d37-5b99-bf06-4da93993ec06', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f3e6a34c-254c-598b-ba6b-3988b1bcfad7', 1), 'a5fddbc201cb8774cdb7cc1eac3f320a72c32304900f12d2b0947040bdd4fc35',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2767511f48173a4081d53d0647571f92784141a08a59805a1142baf567eaa9e5.mp3', 1436, '2026-09-14 13:39:37.701999', 'b3a96582198ebe3358a453c7a2ff5ff4ed534bcfc7035c2e50e2232c095897ec', 'validated', '{"audio_key":"2767511f48173a4081d53d0647571f92784141a08a59805a1142baf567eaa9e5","entity_key":"d_first_greetings_01:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b3a96582198ebe3358a453c7a2ff5ff4ed534bcfc7035c2e50e2232c095897ec","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/2767511f48173a4081d53d0647571f92784141a08a59805a1142baf567eaa9e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_meaning_help:2 -> audio/generated/ko-KR/dialogues/2a84a20c6d6c1b4c3838e2cce39cda7c2c19ad18dd398a55e47ceffb60ea269b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9fec1cd1-6cbb-533a-abbb-96af5fa3d4de', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_meaning_help:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae713b65439d2c5c68601f886c885c9bf9839769e45c6de8c42f382e8c4a0f2f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a112418-3c8a-5ab3-aade-be0022106494', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9fec1cd1-6cbb-533a-abbb-96af5fa3d4de', 1), 'ae713b65439d2c5c68601f886c885c9bf9839769e45c6de8c42f382e8c4a0f2f',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2a84a20c6d6c1b4c3838e2cce39cda7c2c19ad18dd398a55e47ceffb60ea269b.mp3', 1253, '2026-09-14 13:39:38.760105', '190043c19868704351ff19160347f7ef31d5ac2a2495a077d22b41a5bd2b7013', 'validated', '{"audio_key":"2a84a20c6d6c1b4c3838e2cce39cda7c2c19ad18dd398a55e47ceffb60ea269b","entity_key":"d_ko_meaning_help:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"190043c19868704351ff19160347f7ef31d5ac2a2495a077d22b41a5bd2b7013","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/2a84a20c6d6c1b4c3838e2cce39cda7c2c19ad18dd398a55e47ceffb60ea269b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_01:3 -> audio/generated/ko-KR/dialogues/2b4cdad36afb0e7d9a76e33b3931ac907c42870a673301323d4504a1a80c3064.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cd7391f6-3264-5aff-b8fd-47d1c610dabc', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e0f24490572218a1e04c5f57dbb3a314985e7f962e15ca4e19bcbd6b495601b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b8fb5a56-83d4-5e86-98ca-7017748317e3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cd7391f6-3264-5aff-b8fd-47d1c610dabc', 1), '9e0f24490572218a1e04c5f57dbb3a314985e7f962e15ca4e19bcbd6b495601b',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2b4cdad36afb0e7d9a76e33b3931ac907c42870a673301323d4504a1a80c3064.mp3', 1018, '2026-09-14 13:39:39.749196', 'e6bcc8235f3d102545fd48509c87cef0eae133b3b294efc69953bafbd30bcc8a', 'validated', '{"audio_key":"2b4cdad36afb0e7d9a76e33b3931ac907c42870a673301323d4504a1a80c3064","entity_key":"d_numbers_0_10_01:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e6bcc8235f3d102545fd48509c87cef0eae133b3b294efc69953bafbd30bcc8a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/2b4cdad36afb0e7d9a76e33b3931ac907c42870a673301323d4504a1a80c3064.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hangul_basics_01:3 -> audio/generated/ko-KR/dialogues/2f792b9b998446e10549e883a50449549b76a372862bb1c30e39698a76f7ee51.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('68588175-4078-54e9-bdb9-97ebb76317c7', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hangul_basics_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b33f602fbe6c65cb17625d1dba62f97ced9bd581aeeb2db65d54cd4ae6c90afb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a6ff772-3a21-5bb4-99e6-b7d596c021be', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('68588175-4078-54e9-bdb9-97ebb76317c7', 1), 'b33f602fbe6c65cb17625d1dba62f97ced9bd581aeeb2db65d54cd4ae6c90afb',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2f792b9b998446e10549e883a50449549b76a372862bb1c30e39698a76f7ee51.mp3', 1201, '2026-09-14 13:39:41.051669', '0e5fba99298661b43208ce9ee34a7b174129b901485ec8d93882b11b4423bdd2', 'validated', '{"audio_key":"2f792b9b998446e10549e883a50449549b76a372862bb1c30e39698a76f7ee51","entity_key":"d_hangul_basics_01:3","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0e5fba99298661b43208ce9ee34a7b174129b901485ec8d93882b11b4423bdd2","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/2f792b9b998446e10549e883a50449549b76a372862bb1c30e39698a76f7ee51.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-about-me_origin_age:2 -> audio/generated/ko-KR/dialogues/308f903d00caee3b2b837cfbf3ba343302a5887295883bda3d2ca23c8dc0e779.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9f5824c9-7319-5ccd-bf13-6ba202fe84ff', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-about-me_origin_age:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e0f639938481a5a0c0632b36b0fc7d363c18c8ee5b0a2484d168d5c99b55b9f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dfe1eec0-7e73-5c8e-929a-a738b70cecad', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9f5824c9-7319-5ccd-bf13-6ba202fe84ff', 1), 'e0f639938481a5a0c0632b36b0fc7d363c18c8ee5b0a2484d168d5c99b55b9f3',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/308f903d00caee3b2b837cfbf3ba343302a5887295883bda3d2ca23c8dc0e779.mp3', 1149, '2026-09-14 13:39:42.051375', 'cf76cc6c425ac849935f4257cc6aaebf6ed8c7fe26ff99f7a80d7a232b6d97d4', 'validated', '{"audio_key":"308f903d00caee3b2b837cfbf3ba343302a5887295883bda3d2ca23c8dc0e779","entity_key":"d_ko_ko-about-me_origin_age:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cf76cc6c425ac849935f4257cc6aaebf6ed8c7fe26ff99f7a80d7a232b6d97d4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/308f903d00caee3b2b837cfbf3ba343302a5887295883bda3d2ca23c8dc0e779.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_02:3 -> audio/generated/ko-KR/dialogues/31dd4a224cc7228b4331c9f806be54a75f651143f278e0c2f5882eb8143693a7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('be6e8bea-3316-53b5-8917-abbc5cb77254', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '45391eed28a0780f4e92292ed79385cc0b5c47a8442a720b4fc6895266d1c7b7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de2a06ef-cdbc-5afc-91bf-c29aba75a04f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('be6e8bea-3316-53b5-8917-abbc5cb77254', 1), '45391eed28a0780f4e92292ed79385cc0b5c47a8442a720b4fc6895266d1c7b7',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/31dd4a224cc7228b4331c9f806be54a75f651143f278e0c2f5882eb8143693a7.mp3', 1097, '2026-09-14 13:39:43.106327', '5ae1d337aa9d17d79d9538d984f0633cb1dbaa6d19d9124bb8c1443d73af6b22', 'validated', '{"audio_key":"31dd4a224cc7228b4331c9f806be54a75f651143f278e0c2f5882eb8143693a7","entity_key":"d_numbers_0_10_02:3","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5ae1d337aa9d17d79d9538d984f0633cb1dbaa6d19d9124bb8c1443d73af6b22","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/31dd4a224cc7228b4331c9f806be54a75f651143f278e0c2f5882eb8143693a7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_meaning_help:1 -> audio/generated/ko-KR/dialogues/3221863d1851e5b112feac1671e45271412027509c393a3c6f4aa6ce7ec347cc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4267cda1-569d-5cb7-9105-f9da2b19d55f', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_meaning_help:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca6a9a5e3e9c117a35042dd3e2f15e11370e5ff643d20f5b47c96bcb20b23871'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47125fdd-df8b-59d1-b65d-3ebb70635668', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4267cda1-569d-5cb7-9105-f9da2b19d55f', 1), 'ca6a9a5e3e9c117a35042dd3e2f15e11370e5ff643d20f5b47c96bcb20b23871',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/3221863d1851e5b112feac1671e45271412027509c393a3c6f4aa6ce7ec347cc.mp3', 1515, '2026-09-14 13:39:44.125741', '19edf6a9b561d912db3d421a2e94d48cb90a79538d18541fdf02ec53c9336723', 'validated', '{"audio_key":"3221863d1851e5b112feac1671e45271412027509c393a3c6f4aa6ce7ec347cc","entity_key":"d_ko_meaning_help:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"19edf6a9b561d912db3d421a2e94d48cb90a79538d18541fdf02ec53c9336723","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/3221863d1851e5b112feac1671e45271412027509c393a3c6f4aa6ce7ec347cc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_01:2 -> audio/generated/ko-KR/dialogues/323a06d3c717ed68adb8d24948f22839ea436349b580f5f70576e9ad43ecfd40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d3d59348-3a4f-5df3-b922-a210024973da', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc2a7e4a845e336fd9c9708f9ade1a563a172aa0c52ab142c152eb69f3fa4992'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('be489165-1daa-5759-9ad1-e73c7ce1b24f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d3d59348-3a4f-5df3-b922-a210024973da', 1), 'cc2a7e4a845e336fd9c9708f9ade1a563a172aa0c52ab142c152eb69f3fa4992',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/323a06d3c717ed68adb8d24948f22839ea436349b580f5f70576e9ad43ecfd40.mp3', 1619, '2026-09-14 13:39:45.134109', 'c04d8ab204b77d6e2f6cefd2c3e2ca0240606ace79e93a57e93be539835a5b68', 'validated', '{"audio_key":"323a06d3c717ed68adb8d24948f22839ea436349b580f5f70576e9ad43ecfd40","entity_key":"d_first_greetings_01:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c04d8ab204b77d6e2f6cefd2c3e2ca0240606ace79e93a57e93be539835a5b68","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/323a06d3c717ed68adb8d24948f22839ea436349b580f5f70576e9ad43ecfd40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hangul_basics_02:4 -> audio/generated/ko-KR/dialogues/38ad6b2274948b2eb82fd9cc8e472e3deb256e0b57e203115d2fb65ec7325c3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('62d84854-415f-53a9-9195-be3a6f4783df', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hangul_basics_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec822a56d86df91c9af0e3f2aead537672630cea2aa75d6e66458e88649cbd8a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9e6cd5f1-5d9c-59a8-ad0a-f884a9f2cf4f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('62d84854-415f-53a9-9195-be3a6f4783df', 1), 'ec822a56d86df91c9af0e3f2aead537672630cea2aa75d6e66458e88649cbd8a',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/38ad6b2274948b2eb82fd9cc8e472e3deb256e0b57e203115d2fb65ec7325c3b.mp3', 1201, '2026-09-14 13:39:46.081591', 'd1ca1f169d67fed2cd14112c860d517912e801b3e0042a1726bf3fb3fe7fd72a', 'validated', '{"audio_key":"38ad6b2274948b2eb82fd9cc8e472e3deb256e0b57e203115d2fb65ec7325c3b","entity_key":"d_hangul_basics_02:4","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d1ca1f169d67fed2cd14112c860d517912e801b3e0042a1726bf3fb3fe7fd72a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/38ad6b2274948b2eb82fd9cc8e472e3deb256e0b57e203115d2fb65ec7325c3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-forms-signs_form:4 -> audio/generated/ko-KR/dialogues/3c5338df7838e6ff52e2d805680dc5b9f29a1a90ee9cf893142219c9f10907c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a39bab55-0105-5664-a7f8-2dc003095da4', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-forms-signs_form:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c64bb303cccd212cb6b8a0b3a36705cb05f9e07b9b3eba2226b628d7b7f42a8e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1498109-9093-54b7-8117-3b55d7235671', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a39bab55-0105-5664-a7f8-2dc003095da4', 1), 'c64bb303cccd212cb6b8a0b3a36705cb05f9e07b9b3eba2226b628d7b7f42a8e',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/3c5338df7838e6ff52e2d805680dc5b9f29a1a90ee9cf893142219c9f10907c4.mp3', 1671, '2026-09-14 13:39:47.271176', '96d253c7abcbc07b2b4d56fc25c042930974b4db4d3264b63fcbbe0cb9c9ed7a', 'validated', '{"audio_key":"3c5338df7838e6ff52e2d805680dc5b9f29a1a90ee9cf893142219c9f10907c4","entity_key":"d_ko_ko-forms-signs_form:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"96d253c7abcbc07b2b4d56fc25c042930974b4db4d3264b63fcbbe0cb9c9ed7a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/3c5338df7838e6ff52e2d805680dc5b9f29a1a90ee9cf893142219c9f10907c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_01:1 -> audio/generated/ko-KR/dialogues/3f18d3056bc5e8e0182c6c0155d1d58674fd761a3b55347e6d31cd0700e33895.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('295ae802-1f89-5630-87c5-247360dde17c', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8ba003f1018aa6e1a2dcba7829c74f754fdd4a01388cd08c5c5e637f30faaf56'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6edd0c94-7571-5e4f-a8e5-9124d8142638', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('295ae802-1f89-5630-87c5-247360dde17c', 1), '8ba003f1018aa6e1a2dcba7829c74f754fdd4a01388cd08c5c5e637f30faaf56',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/3f18d3056bc5e8e0182c6c0155d1d58674fd761a3b55347e6d31cd0700e33895.mp3', 1436, '2026-09-14 13:39:48.269527', 'bf8b6093d45a71fa6cc218614b6ec97a0998ef493e53e5f4570a7f7612ace391', 'validated', '{"audio_key":"3f18d3056bc5e8e0182c6c0155d1d58674fd761a3b55347e6d31cd0700e33895","entity_key":"d_first_sounds_01:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bf8b6093d45a71fa6cc218614b6ec97a0998ef493e53e5f4570a7f7612ace391","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/3f18d3056bc5e8e0182c6c0155d1d58674fd761a3b55347e6d31cd0700e33895.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_02:4 -> audio/generated/ko-KR/dialogues/3fb2c6e33aca0ee35629b35ed001cf65dfff107a52424899964bf93b23026d51.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('781f894d-feb8-559f-b6ef-b4b834036511', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea29b7c5ca9418bad709f26a6caebf52e421976f6d6c10d927fbb70f0997628e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8fbcd3b1-4818-5df8-9d22-8cbceb9a35bd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('781f894d-feb8-559f-b6ef-b4b834036511', 1), 'ea29b7c5ca9418bad709f26a6caebf52e421976f6d6c10d927fbb70f0997628e',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/3fb2c6e33aca0ee35629b35ed001cf65dfff107a52424899964bf93b23026d51.mp3', 1332, '2026-09-14 13:39:49.347440', '2085f74ea43c1d739b1456c81f0ee1feb8d2b92b9010f463c48a687eec38df73', 'validated', '{"audio_key":"3fb2c6e33aca0ee35629b35ed001cf65dfff107a52424899964bf93b23026d51","entity_key":"d_first_objects_02:4","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2085f74ea43c1d739b1456c81f0ee1feb8d2b92b9010f463c48a687eec38df73","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/3fb2c6e33aca0ee35629b35ed001cf65dfff107a52424899964bf93b23026d51.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ready_repair:4 -> audio/generated/ko-KR/dialogues/41c988675074318bf9e6a002353f7f8266a0b76d9e0cb6dca25ae9cc74c8f8a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0ba91941-89a2-5c9b-b1e0-290f1f344c02', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ready_repair:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e063bcae02fff4d36082f8905dfa97f89a891c02297fa5531c91d65345f5e07b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb502449-ed51-52a9-a21a-02a59fab5983', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0ba91941-89a2-5c9b-b1e0-290f1f344c02', 1), 'e063bcae02fff4d36082f8905dfa97f89a891c02297fa5531c91d65345f5e07b',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/41c988675074318bf9e6a002353f7f8266a0b76d9e0cb6dca25ae9cc74c8f8a2.mp3', 2455, '2026-09-14 13:39:50.554890', '13a27fdd240f5b4c2cbe6c5aeef0ee9229f8367a2dc8cbd99b0ffd2a1e3314f0', 'validated', '{"audio_key":"41c988675074318bf9e6a002353f7f8266a0b76d9e0cb6dca25ae9cc74c8f8a2","entity_key":"d_ko_ready_repair:4","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"13a27fdd240f5b4c2cbe6c5aeef0ee9229f8367a2dc8cbd99b0ffd2a1e3314f0","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/41c988675074318bf9e6a002353f7f8266a0b76d9e0cb6dca25ae9cc74c8f8a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_01:2 -> audio/generated/ko-KR/dialogues/4294c6e2b4b9cd59d91c7f0d9b85b2de75180afe61fe768d6647ae87f3d305d7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('318523ac-2579-51bb-95ef-cc7e021d4dd5', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3cd6f3e012c7b1c4c0aa8293ee465c1ceb3a0a3a0ba8709af81fe45838727991'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54b79e1a-9162-5e86-9dbc-14444ae73092', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('318523ac-2579-51bb-95ef-cc7e021d4dd5', 1), '3cd6f3e012c7b1c4c0aa8293ee465c1ceb3a0a3a0ba8709af81fe45838727991',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/4294c6e2b4b9cd59d91c7f0d9b85b2de75180afe61fe768d6647ae87f3d305d7.mp3', 783, '2026-09-14 13:39:51.517681', 'a164baed72e3d955de4dc85f51fa977080cad31091d1091f3842a4e0fad54a76', 'validated', '{"audio_key":"4294c6e2b4b9cd59d91c7f0d9b85b2de75180afe61fe768d6647ae87f3d305d7","entity_key":"d_first_sounds_01:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a164baed72e3d955de4dc85f51fa977080cad31091d1091f3842a4e0fad54a76","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/4294c6e2b4b9cd59d91c7f0d9b85b2de75180afe61fe768d6647ae87f3d305d7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_01:4 -> audio/generated/ko-KR/dialogues/42bafacdb5e9cf8ef845d153fe526836e55d8812e47932f04dc7e34e36f55f06.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('92ca85d5-d443-563a-8531-de4db6be01ab', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec00bce8ea6ef56d28a7f9b8d0fbf143745f101853b98c7768c3766add1809e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d4b53139-73f5-5ba8-9d10-be1860d2a2ea', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('92ca85d5-d443-563a-8531-de4db6be01ab', 1), 'ec00bce8ea6ef56d28a7f9b8d0fbf143745f101853b98c7768c3766add1809e5',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/42bafacdb5e9cf8ef845d153fe526836e55d8812e47932f04dc7e34e36f55f06.mp3', 1436, '2026-09-14 13:39:52.528606', '86ba11b4799a57b42dccba1d14f88d65c7046574b7dc8fee16133673c06e8c92', 'validated', '{"audio_key":"42bafacdb5e9cf8ef845d153fe526836e55d8812e47932f04dc7e34e36f55f06","entity_key":"d_first_objects_01:4","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"86ba11b4799a57b42dccba1d14f88d65c7046574b7dc8fee16133673c06e8c92","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/42bafacdb5e9cf8ef845d153fe526836e55d8812e47932f04dc7e34e36f55f06.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-about-me_origin_age:6 -> audio/generated/ko-KR/dialogues/4bf9dbe8864363ed0f026a885c893d9e4147ad83bd4d737ca055c1a9477a7476.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('491f6394-cc1b-553b-9c6f-30962132fa97', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-about-me_origin_age:6')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '980077856d3b41c2260e9598d3a2f2c62ad369e14908675a84224c27d0997d8a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('426a724b-ba4b-551d-ae25-ba91688fe198', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('491f6394-cc1b-553b-9c6f-30962132fa97', 1), '980077856d3b41c2260e9598d3a2f2c62ad369e14908675a84224c27d0997d8a',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/4bf9dbe8864363ed0f026a885c893d9e4147ad83bd4d737ca055c1a9477a7476.mp3', 1201, '2026-09-14 13:39:53.513725', '487ff29a69e0e68b735a8409d9cd0956e0f2080cc5549773c414505d76403847', 'validated', '{"audio_key":"4bf9dbe8864363ed0f026a885c893d9e4147ad83bd4d737ca055c1a9477a7476","entity_key":"d_ko_ko-about-me_origin_age:6","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"487ff29a69e0e68b735a8409d9cd0956e0f2080cc5549773c414505d76403847","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/4bf9dbe8864363ed0f026a885c893d9e4147ad83bd4d737ca055c1a9477a7476.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_01:4 -> audio/generated/ko-KR/dialogues/4ec58ad10e215740ec9f916e0ab402b7ab8a1b75c6836be59e69486b2041bc51.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2633602b-a72a-5aef-82f7-189b41fcbdb2', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ba1d18fcd6f6dc95ce9b88ac38d701b1903db772715cd737334a9aa45a7bfc2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d27d4ff4-95ef-51a5-bb1d-8de240fb72ce', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2633602b-a72a-5aef-82f7-189b41fcbdb2', 1), '3ba1d18fcd6f6dc95ce9b88ac38d701b1903db772715cd737334a9aa45a7bfc2',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/4ec58ad10e215740ec9f916e0ab402b7ab8a1b75c6836be59e69486b2041bc51.mp3', 1253, '2026-09-14 13:39:54.490716', '39441054c4581e1e8f8b4885a2bfe3f7914f1ac83d4ea56ed4c3d8442f06a179', 'validated', '{"audio_key":"4ec58ad10e215740ec9f916e0ab402b7ab8a1b75c6836be59e69486b2041bc51","entity_key":"d_how_are_you_01:4","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"39441054c4581e1e8f8b4885a2bfe3f7914f1ac83d4ea56ed4c3d8442f06a179","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/4ec58ad10e215740ec9f916e0ab402b7ab8a1b75c6836be59e69486b2041bc51.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_01:3 -> audio/generated/ko-KR/dialogues/4fc8c60ba8da8913c5540bc457e4cd2d54e24020410cf83be7c8db65dfeb1d76.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e041cb0b-bdde-5de2-b901-0503d36ea627', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db16eaeab158e4cbcd74b2cc8e3f47c96628362be2115f9a5b41bb08ed192890'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e871ed4-37da-59bb-8939-81e1e2f22b9a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e041cb0b-bdde-5de2-b901-0503d36ea627', 1), 'db16eaeab158e4cbcd74b2cc8e3f47c96628362be2115f9a5b41bb08ed192890',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/4fc8c60ba8da8913c5540bc457e4cd2d54e24020410cf83be7c8db65dfeb1d76.mp3', 1515, '2026-09-14 13:39:55.493218', 'f34ce8a8c178e9ab6847a89a74aab485adfd6490b49d43907c194ea013fa8701', 'validated', '{"audio_key":"4fc8c60ba8da8913c5540bc457e4cd2d54e24020410cf83be7c8db65dfeb1d76","entity_key":"d_first_sounds_01:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f34ce8a8c178e9ab6847a89a74aab485adfd6490b49d43907c194ea013fa8701","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/4fc8c60ba8da8913c5540bc457e4cd2d54e24020410cf83be7c8db65dfeb1d76.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_02:2 -> audio/generated/ko-KR/dialogues/5040489471cf1e65c624894f82017aaad95a5de8cec65bf65c0e9a926b47a88d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('17037825-f3bd-5999-84e6-d0429a3c6c20', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '86935570ba5eae0faf423a92c422c91b5d15ed70a54363fc83d8c1881ebaf0e0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f281d27f-5adb-555f-a7b6-ce75b374274e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('17037825-f3bd-5999-84e6-d0429a3c6c20', 1), '86935570ba5eae0faf423a92c422c91b5d15ed70a54363fc83d8c1881ebaf0e0',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/5040489471cf1e65c624894f82017aaad95a5de8cec65bf65c0e9a926b47a88d.mp3', 1332, '2026-09-14 13:39:56.600078', '5e3f320a60fe2ded0868a30ca2735e7be695cd50122c66f0e360dd20c3cc9c23', 'validated', '{"audio_key":"5040489471cf1e65c624894f82017aaad95a5de8cec65bf65c0e9a926b47a88d","entity_key":"d_my_name_02:2","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5e3f320a60fe2ded0868a30ca2735e7be695cd50122c66f0e360dd20c3cc9c23","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/5040489471cf1e65c624894f82017aaad95a5de8cec65bf65c0e9a926b47a88d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_02:2 -> audio/generated/ko-KR/dialogues/509ffccc5b28144ade730a31b71a3e01be5e7a0a8a86b1baa49b5ffb6236bac3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3c665303-d2ab-5558-ac90-b0cba4c39832', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a95e58b223324b90c30c5fc7c7c5160c8b315275e1e840d4d269689d82860ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf211618-cc77-57d0-bfd4-5eabb67a5573', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3c665303-d2ab-5558-ac90-b0cba4c39832', 1), '4a95e58b223324b90c30c5fc7c7c5160c8b315275e1e840d4d269689d82860ea',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/509ffccc5b28144ade730a31b71a3e01be5e7a0a8a86b1baa49b5ffb6236bac3.mp3', 1253, '2026-09-14 13:39:57.624110', '3bfed4441a2c7a7e7b1db41372be78108b5f6b84ad36807c00a1ff3c7104c547', 'validated', '{"audio_key":"509ffccc5b28144ade730a31b71a3e01be5e7a0a8a86b1baa49b5ffb6236bac3","entity_key":"d_numbers_0_10_02:2","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3bfed4441a2c7a7e7b1db41372be78108b5f6b84ad36807c00a1ff3c7104c547","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/509ffccc5b28144ade730a31b71a3e01be5e7a0a8a86b1baa49b5ffb6236bac3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-real-life-numbers_price_day:3 -> audio/generated/ko-KR/dialogues/51deeebaede07edc9553fd11910ac983cf995bfdfdf2040cfb55d1db91659df2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9754296c-80e3-5121-9ecb-8ec63a337d37', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-real-life-numbers_price_day:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6c95540e90f1a66864be896a441a4a5d4cc012901b4f7494e1faceab210cdd98'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a12f47b9-5c5e-52e2-b58e-b4f69011f656', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9754296c-80e3-5121-9ecb-8ec63a337d37', 1), '6c95540e90f1a66864be896a441a4a5d4cc012901b4f7494e1faceab210cdd98',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/51deeebaede07edc9553fd11910ac983cf995bfdfdf2040cfb55d1db91659df2.mp3', 835, '2026-09-14 13:39:58.614373', 'bc2bbaa4215ee61fb73f6d934dd6d8eea2e472d0059317abafb83285bdad64a6', 'validated', '{"audio_key":"51deeebaede07edc9553fd11910ac983cf995bfdfdf2040cfb55d1db91659df2","entity_key":"d_ko_ko-real-life-numbers_price_day:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bc2bbaa4215ee61fb73f6d934dd6d8eea2e472d0059317abafb83285bdad64a6","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/51deeebaede07edc9553fd11910ac983cf995bfdfdf2040cfb55d1db91659df2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_02:4 -> audio/generated/ko-KR/dialogues/53705db6c6d88db475c175d83d1890ab44e47e2ade3d455118a025e8ee90ac19.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e513bfb3-145e-5160-949f-f2ea0b7c45dc', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2afe458f19ca4a21bdd8d37abbb1371aee85d5f6961325bca026a9be16847745'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('40ea58f2-71a9-546a-98ac-098730f6ac92', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e513bfb3-145e-5160-949f-f2ea0b7c45dc', 1), '2afe458f19ca4a21bdd8d37abbb1371aee85d5f6961325bca026a9be16847745',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/53705db6c6d88db475c175d83d1890ab44e47e2ade3d455118a025e8ee90ac19.mp3', 1384, '2026-09-14 13:39:59.625037', 'e97f2a5353c964396edeb13a9879617b5b299de3bb2abcd6553d4a327bf0d0cd', 'validated', '{"audio_key":"53705db6c6d88db475c175d83d1890ab44e47e2ade3d455118a025e8ee90ac19","entity_key":"d_first_greetings_02:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e97f2a5353c964396edeb13a9879617b5b299de3bb2abcd6553d4a327bf0d0cd","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/53705db6c6d88db475c175d83d1890ab44e47e2ade3d455118a025e8ee90ac19.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_02:1 -> audio/generated/ko-KR/dialogues/55d4cdeb3be5ac8eb3b5fc5b722b3f8f7faab081d9187c06f87fa93a507e020b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('352aedd5-8978-5c27-82ca-759b0a865d53', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a5fddbc201cb8774cdb7cc1eac3f320a72c32304900f12d2b0947040bdd4fc35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9d21345-cfcb-5d93-9eef-c8f55104a214', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('352aedd5-8978-5c27-82ca-759b0a865d53', 1), 'a5fddbc201cb8774cdb7cc1eac3f320a72c32304900f12d2b0947040bdd4fc35',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/55d4cdeb3be5ac8eb3b5fc5b722b3f8f7faab081d9187c06f87fa93a507e020b.mp3', 1384, '2026-09-14 13:40:00.645312', '9f8242b6277cbd512dd1c073e8ceb500bdc6f527a7f99eb759c7e5713a8cd230', 'validated', '{"audio_key":"55d4cdeb3be5ac8eb3b5fc5b722b3f8f7faab081d9187c06f87fa93a507e020b","entity_key":"d_first_conversation_02:1","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9f8242b6277cbd512dd1c073e8ceb500bdc6f527a7f99eb759c7e5713a8cd230","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/55d4cdeb3be5ac8eb3b5fc5b722b3f8f7faab081d9187c06f87fa93a507e020b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ready_intro:3 -> audio/generated/ko-KR/dialogues/593b478f1d998767dbca6c9773f3a90ad0c4a83790ed999778d746e9b27953c1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3db39dc2-bc96-5da9-a528-fc79f5271b8a', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ready_intro:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '588d25be7d113ed1f1cfa0573ce4193253f6f8a3bc12426758159d2fbfc3ec4e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a86bc02-0009-53a7-b616-bd8be2a155a4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3db39dc2-bc96-5da9-a528-fc79f5271b8a', 1), '588d25be7d113ed1f1cfa0573ce4193253f6f8a3bc12426758159d2fbfc3ec4e',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/593b478f1d998767dbca6c9773f3a90ad0c4a83790ed999778d746e9b27953c1.mp3', 1280, '2026-09-14 13:40:01.627482', '5df1181bf906e46ab42550dd0cf7b5dba88e481b855959cf9bbae1d1a151beff', 'validated', '{"audio_key":"593b478f1d998767dbca6c9773f3a90ad0c4a83790ed999778d746e9b27953c1","entity_key":"d_ko_ready_intro:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5df1181bf906e46ab42550dd0cf7b5dba88e481b855959cf9bbae1d1a151beff","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/593b478f1d998767dbca6c9773f3a90ad0c4a83790ed999778d746e9b27953c1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_02:4 -> audio/generated/ko-KR/dialogues/5a18fb890865993eb068aef327ddfe90afb3c63517f2bd6ae4e35f0c2d7f808b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('76fb4e96-cb3b-5c5b-aad8-e8fad1988162', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'daa91c436cefb73885513017e56beb41c2214ff6867a9c96194b9d3903c00a49'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a0f41a8d-018c-5e3f-8720-4caa6875d1aa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('76fb4e96-cb3b-5c5b-aad8-e8fad1988162', 1), 'daa91c436cefb73885513017e56beb41c2214ff6867a9c96194b9d3903c00a49',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/5a18fb890865993eb068aef327ddfe90afb3c63517f2bd6ae4e35f0c2d7f808b.mp3', 1488, '2026-09-14 13:40:02.627216', '812589e6d7eb00280370623707168c205a8c084179fe3ae663955728bcdb561f', 'validated', '{"audio_key":"5a18fb890865993eb068aef327ddfe90afb3c63517f2bd6ae4e35f0c2d7f808b","entity_key":"d_numbers_0_10_02:4","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"812589e6d7eb00280370623707168c205a8c084179fe3ae663955728bcdb561f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/5a18fb890865993eb068aef327ddfe90afb3c63517f2bd6ae4e35f0c2d7f808b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hangul_basics_02:1 -> audio/generated/ko-KR/dialogues/5a45fb1d896e4a3244c0c660ab06f4d92510d661faf087642de7e786189abab0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('244375c9-af91-5a9c-9ade-39cfeb1e6200', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hangul_basics_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a808e63d03ddc1337b34b4d3d1922daf0d603266e8c69541d01a4888796c8ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08404736-38b5-5e06-8749-9f09b76f4f7d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('244375c9-af91-5a9c-9ade-39cfeb1e6200', 1), '7a808e63d03ddc1337b34b4d3d1922daf0d603266e8c69541d01a4888796c8ad',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/5a45fb1d896e4a3244c0c660ab06f4d92510d661faf087642de7e786189abab0.mp3', 1018, '2026-09-14 13:40:03.605673', '9f621b0841e91aa00038e32661a67cdeb8a8c29761207a9938476ba05779f0bc', 'validated', '{"audio_key":"5a45fb1d896e4a3244c0c660ab06f4d92510d661faf087642de7e786189abab0","entity_key":"d_hangul_basics_02:1","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9f621b0841e91aa00038e32661a67cdeb8a8c29761207a9938476ba05779f0bc","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/5a45fb1d896e4a3244c0c660ab06f4d92510d661faf087642de7e786189abab0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_02:2 -> audio/generated/ko-KR/dialogues/5ba15d023292a422a91d8f3d9972d3d26f22a0c946912f5ede9fe4af0071f4a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6717bf9f-8ebb-5992-b25f-2aed0af64aec', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '99f1275a28300f013f6fe2ba8b5535f1fecf5668edcfc9b733b5c8539fa511c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f211b74-be31-5b46-858a-f9e68f4ae177', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6717bf9f-8ebb-5992-b25f-2aed0af64aec', 1), '99f1275a28300f013f6fe2ba8b5535f1fecf5668edcfc9b733b5c8539fa511c0',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/5ba15d023292a422a91d8f3d9972d3d26f22a0c946912f5ede9fe4af0071f4a9.mp3', 1097, '2026-09-14 13:40:04.574490', '799ba2b439ee83362db41f0c2d7ce8e777db3e5f61010cd68e803c561e853f7b', 'validated', '{"audio_key":"5ba15d023292a422a91d8f3d9972d3d26f22a0c946912f5ede9fe4af0071f4a9","entity_key":"d_polite_words_02:2","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"799ba2b439ee83362db41f0c2d7ce8e777db3e5f61010cd68e803c561e853f7b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/5ba15d023292a422a91d8f3d9972d3d26f22a0c946912f5ede9fe4af0071f4a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ready_intro:1 -> audio/generated/ko-KR/dialogues/5bdd7600db730941cf2edf520657ba0674d4816224fff012ba4fdc488efd8f53.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('20216e02-7c66-557d-b8f5-676773db970d', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ready_intro:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '24b08d2622aff67c7c2ddcf0572e4101023c6603967f3d595b5c49c60a054b58'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af61a8ec-eef2-59df-bc7c-c808c223f8b2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('20216e02-7c66-557d-b8f5-676773db970d', 1), '24b08d2622aff67c7c2ddcf0572e4101023c6603967f3d595b5c49c60a054b58',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/5bdd7600db730941cf2edf520657ba0674d4816224fff012ba4fdc488efd8f53.mp3', 2089, '2026-09-14 13:40:05.647921', '759d8ea16d971525777c1a2f39e289624b904c059c7690688b52e4e25caff46c', 'validated', '{"audio_key":"5bdd7600db730941cf2edf520657ba0674d4816224fff012ba4fdc488efd8f53","entity_key":"d_ko_ready_intro:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"759d8ea16d971525777c1a2f39e289624b904c059c7690688b52e4e25caff46c","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/5bdd7600db730941cf2edf520657ba0674d4816224fff012ba4fdc488efd8f53.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-about-me_feeling_family:2 -> audio/generated/ko-KR/dialogues/5c82fe2b694462977c890dcdb882b568f6f6d055cc84e488aec5094e11c3bdf4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0e4ee854-097d-51ad-8749-05ac562e30f9', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-about-me_feeling_family:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52803505ac46a28c9a27ea692b9239eb362dce3b91efbc700f3f52ae0692b157'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87d4be63-5b9f-5e5a-8626-9beeb2103b0d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0e4ee854-097d-51ad-8749-05ac562e30f9', 1), '52803505ac46a28c9a27ea692b9239eb362dce3b91efbc700f3f52ae0692b157',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/5c82fe2b694462977c890dcdb882b568f6f6d055cc84e488aec5094e11c3bdf4.mp3', 1332, '2026-09-14 13:40:06.625179', 'd4c2d1996d90147ea8437e23eb0d9689ae6d5fbd6032041b94755845513b5255', 'validated', '{"audio_key":"5c82fe2b694462977c890dcdb882b568f6f6d055cc84e488aec5094e11c3bdf4","entity_key":"d_ko_ko-about-me_feeling_family:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d4c2d1996d90147ea8437e23eb0d9689ae6d5fbd6032041b94755845513b5255","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/5c82fe2b694462977c890dcdb882b568f6f6d055cc84e488aec5094e11c3bdf4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-real-life-numbers_phone:2 -> audio/generated/ko-KR/dialogues/5ed680c801e6cebf072db071df07842fbaf3eab9449f622a5603700b34ce4ca7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('176d50c0-5b56-544a-8a67-956abffd619d', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-real-life-numbers_phone:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6787b9084d72d6255456ff518eddb41ac9d195c76e1bd473947602b782cade4c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d32c8e60-c569-5e15-9486-8a34a88677d4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('176d50c0-5b56-544a-8a67-956abffd619d', 1), '6787b9084d72d6255456ff518eddb41ac9d195c76e1bd473947602b782cade4c',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/5ed680c801e6cebf072db071df07842fbaf3eab9449f622a5603700b34ce4ca7.mp3', 2586, '2026-09-14 13:40:07.709813', '2c09ed459de357981b3538ab30185565bd98112c07a2a6a64ddd908adae7d80e', 'validated', '{"audio_key":"5ed680c801e6cebf072db071df07842fbaf3eab9449f622a5603700b34ce4ca7","entity_key":"d_ko_ko-real-life-numbers_phone:2","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2c09ed459de357981b3538ab30185565bd98112c07a2a6a64ddd908adae7d80e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/5ed680c801e6cebf072db071df07842fbaf3eab9449f622a5603700b34ce4ca7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-real-life-numbers_phone:4 -> audio/generated/ko-KR/dialogues/5ed680c801e6cebf072db071df07842fbaf3eab9449f622a5603700b34ce4ca7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b7e1aa14-90bf-595b-b3d1-2439be6077ff', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-real-life-numbers_phone:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6787b9084d72d6255456ff518eddb41ac9d195c76e1bd473947602b782cade4c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ede27349-83ed-56ce-810d-4b005736d74c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b7e1aa14-90bf-595b-b3d1-2439be6077ff', 1), '6787b9084d72d6255456ff518eddb41ac9d195c76e1bd473947602b782cade4c',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/5ed680c801e6cebf072db071df07842fbaf3eab9449f622a5603700b34ce4ca7.mp3', 2586, '2026-09-14 13:40:07.709813', '2c09ed459de357981b3538ab30185565bd98112c07a2a6a64ddd908adae7d80e', 'validated', '{"audio_key":"5ed680c801e6cebf072db071df07842fbaf3eab9449f622a5603700b34ce4ca7","entity_key":"d_ko_ko-real-life-numbers_phone:4","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2c09ed459de357981b3538ab30185565bd98112c07a2a6a64ddd908adae7d80e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/5ed680c801e6cebf072db071df07842fbaf3eab9449f622a5603700b34ce4ca7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-real-world-gate_public_task:2 -> audio/generated/ko-KR/dialogues/5ed680c801e6cebf072db071df07842fbaf3eab9449f622a5603700b34ce4ca7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('36090570-7ec0-5345-99e9-18133d92df36', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-real-world-gate_public_task:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6787b9084d72d6255456ff518eddb41ac9d195c76e1bd473947602b782cade4c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d72aca22-37a2-5e84-ba94-e2ef23c87186', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('36090570-7ec0-5345-99e9-18133d92df36', 1), '6787b9084d72d6255456ff518eddb41ac9d195c76e1bd473947602b782cade4c',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/5ed680c801e6cebf072db071df07842fbaf3eab9449f622a5603700b34ce4ca7.mp3', 2586, '2026-09-14 13:40:07.709813', '2c09ed459de357981b3538ab30185565bd98112c07a2a6a64ddd908adae7d80e', 'validated', '{"audio_key":"5ed680c801e6cebf072db071df07842fbaf3eab9449f622a5603700b34ce4ca7","entity_key":"d_ko_ko-real-world-gate_public_task:2","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2c09ed459de357981b3538ab30185565bd98112c07a2a6a64ddd908adae7d80e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/5ed680c801e6cebf072db071df07842fbaf3eab9449f622a5603700b34ce4ca7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-real-world-gate_meet:6 -> audio/generated/ko-KR/dialogues/5fbc94ba6cc364ba479eee0133791a020102e3d38c8c6c2c6dc1664a954cc80a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e1095639-9eac-5582-85c0-d25f962d25f8', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-real-world-gate_meet:6')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52803505ac46a28c9a27ea692b9239eb362dce3b91efbc700f3f52ae0692b157'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('820e617b-9289-57c3-bf5d-50f5a0de5854', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e1095639-9eac-5582-85c0-d25f962d25f8', 1), '52803505ac46a28c9a27ea692b9239eb362dce3b91efbc700f3f52ae0692b157',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/5fbc94ba6cc364ba479eee0133791a020102e3d38c8c6c2c6dc1664a954cc80a.mp3', 1384, '2026-09-14 13:40:08.682370', 'dc31f548a877338ee67790a9f4e780f6f5e4d514aec56f68c1f3d30015bdaff7', 'validated', '{"audio_key":"5fbc94ba6cc364ba479eee0133791a020102e3d38c8c6c2c6dc1664a954cc80a","entity_key":"d_ko_ko-real-world-gate_meet:6","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dc31f548a877338ee67790a9f4e780f6f5e4d514aec56f68c1f3d30015bdaff7","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/5fbc94ba6cc364ba479eee0133791a020102e3d38c8c6c2c6dc1664a954cc80a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_meaning_help:5 -> audio/generated/ko-KR/dialogues/60461d02b5f16f516b38419d2f87acda8df4265a0be55977939c4e385b4b1008.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0f155101-8ace-5233-9f58-bdd9c9ca1d22', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_meaning_help:5')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '489aaaf15fc926bc29ae79834b347e774cebc583244255d6877cdc96d18657be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('61547184-6b26-58fe-82ba-b902e6dbf0d7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0f155101-8ace-5233-9f58-bdd9c9ca1d22', 1), '489aaaf15fc926bc29ae79834b347e774cebc583244255d6877cdc96d18657be',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/60461d02b5f16f516b38419d2f87acda8df4265a0be55977939c4e385b4b1008.mp3', 1149, '2026-09-14 13:40:09.653337', 'ec082781f75fd217c25ff3d81dd95b6c7be1fd8d2afb0ae87c2cc23eef6b7e4f', 'validated', '{"audio_key":"60461d02b5f16f516b38419d2f87acda8df4265a0be55977939c4e385b4b1008","entity_key":"d_ko_meaning_help:5","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ec082781f75fd217c25ff3d81dd95b6c7be1fd8d2afb0ae87c2cc23eef6b7e4f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/60461d02b5f16f516b38419d2f87acda8df4265a0be55977939c4e385b4b1008.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-real-life-numbers_phone:1 -> audio/generated/ko-KR/dialogues/63bcbcdf467aae52c7e64579065a2e96c10c7222129abf4ec62379224f1f0eb5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a51a2465-ec3e-571f-88c9-186885ecfd49', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-real-life-numbers_phone:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c7f5d6a421a59d9108f13bab419a72af62ed5784ce306d127ee7c617a8254d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3df98bd0-351c-5dc7-bf3e-a19ec3f1a75d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a51a2465-ec3e-571f-88c9-186885ecfd49', 1), '3c7f5d6a421a59d9108f13bab419a72af62ed5784ce306d127ee7c617a8254d1',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/63bcbcdf467aae52c7e64579065a2e96c10c7222129abf4ec62379224f1f0eb5.mp3', 1619, '2026-09-14 13:40:10.720455', 'f44d1bf791f7a0f2163c56feeadbc4a04c9daaee063956d3fc96332c5458c362', 'validated', '{"audio_key":"63bcbcdf467aae52c7e64579065a2e96c10c7222129abf4ec62379224f1f0eb5","entity_key":"d_ko_ko-real-life-numbers_phone:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f44d1bf791f7a0f2163c56feeadbc4a04c9daaee063956d3fc96332c5458c362","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/63bcbcdf467aae52c7e64579065a2e96c10c7222129abf4ec62379224f1f0eb5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ready_repair:1 -> audio/generated/ko-KR/dialogues/6441d86efc6b6f58c19c4cc390272b87f6ee5d979a037c1c03b23c7e4edb7d48.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0db17785-6c19-5011-a762-8f16267d372c', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ready_repair:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '33f092e22d804ba2f76bd3f1b8b69a35821701b34bcc36916242d5f47f75ab8a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5dd188d9-402f-5d6f-af7e-6b90754831eb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0db17785-6c19-5011-a762-8f16267d372c', 1), '33f092e22d804ba2f76bd3f1b8b69a35821701b34bcc36916242d5f47f75ab8a',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6441d86efc6b6f58c19c4cc390272b87f6ee5d979a037c1c03b23c7e4edb7d48.mp3', 1384, '2026-09-14 13:40:11.783602', '7256829f86c3261351a597ba5a0a83eaf26f0e7b865294353506424ee221b7e3', 'validated', '{"audio_key":"6441d86efc6b6f58c19c4cc390272b87f6ee5d979a037c1c03b23c7e4edb7d48","entity_key":"d_ko_ready_repair:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7256829f86c3261351a597ba5a0a83eaf26f0e7b865294353506424ee221b7e3","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/6441d86efc6b6f58c19c4cc390272b87f6ee5d979a037c1c03b23c7e4edb7d48.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_02:2 -> audio/generated/ko-KR/dialogues/68fef7cafe3828fa282436d22d276550dfc8a509ef4f3ab2a2f39a66388e6972.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('91b460e9-c340-5fb9-bd9d-4982f87b2408', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5ef57bd5c88b38cfb754f8e322c042cab86161b6f328546d996801fc8faae1be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0642e203-0686-5e05-a0e7-04177ffb0a19', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('91b460e9-c340-5fb9-bd9d-4982f87b2408', 1), '5ef57bd5c88b38cfb754f8e322c042cab86161b6f328546d996801fc8faae1be',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/68fef7cafe3828fa282436d22d276550dfc8a509ef4f3ab2a2f39a66388e6972.mp3', 1854, '2026-09-14 13:40:12.851225', '41f55a959f70b755b5b6d94e62613748926d740bd52479cfa4917f7efb414bcd', 'validated', '{"audio_key":"68fef7cafe3828fa282436d22d276550dfc8a509ef4f3ab2a2f39a66388e6972","entity_key":"d_first_greetings_02:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"41f55a959f70b755b5b6d94e62613748926d740bd52479cfa4917f7efb414bcd","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/68fef7cafe3828fa282436d22d276550dfc8a509ef4f3ab2a2f39a66388e6972.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ready_repair:3 -> audio/generated/ko-KR/dialogues/6b8b9a831e7b36a526d0acf0231d62f0993298acfad1a5b5d703df23ee6135fc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9c39d986-9b24-5b53-8a35-246263e052ea', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ready_repair:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0da9755e151ad82b1604e0a8141403dc2f336eefa3436e51d6e871f836adae14'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('824e8274-7720-506b-be62-e8a31a93f4fa', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9c39d986-9b24-5b53-8a35-246263e052ea', 1), '0da9755e151ad82b1604e0a8141403dc2f336eefa3436e51d6e871f836adae14',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6b8b9a831e7b36a526d0acf0231d62f0993298acfad1a5b5d703df23ee6135fc.mp3', 1671, '2026-09-14 13:40:13.946514', 'd1797582355b316acab3a1895d5685e06bffd32cbe1a380ff91e6d28664de62d', 'validated', '{"audio_key":"6b8b9a831e7b36a526d0acf0231d62f0993298acfad1a5b5d703df23ee6135fc","entity_key":"d_ko_ready_repair:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d1797582355b316acab3a1895d5685e06bffd32cbe1a380ff91e6d28664de62d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/6b8b9a831e7b36a526d0acf0231d62f0993298acfad1a5b5d703df23ee6135fc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-forms-signs_form:1 -> audio/generated/ko-KR/dialogues/6c444580e5fcdac527708d599a5bd1474a7e27e05fcdc307f2cf3f062b93abfb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eb3161d8-201d-557c-8bb9-18d289fbfc3e', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-forms-signs_form:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e9c3e79e052cf769815e98416950d4a2c3fa4006da8e6d96efdc399a011c817'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0945ce8d-4b1d-59ae-bfe5-30550c8cd8ed', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eb3161d8-201d-557c-8bb9-18d289fbfc3e', 1), '8e9c3e79e052cf769815e98416950d4a2c3fa4006da8e6d96efdc399a011c817',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6c444580e5fcdac527708d599a5bd1474a7e27e05fcdc307f2cf3f062b93abfb.mp3', 835, '2026-09-14 13:40:14.933430', 'e4c6449e4baefe6eaf44279a4eaf9cbf5d31bda49c24c52fc6cbc37bfee314eb', 'validated', '{"audio_key":"6c444580e5fcdac527708d599a5bd1474a7e27e05fcdc307f2cf3f062b93abfb","entity_key":"d_ko_ko-forms-signs_form:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e4c6449e4baefe6eaf44279a4eaf9cbf5d31bda49c24c52fc6cbc37bfee314eb","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/6c444580e5fcdac527708d599a5bd1474a7e27e05fcdc307f2cf3f062b93abfb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_02:4 -> audio/generated/ko-KR/dialogues/6c691c95eff6e22a85fc3b807d72c3c6ce1d1a646735644531031d58a5b03051.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c3a591c7-e036-5030-a923-fe652db8a1cf', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e951aae21fa2384a611eed2a1d42748cae6cf497908e3b499a14eab036f868d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63ecfed9-359e-50c0-875e-e77838190d63', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c3a591c7-e036-5030-a923-fe652db8a1cf', 1), 'e951aae21fa2384a611eed2a1d42748cae6cf497908e3b499a14eab036f868d5',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6c691c95eff6e22a85fc3b807d72c3c6ce1d1a646735644531031d58a5b03051.mp3', 1149, '2026-09-14 13:40:16.024684', '3ab0e89a860a39a0d67712dc506120a256a09fb7acba518e9753bb66074a37fe', 'validated', '{"audio_key":"6c691c95eff6e22a85fc3b807d72c3c6ce1d1a646735644531031d58a5b03051","entity_key":"d_survival_words_02:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3ab0e89a860a39a0d67712dc506120a256a09fb7acba518e9753bb66074a37fe","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/6c691c95eff6e22a85fc3b807d72c3c6ce1d1a646735644531031d58a5b03051.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hangul_basics_02:2 -> audio/generated/ko-KR/dialogues/6d0396b15dd8833a6422dd9f41eac5a2f3b638ad007657d0a689e93add86209b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('eb5a1e2f-4e1c-5bff-84e1-ff43410dfb43', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hangul_basics_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5213451f92dd69a5abcad5fe7c6a268bf9e15b666c15ccb179806946ebf1914c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ae22a2d-3738-519a-83cf-6aee4aa7e374', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('eb5a1e2f-4e1c-5bff-84e1-ff43410dfb43', 1), '5213451f92dd69a5abcad5fe7c6a268bf9e15b666c15ccb179806946ebf1914c',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6d0396b15dd8833a6422dd9f41eac5a2f3b638ad007657d0a689e93add86209b.mp3', 1097, '2026-09-14 13:40:17.035634', 'ed3dda697dba2e06e8c41d4fcc42a517b88bcf9155e864b819207157f8c2dd9a', 'validated', '{"audio_key":"6d0396b15dd8833a6422dd9f41eac5a2f3b638ad007657d0a689e93add86209b","entity_key":"d_hangul_basics_02:2","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ed3dda697dba2e06e8c41d4fcc42a517b88bcf9155e864b819207157f8c2dd9a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/6d0396b15dd8833a6422dd9f41eac5a2f3b638ad007657d0a689e93add86209b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_02:2 -> audio/generated/ko-KR/dialogues/6dc6a27078101a849732313c236db963b2e91473fe3c10a88a83cea059ccefdc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('96095bb5-e4e9-5d9d-9733-558622206f3e', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a6ab84994d8deea8e8daf7c360f885b644ba723f1c36a13a6e3b18627ad6f63'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('520c0267-e2ae-5927-a377-6c90baa4c923', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('96095bb5-e4e9-5d9d-9733-558622206f3e', 1), '9a6ab84994d8deea8e8daf7c360f885b644ba723f1c36a13a6e3b18627ad6f63',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6dc6a27078101a849732313c236db963b2e91473fe3c10a88a83cea059ccefdc.mp3', 1384, '2026-09-14 13:40:18.080526', '20d52679a77377204ad30b5db625b0230501aaa8fe9fa2af23126afb4adf380b', 'validated', '{"audio_key":"6dc6a27078101a849732313c236db963b2e91473fe3c10a88a83cea059ccefdc","entity_key":"d_first_conversation_02:2","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"20d52679a77377204ad30b5db625b0230501aaa8fe9fa2af23126afb4adf380b","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/6dc6a27078101a849732313c236db963b2e91473fe3c10a88a83cea059ccefdc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_02:1 -> audio/generated/ko-KR/dialogues/7142b80dbd3647b380f9f7614dbaac2b0125723bea78cc38b2356f199a140e29.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('94420d3e-6d72-53c1-90b7-69411f48d00a', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0cff3c822c37a13331a9a6fb2d5843e2d72a55936fab320455bac331b48ce49e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0fcf0c54-0308-5022-8b7a-20a093ab9e4a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('94420d3e-6d72-53c1-90b7-69411f48d00a', 1), '0cff3c822c37a13331a9a6fb2d5843e2d72a55936fab320455bac331b48ce49e',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7142b80dbd3647b380f9f7614dbaac2b0125723bea78cc38b2356f199a140e29.mp3', 1149, '2026-09-14 13:40:19.079788', '1ada2f4d576bf60663b054b2cb99ee3a2602b1f81e9e62ec83b17e70b46e67e3', 'validated', '{"audio_key":"7142b80dbd3647b380f9f7614dbaac2b0125723bea78cc38b2356f199a140e29","entity_key":"d_numbers_0_10_02:1","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1ada2f4d576bf60663b054b2cb99ee3a2602b1f81e9e62ec83b17e70b46e67e3","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/7142b80dbd3647b380f9f7614dbaac2b0125723bea78cc38b2356f199a140e29.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_02:4 -> audio/generated/ko-KR/dialogues/7174004751864fe4977fc2789996698350cb2a9feb3ad4abdf63d5acabfa1eef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2133bcac-3d14-5318-8839-6642b697c067', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6aad3b6e3a5769ba4447fc04c3f4c038d579f3b1bd6febb706ce461bd7914bc4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('749b3aa4-b096-52c0-af99-8389d54a8363', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2133bcac-3d14-5318-8839-6642b697c067', 1), '6aad3b6e3a5769ba4447fc04c3f4c038d579f3b1bd6febb706ce461bd7914bc4',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7174004751864fe4977fc2789996698350cb2a9feb3ad4abdf63d5acabfa1eef.mp3', 966, '2026-09-14 13:40:20.019129', '2e56417b4a6db3f93a4f2d2c48d6aeb5da03cfa5444756d8daafea8ad5004f34', 'validated', '{"audio_key":"7174004751864fe4977fc2789996698350cb2a9feb3ad4abdf63d5acabfa1eef","entity_key":"d_first_sounds_02:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2e56417b4a6db3f93a4f2d2c48d6aeb5da03cfa5444756d8daafea8ad5004f34","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/7174004751864fe4977fc2789996698350cb2a9feb3ad4abdf63d5acabfa1eef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_01:4 -> audio/generated/ko-KR/dialogues/75c0baf509d91054787835c49b9d34e2d7649e9ecf43ff8ab8b4a4b2fc032c18.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('baebe77e-36e7-5fa7-986e-18d223ed8fbb', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8445741d7d6a831276e8794b874cebee94940ba0e963d4f109bf72f437426789'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1332f0f-475d-595f-957d-03d29cb31a57', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('baebe77e-36e7-5fa7-986e-18d223ed8fbb', 1), '8445741d7d6a831276e8794b874cebee94940ba0e963d4f109bf72f437426789',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/75c0baf509d91054787835c49b9d34e2d7649e9ecf43ff8ab8b4a4b2fc032c18.mp3', 835, '2026-09-14 13:40:20.976504', '815c0b7fd6409f2220b5a3f22697b7cacba1866824e7c6a1d9a30158f22b4c3c', 'validated', '{"audio_key":"75c0baf509d91054787835c49b9d34e2d7649e9ecf43ff8ab8b4a4b2fc032c18","entity_key":"d_polite_words_01:4","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"815c0b7fd6409f2220b5a3f22697b7cacba1866824e7c6a1d9a30158f22b4c3c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/75c0baf509d91054787835c49b9d34e2d7649e9ecf43ff8ab8b4a4b2fc032c18.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-real-world-gate_public_task:1 -> audio/generated/ko-KR/dialogues/75cbbe7c04e9fb2846826c3ef06f0b9a13ecd5d43b0cee3902a9293707b3303a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('79ab798f-27ef-5b1e-8e17-cd4115c32ad2', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-real-world-gate_public_task:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c7f5d6a421a59d9108f13bab419a72af62ed5784ce306d127ee7c617a8254d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f1f3ff0-83bb-5a4a-9c0e-927724401f93', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('79ab798f-27ef-5b1e-8e17-cd4115c32ad2', 1), '3c7f5d6a421a59d9108f13bab419a72af62ed5784ce306d127ee7c617a8254d1',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/75cbbe7c04e9fb2846826c3ef06f0b9a13ecd5d43b0cee3902a9293707b3303a.mp3', 1567, '2026-09-14 13:40:21.988233', '6f5f65a5f1990404e37854a5dcab1929d2c1fd5c47e8f5131fcb528534c34584', 'validated', '{"audio_key":"75cbbe7c04e9fb2846826c3ef06f0b9a13ecd5d43b0cee3902a9293707b3303a","entity_key":"d_ko_ko-real-world-gate_public_task:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6f5f65a5f1990404e37854a5dcab1929d2c1fd5c47e8f5131fcb528534c34584","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/75cbbe7c04e9fb2846826c3ef06f0b9a13ecd5d43b0cee3902a9293707b3303a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-about-me_feeling_family:1 -> audio/generated/ko-KR/dialogues/78bfcbc4616b6c64973c6e9b9a1cb8ee9ad1afcec0de1818ad9b7e73a4063b22.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('661a0e42-7146-58ae-89c6-0b6450d12b54', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-about-me_feeling_family:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '478c962d7db98238a9254aae79d1cf571f955f4bf6b28c17386f1c51fd1f3f66'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba61736f-cadc-5aa1-a885-1116a5f11b45', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('661a0e42-7146-58ae-89c6-0b6450d12b54', 1), '478c962d7db98238a9254aae79d1cf571f955f4bf6b28c17386f1c51fd1f3f66',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/78bfcbc4616b6c64973c6e9b9a1cb8ee9ad1afcec0de1818ad9b7e73a4063b22.mp3', 1149, '2026-09-14 13:40:22.970095', '29bf91945d1353670f7bf78fdf0d4afddd75b8c12ebf1ee881cb77ffd8d544ff', 'validated', '{"audio_key":"78bfcbc4616b6c64973c6e9b9a1cb8ee9ad1afcec0de1818ad9b7e73a4063b22","entity_key":"d_ko_ko-about-me_feeling_family:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"29bf91945d1353670f7bf78fdf0d4afddd75b8c12ebf1ee881cb77ffd8d544ff","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/78bfcbc4616b6c64973c6e9b9a1cb8ee9ad1afcec0de1818ad9b7e73a4063b22.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-real-world-gate_public_task:6 -> audio/generated/ko-KR/dialogues/7997c584ee7c8ce69c92d09be244a8f822f1a669ba470f7b569456cb0143a77f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cb89b849-fb13-5472-bdc4-5314cf1ce9bb', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-real-world-gate_public_task:6')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '290b2cc57330166c23092f982e322e6fd078e861194d28a76d1ce87a1a5fa5b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2faf8fc5-7604-5154-8cf0-e921a079c334', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cb89b849-fb13-5472-bdc4-5314cf1ce9bb', 1), '290b2cc57330166c23092f982e322e6fd078e861194d28a76d1ce87a1a5fa5b8',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7997c584ee7c8ce69c92d09be244a8f822f1a669ba470f7b569456cb0143a77f.mp3', 1149, '2026-09-14 13:40:23.954914', 'c34052cd0f98c2ad1bb3395092b7463e0364776944c9b4cb79a52028fe7d234d', 'validated', '{"audio_key":"7997c584ee7c8ce69c92d09be244a8f822f1a669ba470f7b569456cb0143a77f","entity_key":"d_ko_ko-real-world-gate_public_task:6","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c34052cd0f98c2ad1bb3395092b7463e0364776944c9b4cb79a52028fe7d234d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/7997c584ee7c8ce69c92d09be244a8f822f1a669ba470f7b569456cb0143a77f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_01:3 -> audio/generated/ko-KR/dialogues/7c2623eec6c19a7da85d3845664891ed883963934b8be824352cc4acaf692918.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e5398d60-cb83-5eea-8652-38462e425fb4', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0157aef0045b3a10d086fa17ca1479b540bcaac2cf5b613a992c92ee7536f9d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47474c26-4acc-58e7-90b3-5b26d40897f1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e5398d60-cb83-5eea-8652-38462e425fb4', 1), '0157aef0045b3a10d086fa17ca1479b540bcaac2cf5b613a992c92ee7536f9d7',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7c2623eec6c19a7da85d3845664891ed883963934b8be824352cc4acaf692918.mp3', 1488, '2026-09-14 13:40:24.972805', 'c76e10cac8af4d33cd81b889ea2ae141521a6cf45cf331688fa319aad53fa495', 'validated', '{"audio_key":"7c2623eec6c19a7da85d3845664891ed883963934b8be824352cc4acaf692918","entity_key":"d_first_objects_01:3","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c76e10cac8af4d33cd81b889ea2ae141521a6cf45cf331688fa319aad53fa495","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/7c2623eec6c19a7da85d3845664891ed883963934b8be824352cc4acaf692918.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-about-me_origin_age:4 -> audio/generated/ko-KR/dialogues/7cfe7085f381aa1d6506e7f3859a5ca2dc4f8db9bff99fc62f1a9f3491a6c4bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2b96d453-fa88-5fc9-9df5-a5b9ce219818', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-about-me_origin_age:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c64bb303cccd212cb6b8a0b3a36705cb05f9e07b9b3eba2226b628d7b7f42a8e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fc7cb00b-214a-528c-b342-58f46b0dca5b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2b96d453-fa88-5fc9-9df5-a5b9ce219818', 1), 'c64bb303cccd212cb6b8a0b3a36705cb05f9e07b9b3eba2226b628d7b7f42a8e',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7cfe7085f381aa1d6506e7f3859a5ca2dc4f8db9bff99fc62f1a9f3491a6c4bf.mp3', 1619, '2026-09-14 13:40:25.981182', '3a2735aeb2ec8e4514612c965b8c86f7a44c17b52b49e38a1a36c2acfff1874e', 'validated', '{"audio_key":"7cfe7085f381aa1d6506e7f3859a5ca2dc4f8db9bff99fc62f1a9f3491a6c4bf","entity_key":"d_ko_ko-about-me_origin_age:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3a2735aeb2ec8e4514612c965b8c86f7a44c17b52b49e38a1a36c2acfff1874e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/7cfe7085f381aa1d6506e7f3859a5ca2dc4f8db9bff99fc62f1a9f3491a6c4bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_02:2 -> audio/generated/ko-KR/dialogues/7d0ecae022ed459cc1ef48a0562060bbd5361d5e205e6724856a331038ce0d8f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5ff48cb2-e48f-521c-b6d7-ac09f4dd3a4f', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c390c5653eec313a951c661966d32978e7e25bb9701bdaba9728b6945f0ae222'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bacc4054-1891-5f98-93e3-75f0db020b2f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5ff48cb2-e48f-521c-b6d7-ac09f4dd3a4f', 1), 'c390c5653eec313a951c661966d32978e7e25bb9701bdaba9728b6945f0ae222',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7d0ecae022ed459cc1ef48a0562060bbd5361d5e205e6724856a331038ce0d8f.mp3', 2507, '2026-09-14 13:40:27.124921', 'ac1002334fb13cf80581da99bf318de6bd0cd73f46020ee82a35ebad5702649f', 'validated', '{"audio_key":"7d0ecae022ed459cc1ef48a0562060bbd5361d5e205e6724856a331038ce0d8f","entity_key":"d_survival_words_02:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ac1002334fb13cf80581da99bf318de6bd0cd73f46020ee82a35ebad5702649f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/7d0ecae022ed459cc1ef48a0562060bbd5361d5e205e6724856a331038ce0d8f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-real-world-gate_public_task:5 -> audio/generated/ko-KR/dialogues/7e4d8965049b1fff6a9c027196f3fb6e43f6f048cad9acb0b5d5b0786c8d67e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('09808c24-292e-546d-a421-ef3955610897', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-real-world-gate_public_task:5')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eef29f00727e489aa72e3e23444865969bb47aa2dd4b6b25a3ea9dba0de67ec8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('308baa23-9a9f-5fa3-a812-1e18a8fbbbe0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('09808c24-292e-546d-a421-ef3955610897', 1), 'eef29f00727e489aa72e3e23444865969bb47aa2dd4b6b25a3ea9dba0de67ec8',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7e4d8965049b1fff6a9c027196f3fb6e43f6f048cad9acb0b5d5b0786c8d67e7.mp3', 1332, '2026-09-14 13:40:28.187627', '10f213a02692e2b9ce39a527f2a23ee64c622dbbd3cb8d13a3b5c24d6e3a737b', 'validated', '{"audio_key":"7e4d8965049b1fff6a9c027196f3fb6e43f6f048cad9acb0b5d5b0786c8d67e7","entity_key":"d_ko_ko-real-world-gate_public_task:5","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"10f213a02692e2b9ce39a527f2a23ee64c622dbbd3cb8d13a3b5c24d6e3a737b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/7e4d8965049b1fff6a9c027196f3fb6e43f6f048cad9acb0b5d5b0786c8d67e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-real-world-gate_public_task:4 -> audio/generated/ko-KR/dialogues/7f317aa675cbbb94ba3d0a47d81b242861c1d8ee2400a737c9a69ad29faafab1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0d928c0d-bd43-58a5-9800-e23d1c3efd40', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-real-world-gate_public_task:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b332361b479b105b2a370da3b15a39e8b53dccc78b078f31389185a9a725c272'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a34aa5a2-5995-5396-b1f4-1ddf88e30d7c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0d928c0d-bd43-58a5-9800-e23d1c3efd40', 1), 'b332361b479b105b2a370da3b15a39e8b53dccc78b078f31389185a9a725c272',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7f317aa675cbbb94ba3d0a47d81b242861c1d8ee2400a737c9a69ad29faafab1.mp3', 1332, '2026-09-14 13:40:29.162256', '61c6733b00584e4138d49dd3d97347f6046c9d221a1dfcc80939fc5321542252', 'validated', '{"audio_key":"7f317aa675cbbb94ba3d0a47d81b242861c1d8ee2400a737c9a69ad29faafab1","entity_key":"d_ko_ko-real-world-gate_public_task:4","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"61c6733b00584e4138d49dd3d97347f6046c9d221a1dfcc80939fc5321542252","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/7f317aa675cbbb94ba3d0a47d81b242861c1d8ee2400a737c9a69ad29faafab1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_02:2 -> audio/generated/ko-KR/dialogues/8113d7be4f04a4a8cacd8355777b32f176fe3bce4de465f3450578b29d2d3958.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('739838ce-3c70-5f53-9b5a-010ea1784c2f', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2dcc15828ce7ace8335c4dd9f642081af2e6a00e0ec6716feaa906b3acb5775e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87fabd62-c3a3-58e8-9981-c5e30eb1446f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('739838ce-3c70-5f53-9b5a-010ea1784c2f', 1), '2dcc15828ce7ace8335c4dd9f642081af2e6a00e0ec6716feaa906b3acb5775e',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/8113d7be4f04a4a8cacd8355777b32f176fe3bce4de465f3450578b29d2d3958.mp3', 1253, '2026-09-14 13:40:30.128183', 'ccb460dd3883b0a64bcc79266744a9b14d4bbb52f990cc508d9573f03c549740', 'validated', '{"audio_key":"8113d7be4f04a4a8cacd8355777b32f176fe3bce4de465f3450578b29d2d3958","entity_key":"d_first_objects_02:2","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ccb460dd3883b0a64bcc79266744a9b14d4bbb52f990cc508d9573f03c549740","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/8113d7be4f04a4a8cacd8355777b32f176fe3bce4de465f3450578b29d2d3958.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_01:2 -> audio/generated/ko-KR/dialogues/833ea59e7d32c48fd119ad0c060af2d2bfb47a5b91b2146b00cd46d04fefa31c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d69b9067-1f19-50d0-bd0a-42167483aed7', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52803505ac46a28c9a27ea692b9239eb362dce3b91efbc700f3f52ae0692b157'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab44a87d-9165-58ae-af24-9f7b2da2c276', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d69b9067-1f19-50d0-bd0a-42167483aed7', 1), '52803505ac46a28c9a27ea692b9239eb362dce3b91efbc700f3f52ae0692b157',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/833ea59e7d32c48fd119ad0c060af2d2bfb47a5b91b2146b00cd46d04fefa31c.mp3', 1280, '2026-09-14 13:40:31.178791', 'cec9a8b83c857bc6ca60b0b27265e28548bdf0929874928b567710827b2466c4', 'validated', '{"audio_key":"833ea59e7d32c48fd119ad0c060af2d2bfb47a5b91b2146b00cd46d04fefa31c","entity_key":"d_how_are_you_01:2","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"cec9a8b83c857bc6ca60b0b27265e28548bdf0929874928b567710827b2466c4","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/833ea59e7d32c48fd119ad0c060af2d2bfb47a5b91b2146b00cd46d04fefa31c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_01:4 -> audio/generated/ko-KR/dialogues/84cd78df57e5696b4876745281aa07500e87fb03eea78ec233d413f76644dbb4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('630cd4a3-9993-5a89-b3e4-cdbad7186ab6', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e6734943c88a708360c81ee974b6dbb1cb09b25fda86a4f8604b7c9101e9f72'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c71cb93-b76f-54ac-8e47-f753169e5c19', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('630cd4a3-9993-5a89-b3e4-cdbad7186ab6', 1), '6e6734943c88a708360c81ee974b6dbb1cb09b25fda86a4f8604b7c9101e9f72',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/84cd78df57e5696b4876745281aa07500e87fb03eea78ec233d413f76644dbb4.mp3', 966, '2026-09-14 13:40:32.160136', '7707993e05439f5212cd3f9b714cb93a8e746f853341fcad41e1ee1022163cf1', 'validated', '{"audio_key":"84cd78df57e5696b4876745281aa07500e87fb03eea78ec233d413f76644dbb4","entity_key":"d_first_sounds_01:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7707993e05439f5212cd3f9b714cb93a8e746f853341fcad41e1ee1022163cf1","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/84cd78df57e5696b4876745281aa07500e87fb03eea78ec233d413f76644dbb4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_01:3 -> audio/generated/ko-KR/dialogues/86431f68dfd0d6d72c3917581f7884716d910246fdbbc93837563381656037f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7a2732d1-e169-5ac3-b7ae-e516a56eaa85', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7a8861935b550afed42d54c24977c5eb6b902762e9c1d0c2f82a1f6c320e0632'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b292a85d-a1e4-50f4-807f-a50ce0a8f0e9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7a2732d1-e169-5ac3-b7ae-e516a56eaa85', 1), '7a8861935b550afed42d54c24977c5eb6b902762e9c1d0c2f82a1f6c320e0632',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/86431f68dfd0d6d72c3917581f7884716d910246fdbbc93837563381656037f7.mp3', 1515, '2026-09-14 13:40:33.194548', 'ffa5e5fed0c881cfedf1c4cc0f777597b3551ece67264ad7f75661cf0ac634c6', 'validated', '{"audio_key":"86431f68dfd0d6d72c3917581f7884716d910246fdbbc93837563381656037f7","entity_key":"d_how_are_you_01:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ffa5e5fed0c881cfedf1c4cc0f777597b3551ece67264ad7f75661cf0ac634c6","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/86431f68dfd0d6d72c3917581f7884716d910246fdbbc93837563381656037f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_02:3 -> audio/generated/ko-KR/dialogues/89777d6a73e8c365dea56f2c93082b6dde22739f8bf3835596aa05679f4ce562.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('36b3b30b-63b1-590b-af39-738af9f18be5', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b15fccf9d9e4a4a9b297778cc70737539952f5c8d605afe955d1be8c4bccad37'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8348f350-6215-5a19-bbd8-0ef647ce7013', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('36b3b30b-63b1-590b-af39-738af9f18be5', 1), 'b15fccf9d9e4a4a9b297778cc70737539952f5c8d605afe955d1be8c4bccad37',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/89777d6a73e8c365dea56f2c93082b6dde22739f8bf3835596aa05679f4ce562.mp3', 1253, '2026-09-14 13:40:34.173013', 'be30f6cab44d563477718cba9ebcdffbd5ddb318486c0b91d3319f8b6bb78a72', 'validated', '{"audio_key":"89777d6a73e8c365dea56f2c93082b6dde22739f8bf3835596aa05679f4ce562","entity_key":"d_first_objects_02:3","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"be30f6cab44d563477718cba9ebcdffbd5ddb318486c0b91d3319f8b6bb78a72","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/89777d6a73e8c365dea56f2c93082b6dde22739f8bf3835596aa05679f4ce562.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hangul_basics_01:4 -> audio/generated/ko-KR/dialogues/8d4123f32c4f33be2138468d5b1147837bd5a7e2789cc371305ee1453e99d893.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('538bcf47-3e95-5b4c-be0d-fb3a76e60ff3', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hangul_basics_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac9c9213237bcb2a20d2322acdea16ba4197cb993bd7f0d9d8d56b932e26fa69'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a70dc6e7-9499-50e2-8e42-32eb77d5ae8d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('538bcf47-3e95-5b4c-be0d-fb3a76e60ff3', 1), 'ac9c9213237bcb2a20d2322acdea16ba4197cb993bd7f0d9d8d56b932e26fa69',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/8d4123f32c4f33be2138468d5b1147837bd5a7e2789cc371305ee1453e99d893.mp3', 966, '2026-09-14 13:40:35.153838', '75b4a66e6038762e4a3c3b8063fcf34c1939b9dbcfd882642774f26092f0f458', 'validated', '{"audio_key":"8d4123f32c4f33be2138468d5b1147837bd5a7e2789cc371305ee1453e99d893","entity_key":"d_hangul_basics_01:4","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75b4a66e6038762e4a3c3b8063fcf34c1939b9dbcfd882642774f26092f0f458","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/8d4123f32c4f33be2138468d5b1147837bd5a7e2789cc371305ee1453e99d893.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_02:3 -> audio/generated/ko-KR/dialogues/905713644f08092df67abf472a88244fad576e2b4810a2810bdada20aafb4b9e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8c94c3fc-e32b-5b70-b2ff-33d816bcc456', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a5fddbc201cb8774cdb7cc1eac3f320a72c32304900f12d2b0947040bdd4fc35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('30467fb0-3404-578e-9151-5ef8214078bf', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8c94c3fc-e32b-5b70-b2ff-33d816bcc456', 1), 'a5fddbc201cb8774cdb7cc1eac3f320a72c32304900f12d2b0947040bdd4fc35',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/905713644f08092df67abf472a88244fad576e2b4810a2810bdada20aafb4b9e.mp3', 1515, '2026-09-14 13:40:36.364198', '8eca553486778fee5a19049bd5029e6a414104fbdec5f9e4cd614c69ec4d07f3', 'validated', '{"audio_key":"905713644f08092df67abf472a88244fad576e2b4810a2810bdada20aafb4b9e","entity_key":"d_my_name_02:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8eca553486778fee5a19049bd5029e6a414104fbdec5f9e4cd614c69ec4d07f3","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/905713644f08092df67abf472a88244fad576e2b4810a2810bdada20aafb4b9e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_01:2 -> audio/generated/ko-KR/dialogues/90ddd43ee8f54b5f88c4f3bcc64b1418df6fa6f4cd9ca1bc438e2566e18feea3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fec24097-2d14-5566-8644-baf0a6039c95', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2b96b37e4b1fbee3ec9d4e2532867942422550a9323e35cf2e83bc52b8d81b6d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('90665ffd-e1d3-5917-a195-246a5a4be5ae', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fec24097-2d14-5566-8644-baf0a6039c95', 1), '2b96b37e4b1fbee3ec9d4e2532867942422550a9323e35cf2e83bc52b8d81b6d',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/90ddd43ee8f54b5f88c4f3bcc64b1418df6fa6f4cd9ca1bc438e2566e18feea3.mp3', 2220, '2026-09-14 13:40:37.411397', 'd8e7b3621e57fae6c7b2334d9def981d4187917c62eca4733559f36a3e4032ba', 'validated', '{"audio_key":"90ddd43ee8f54b5f88c4f3bcc64b1418df6fa6f4cd9ca1bc438e2566e18feea3","entity_key":"d_first_conversation_01:2","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d8e7b3621e57fae6c7b2334d9def981d4187917c62eca4733559f36a3e4032ba","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/90ddd43ee8f54b5f88c4f3bcc64b1418df6fa6f4cd9ca1bc438e2566e18feea3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_02:1 -> audio/generated/ko-KR/dialogues/9117d8b82ae0cdc772900ad5d4159a0ca32b9711c243f3be01450e7cc5b015f8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('22cf72ae-c64f-5e53-b5cc-03ec0125e71f', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '94bccd2d62f46d6ce7bf39a637d7f782e2167ce64e819b0d34e31e43c261881c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e0eae75c-5d12-5eda-aa33-4dffb9a3d068', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('22cf72ae-c64f-5e53-b5cc-03ec0125e71f', 1), '94bccd2d62f46d6ce7bf39a637d7f782e2167ce64e819b0d34e31e43c261881c',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9117d8b82ae0cdc772900ad5d4159a0ca32b9711c243f3be01450e7cc5b015f8.mp3', 1750, '2026-09-14 13:40:38.456167', 'fe7febdb96aa24339eafc3fb8a63fd44383b320aa724b12d8d6f7377cbebdcd9', 'validated', '{"audio_key":"9117d8b82ae0cdc772900ad5d4159a0ca32b9711c243f3be01450e7cc5b015f8","entity_key":"d_first_greetings_02:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fe7febdb96aa24339eafc3fb8a63fd44383b320aa724b12d8d6f7377cbebdcd9","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/9117d8b82ae0cdc772900ad5d4159a0ca32b9711c243f3be01450e7cc5b015f8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_meaning_help:6 -> audio/generated/ko-KR/dialogues/91fd78a97bdf96caa12945de96fb545611ad0115e6ecfb66dc1dd5627cdf5e3b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fc4518e4-9198-5262-9751-568b1680ae3d', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_meaning_help:6')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e9dcd36d05bf1fcaa245ef4fe546d7b17d15b8345a20bf497e0b1b9e4b1ef85c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('633a9111-8d6f-505e-a894-1ca3aebc8605', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fc4518e4-9198-5262-9751-568b1680ae3d', 1), 'e9dcd36d05bf1fcaa245ef4fe546d7b17d15b8345a20bf497e0b1b9e4b1ef85c',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/91fd78a97bdf96caa12945de96fb545611ad0115e6ecfb66dc1dd5627cdf5e3b.mp3', 2037, '2026-09-14 13:40:39.512225', '2c6881810db0af15e5846a952fc4f043f2df2f2cb3acef6af7048bf494e095e9', 'validated', '{"audio_key":"91fd78a97bdf96caa12945de96fb545611ad0115e6ecfb66dc1dd5627cdf5e3b","entity_key":"d_ko_meaning_help:6","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2c6881810db0af15e5846a952fc4f043f2df2f2cb3acef6af7048bf494e095e9","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/91fd78a97bdf96caa12945de96fb545611ad0115e6ecfb66dc1dd5627cdf5e3b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_01:1 -> audio/generated/ko-KR/dialogues/94e93bf3e1572b7c5c181efd8df1c40d20d54d2b831e28a13b80223e862149a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d59aa2d7-bf35-5583-9366-7e5edff628eb', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbda086c7cc77d24a8918abdb424db409c91bba284db9ff955004d010cdabe0e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45d77bb5-5d13-50c7-8ef3-06e78702cae6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d59aa2d7-bf35-5583-9366-7e5edff628eb', 1), 'dbda086c7cc77d24a8918abdb424db409c91bba284db9ff955004d010cdabe0e',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/94e93bf3e1572b7c5c181efd8df1c40d20d54d2b831e28a13b80223e862149a1.mp3', 1567, '2026-09-14 13:40:40.536301', '8ac1aed3bd8cb2788762419c93f9e4ef38e6430033c16c783d6aebba288860d3', 'validated', '{"audio_key":"94e93bf3e1572b7c5c181efd8df1c40d20d54d2b831e28a13b80223e862149a1","entity_key":"d_survival_words_01:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8ac1aed3bd8cb2788762419c93f9e4ef38e6430033c16c783d6aebba288860d3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/94e93bf3e1572b7c5c181efd8df1c40d20d54d2b831e28a13b80223e862149a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_01:3 -> audio/generated/ko-KR/dialogues/94e93bf3e1572b7c5c181efd8df1c40d20d54d2b831e28a13b80223e862149a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('46017f04-869e-572c-8a2b-1e536568ba41', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dbda086c7cc77d24a8918abdb424db409c91bba284db9ff955004d010cdabe0e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4af82560-11ef-5200-8c08-90e40f390ced', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('46017f04-869e-572c-8a2b-1e536568ba41', 1), 'dbda086c7cc77d24a8918abdb424db409c91bba284db9ff955004d010cdabe0e',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/94e93bf3e1572b7c5c181efd8df1c40d20d54d2b831e28a13b80223e862149a1.mp3', 1567, '2026-09-14 13:40:40.536301', '8ac1aed3bd8cb2788762419c93f9e4ef38e6430033c16c783d6aebba288860d3', 'validated', '{"audio_key":"94e93bf3e1572b7c5c181efd8df1c40d20d54d2b831e28a13b80223e862149a1","entity_key":"d_survival_words_01:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8ac1aed3bd8cb2788762419c93f9e4ef38e6430033c16c783d6aebba288860d3","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/94e93bf3e1572b7c5c181efd8df1c40d20d54d2b831e28a13b80223e862149a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-about-me_origin_age:3 -> audio/generated/ko-KR/dialogues/95ca0e327cfa15e96fb5832bfc9ebe3d861475aff3c7ff964ea77482410499ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7466d283-566f-5f76-8783-c5ef485f2e3b', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-about-me_origin_age:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '828ace6339fb2f74fc0c8356a23f9982acd88d43578d059821ced51133d16169'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('08826ba4-5625-5642-acdf-541fb7db7790', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7466d283-566f-5f76-8783-c5ef485f2e3b', 1), '828ace6339fb2f74fc0c8356a23f9982acd88d43578d059821ced51133d16169',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/95ca0e327cfa15e96fb5832bfc9ebe3d861475aff3c7ff964ea77482410499ad.mp3', 1253, '2026-09-14 13:40:41.491890', 'd8f871ef7a0ff50e4643f20864caf7592bab7a41d8091d7a1d46c06dc222497e', 'validated', '{"audio_key":"95ca0e327cfa15e96fb5832bfc9ebe3d861475aff3c7ff964ea77482410499ad","entity_key":"d_ko_ko-about-me_origin_age:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d8f871ef7a0ff50e4643f20864caf7592bab7a41d8091d7a1d46c06dc222497e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/95ca0e327cfa15e96fb5832bfc9ebe3d861475aff3c7ff964ea77482410499ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-real-life-numbers_price_day:4 -> audio/generated/ko-KR/dialogues/983214c414be0d88454e60206f94157dfd3bcb7c8ff0e2ef70214766bfd112c5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f796e68c-f45f-55e5-8952-cf01c26a9a37', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-real-life-numbers_price_day:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8db3a24dc6f22eccd0505175371e0a9aed72c80b266ff85fc4962af1bc4a1278'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2ca5396-7c8b-59bc-96b3-d4b5157a0c7c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f796e68c-f45f-55e5-8952-cf01c26a9a37', 1), '8db3a24dc6f22eccd0505175371e0a9aed72c80b266ff85fc4962af1bc4a1278',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/983214c414be0d88454e60206f94157dfd3bcb7c8ff0e2ef70214766bfd112c5.mp3', 966, '2026-09-14 13:40:42.795001', 'dc96818488535ba8aa2782a06a6ebfd8e362a9c532165789fa714da748837c3a', 'validated', '{"audio_key":"983214c414be0d88454e60206f94157dfd3bcb7c8ff0e2ef70214766bfd112c5","entity_key":"d_ko_ko-real-life-numbers_price_day:4","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"dc96818488535ba8aa2782a06a6ebfd8e362a9c532165789fa714da748837c3a","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/983214c414be0d88454e60206f94157dfd3bcb7c8ff0e2ef70214766bfd112c5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-real-world-gate_meet:3 -> audio/generated/ko-KR/dialogues/9a65a4c8aa004f01f65ca13521a4dc9661b87e67ad44785b3e9a70b35347c12f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9fed1cce-0b93-5a33-a112-29e8d26ac8f4', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-real-world-gate_meet:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '828ace6339fb2f74fc0c8356a23f9982acd88d43578d059821ced51133d16169'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce4a35ae-5418-5a2e-9899-455641272b4e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9fed1cce-0b93-5a33-a112-29e8d26ac8f4', 1), '828ace6339fb2f74fc0c8356a23f9982acd88d43578d059821ced51133d16169',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9a65a4c8aa004f01f65ca13521a4dc9661b87e67ad44785b3e9a70b35347c12f.mp3', 1436, '2026-09-14 13:40:43.850169', 'deb8987b12127e57d8dff1a6c1b110c106e83239db1db884a779417b79ed7adc', 'validated', '{"audio_key":"9a65a4c8aa004f01f65ca13521a4dc9661b87e67ad44785b3e9a70b35347c12f","entity_key":"d_ko_ko-real-world-gate_meet:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"deb8987b12127e57d8dff1a6c1b110c106e83239db1db884a779417b79ed7adc","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/9a65a4c8aa004f01f65ca13521a4dc9661b87e67ad44785b3e9a70b35347c12f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_02:1 -> audio/generated/ko-KR/dialogues/9b3546278636aae9413ecbb6ba634a92b0c5138aec331abf0e5564c8f81c328d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ba6b25e9-9494-554a-9a3f-a9235997860e', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0cdb6b1b37190b85ae104b878ecd2c35b535f7154cf8ea27ee6e5b70789e39b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4911acef-49ab-51ec-ac82-da7f3715b8c6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ba6b25e9-9494-554a-9a3f-a9235997860e', 1), '0cdb6b1b37190b85ae104b878ecd2c35b535f7154cf8ea27ee6e5b70789e39b1',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9b3546278636aae9413ecbb6ba634a92b0c5138aec331abf0e5564c8f81c328d.mp3', 1201, '2026-09-14 13:40:44.827841', 'a87091dccbdb264d3b6b594d53fa5b182702797f8e645c484bfbe82477bdc6fa', 'validated', '{"audio_key":"9b3546278636aae9413ecbb6ba634a92b0c5138aec331abf0e5564c8f81c328d","entity_key":"d_polite_words_02:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a87091dccbdb264d3b6b594d53fa5b182702797f8e645c484bfbe82477bdc6fa","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/9b3546278636aae9413ecbb6ba634a92b0c5138aec331abf0e5564c8f81c328d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_02:3 -> audio/generated/ko-KR/dialogues/9c1f18bee6a22968b8e22f0c6eb0e95019c41c9296d2a854fafc6c82c8acf2ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2a9b1844-ce72-5a62-ab54-b85b46a39983', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6f0ccbf1244008c5f7eb5a0c5499876efe401f28c019f8c621be4814748b29ec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9345a8c0-ada9-5233-8831-09ff904bf73a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2a9b1844-ce72-5a62-ab54-b85b46a39983', 1), '6f0ccbf1244008c5f7eb5a0c5499876efe401f28c019f8c621be4814748b29ec',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9c1f18bee6a22968b8e22f0c6eb0e95019c41c9296d2a854fafc6c82c8acf2ff.mp3', 1488, '2026-09-14 13:40:45.794751', '6cb7fcda8a025f3a045dcf558542d6b2be5502ee8614beb5771f338d347e3597', 'validated', '{"audio_key":"9c1f18bee6a22968b8e22f0c6eb0e95019c41c9296d2a854fafc6c82c8acf2ff","entity_key":"d_polite_words_02:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6cb7fcda8a025f3a045dcf558542d6b2be5502ee8614beb5771f338d347e3597","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/9c1f18bee6a22968b8e22f0c6eb0e95019c41c9296d2a854fafc6c82c8acf2ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_01:2 -> audio/generated/ko-KR/dialogues/9c6179e96d98b738e9121c95922617befb34bace65376ff59bdfe9d10d1efccc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9312d07f-7667-5666-be79-df96dffe0bd7', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a73ebadfb9ea3dae13881dd8b1385578139ccd1917e9eacd19c1d8c0d69f25e4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4a24971-f97b-5ffd-a255-83d10ad318b3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9312d07f-7667-5666-be79-df96dffe0bd7', 1), 'a73ebadfb9ea3dae13881dd8b1385578139ccd1917e9eacd19c1d8c0d69f25e4',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9c6179e96d98b738e9121c95922617befb34bace65376ff59bdfe9d10d1efccc.mp3', 2168, '2026-09-14 13:40:46.842000', '054dd7d75bba821e24a54ec7a132e341557e2933f4d881b4b014186c3045789b', 'validated', '{"audio_key":"9c6179e96d98b738e9121c95922617befb34bace65376ff59bdfe9d10d1efccc","entity_key":"d_survival_words_01:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"054dd7d75bba821e24a54ec7a132e341557e2933f4d881b4b014186c3045789b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/9c6179e96d98b738e9121c95922617befb34bace65376ff59bdfe9d10d1efccc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hangul_basics_01:1 -> audio/generated/ko-KR/dialogues/a0fe5e0d90c70bb668efd461d25963c5e0864719f0414fd47ea3334bea11a7a6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2c06b120-8645-57a9-ae8e-d85106214648', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hangul_basics_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7d2680f9da135a96606882ae2e44d8f7702c55e9f9c59151405fef37b1ab84ba'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77f8592f-ca5e-56a4-a04e-54424da2e4bc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2c06b120-8645-57a9-ae8e-d85106214648', 1), '7d2680f9da135a96606882ae2e44d8f7702c55e9f9c59151405fef37b1ab84ba',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a0fe5e0d90c70bb668efd461d25963c5e0864719f0414fd47ea3334bea11a7a6.mp3', 1488, '2026-09-14 13:40:47.905089', '29c4ff564342a6365de62f70d036644d51fc184376661b46ed213c5b86a2fe02', 'validated', '{"audio_key":"a0fe5e0d90c70bb668efd461d25963c5e0864719f0414fd47ea3334bea11a7a6","entity_key":"d_hangul_basics_01:1","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"29c4ff564342a6365de62f70d036644d51fc184376661b46ed213c5b86a2fe02","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/a0fe5e0d90c70bb668efd461d25963c5e0864719f0414fd47ea3334bea11a7a6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_02:3 -> audio/generated/ko-KR/dialogues/a5d2044be238dbb7e1123fb0c13042f389d3b55aef566aed4e65b26dbee9ddc6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4845681e-f385-5b01-a195-566ae3cd0a5c', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '645408d257427659dfee6b47d998f86150172bed445b1d41f474abcf3950fc31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa9d08c7-78ea-5345-976c-710c4f60d3f1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4845681e-f385-5b01-a195-566ae3cd0a5c', 1), '645408d257427659dfee6b47d998f86150172bed445b1d41f474abcf3950fc31',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a5d2044be238dbb7e1123fb0c13042f389d3b55aef566aed4e65b26dbee9ddc6.mp3', 1149, '2026-09-14 13:40:48.881684', 'be708ad3c9b14065be7e14d0a81864f1dd096a22bf002a4a1d363ceb057574d5', 'validated', '{"audio_key":"a5d2044be238dbb7e1123fb0c13042f389d3b55aef566aed4e65b26dbee9ddc6","entity_key":"d_first_conversation_02:3","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"be708ad3c9b14065be7e14d0a81864f1dd096a22bf002a4a1d363ceb057574d5","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/a5d2044be238dbb7e1123fb0c13042f389d3b55aef566aed4e65b26dbee9ddc6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ready_intro:4 -> audio/generated/ko-KR/dialogues/a5d7fbdc8098ede8790c879fa5ad5b39e4663e4013938f3d8463587d2ca53970.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('803d0744-5e45-52cc-8a90-0b1e8e48f598', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ready_intro:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ab89176dc9d0a2459af6b344c559219a3a2a1d1e5d906a257ffb06571ae86cdb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75b0fc36-dd78-55d2-8a29-0f026a0ea39c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('803d0744-5e45-52cc-8a90-0b1e8e48f598', 1), 'ab89176dc9d0a2459af6b344c559219a3a2a1d1e5d906a257ffb06571ae86cdb',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a5d7fbdc8098ede8790c879fa5ad5b39e4663e4013938f3d8463587d2ca53970.mp3', 1332, '2026-09-14 13:40:49.876430', 'e4946a62872eb06daa9e0f992f49dec815316a0726790148797c8047bffd396b', 'validated', '{"audio_key":"a5d7fbdc8098ede8790c879fa5ad5b39e4663e4013938f3d8463587d2ca53970","entity_key":"d_ko_ready_intro:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e4946a62872eb06daa9e0f992f49dec815316a0726790148797c8047bffd396b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/a5d7fbdc8098ede8790c879fa5ad5b39e4663e4013938f3d8463587d2ca53970.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_01:1 -> audio/generated/ko-KR/dialogues/a5edbce2d34677f76ee5c7ddab54962705f7e122ed8bbae7a977f04d0e9a2b8d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('70fc654d-0a40-5ba7-9fb3-faa40f578e19', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f93c493de90f16d7132452389ef93dba9af38764aea617b41ef5286f475eadec'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7229ae42-2e79-5651-b9c4-0c7ae7f3f263', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('70fc654d-0a40-5ba7-9fb3-faa40f578e19', 1), 'f93c493de90f16d7132452389ef93dba9af38764aea617b41ef5286f475eadec',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a5edbce2d34677f76ee5c7ddab54962705f7e122ed8bbae7a977f04d0e9a2b8d.mp3', 1149, '2026-09-14 13:40:50.836626', '91800c8152809778b0badacf1b16c80e119877005c7bdb364ac55d4ea08162df', 'validated', '{"audio_key":"a5edbce2d34677f76ee5c7ddab54962705f7e122ed8bbae7a977f04d0e9a2b8d","entity_key":"d_numbers_0_10_01:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"91800c8152809778b0badacf1b16c80e119877005c7bdb364ac55d4ea08162df","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/a5edbce2d34677f76ee5c7ddab54962705f7e122ed8bbae7a977f04d0e9a2b8d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_01:1 -> audio/generated/ko-KR/dialogues/a68a8891cbeeb3e8cd6225e4fcfed34c9d1c8ff311586e91af8555d3c0d70ff6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b56681b0-3440-5d50-9b76-d4a830ec42f4', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '07bbf423148c7b2299406241463718825c0dcd6b1616c584d8dc948f81ceb6a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b7899878-d462-5a38-bdf9-7290377a79cb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b56681b0-3440-5d50-9b76-d4a830ec42f4', 1), '07bbf423148c7b2299406241463718825c0dcd6b1616c584d8dc948f81ceb6a0',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a68a8891cbeeb3e8cd6225e4fcfed34c9d1c8ff311586e91af8555d3c0d70ff6.mp3', 1149, '2026-09-14 13:40:51.809625', '3b16c99afba185b1045f4d8e6f276e7fc2d41a2973b76a02f5b34fb7956500ce', 'validated', '{"audio_key":"a68a8891cbeeb3e8cd6225e4fcfed34c9d1c8ff311586e91af8555d3c0d70ff6","entity_key":"d_first_objects_01:1","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3b16c99afba185b1045f4d8e6f276e7fc2d41a2973b76a02f5b34fb7956500ce","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/a68a8891cbeeb3e8cd6225e4fcfed34c9d1c8ff311586e91af8555d3c0d70ff6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-real-life-numbers_phone:3 -> audio/generated/ko-KR/dialogues/a73ca92169c7b8fe32d8a702a4d40cc2cb755e321db4c55a10457ef73e1626a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c0f3d490-0c1c-583a-8601-e8bff1780c65', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-real-life-numbers_phone:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67c64c9cae445f707ce250b88595fa992fa4c6e2e5e05b1f2032c73d70151dd1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57838f96-ec6f-59b3-aca9-02278476e780', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c0f3d490-0c1c-583a-8601-e8bff1780c65', 1), '67c64c9cae445f707ce250b88595fa992fa4c6e2e5e05b1f2032c73d70151dd1',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a73ca92169c7b8fe32d8a702a4d40cc2cb755e321db4c55a10457ef73e1626a0.mp3', 1567, '2026-09-14 13:40:52.847496', '9693f2bff334fdae4856f04436eb154c613ed08d755daed9218f6d0a44ce2f53', 'validated', '{"audio_key":"a73ca92169c7b8fe32d8a702a4d40cc2cb755e321db4c55a10457ef73e1626a0","entity_key":"d_ko_ko-real-life-numbers_phone:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9693f2bff334fdae4856f04436eb154c613ed08d755daed9218f6d0a44ce2f53","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/a73ca92169c7b8fe32d8a702a4d40cc2cb755e321db4c55a10457ef73e1626a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_01:2 -> audio/generated/ko-KR/dialogues/a742a7abf623de7edc99f1015fc951df729aa58af0b7cf3ef1e23619a5a38829.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a0c70307-3776-55b0-ae14-05879486b833', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77f42f3ec34e8bb9f14dc8ed8a0aa4c74b642fb547f180b830c430c8ece82b88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e9ccf88a-9d1b-5fb3-a974-89c61ed96284', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a0c70307-3776-55b0-ae14-05879486b833', 1), '77f42f3ec34e8bb9f14dc8ed8a0aa4c74b642fb547f180b830c430c8ece82b88',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a742a7abf623de7edc99f1015fc951df729aa58af0b7cf3ef1e23619a5a38829.mp3', 1149, '2026-09-14 13:40:53.839734', '7280f3c3a4386de617b4778522e62d78149fbf2f51d40ecf827526bd90e6e0dc', 'validated', '{"audio_key":"a742a7abf623de7edc99f1015fc951df729aa58af0b7cf3ef1e23619a5a38829","entity_key":"d_first_objects_01:2","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7280f3c3a4386de617b4778522e62d78149fbf2f51d40ecf827526bd90e6e0dc","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/a742a7abf623de7edc99f1015fc951df729aa58af0b7cf3ef1e23619a5a38829.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_01:4 -> audio/generated/ko-KR/dialogues/ab227e8effbb9031b61e9aac053271ecea3ae2d4f98f32eddae7b6cd0f4ead65.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f309fba6-9c6a-55c2-9678-03d8c9508a1d', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ca1f776b6d30598c43bc326d35f8958d5fde51b6a20db14c91c554bb8fb8c21'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('10966c59-3a6e-5ee1-926d-a1feb72c8433', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f309fba6-9c6a-55c2-9678-03d8c9508a1d', 1), '9ca1f776b6d30598c43bc326d35f8958d5fde51b6a20db14c91c554bb8fb8c21',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ab227e8effbb9031b61e9aac053271ecea3ae2d4f98f32eddae7b6cd0f4ead65.mp3', 1332, '2026-09-14 13:40:54.825849', '515704ff3570f56fc936fde0a960162de23fa2648363babe7b25bd9fcec9f680', 'validated', '{"audio_key":"ab227e8effbb9031b61e9aac053271ecea3ae2d4f98f32eddae7b6cd0f4ead65","entity_key":"d_numbers_0_10_01:4","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"515704ff3570f56fc936fde0a960162de23fa2648363babe7b25bd9fcec9f680","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/ab227e8effbb9031b61e9aac053271ecea3ae2d4f98f32eddae7b6cd0f4ead65.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_02:1 -> audio/generated/ko-KR/dialogues/ab93e315a0ce44742b286633109db3d349c0b9814a1963276677ce7ce49944e3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('836705ef-12bc-5a80-9fd5-37b6d6fcaae5', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38d6051095465e9833043df0afd2e63b3a879d383f60b48bc3e2965e9b7ea6b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('620117b8-1262-5b25-b891-35c92d73b3f5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('836705ef-12bc-5a80-9fd5-37b6d6fcaae5', 1), '38d6051095465e9833043df0afd2e63b3a879d383f60b48bc3e2965e9b7ea6b2',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ab93e315a0ce44742b286633109db3d349c0b9814a1963276677ce7ce49944e3.mp3', 1697, '2026-09-14 13:40:55.850758', '917c6edb48301fa323c893c67a7e5928849ba42071d98e30fc31513e75abfb26', 'validated', '{"audio_key":"ab93e315a0ce44742b286633109db3d349c0b9814a1963276677ce7ce49944e3","entity_key":"d_first_sounds_02:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"917c6edb48301fa323c893c67a7e5928849ba42071d98e30fc31513e75abfb26","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/ab93e315a0ce44742b286633109db3d349c0b9814a1963276677ce7ce49944e3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_01:1 -> audio/generated/ko-KR/dialogues/adf520c1d7353e1e8ca0f05c4579e6ffdb52fc1315e07ffdacb10688b5a3298f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('fa7b7849-b892-5983-a0a3-2a6630ae4a70', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0be26d33451f08452e434ac4051b028f3a96f904cc48d048e92686c5b1791c6d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c001f00-9dd9-58fd-b0d5-9342573964d4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('fa7b7849-b892-5983-a0a3-2a6630ae4a70', 1), '0be26d33451f08452e434ac4051b028f3a96f904cc48d048e92686c5b1791c6d',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/adf520c1d7353e1e8ca0f05c4579e6ffdb52fc1315e07ffdacb10688b5a3298f.mp3', 1567, '2026-09-14 13:40:56.887397', 'b90782103a46759547faf83611aeb8249ce2f79cc044e5b9b23aec1ff492339d', 'validated', '{"audio_key":"adf520c1d7353e1e8ca0f05c4579e6ffdb52fc1315e07ffdacb10688b5a3298f","entity_key":"d_how_are_you_01:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b90782103a46759547faf83611aeb8249ce2f79cc044e5b9b23aec1ff492339d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/adf520c1d7353e1e8ca0f05c4579e6ffdb52fc1315e07ffdacb10688b5a3298f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-real-world-gate_meet:4 -> audio/generated/ko-KR/dialogues/b2f57d7af901514e7433483a21b8aa932b3c6ceabed2fe2326efbf955de13614.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9c0947bb-7cc4-5945-948e-0e75fd4d707b', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-real-world-gate_meet:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c64bb303cccd212cb6b8a0b3a36705cb05f9e07b9b3eba2226b628d7b7f42a8e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ef82b41-b86c-511f-8546-1d67bd7d0c93', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9c0947bb-7cc4-5945-948e-0e75fd4d707b', 1), 'c64bb303cccd212cb6b8a0b3a36705cb05f9e07b9b3eba2226b628d7b7f42a8e',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b2f57d7af901514e7433483a21b8aa932b3c6ceabed2fe2326efbf955de13614.mp3', 1567, '2026-09-14 13:40:57.891609', '525d5383fdf8e0c7809d92a722fc5dc8ccddf39a39d29f73f3197247bd57f126', 'validated', '{"audio_key":"b2f57d7af901514e7433483a21b8aa932b3c6ceabed2fe2326efbf955de13614","entity_key":"d_ko_ko-real-world-gate_meet:4","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"525d5383fdf8e0c7809d92a722fc5dc8ccddf39a39d29f73f3197247bd57f126","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/b2f57d7af901514e7433483a21b8aa932b3c6ceabed2fe2326efbf955de13614.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-forms-signs_form:3 -> audio/generated/ko-KR/dialogues/b3c63de95b16aa5abcac7c5b045fb36d193369f004a691786ea7f3ff0d73c619.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5a742c37-f1bc-55fe-a49d-05c639681c87', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-forms-signs_form:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '21cf2c9cac2af8ccc0b86b23244f495bd9181f1dfb8813f97c85c05111d58a6a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3690598d-d789-5415-a3c8-a227afbca1cb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5a742c37-f1bc-55fe-a49d-05c639681c87', 1), '21cf2c9cac2af8ccc0b86b23244f495bd9181f1dfb8813f97c85c05111d58a6a',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b3c63de95b16aa5abcac7c5b045fb36d193369f004a691786ea7f3ff0d73c619.mp3', 966, '2026-09-14 13:40:58.854875', '27e809762560d42186561c85ca3860c204f9ebe4a8175675243e3f30c96210db', 'validated', '{"audio_key":"b3c63de95b16aa5abcac7c5b045fb36d193369f004a691786ea7f3ff0d73c619","entity_key":"d_ko_ko-forms-signs_form:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"27e809762560d42186561c85ca3860c204f9ebe4a8175675243e3f30c96210db","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/b3c63de95b16aa5abcac7c5b045fb36d193369f004a691786ea7f3ff0d73c619.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-about-me_origin_age:1 -> audio/generated/ko-KR/dialogues/b5c2fa073b8ccd8c5bd7e2418f1c7c81f041f62198ffbff1036400465a0ed3d0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('db523e60-ba55-584b-912e-856413e40bb8', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-about-me_origin_age:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e0f639938481a5a0c0632b36b0fc7d363c18c8ee5b0a2484d168d5c99b55b9f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70b09c28-c3a0-5ebd-97d3-6f4fc85f2d79', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('db523e60-ba55-584b-912e-856413e40bb8', 1), 'e0f639938481a5a0c0632b36b0fc7d363c18c8ee5b0a2484d168d5c99b55b9f3',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b5c2fa073b8ccd8c5bd7e2418f1c7c81f041f62198ffbff1036400465a0ed3d0.mp3', 1253, '2026-09-14 13:40:59.819972', '663eaac7bc26d9a322622cbfed73a23792b40642114d0e61b0719e1e76181f96', 'validated', '{"audio_key":"b5c2fa073b8ccd8c5bd7e2418f1c7c81f041f62198ffbff1036400465a0ed3d0","entity_key":"d_ko_ko-about-me_origin_age:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"663eaac7bc26d9a322622cbfed73a23792b40642114d0e61b0719e1e76181f96","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/b5c2fa073b8ccd8c5bd7e2418f1c7c81f041f62198ffbff1036400465a0ed3d0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_meaning_help:3 -> audio/generated/ko-KR/dialogues/b5c3de49f0ba6e24175153aa65232a524672bb30feb9f3867659dbf77a84be32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bd2730c8-de9a-5fbc-bf08-1c4ea8aae9ba', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_meaning_help:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7910988af8e9e270798e18e02cc2fbe17df8cbb60321bd97ad73c3cdd2233c49'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e6aaadb-fd2e-5180-8cc0-d285b43dc729', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bd2730c8-de9a-5fbc-bf08-1c4ea8aae9ba', 1), '7910988af8e9e270798e18e02cc2fbe17df8cbb60321bd97ad73c3cdd2233c49',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b5c3de49f0ba6e24175153aa65232a524672bb30feb9f3867659dbf77a84be32.mp3', 1697, '2026-09-14 13:41:01.006099', 'bafae9279642f43813eea1559662e9ef2fb8eb39fcf8d1720a68f51918750f92', 'validated', '{"audio_key":"b5c3de49f0ba6e24175153aa65232a524672bb30feb9f3867659dbf77a84be32","entity_key":"d_ko_meaning_help:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bafae9279642f43813eea1559662e9ef2fb8eb39fcf8d1720a68f51918750f92","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/b5c3de49f0ba6e24175153aa65232a524672bb30feb9f3867659dbf77a84be32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_01:4 -> audio/generated/ko-KR/dialogues/b7e22a3f521248492ab8a6848b0709c1b2231ed4e9edaa503d0d0e632b237d8e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b8c356b6-61e9-536a-9c8e-cb202381005f', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8996bef60cfdae2dd2758033f116fbdc19db0c3e163b9b287d31aa34c709614c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b040c06-441e-5298-bc95-0ead61138af3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b8c356b6-61e9-536a-9c8e-cb202381005f', 1), '8996bef60cfdae2dd2758033f116fbdc19db0c3e163b9b287d31aa34c709614c',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b7e22a3f521248492ab8a6848b0709c1b2231ed4e9edaa503d0d0e632b237d8e.mp3', 1515, '2026-09-14 13:41:01.981193', '0cb67860abe5ba26d063947265757c4e6840d47057fc1d02a6cf3da31cc12c22', 'validated', '{"audio_key":"b7e22a3f521248492ab8a6848b0709c1b2231ed4e9edaa503d0d0e632b237d8e","entity_key":"d_first_greetings_01:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0cb67860abe5ba26d063947265757c4e6840d47057fc1d02a6cf3da31cc12c22","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/b7e22a3f521248492ab8a6848b0709c1b2231ed4e9edaa503d0d0e632b237d8e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_02:2 -> audio/generated/ko-KR/dialogues/b7ede91e0ca5116de383a07febd42c3ac6a54519bdb2b7975c8f2bdcc09e2145.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cae2c211-b290-54ba-819e-88a53628c34a', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e91dd2be3006a6b555ac470fb77b375258b66272ea49aab24df17335cdb18a30'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('304ca516-a120-5aaa-aa6d-f24137d9fc6c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cae2c211-b290-54ba-819e-88a53628c34a', 1), 'e91dd2be3006a6b555ac470fb77b375258b66272ea49aab24df17335cdb18a30',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b7ede91e0ca5116de383a07febd42c3ac6a54519bdb2b7975c8f2bdcc09e2145.mp3', 1384, '2026-09-14 13:41:03.013823', '3ed56425220c8ff9ed26ed873eedb9761b18799ab95921b82960d3e34b067516', 'validated', '{"audio_key":"b7ede91e0ca5116de383a07febd42c3ac6a54519bdb2b7975c8f2bdcc09e2145","entity_key":"d_how_are_you_02:2","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3ed56425220c8ff9ed26ed873eedb9761b18799ab95921b82960d3e34b067516","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/b7ede91e0ca5116de383a07febd42c3ac6a54519bdb2b7975c8f2bdcc09e2145.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_02:3 -> audio/generated/ko-KR/dialogues/b844bafc11af6f7f088e08b33672ff94e74d06bd1e535aad5b8b642c735ed587.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6891dc02-45c5-5537-9f72-2927d9fa78b7', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2afe458f19ca4a21bdd8d37abbb1371aee85d5f6961325bca026a9be16847745'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8747d58a-e242-513d-8ad0-99c3586417f5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6891dc02-45c5-5537-9f72-2927d9fa78b7', 1), '2afe458f19ca4a21bdd8d37abbb1371aee85d5f6961325bca026a9be16847745',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b844bafc11af6f7f088e08b33672ff94e74d06bd1e535aad5b8b642c735ed587.mp3', 1253, '2026-09-14 13:41:03.994699', '2cc38c50ca1f1a4a47fc56636af946784ddc310c2732f8b14028db8f357929e7', 'validated', '{"audio_key":"b844bafc11af6f7f088e08b33672ff94e74d06bd1e535aad5b8b642c735ed587","entity_key":"d_first_greetings_02:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2cc38c50ca1f1a4a47fc56636af946784ddc310c2732f8b14028db8f357929e7","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/b844bafc11af6f7f088e08b33672ff94e74d06bd1e535aad5b8b642c735ed587.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-about-me_feeling_family:3 -> audio/generated/ko-KR/dialogues/bcb60963e9165559fb87480465a52e23de3f1a7a63df704365526a1d8faa9083.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c597b8c7-63c3-5e91-96c3-c85864067ce7', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-about-me_feeling_family:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eff5afb76409af2679c7c6dcfd3024b902aeb2a1b2a9cd4c6a8e3b12acc28d8a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ad75b0ff-e5ca-5f9d-aedb-f2e0c8c43ee5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c597b8c7-63c3-5e91-96c3-c85864067ce7', 1), 'eff5afb76409af2679c7c6dcfd3024b902aeb2a1b2a9cd4c6a8e3b12acc28d8a',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/bcb60963e9165559fb87480465a52e23de3f1a7a63df704365526a1d8faa9083.mp3', 1253, '2026-09-14 13:41:04.969678', 'fa4059160d97eb069dec73d39f8f66cc84d0ed7a79f3ddd5f21e6872ca6e0b02', 'validated', '{"audio_key":"bcb60963e9165559fb87480465a52e23de3f1a7a63df704365526a1d8faa9083","entity_key":"d_ko_ko-about-me_feeling_family:3","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fa4059160d97eb069dec73d39f8f66cc84d0ed7a79f3ddd5f21e6872ca6e0b02","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/bcb60963e9165559fb87480465a52e23de3f1a7a63df704365526a1d8faa9083.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_01:1 -> audio/generated/ko-KR/dialogues/c06f411edcde0cf142a983cba057f4b41d743d6662f2753224dca811cd17589f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6c136d61-71c8-5ea8-a3bd-beac7e24387c', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40f3128dd2b99c0edcf4a32ff8c5eb4789c012e445a7d92ee8890c3dfc0e4c20'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('45c8e7e5-48c3-5731-a230-fd5ad3de4728', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6c136d61-71c8-5ea8-a3bd-beac7e24387c', 1), '40f3128dd2b99c0edcf4a32ff8c5eb4789c012e445a7d92ee8890c3dfc0e4c20',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c06f411edcde0cf142a983cba057f4b41d743d6662f2753224dca811cd17589f.mp3', 1515, '2026-09-14 13:41:06.093464', '83010692baa3463b62edbb184c7f65dd2c16e9340c4d5210afe44f01e04599ec', 'validated', '{"audio_key":"c06f411edcde0cf142a983cba057f4b41d743d6662f2753224dca811cd17589f","entity_key":"d_first_greetings_01:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"83010692baa3463b62edbb184c7f65dd2c16e9340c4d5210afe44f01e04599ec","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/c06f411edcde0cf142a983cba057f4b41d743d6662f2753224dca811cd17589f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hangul_basics_02:3 -> audio/generated/ko-KR/dialogues/c14d25c8eb40f85220b46df6bf1db564030ed04fa19cf2b1cb026da28aca5556.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a1be8fde-6a4f-5b75-ab7b-1237fe4d40e9', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hangul_basics_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1a177665fafeef54d56e404231cfc755528e80c8f8767668966e6610075b58f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0befac3-76dc-54d2-b5a7-ffba54064d32', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a1be8fde-6a4f-5b75-ab7b-1237fe4d40e9', 1), '1a177665fafeef54d56e404231cfc755528e80c8f8767668966e6610075b58f3',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c14d25c8eb40f85220b46df6bf1db564030ed04fa19cf2b1cb026da28aca5556.mp3', 1280, '2026-09-14 13:41:07.126876', '24f924071404c94eefa04b39ad53126ac3dc5173da00ec2b7f2fe5b2fe767a4f', 'validated', '{"audio_key":"c14d25c8eb40f85220b46df6bf1db564030ed04fa19cf2b1cb026da28aca5556","entity_key":"d_hangul_basics_02:3","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"24f924071404c94eefa04b39ad53126ac3dc5173da00ec2b7f2fe5b2fe767a4f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/c14d25c8eb40f85220b46df6bf1db564030ed04fa19cf2b1cb026da28aca5556.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_02:1 -> audio/generated/ko-KR/dialogues/c25ae913098904af3e14a331a80ee0cd6e5e0f7d778ae80b355cefe286eab7f7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d44284fb-8d34-52cd-aebd-d760ef9235da', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bec3bd83cd162f6d68b14fb180daf8695978682eecd5a9b023cc1968f61b04bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3eb02ef7-0c99-5417-9e02-a7465cea5629', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d44284fb-8d34-52cd-aebd-d760ef9235da', 1), 'bec3bd83cd162f6d68b14fb180daf8695978682eecd5a9b023cc1968f61b04bf',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c25ae913098904af3e14a331a80ee0cd6e5e0f7d778ae80b355cefe286eab7f7.mp3', 1515, '2026-09-14 13:41:08.124434', '3bd3a2282be89687578a06d850ad81819d9529fce08a1d27fb867ff746520c99', 'validated', '{"audio_key":"c25ae913098904af3e14a331a80ee0cd6e5e0f7d778ae80b355cefe286eab7f7","entity_key":"d_my_name_02:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3bd3a2282be89687578a06d850ad81819d9529fce08a1d27fb867ff746520c99","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/c25ae913098904af3e14a331a80ee0cd6e5e0f7d778ae80b355cefe286eab7f7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_02:3 -> audio/generated/ko-KR/dialogues/c3d19f5cf1fcd97a63dd53bff3bdead2b05942d15af4489ab32f8aa8694fb25a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ec083e5a-4ae5-591a-91bf-1118f04e2f18', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '195cdb5bb2778c24ccfa8a269af055d3739bcae52ac0fd117e396e07141adef9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('51bf90cd-9e8e-5251-9b4b-90e6a53c560c', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ec083e5a-4ae5-591a-91bf-1118f04e2f18', 1), '195cdb5bb2778c24ccfa8a269af055d3739bcae52ac0fd117e396e07141adef9',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c3d19f5cf1fcd97a63dd53bff3bdead2b05942d15af4489ab32f8aa8694fb25a.mp3', 1332, '2026-09-14 13:41:09.135498', '4f040d47f0876217f05672c8d315329163294593d0e1817bdbf8321ad04fa2fe', 'validated', '{"audio_key":"c3d19f5cf1fcd97a63dd53bff3bdead2b05942d15af4489ab32f8aa8694fb25a","entity_key":"d_how_are_you_02:3","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4f040d47f0876217f05672c8d315329163294593d0e1817bdbf8321ad04fa2fe","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/c3d19f5cf1fcd97a63dd53bff3bdead2b05942d15af4489ab32f8aa8694fb25a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_01:4 -> audio/generated/ko-KR/dialogues/c4978b23128c9ea58bb66829af29413dc07319ae965f9389f5d20e4ab7cbd874.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b7aba728-c9e4-5476-8be9-5fbbc4acebf4', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c64bb303cccd212cb6b8a0b3a36705cb05f9e07b9b3eba2226b628d7b7f42a8e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26dc93d9-ebd4-501f-9377-db3233d741ad', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b7aba728-c9e4-5476-8be9-5fbbc4acebf4', 1), 'c64bb303cccd212cb6b8a0b3a36705cb05f9e07b9b3eba2226b628d7b7f42a8e',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c4978b23128c9ea58bb66829af29413dc07319ae965f9389f5d20e4ab7cbd874.mp3', 1619, '2026-09-14 13:41:10.136973', 'bb824772268a6743adeef59c4341772b7fb40411d71ef3f01b146c51be594607', 'validated', '{"audio_key":"c4978b23128c9ea58bb66829af29413dc07319ae965f9389f5d20e4ab7cbd874","entity_key":"d_first_conversation_01:4","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"bb824772268a6743adeef59c4341772b7fb40411d71ef3f01b146c51be594607","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/c4978b23128c9ea58bb66829af29413dc07319ae965f9389f5d20e4ab7cbd874.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_02:4 -> audio/generated/ko-KR/dialogues/c4f67b1367015376ac096e8df12c6f7825ac3f884a92df3d2080abc09259e8ce.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2de7849f-5585-5114-8839-40f644b305a5', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '30ded4b31df5e0f786f28bfb7e3aa09df72411f450fa7909a369f91af3d77404'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1596c9e5-8d1b-53ce-ad37-860967791f73', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2de7849f-5585-5114-8839-40f644b305a5', 1), '30ded4b31df5e0f786f28bfb7e3aa09df72411f450fa7909a369f91af3d77404',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c4f67b1367015376ac096e8df12c6f7825ac3f884a92df3d2080abc09259e8ce.mp3', 1332, '2026-09-14 13:41:11.155759', '71c09b2123a2d308523451613d8adb04859451355d36bccb86d7d119105d3fbe', 'validated', '{"audio_key":"c4f67b1367015376ac096e8df12c6f7825ac3f884a92df3d2080abc09259e8ce","entity_key":"d_how_are_you_02:4","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"71c09b2123a2d308523451613d8adb04859451355d36bccb86d7d119105d3fbe","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/c4f67b1367015376ac096e8df12c6f7825ac3f884a92df3d2080abc09259e8ce.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_meaning_help:4 -> audio/generated/ko-KR/dialogues/c51de7df16020fb91b45a24a685311b5c16dac7c941d78d30237f49a844fc38c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3b5050cf-a16e-58f3-90ec-0bee0ec5a28b', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_meaning_help:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67c64c9cae445f707ce250b88595fa992fa4c6e2e5e05b1f2032c73d70151dd1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37745dc3-d77a-52b8-a981-c47140c32957', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3b5050cf-a16e-58f3-90ec-0bee0ec5a28b', 1), '67c64c9cae445f707ce250b88595fa992fa4c6e2e5e05b1f2032c73d70151dd1',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c51de7df16020fb91b45a24a685311b5c16dac7c941d78d30237f49a844fc38c.mp3', 1332, '2026-09-14 13:41:12.141193', '96f7a83192c2203d17f730eeb4dd2969b439d313b06015a7bbf7ea62669e0173', 'validated', '{"audio_key":"c51de7df16020fb91b45a24a685311b5c16dac7c941d78d30237f49a844fc38c","entity_key":"d_ko_meaning_help:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"96f7a83192c2203d17f730eeb4dd2969b439d313b06015a7bbf7ea62669e0173","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/c51de7df16020fb91b45a24a685311b5c16dac7c941d78d30237f49a844fc38c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_02:1 -> audio/generated/ko-KR/dialogues/c8c70067ebf63923a7aacd5933169121771cce696fcd3262fb4a28241ce46265.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c5e94730-1f56-5247-96da-2b4c382936fa', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3a8589317ee1bf05a55305e49c8bc870b203f26a7942992c0ca3f8083ff21ef2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('66a1215f-a3d4-5849-91f1-e04acefe58fb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c5e94730-1f56-5247-96da-2b4c382936fa', 1), '3a8589317ee1bf05a55305e49c8bc870b203f26a7942992c0ca3f8083ff21ef2',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c8c70067ebf63923a7aacd5933169121771cce696fcd3262fb4a28241ce46265.mp3', 1253, '2026-09-14 13:41:13.119894', '98a0113ba28a8487d31cf69c9bff95a6c9a9447f0c8769878799e9efcffc43cf', 'validated', '{"audio_key":"c8c70067ebf63923a7aacd5933169121771cce696fcd3262fb4a28241ce46265","entity_key":"d_first_objects_02:1","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"98a0113ba28a8487d31cf69c9bff95a6c9a9447f0c8769878799e9efcffc43cf","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/c8c70067ebf63923a7aacd5933169121771cce696fcd3262fb4a28241ce46265.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_02:3 -> audio/generated/ko-KR/dialogues/c9a166a1fa93ae30c1769af303d25b0bd743a57e844ee676303381867c40121d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('05e446a4-a439-5ecc-a0b4-9d8e3f92bd00', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '49d7ab478bd86af1ce959faec12bf6b0a1a15a4a856ad0eb88cf046c79f585ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3e61d121-8629-59b1-ab1c-07ad3d870740', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('05e446a4-a439-5ecc-a0b4-9d8e3f92bd00', 1), '49d7ab478bd86af1ce959faec12bf6b0a1a15a4a856ad0eb88cf046c79f585ff',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c9a166a1fa93ae30c1769af303d25b0bd743a57e844ee676303381867c40121d.mp3', 1436, '2026-09-14 13:41:14.257888', 'a9522bf6a8aa6420c1e17a9a2004bb1470f39c5e8e3da8142265afd5d5ef7c23', 'validated', '{"audio_key":"c9a166a1fa93ae30c1769af303d25b0bd743a57e844ee676303381867c40121d","entity_key":"d_survival_words_02:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a9522bf6a8aa6420c1e17a9a2004bb1470f39c5e8e3da8142265afd5d5ef7c23","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/c9a166a1fa93ae30c1769af303d25b0bd743a57e844ee676303381867c40121d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-real-life-numbers_price_day:2 -> audio/generated/ko-KR/dialogues/ca25dcbf6dce14bce329c5c171295ad2a3bd8baaefdbdc82a8270b60ca7ed7d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('caecb56c-94ff-5205-9ba0-ea58e18cc8d8', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-real-life-numbers_price_day:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b332361b479b105b2a370da3b15a39e8b53dccc78b078f31389185a9a725c272'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c2869d9f-b858-5230-81f2-c18407d30545', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('caecb56c-94ff-5205-9ba0-ea58e18cc8d8', 1), 'b332361b479b105b2a370da3b15a39e8b53dccc78b078f31389185a9a725c272',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ca25dcbf6dce14bce329c5c171295ad2a3bd8baaefdbdc82a8270b60ca7ed7d9.mp3', 1201, '2026-09-14 13:41:15.238968', 'd88fa8a8fa2c11524b991ecb902643ff179949bb5ddf7a9cc69bbdac2af459d0', 'validated', '{"audio_key":"ca25dcbf6dce14bce329c5c171295ad2a3bd8baaefdbdc82a8270b60ca7ed7d9","entity_key":"d_ko_ko-real-life-numbers_price_day:2","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d88fa8a8fa2c11524b991ecb902643ff179949bb5ddf7a9cc69bbdac2af459d0","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/ca25dcbf6dce14bce329c5c171295ad2a3bd8baaefdbdc82a8270b60ca7ed7d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_02:1 -> audio/generated/ko-KR/dialogues/cc1503f38b601f8fcf20109afc3d4517a00f21f0e371487ee6bd249e23d65296.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('df5123b0-65f3-503b-9e0b-87492f815cba', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17774d0ab0a5eb6ee19d080a4d31018e9bb659a164ae317c816350659b658a97'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('13a71842-2dbd-5fad-bc0f-0b6334d605d1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('df5123b0-65f3-503b-9e0b-87492f815cba', 1), '17774d0ab0a5eb6ee19d080a4d31018e9bb659a164ae317c816350659b658a97',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/cc1503f38b601f8fcf20109afc3d4517a00f21f0e371487ee6bd249e23d65296.mp3', 1515, '2026-09-14 13:41:16.246229', '68d43c2a365e72f4f28114ee89fbef1c7b17d7f5cf1688a568ce5a5dbb5e4977', 'validated', '{"audio_key":"cc1503f38b601f8fcf20109afc3d4517a00f21f0e371487ee6bd249e23d65296","entity_key":"d_how_are_you_02:1","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"68d43c2a365e72f4f28114ee89fbef1c7b17d7f5cf1688a568ce5a5dbb5e4977","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/cc1503f38b601f8fcf20109afc3d4517a00f21f0e371487ee6bd249e23d65296.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_02:1 -> audio/generated/ko-KR/dialogues/d153a317cfe3064b859bb19611ef2e44c6a661460174a0eb52f758a8c65a0e80.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5ba08907-4c45-510b-a106-f87e1f2dee12', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8e74cb1dbf74f2561482b9acd8561ad8d962e8af1da2bf6f1d451d3145f6f0ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1250f5f9-cf59-5372-8a9c-567b206653ca', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5ba08907-4c45-510b-a106-f87e1f2dee12', 1), '8e74cb1dbf74f2561482b9acd8561ad8d962e8af1da2bf6f1d451d3145f6f0ef',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d153a317cfe3064b859bb19611ef2e44c6a661460174a0eb52f758a8c65a0e80.mp3', 2168, '2026-09-14 13:41:17.325219', '034e5cb7d59683d3cbc903dcd5889d14893b5c839d41a1e5191c04b887d7d57e', 'validated', '{"audio_key":"d153a317cfe3064b859bb19611ef2e44c6a661460174a0eb52f758a8c65a0e80","entity_key":"d_survival_words_02:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"034e5cb7d59683d3cbc903dcd5889d14893b5c839d41a1e5191c04b887d7d57e","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/d153a317cfe3064b859bb19611ef2e44c6a661460174a0eb52f758a8c65a0e80.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_01:3 -> audio/generated/ko-KR/dialogues/d27236d6e7a5971161d92939619a56c14510f2840e4acb2636ec5e55a8a96772.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('99ba9107-2e81-5071-9f1c-e194f5eb16b1', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e951aae21fa2384a611eed2a1d42748cae6cf497908e3b499a14eab036f868d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9981581a-312b-570a-81cb-55559a29a2ad', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('99ba9107-2e81-5071-9f1c-e194f5eb16b1', 1), 'e951aae21fa2384a611eed2a1d42748cae6cf497908e3b499a14eab036f868d5',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d27236d6e7a5971161d92939619a56c14510f2840e4acb2636ec5e55a8a96772.mp3', 1149, '2026-09-14 13:41:18.279058', '4f505e215a105e02038274f3bce17c804912b3f76f1113568a526321b3b19521', 'validated', '{"audio_key":"d27236d6e7a5971161d92939619a56c14510f2840e4acb2636ec5e55a8a96772","entity_key":"d_polite_words_01:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4f505e215a105e02038274f3bce17c804912b3f76f1113568a526321b3b19521","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/d27236d6e7a5971161d92939619a56c14510f2840e4acb2636ec5e55a8a96772.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-forms-signs_sign:3 -> audio/generated/ko-KR/dialogues/d536ea1cccf72651f24cb5962e04ceef630643e59e36a8bce1567ec368f9e923.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('142f5ad0-a51b-5a8d-b87e-85bac63ae988', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-forms-signs_sign:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67c64c9cae445f707ce250b88595fa992fa4c6e2e5e05b1f2032c73d70151dd1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('67266003-65cd-5049-a8b6-a667848f31e4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('142f5ad0-a51b-5a8d-b87e-85bac63ae988', 1), '67c64c9cae445f707ce250b88595fa992fa4c6e2e5e05b1f2032c73d70151dd1',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d536ea1cccf72651f24cb5962e04ceef630643e59e36a8bce1567ec368f9e923.mp3', 1436, '2026-09-14 13:41:19.324217', '750074860cff2a69b7e4890f5cea53c6b638d786c2be96ce34355aba872a1ab2', 'validated', '{"audio_key":"d536ea1cccf72651f24cb5962e04ceef630643e59e36a8bce1567ec368f9e923","entity_key":"d_ko_ko-forms-signs_sign:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"750074860cff2a69b7e4890f5cea53c6b638d786c2be96ce34355aba872a1ab2","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/d536ea1cccf72651f24cb5962e04ceef630643e59e36a8bce1567ec368f9e923.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-forms-signs_sign:2 -> audio/generated/ko-KR/dialogues/d9749ee19dbb0d32448f4acc4462eb6d9194464d34e8772c36fe98fcdb16a450.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('86762b9d-9848-5be1-b909-16768b35c414', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-forms-signs_sign:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '290b2cc57330166c23092f982e322e6fd078e861194d28a76d1ce87a1a5fa5b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91abfe8b-a166-5f71-99b4-0fe5dbde4831', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('86762b9d-9848-5be1-b909-16768b35c414', 1), '290b2cc57330166c23092f982e322e6fd078e861194d28a76d1ce87a1a5fa5b8',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d9749ee19dbb0d32448f4acc4462eb6d9194464d34e8772c36fe98fcdb16a450.mp3', 1097, '2026-09-14 13:41:20.277786', 'a4378b42841c1206caa252a4e16624d4bedfae9931b1ad42c22b302726592dd1', 'validated', '{"audio_key":"d9749ee19dbb0d32448f4acc4462eb6d9194464d34e8772c36fe98fcdb16a450","entity_key":"d_ko_ko-forms-signs_sign:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a4378b42841c1206caa252a4e16624d4bedfae9931b1ad42c22b302726592dd1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/d9749ee19dbb0d32448f4acc4462eb6d9194464d34e8772c36fe98fcdb16a450.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-forms-signs_sign:4 -> audio/generated/ko-KR/dialogues/d9749ee19dbb0d32448f4acc4462eb6d9194464d34e8772c36fe98fcdb16a450.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('398dc92d-c5bf-59c0-abb0-05b09b54ff43', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-forms-signs_sign:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '290b2cc57330166c23092f982e322e6fd078e861194d28a76d1ce87a1a5fa5b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('14c4d261-bbbf-5f5b-bf2e-44ba6f4fd19a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('398dc92d-c5bf-59c0-abb0-05b09b54ff43', 1), '290b2cc57330166c23092f982e322e6fd078e861194d28a76d1ce87a1a5fa5b8',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d9749ee19dbb0d32448f4acc4462eb6d9194464d34e8772c36fe98fcdb16a450.mp3', 1097, '2026-09-14 13:41:20.277786', 'a4378b42841c1206caa252a4e16624d4bedfae9931b1ad42c22b302726592dd1', 'validated', '{"audio_key":"d9749ee19dbb0d32448f4acc4462eb6d9194464d34e8772c36fe98fcdb16a450","entity_key":"d_ko_ko-forms-signs_sign:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a4378b42841c1206caa252a4e16624d4bedfae9931b1ad42c22b302726592dd1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/d9749ee19dbb0d32448f4acc4462eb6d9194464d34e8772c36fe98fcdb16a450.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_02:4 -> audio/generated/ko-KR/dialogues/d976907029734fb9a62ee9480a510d4e74e75b378b879eede58e1207a715bc13.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4d3e38bf-d872-5e2a-bb5a-316eacb7c760', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3ba1d18fcd6f6dc95ce9b88ac38d701b1903db772715cd737334a9aa45a7bfc2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('98c86834-f3d8-5aeb-824b-498d60c74afb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4d3e38bf-d872-5e2a-bb5a-316eacb7c760', 1), '3ba1d18fcd6f6dc95ce9b88ac38d701b1903db772715cd737334a9aa45a7bfc2',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d976907029734fb9a62ee9480a510d4e74e75b378b879eede58e1207a715bc13.mp3', 1332, '2026-09-14 13:41:21.254168', '7f2ce582e4b5aecc2faa9ee91d15b1079d6ff1695a4cff373daff294c8fb5be1', 'validated', '{"audio_key":"d976907029734fb9a62ee9480a510d4e74e75b378b879eede58e1207a715bc13","entity_key":"d_polite_words_02:4","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7f2ce582e4b5aecc2faa9ee91d15b1079d6ff1695a4cff373daff294c8fb5be1","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/d976907029734fb9a62ee9480a510d4e74e75b378b879eede58e1207a715bc13.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ready_repair:2 -> audio/generated/ko-KR/dialogues/da192994ce710d5d86c46abdccebf61ad1cb89b9e2237de666f097823b5b7df9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('319618fb-6f40-5f40-8793-9ff506cfedbd', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ready_repair:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae713b65439d2c5c68601f886c885c9bf9839769e45c6de8c42f382e8c4a0f2f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5b4473c1-5bfe-55b0-abe0-d09f4d46dc38', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('319618fb-6f40-5f40-8793-9ff506cfedbd', 1), 'ae713b65439d2c5c68601f886c885c9bf9839769e45c6de8c42f382e8c4a0f2f',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/da192994ce710d5d86c46abdccebf61ad1cb89b9e2237de666f097823b5b7df9.mp3', 1253, '2026-09-14 13:41:22.524758', '174f329a32ae8627139cc8ea2d4e1bd2ffab7d7f5443d109e43b99de0f1d829f', 'validated', '{"audio_key":"da192994ce710d5d86c46abdccebf61ad1cb89b9e2237de666f097823b5b7df9","entity_key":"d_ko_ready_repair:2","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"174f329a32ae8627139cc8ea2d4e1bd2ffab7d7f5443d109e43b99de0f1d829f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/da192994ce710d5d86c46abdccebf61ad1cb89b9e2237de666f097823b5b7df9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-forms-signs_form:2 -> audio/generated/ko-KR/dialogues/dbbfef9396eee7b457eeba114e9ae93a03fc9ecbddc55a4202257ad5a66631e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('be0ed77b-2167-5d07-a7f0-331eb2088f38', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-forms-signs_form:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '86423ad4e65b327df933440f8591a5c11edd1ba7dd47cf4d56540ab033259c51'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('194d1fd9-7c49-529d-9d2f-d4f49ee60bd0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('be0ed77b-2167-5d07-a7f0-331eb2088f38', 1), '86423ad4e65b327df933440f8591a5c11edd1ba7dd47cf4d56540ab033259c51',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/dbbfef9396eee7b457eeba114e9ae93a03fc9ecbddc55a4202257ad5a66631e7.mp3', 1280, '2026-09-14 13:41:23.493129', '5920bbe550ac150f54455ed805578b5f813b92fb6997091c2ab9775ebc6d5d6e', 'validated', '{"audio_key":"dbbfef9396eee7b457eeba114e9ae93a03fc9ecbddc55a4202257ad5a66631e7","entity_key":"d_ko_ko-forms-signs_form:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5920bbe550ac150f54455ed805578b5f813b92fb6997091c2ab9775ebc6d5d6e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/dbbfef9396eee7b457eeba114e9ae93a03fc9ecbddc55a4202257ad5a66631e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_01:2 -> audio/generated/ko-KR/dialogues/dc405b02932894b784422cf64823bf7ae654ca0fb521e3a6d61b2cbfb206b1ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('39a96c53-c900-5cac-835e-6b130caee44a', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6b444976f774763c1c0aceee688fd920894d82babafa9f4aa3e6bdd603f3f9f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('15e7a48e-1e9b-597e-8efd-a4e5f6314e95', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('39a96c53-c900-5cac-835e-6b130caee44a', 1), '6b444976f774763c1c0aceee688fd920894d82babafa9f4aa3e6bdd603f3f9f6',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/dc405b02932894b784422cf64823bf7ae654ca0fb521e3a6d61b2cbfb206b1ac.mp3', 1985, '2026-09-14 13:41:24.540032', 'c8ebdb3f16a6575293e306b0a7de05c439b440eae9e8e5d65a11ac4e4ef2dd2a', 'validated', '{"audio_key":"dc405b02932894b784422cf64823bf7ae654ca0fb521e3a6d61b2cbfb206b1ac","entity_key":"d_polite_words_01:2","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c8ebdb3f16a6575293e306b0a7de05c439b440eae9e8e5d65a11ac4e4ef2dd2a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/dc405b02932894b784422cf64823bf7ae654ca0fb521e3a6d61b2cbfb206b1ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_02:2 -> audio/generated/ko-KR/dialogues/ddc0824f44dee3f21652b1cf0ee436c31db5a1367b7c0e9f9b8ba34d8785b77a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('95c0d94d-19ed-517b-872c-766d362e5f8c', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea29b7c5ca9418bad709f26a6caebf52e421976f6d6c10d927fbb70f0997628e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('70ab6294-ad60-5939-ad9c-1636b8a971f2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('95c0d94d-19ed-517b-872c-766d362e5f8c', 1), 'ea29b7c5ca9418bad709f26a6caebf52e421976f6d6c10d927fbb70f0997628e',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ddc0824f44dee3f21652b1cf0ee436c31db5a1367b7c0e9f9b8ba34d8785b77a.mp3', 1488, '2026-09-14 13:41:25.577308', '20066f005514b562783966c72a99222bafe1e8e76e9c59b325fe94f3f0bf2298', 'validated', '{"audio_key":"ddc0824f44dee3f21652b1cf0ee436c31db5a1367b7c0e9f9b8ba34d8785b77a","entity_key":"d_first_sounds_02:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"20066f005514b562783966c72a99222bafe1e8e76e9c59b325fe94f3f0bf2298","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/ddc0824f44dee3f21652b1cf0ee436c31db5a1367b7c0e9f9b8ba34d8785b77a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-real-world-gate_meet:5 -> audio/generated/ko-KR/dialogues/e2e8a7989dff3fceb5ef4f23ce097c23e1e08af62b06d709207581c62ce08235.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('58b1faab-f1d9-57ab-bf18-ab4b5366882d', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-real-world-gate_meet:5')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '478c962d7db98238a9254aae79d1cf571f955f4bf6b28c17386f1c51fd1f3f66'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed178912-561b-5b7b-8452-f87b70447773', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('58b1faab-f1d9-57ab-bf18-ab4b5366882d', 1), '478c962d7db98238a9254aae79d1cf571f955f4bf6b28c17386f1c51fd1f3f66',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e2e8a7989dff3fceb5ef4f23ce097c23e1e08af62b06d709207581c62ce08235.mp3', 1149, '2026-09-14 13:41:26.616211', '2249f00d0fa67e72d90f1eb63d7a5ada4061609892b13f3402c89e28dd25935d', 'validated', '{"audio_key":"e2e8a7989dff3fceb5ef4f23ce097c23e1e08af62b06d709207581c62ce08235","entity_key":"d_ko_ko-real-world-gate_meet:5","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2249f00d0fa67e72d90f1eb63d7a5ada4061609892b13f3402c89e28dd25935d","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/e2e8a7989dff3fceb5ef4f23ce097c23e1e08af62b06d709207581c62ce08235.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_01:1 -> audio/generated/ko-KR/dialogues/e7acf6de0d74dde8b41d6c398367c73452097134a784d4754581b287dc4d58db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c5a352cd-d753-5ab3-91a4-3f0ff8313d10', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '677e6e2306a162f4a95a487f04936ce25aa5512b17439570c5ed7440b264c857'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37c49504-a207-59d4-a58b-ee3c94a47da8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c5a352cd-d753-5ab3-91a4-3f0ff8313d10', 1), '677e6e2306a162f4a95a487f04936ce25aa5512b17439570c5ed7440b264c857',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e7acf6de0d74dde8b41d6c398367c73452097134a784d4754581b287dc4d58db.mp3', 2324, '2026-09-14 13:41:27.709045', '255934cf729bc3f22a01ffe773e9763babc2142e07c2e0156e7daee207e41e76', 'validated', '{"audio_key":"e7acf6de0d74dde8b41d6c398367c73452097134a784d4754581b287dc4d58db","entity_key":"d_first_conversation_01:1","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"255934cf729bc3f22a01ffe773e9763babc2142e07c2e0156e7daee207e41e76","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/e7acf6de0d74dde8b41d6c398367c73452097134a784d4754581b287dc4d58db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_01:2 -> audio/generated/ko-KR/dialogues/e7acf6de0d74dde8b41d6c398367c73452097134a784d4754581b287dc4d58db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6b966ad5-59b0-5ed9-9ce3-31a8bde4260d', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '677e6e2306a162f4a95a487f04936ce25aa5512b17439570c5ed7440b264c857'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5e6c696c-2f2a-55b8-81bb-f84276f8dadc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6b966ad5-59b0-5ed9-9ce3-31a8bde4260d', 1), '677e6e2306a162f4a95a487f04936ce25aa5512b17439570c5ed7440b264c857',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e7acf6de0d74dde8b41d6c398367c73452097134a784d4754581b287dc4d58db.mp3', 2324, '2026-09-14 13:41:27.709045', '255934cf729bc3f22a01ffe773e9763babc2142e07c2e0156e7daee207e41e76', 'validated', '{"audio_key":"e7acf6de0d74dde8b41d6c398367c73452097134a784d4754581b287dc4d58db","entity_key":"d_my_name_01:2","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"255934cf729bc3f22a01ffe773e9763babc2142e07c2e0156e7daee207e41e76","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/e7acf6de0d74dde8b41d6c398367c73452097134a784d4754581b287dc4d58db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_hangul_basics_01:2 -> audio/generated/ko-KR/dialogues/e91437323328fbc7c59f306cc83e7bd9ced3fc0ace69907161e1e6d74b844c81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('94f48d19-88a3-5c40-9aa1-85c1b2537048', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_hangul_basics_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26406b008b953a3376bf968ee157cead1d6335f335b02fd208a5d2a60d687ecc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a0f1102-0565-5d85-97aa-7d9d877ebeee', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('94f48d19-88a3-5c40-9aa1-85c1b2537048', 1), '26406b008b953a3376bf968ee157cead1d6335f335b02fd208a5d2a60d687ecc',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e91437323328fbc7c59f306cc83e7bd9ced3fc0ace69907161e1e6d74b844c81.mp3', 1097, '2026-09-14 13:41:28.670355', '323bbbc9b813571a53a50eff5290e965363310f8adf6dcc1043f0fe81d50cb80', 'validated', '{"audio_key":"e91437323328fbc7c59f306cc83e7bd9ced3fc0ace69907161e1e6d74b844c81","entity_key":"d_hangul_basics_01:2","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"323bbbc9b813571a53a50eff5290e965363310f8adf6dcc1043f0fe81d50cb80","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/e91437323328fbc7c59f306cc83e7bd9ced3fc0ace69907161e1e6d74b844c81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_02:4 -> audio/generated/ko-KR/dialogues/e9718c4d7e6574de21f2d80522cb4f099add6e0ff8a1f3424f58f7c647f9728c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bd6b4d0d-d4c8-5894-b428-b51880496fd5', 1)
  AND voice_key = 'character:도윤:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a6ab84994d8deea8e8daf7c360f885b644ba723f1c36a13a6e3b18627ad6f63'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05c16d93-a1f7-54ac-8992-5358cced7f0a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bd6b4d0d-d4c8-5894-b428-b51880496fd5', 1), '9a6ab84994d8deea8e8daf7c360f885b644ba723f1c36a13a6e3b18627ad6f63',
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e9718c4d7e6574de21f2d80522cb4f099add6e0ff8a1f3424f58f7c647f9728c.mp3', 1280, '2026-09-14 13:41:29.713748', 'fe340f94a2ae2d77cd99087740b370f54b134d68e0539df62e45fa4c64c18869', 'validated', '{"audio_key":"e9718c4d7e6574de21f2d80522cb4f099add6e0ff8a1f3424f58f7c647f9728c","entity_key":"d_my_name_02:4","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fe340f94a2ae2d77cd99087740b370f54b134d68e0539df62e45fa4c64c18869","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/e9718c4d7e6574de21f2d80522cb4f099add6e0ff8a1f3424f58f7c647f9728c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_01:1 -> audio/generated/ko-KR/dialogues/ed40ff0166c9e17a85b8d0b365b562ce5934362fb09da6e6814d6f5b248e508d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('40ceb1a2-a0f2-5fdf-9bb5-2a88b77dbac3', 1)
  AND voice_key = 'character:지민:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5fbd199bc9025929b29825723cd38a4ca9e05e0c0640c21b8d96ccd8c359663f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('35be61a6-669b-5cb4-b520-46647eb12654', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('40ceb1a2-a0f2-5fdf-9bb5-2a88b77dbac3', 1), '5fbd199bc9025929b29825723cd38a4ca9e05e0c0640c21b8d96ccd8c359663f',
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ed40ff0166c9e17a85b8d0b365b562ce5934362fb09da6e6814d6f5b248e508d.mp3', 1097, '2026-09-14 13:41:30.783508', '242c65e1040b98db08af8c57640bcb6ba0842fbe31c2b0767d367cbceb28e310', 'validated', '{"audio_key":"ed40ff0166c9e17a85b8d0b365b562ce5934362fb09da6e6814d6f5b248e508d","entity_key":"d_polite_words_01:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"242c65e1040b98db08af8c57640bcb6ba0842fbe31c2b0767d367cbceb28e310","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/ed40ff0166c9e17a85b8d0b365b562ce5934362fb09da6e6814d6f5b248e508d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_02:3 -> audio/generated/ko-KR/dialogues/efcedf91d2a89213a2f6df6b7b5d2fd869755cd13f7f8d33d4d89d14f224159b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('808bc4a7-83dc-5c11-873d-1cc43e9cc1d2', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '27b2c9a4ea40fadd1869dbc4a3bacacdf2e6259bb094fd36b6216a7dae123f8d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ddbcb841-2cb0-578a-8a1a-4eca2c45f6b4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('808bc4a7-83dc-5c11-873d-1cc43e9cc1d2', 1), '27b2c9a4ea40fadd1869dbc4a3bacacdf2e6259bb094fd36b6216a7dae123f8d',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/efcedf91d2a89213a2f6df6b7b5d2fd869755cd13f7f8d33d4d89d14f224159b.mp3', 1436, '2026-09-14 13:41:31.776785', '56236ac24b0fa96896551bf0d56f1f0f13d15754e003ff232c68db541d0105f5', 'validated', '{"audio_key":"efcedf91d2a89213a2f6df6b7b5d2fd869755cd13f7f8d33d4d89d14f224159b","entity_key":"d_first_sounds_02:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"56236ac24b0fa96896551bf0d56f1f0f13d15754e003ff232c68db541d0105f5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/efcedf91d2a89213a2f6df6b7b5d2fd869755cd13f7f8d33d4d89d14f224159b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_01:3 -> audio/generated/ko-KR/dialogues/f11a15c1cd0208cdd9cfcd2093a24e3002fe42657cbe1707e55f513c151dc814.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c4b3e6d0-9969-56e4-a269-a7926dae1738', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '828ace6339fb2f74fc0c8356a23f9982acd88d43578d059821ced51133d16169'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e8b8c82-9ad2-5db5-aa11-c8aa060e6396', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c4b3e6d0-9969-56e4-a269-a7926dae1738', 1), '828ace6339fb2f74fc0c8356a23f9982acd88d43578d059821ced51133d16169',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f11a15c1cd0208cdd9cfcd2093a24e3002fe42657cbe1707e55f513c151dc814.mp3', 1332, '2026-09-14 13:41:32.812594', '75df7082226af35cbfd06051fe0e0d3bd5ede375a546469dc8790b68558d98d3', 'validated', '{"audio_key":"f11a15c1cd0208cdd9cfcd2093a24e3002fe42657cbe1707e55f513c151dc814","entity_key":"d_first_conversation_01:3","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"75df7082226af35cbfd06051fe0e0d3bd5ede375a546469dc8790b68558d98d3","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/f11a15c1cd0208cdd9cfcd2093a24e3002fe42657cbe1707e55f513c151dc814.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-real-world-gate_meet:1 -> audio/generated/ko-KR/dialogues/f126ab20026cf6ee4b10ded9ef29ab30c910ed5f8f4daa41e53ed29673bb9647.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2885d93d-bc2f-5858-b9cb-1eec0756c572', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-real-world-gate_meet:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '588d25be7d113ed1f1cfa0573ce4193253f6f8a3bc12426758159d2fbfc3ec4e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d08a2959-8cbf-5a47-8860-7b3b5ae312f7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2885d93d-bc2f-5858-b9cb-1eec0756c572', 1), '588d25be7d113ed1f1cfa0573ce4193253f6f8a3bc12426758159d2fbfc3ec4e',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f126ab20026cf6ee4b10ded9ef29ab30c910ed5f8f4daa41e53ed29673bb9647.mp3', 1332, '2026-09-14 13:41:33.821591', '8da18af4458916d8d509cf4fc4cc7ed4448238e20559fa169d14e1b3035d4a3c', 'validated', '{"audio_key":"f126ab20026cf6ee4b10ded9ef29ab30c910ed5f8f4daa41e53ed29673bb9647","entity_key":"d_ko_ko-real-world-gate_meet:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8da18af4458916d8d509cf4fc4cc7ed4448238e20559fa169d14e1b3035d4a3c","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/f126ab20026cf6ee4b10ded9ef29ab30c910ed5f8f4daa41e53ed29673bb9647.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_01:4 -> audio/generated/ko-KR/dialogues/f18254889c20eaf29b03be34b2310ccd18453280eaf95f4a095f345505715f94.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5a0815b4-a829-50c4-b4bd-299649099506', 1)
  AND voice_key = 'character:민수:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2a4b772cb0ecf9800a8fe02eb0f336607bc1b276b326cc138ecbcf8eb434c656'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb288cfb-69db-551a-a2a9-0660bd53cbef', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5a0815b4-a829-50c4-b4bd-299649099506', 1), '2a4b772cb0ecf9800a8fe02eb0f336607bc1b276b326cc138ecbcf8eb434c656',
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f18254889c20eaf29b03be34b2310ccd18453280eaf95f4a095f345505715f94.mp3', 1906, '2026-09-14 13:41:34.862778', 'b59f4861e4f71497ebdb7fb4d0eec7597319be00a60ae66a55c6790e59b0f944', 'validated', '{"audio_key":"f18254889c20eaf29b03be34b2310ccd18453280eaf95f4a095f345505715f94","entity_key":"d_survival_words_01:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b59f4861e4f71497ebdb7fb4d0eec7597319be00a60ae66a55c6790e59b0f944","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/f18254889c20eaf29b03be34b2310ccd18453280eaf95f4a095f345505715f94.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-about-me_feeling_family:4 -> audio/generated/ko-KR/dialogues/f62846ad9083322b992aeb0fc52c2d5bc94952b404fe091c798e80ae8e1ff29b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ad169d9f-10b9-5f64-855c-5b4457df7c8a', 1)
  AND voice_key = 'character:서연:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-about-me_feeling_family:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52803505ac46a28c9a27ea692b9239eb362dce3b91efbc700f3f52ae0692b157'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fc7051a5-996b-54e6-a078-6432f5da6b85', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ad169d9f-10b9-5f64-855c-5b4457df7c8a', 1), '52803505ac46a28c9a27ea692b9239eb362dce3b91efbc700f3f52ae0692b157',
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f62846ad9083322b992aeb0fc52c2d5bc94952b404fe091c798e80ae8e1ff29b.mp3', 1384, '2026-09-14 13:41:35.861290', '2b734aace9e7f84b77eb92c292d1384f3463b8781f916f50be2ccb836f5fcb21', 'validated', '{"audio_key":"f62846ad9083322b992aeb0fc52c2d5bc94952b404fe091c798e80ae8e1ff29b","entity_key":"d_ko_ko-about-me_feeling_family:4","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2b734aace9e7f84b77eb92c292d1384f3463b8781f916f50be2ccb836f5fcb21","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/f62846ad9083322b992aeb0fc52c2d5bc94952b404fe091c798e80ae8e1ff29b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_01:4 -> audio/generated/ko-KR/dialogues/f67d14be4d993e8639dfed6a9e7d06da0827e4b82c4a7ee0708169f86dc0a1b8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('df27320c-2cdf-5741-9288-447753fc07d3', 1)
  AND voice_key = 'character:태호:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ac9c9213237bcb2a20d2322acdea16ba4197cb993bd7f0d9d8d56b932e26fa69'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c6c4ef9-c3b0-58b0-bd0a-21028d0a3bd8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('df27320c-2cdf-5741-9288-447753fc07d3', 1), 'ac9c9213237bcb2a20d2322acdea16ba4197cb993bd7f0d9d8d56b932e26fa69',
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f67d14be4d993e8639dfed6a9e7d06da0827e4b82c4a7ee0708169f86dc0a1b8.mp3', 1201, '2026-09-14 13:41:36.842142', 'd6d9a5cd5e68900fda3ac41a6d4a8e96f49e0ef13882189b510e84c59cdd6ac1', 'validated', '{"audio_key":"f67d14be4d993e8639dfed6a9e7d06da0827e4b82c4a7ee0708169f86dc0a1b8","entity_key":"d_my_name_01:4","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d6d9a5cd5e68900fda3ac41a6d4a8e96f49e0ef13882189b510e84c59cdd6ac1","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/f67d14be4d993e8639dfed6a9e7d06da0827e4b82c4a7ee0708169f86dc0a1b8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ready_intro:2 -> audio/generated/ko-KR/dialogues/f74b6d9383dd8e097b68d809cc2756caecec2831672bcf92377bec9ebcca24f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('8e75fdd5-1295-54b3-8d8c-f387788e76d6', 1)
  AND voice_key = 'character:준호:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ready_intro:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67c64c9cae445f707ce250b88595fa992fa4c6e2e5e05b1f2032c73d70151dd1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9fe55fb7-9ccc-548f-86ee-ee7277376801', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('8e75fdd5-1295-54b3-8d8c-f387788e76d6', 1), '67c64c9cae445f707ce250b88595fa992fa4c6e2e5e05b1f2032c73d70151dd1',
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f74b6d9383dd8e097b68d809cc2756caecec2831672bcf92377bec9ebcca24f5.mp3', 1332, '2026-09-14 13:41:37.835027', '7d4118c8a7e96eb1f8620db6c259cdd1e973e26e259e7d25921fe4b15ef743e4', 'validated', '{"audio_key":"f74b6d9383dd8e097b68d809cc2756caecec2831672bcf92377bec9ebcca24f5","entity_key":"d_ko_ready_intro:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7d4118c8a7e96eb1f8620db6c259cdd1e973e26e259e7d25921fe4b15ef743e4","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/f74b6d9383dd8e097b68d809cc2756caecec2831672bcf92377bec9ebcca24f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_01:3 -> audio/generated/ko-KR/dialogues/f899615217d962ee01ddf0d5dced52e86253b69abf51fd0bc69a654b5fa963b8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4bbb50e5-4fbe-5364-bf5c-e5843541ff4a', 1)
  AND voice_key = 'character:하나:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6df1730a6e6228b745ea19612d4cbcfbde27406f84493ad6c43213808d82ac3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb8dadfb-a3d0-51f9-84b8-6d90a95d924d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4bbb50e5-4fbe-5364-bf5c-e5843541ff4a', 1), 'c6df1730a6e6228b745ea19612d4cbcfbde27406f84493ad6c43213808d82ac3',
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f899615217d962ee01ddf0d5dced52e86253b69abf51fd0bc69a654b5fa963b8.mp3', 1488, '2026-09-14 13:41:38.837233', 'c996cc9b85dce4ee915c04d642cfe6176e0ad493d26cbc7e5e7eefed86695254', 'validated', '{"audio_key":"f899615217d962ee01ddf0d5dced52e86253b69abf51fd0bc69a654b5fa963b8","entity_key":"d_my_name_01:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c996cc9b85dce4ee915c04d642cfe6176e0ad493d26cbc7e5e7eefed86695254","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/f899615217d962ee01ddf0d5dced52e86253b69abf51fd0bc69a654b5fa963b8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-real-life-numbers_price_day:1 -> audio/generated/ko-KR/dialogues/fa106e343ed527573d88b93c1b479320f69ad55948829d439db124be8ec0c868.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f8f428de-76a8-5ec6-be55-d23e4f576123', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-real-life-numbers_price_day:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3332c62617329c5a2c262845c3cc500b2e38aa96c568ba711673e628b2f9e707'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5bd158d5-aa15-5451-a2bb-727281f7ef92', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f8f428de-76a8-5ec6-be55-d23e4f576123', 1), '3332c62617329c5a2c262845c3cc500b2e38aa96c568ba711673e628b2f9e707',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/fa106e343ed527573d88b93c1b479320f69ad55948829d439db124be8ec0c868.mp3', 966, '2026-09-14 13:41:39.797319', 'fe31960a8e218179a2907aeb042c7ee1642371838af82e3005f347dbe4d6f134', 'validated', '{"audio_key":"fa106e343ed527573d88b93c1b479320f69ad55948829d439db124be8ec0c868","entity_key":"d_ko_ko-real-life-numbers_price_day:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fe31960a8e218179a2907aeb042c7ee1642371838af82e3005f347dbe4d6f134","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/fa106e343ed527573d88b93c1b479320f69ad55948829d439db124be8ec0c868.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_ko_ko-real-world-gate_public_task:3 -> audio/generated/ko-KR/dialogues/fa106e343ed527573d88b93c1b479320f69ad55948829d439db124be8ec0c868.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dc033cb6-6dc3-5b76-a1d5-a16b496f2676', 1)
  AND voice_key = 'character:유나:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_ko_ko-real-world-gate_public_task:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3332c62617329c5a2c262845c3cc500b2e38aa96c568ba711673e628b2f9e707'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('88edffa4-b453-5b3c-8710-74411bce0f36', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dc033cb6-6dc3-5b76-a1d5-a16b496f2676', 1), '3332c62617329c5a2c262845c3cc500b2e38aa96c568ba711673e628b2f9e707',
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/fa106e343ed527573d88b93c1b479320f69ad55948829d439db124be8ec0c868.mp3', 966, '2026-09-14 13:41:39.797319', 'fe31960a8e218179a2907aeb042c7ee1642371838af82e3005f347dbe4d6f134', 'validated', '{"audio_key":"fa106e343ed527573d88b93c1b479320f69ad55948829d439db124be8ec0c868","entity_key":"d_ko_ko-real-world-gate_public_task:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fe31960a8e218179a2907aeb042c7ee1642371838af82e3005f347dbe4d6f134","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/fa106e343ed527573d88b93c1b479320f69ad55948829d439db124be8ec0c868.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_03 -> audio/generated/ko-KR/lexical/015424336a1849406dc5bba3d6b7a6121eccf227550556cab2420adfeb81eb48.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b7e4e582-bbd6-588b-a515-0bbaa461abf7', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '920b0d402f08f1fbae9581548274bffbc707ebb595c173c5a41a30ae9b7c2773'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('befe2ade-977d-5bd9-835d-d2f4866de120', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b7e4e582-bbd6-588b-a515-0bbaa461abf7', 1), '920b0d402f08f1fbae9581548274bffbc707ebb595c173c5a41a30ae9b7c2773',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/015424336a1849406dc5bba3d6b7a6121eccf227550556cab2420adfeb81eb48.mp3', 1071, '2026-09-14 13:41:40.792728', '99a06ab8f9c0d4373e8b4dc2b73d5854e5705c6e7c85da404b4023d516f21f14', 'validated', '{"audio_key":"015424336a1849406dc5bba3d6b7a6121eccf227550556cab2420adfeb81eb48","entity_key":"lx_survival_words_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"99a06ab8f9c0d4373e8b4dc2b73d5854e5705c6e7c85da404b4023d516f21f14","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/015424336a1849406dc5bba3d6b7a6121eccf227550556cab2420adfeb81eb48.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_03 -> audio/generated/ko-KR/lexical/015424336a1849406dc5bba3d6b7a6121eccf227550556cab2420adfeb81eb48.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b632a505-c2b1-56e5-b2df-0aeae78cad7e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '920b0d402f08f1fbae9581548274bffbc707ebb595c173c5a41a30ae9b7c2773'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('41a356e7-43e2-5875-8881-332b8665ced5', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b632a505-c2b1-56e5-b2df-0aeae78cad7e', 1), '920b0d402f08f1fbae9581548274bffbc707ebb595c173c5a41a30ae9b7c2773',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/015424336a1849406dc5bba3d6b7a6121eccf227550556cab2420adfeb81eb48.mp3', 1071, '2026-09-14 13:41:40.792728', '99a06ab8f9c0d4373e8b4dc2b73d5854e5705c6e7c85da404b4023d516f21f14', 'validated', '{"audio_key":"015424336a1849406dc5bba3d6b7a6121eccf227550556cab2420adfeb81eb48","entity_key":"wf_survival_words_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"99a06ab8f9c0d4373e8b4dc2b73d5854e5705c6e7c85da404b4023d516f21f14","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/015424336a1849406dc5bba3d6b7a6121eccf227550556cab2420adfeb81eb48.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_hangul_basics_03 -> audio/generated/ko-KR/lexical/0a83c541ebc4e2e109a2f7aa593fe4dc3e6d2d4f63029f7ef9b4bc6046987947.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8d6f4107-bc02-5694-8ef7-b0969db22a64', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_hangul_basics_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '518f0fd2ed04a5ac5d534882aa1de0a7e362c1eaeb24938f7df848c11994b598'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('668d0545-7998-5cf1-b0d3-3ca11316614e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8d6f4107-bc02-5694-8ef7-b0969db22a64', 1), '518f0fd2ed04a5ac5d534882aa1de0a7e362c1eaeb24938f7df848c11994b598',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0a83c541ebc4e2e109a2f7aa593fe4dc3e6d2d4f63029f7ef9b4bc6046987947.mp3', 731, '2026-09-14 13:41:41.935511', 'f58f9b3c7be314a35cac07f03372ae6b5049fa38129dd4b6eee0a0bb82d005fd', 'validated', '{"audio_key":"0a83c541ebc4e2e109a2f7aa593fe4dc3e6d2d4f63029f7ef9b4bc6046987947","entity_key":"lx_hangul_basics_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f58f9b3c7be314a35cac07f03372ae6b5049fa38129dd4b6eee0a0bb82d005fd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0a83c541ebc4e2e109a2f7aa593fe4dc3e6d2d4f63029f7ef9b4bc6046987947.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_hangul_basics_03 -> audio/generated/ko-KR/lexical/0a83c541ebc4e2e109a2f7aa593fe4dc3e6d2d4f63029f7ef9b4bc6046987947.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8caa3160-4c3a-5ed7-bdb0-b3a5e8e6139f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_hangul_basics_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '518f0fd2ed04a5ac5d534882aa1de0a7e362c1eaeb24938f7df848c11994b598'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('63ac73b1-efcf-5ece-a970-4631e63a2d9a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8caa3160-4c3a-5ed7-bdb0-b3a5e8e6139f', 1), '518f0fd2ed04a5ac5d534882aa1de0a7e362c1eaeb24938f7df848c11994b598',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0a83c541ebc4e2e109a2f7aa593fe4dc3e6d2d4f63029f7ef9b4bc6046987947.mp3', 731, '2026-09-14 13:41:41.935511', 'f58f9b3c7be314a35cac07f03372ae6b5049fa38129dd4b6eee0a0bb82d005fd', 'validated', '{"audio_key":"0a83c541ebc4e2e109a2f7aa593fe4dc3e6d2d4f63029f7ef9b4bc6046987947","entity_key":"wf_hangul_basics_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f58f9b3c7be314a35cac07f03372ae6b5049fa38129dd4b6eee0a0bb82d005fd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0a83c541ebc4e2e109a2f7aa593fe4dc3e6d2d4f63029f7ef9b4bc6046987947.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_04 -> audio/generated/ko-KR/lexical/101544e2bf80b781e0c295c9a934f198951361e7014d4fda5fa7cd2a0502f2a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('beccc7cc-ced1-5226-9c53-75620cb42651', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8178f6b3db96ee306d495bbed8b0ba528308aa3d4da09d115083f9d2c322b1f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('114998cc-eec2-5b50-85f7-30cab978fc1a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('beccc7cc-ced1-5226-9c53-75620cb42651', 1), '8178f6b3db96ee306d495bbed8b0ba528308aa3d4da09d115083f9d2c322b1f7',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/101544e2bf80b781e0c295c9a934f198951361e7014d4fda5fa7cd2a0502f2a9.mp3', 783, '2026-09-14 13:41:42.907298', '205fd4336f803280d7b9a2fdee05151c5a063674f210910734435d5a02b02e1b', 'validated', '{"audio_key":"101544e2bf80b781e0c295c9a934f198951361e7014d4fda5fa7cd2a0502f2a9","entity_key":"lx_first_sounds_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"205fd4336f803280d7b9a2fdee05151c5a063674f210910734435d5a02b02e1b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/101544e2bf80b781e0c295c9a934f198951361e7014d4fda5fa7cd2a0502f2a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_04 -> audio/generated/ko-KR/lexical/101544e2bf80b781e0c295c9a934f198951361e7014d4fda5fa7cd2a0502f2a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e5c7b256-28f7-55ac-9344-02689898d248', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8178f6b3db96ee306d495bbed8b0ba528308aa3d4da09d115083f9d2c322b1f7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('54b5543a-81f1-57e1-ae30-75e64544e1c0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e5c7b256-28f7-55ac-9344-02689898d248', 1), '8178f6b3db96ee306d495bbed8b0ba528308aa3d4da09d115083f9d2c322b1f7',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/101544e2bf80b781e0c295c9a934f198951361e7014d4fda5fa7cd2a0502f2a9.mp3', 783, '2026-09-14 13:41:42.907298', '205fd4336f803280d7b9a2fdee05151c5a063674f210910734435d5a02b02e1b', 'validated', '{"audio_key":"101544e2bf80b781e0c295c9a934f198951361e7014d4fda5fa7cd2a0502f2a9","entity_key":"wf_first_sounds_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"205fd4336f803280d7b9a2fdee05151c5a063674f210910734435d5a02b02e1b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/101544e2bf80b781e0c295c9a934f198951361e7014d4fda5fa7cd2a0502f2a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_words_01 -> audio/generated/ko-KR/lexical/180724c81b33afa4e68ead299c58bb1360c4184c37656614507f958701cd24f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ac285231-5f6f-53d5-ac95-72b1fbe341a7', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97f2a1d4f468faba426d2e1bd823c8f1b2e71a2c23e61ddc1dbfd934886a2362'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a4317f34-d5ce-525a-ac37-547845121281', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ac285231-5f6f-53d5-ac95-72b1fbe341a7', 1), '97f2a1d4f468faba426d2e1bd823c8f1b2e71a2c23e61ddc1dbfd934886a2362',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/180724c81b33afa4e68ead299c58bb1360c4184c37656614507f958701cd24f9.mp3', 1018, '2026-09-14 13:41:43.909307', '02dcaa533218461fbeedb8711148a1829e3e43d341abbb9d5f68f0ac2b98142b', 'validated', '{"audio_key":"180724c81b33afa4e68ead299c58bb1360c4184c37656614507f958701cd24f9","entity_key":"lx_polite_words_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"02dcaa533218461fbeedb8711148a1829e3e43d341abbb9d5f68f0ac2b98142b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/180724c81b33afa4e68ead299c58bb1360c4184c37656614507f958701cd24f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_words_01 -> audio/generated/ko-KR/lexical/180724c81b33afa4e68ead299c58bb1360c4184c37656614507f958701cd24f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('22b02867-4205-5f8c-83b2-3131664b04f0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '97f2a1d4f468faba426d2e1bd823c8f1b2e71a2c23e61ddc1dbfd934886a2362'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ec3dce01-4189-5c2c-b4ca-87bf98bb52ec', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('22b02867-4205-5f8c-83b2-3131664b04f0', 1), '97f2a1d4f468faba426d2e1bd823c8f1b2e71a2c23e61ddc1dbfd934886a2362',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/180724c81b33afa4e68ead299c58bb1360c4184c37656614507f958701cd24f9.mp3', 1018, '2026-09-14 13:41:43.909307', '02dcaa533218461fbeedb8711148a1829e3e43d341abbb9d5f68f0ac2b98142b', 'validated', '{"audio_key":"180724c81b33afa4e68ead299c58bb1360c4184c37656614507f958701cd24f9","entity_key":"wf_polite_words_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"02dcaa533218461fbeedb8711148a1829e3e43d341abbb9d5f68f0ac2b98142b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/180724c81b33afa4e68ead299c58bb1360c4184c37656614507f958701cd24f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_hangul_basics_04 -> audio/generated/ko-KR/lexical/19e8c5c99c074c51c414dc3b83e4e88c9ceb83066a537693a19df994cb2cfffe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('55b85974-93c0-5e5d-8fe9-bb944de1cbe3', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_hangul_basics_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d18873491b4e983398782e177f7eee8b5ce0d0208d1d6d4667043dedfb8eee8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f9c4ba8-2529-5c16-afb8-cf0df4cfeb61', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('55b85974-93c0-5e5d-8fe9-bb944de1cbe3', 1), '6d18873491b4e983398782e177f7eee8b5ce0d0208d1d6d4667043dedfb8eee8',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/19e8c5c99c074c51c414dc3b83e4e88c9ceb83066a537693a19df994cb2cfffe.mp3', 835, '2026-09-14 13:41:44.858382', '741af581b2baa460ca9fc8d96cad8bc85d1a7d953a11082762fb5b7f5428845d', 'validated', '{"audio_key":"19e8c5c99c074c51c414dc3b83e4e88c9ceb83066a537693a19df994cb2cfffe","entity_key":"lx_hangul_basics_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"741af581b2baa460ca9fc8d96cad8bc85d1a7d953a11082762fb5b7f5428845d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/19e8c5c99c074c51c414dc3b83e4e88c9ceb83066a537693a19df994cb2cfffe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_hangul_basics_04 -> audio/generated/ko-KR/lexical/19e8c5c99c074c51c414dc3b83e4e88c9ceb83066a537693a19df994cb2cfffe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9c479e87-b802-55bc-bb71-cb00bc6d5800', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_hangul_basics_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6d18873491b4e983398782e177f7eee8b5ce0d0208d1d6d4667043dedfb8eee8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f6ba871-6485-5088-9e01-0a62c48c6173', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9c479e87-b802-55bc-bb71-cb00bc6d5800', 1), '6d18873491b4e983398782e177f7eee8b5ce0d0208d1d6d4667043dedfb8eee8',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/19e8c5c99c074c51c414dc3b83e4e88c9ceb83066a537693a19df994cb2cfffe.mp3', 835, '2026-09-14 13:41:44.858382', '741af581b2baa460ca9fc8d96cad8bc85d1a7d953a11082762fb5b7f5428845d', 'validated', '{"audio_key":"19e8c5c99c074c51c414dc3b83e4e88c9ceb83066a537693a19df994cb2cfffe","entity_key":"wf_hangul_basics_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"741af581b2baa460ca9fc8d96cad8bc85d1a7d953a11082762fb5b7f5428845d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/19e8c5c99c074c51c414dc3b83e4e88c9ceb83066a537693a19df994cb2cfffe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_02 -> audio/generated/ko-KR/lexical/1cffeb903b2c64ccf9b369b0bf3d297a8d38b0cdbce0af5b84d35946bb95344e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d0057939-ef76-5fe8-9705-5d44120d34b6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7706d0176ef698528e4f566547def63e388d2e63fb36eb70abe7666a9263d1f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a4b47e1-a6df-5992-8cd1-5cf90e591db3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d0057939-ef76-5fe8-9705-5d44120d34b6', 1), '7706d0176ef698528e4f566547def63e388d2e63fb36eb70abe7666a9263d1f5',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1cffeb903b2c64ccf9b369b0bf3d297a8d38b0cdbce0af5b84d35946bb95344e.mp3', 1515, '2026-09-14 13:41:45.947082', 'b1649da8fbb64915e89909d26a570c3a7db2227e1bb02f36e80742377888d1d2', 'validated', '{"audio_key":"1cffeb903b2c64ccf9b369b0bf3d297a8d38b0cdbce0af5b84d35946bb95344e","entity_key":"lx_first_greetings_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b1649da8fbb64915e89909d26a570c3a7db2227e1bb02f36e80742377888d1d2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1cffeb903b2c64ccf9b369b0bf3d297a8d38b0cdbce0af5b84d35946bb95344e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_02 -> audio/generated/ko-KR/lexical/1cffeb903b2c64ccf9b369b0bf3d297a8d38b0cdbce0af5b84d35946bb95344e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('461f6ce6-94e1-5650-8bdf-8543dc64d0b5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7706d0176ef698528e4f566547def63e388d2e63fb36eb70abe7666a9263d1f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d6a36005-a2a5-5e56-937c-d87fc25383f3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('461f6ce6-94e1-5650-8bdf-8543dc64d0b5', 1), '7706d0176ef698528e4f566547def63e388d2e63fb36eb70abe7666a9263d1f5',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1cffeb903b2c64ccf9b369b0bf3d297a8d38b0cdbce0af5b84d35946bb95344e.mp3', 1515, '2026-09-14 13:41:45.947082', 'b1649da8fbb64915e89909d26a570c3a7db2227e1bb02f36e80742377888d1d2', 'validated', '{"audio_key":"1cffeb903b2c64ccf9b369b0bf3d297a8d38b0cdbce0af5b84d35946bb95344e","entity_key":"wf_first_greetings_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b1649da8fbb64915e89909d26a570c3a7db2227e1bb02f36e80742377888d1d2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1cffeb903b2c64ccf9b369b0bf3d297a8d38b0cdbce0af5b84d35946bb95344e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_04 -> audio/generated/ko-KR/lexical/1ff99e9568eb05a00e54dccd3e7a08bd56032461292f2b4539d0d0b029453a3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f28f70d0-6ed5-561f-ad95-0066001bd84f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c0ddfd0050938404c354c36d541bada7f72efa79371d4f96a75a9ad0bc11af0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8dd4343e-a360-57f3-b6d7-e1818159241c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f28f70d0-6ed5-561f-ad95-0066001bd84f', 1), '1c0ddfd0050938404c354c36d541bada7f72efa79371d4f96a75a9ad0bc11af0',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1ff99e9568eb05a00e54dccd3e7a08bd56032461292f2b4539d0d0b029453a3a.mp3', 862, '2026-09-14 13:41:46.867404', '47720a0534b2e61f976f627e0b76ca17ed9ff8f947aa85d29d5d7bf7490b47ef', 'validated', '{"audio_key":"1ff99e9568eb05a00e54dccd3e7a08bd56032461292f2b4539d0d0b029453a3a","entity_key":"lx_first_greetings_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"47720a0534b2e61f976f627e0b76ca17ed9ff8f947aa85d29d5d7bf7490b47ef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1ff99e9568eb05a00e54dccd3e7a08bd56032461292f2b4539d0d0b029453a3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_04 -> audio/generated/ko-KR/lexical/1ff99e9568eb05a00e54dccd3e7a08bd56032461292f2b4539d0d0b029453a3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7753dbff-0c78-5bf5-b0d1-b92d1245fe80', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c0ddfd0050938404c354c36d541bada7f72efa79371d4f96a75a9ad0bc11af0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3028cf4b-c6e4-5470-9478-81e32b7a99a7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7753dbff-0c78-5bf5-b0d1-b92d1245fe80', 1), '1c0ddfd0050938404c354c36d541bada7f72efa79371d4f96a75a9ad0bc11af0',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1ff99e9568eb05a00e54dccd3e7a08bd56032461292f2b4539d0d0b029453a3a.mp3', 862, '2026-09-14 13:41:46.867404', '47720a0534b2e61f976f627e0b76ca17ed9ff8f947aa85d29d5d7bf7490b47ef', 'validated', '{"audio_key":"1ff99e9568eb05a00e54dccd3e7a08bd56032461292f2b4539d0d0b029453a3a","entity_key":"wf_first_greetings_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"47720a0534b2e61f976f627e0b76ca17ed9ff8f947aa85d29d5d7bf7490b47ef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1ff99e9568eb05a00e54dccd3e7a08bd56032461292f2b4539d0d0b029453a3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_hangul_basics_05 -> audio/generated/ko-KR/lexical/27f0d7962ffd4b04e2d77fc56e54eb1651584449797d1c0d3548d42e14c2ccaf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('aeb00eff-e043-55e1-a66b-c20ff23d8150', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_hangul_basics_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2ccf6b79fbefce85e80819af40704c4fadc80538c8fd9c5e708692079fd459b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d374d17-8a3a-5c57-8369-25273afb59a0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('aeb00eff-e043-55e1-a66b-c20ff23d8150', 1), '2ccf6b79fbefce85e80819af40704c4fadc80538c8fd9c5e708692079fd459b3',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/27f0d7962ffd4b04e2d77fc56e54eb1651584449797d1c0d3548d42e14c2ccaf.mp3', 600, '2026-09-14 13:41:47.790258', '4ae50da7e73bd90eef87ff5124acd994fbf576d27bc010c92764c4732519074b', 'validated', '{"audio_key":"27f0d7962ffd4b04e2d77fc56e54eb1651584449797d1c0d3548d42e14c2ccaf","entity_key":"lx_hangul_basics_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4ae50da7e73bd90eef87ff5124acd994fbf576d27bc010c92764c4732519074b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/27f0d7962ffd4b04e2d77fc56e54eb1651584449797d1c0d3548d42e14c2ccaf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_hangul_basics_05 -> audio/generated/ko-KR/lexical/27f0d7962ffd4b04e2d77fc56e54eb1651584449797d1c0d3548d42e14c2ccaf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f82c5daf-fad3-5dfc-a2e7-7c817c8f5080', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_hangul_basics_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2ccf6b79fbefce85e80819af40704c4fadc80538c8fd9c5e708692079fd459b3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b4e9b8c1-a14d-56bb-b41a-c6893d313b17', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f82c5daf-fad3-5dfc-a2e7-7c817c8f5080', 1), '2ccf6b79fbefce85e80819af40704c4fadc80538c8fd9c5e708692079fd459b3',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/27f0d7962ffd4b04e2d77fc56e54eb1651584449797d1c0d3548d42e14c2ccaf.mp3', 600, '2026-09-14 13:41:47.790258', '4ae50da7e73bd90eef87ff5124acd994fbf576d27bc010c92764c4732519074b', 'validated', '{"audio_key":"27f0d7962ffd4b04e2d77fc56e54eb1651584449797d1c0d3548d42e14c2ccaf","entity_key":"wf_hangul_basics_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4ae50da7e73bd90eef87ff5124acd994fbf576d27bc010c92764c4732519074b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/27f0d7962ffd4b04e2d77fc56e54eb1651584449797d1c0d3548d42e14c2ccaf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_hangul_basics_06 -> audio/generated/ko-KR/lexical/287feafbb915fb877e6f2001535a741a1a1cc5c570e5f8e0cabf8fd344799c24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dedc52d0-19a6-51c8-b1ca-15252ac79ee2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_hangul_basics_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17bf126e7928e8c68edc6c0c3dd2a008520a0142423eb065a2faa0e666c3e73b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9b28d5a3-7f8d-5b89-9cf7-789933fc7c27', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dedc52d0-19a6-51c8-b1ca-15252ac79ee2', 1), '17bf126e7928e8c68edc6c0c3dd2a008520a0142423eb065a2faa0e666c3e73b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/287feafbb915fb877e6f2001535a741a1a1cc5c570e5f8e0cabf8fd344799c24.mp3', 783, '2026-09-14 13:41:48.753090', '6517c373cb917e653fd2b02f60a061fbf51b2c0c3ddcdf5cd1eb8a453f24667b', 'validated', '{"audio_key":"287feafbb915fb877e6f2001535a741a1a1cc5c570e5f8e0cabf8fd344799c24","entity_key":"lx_hangul_basics_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6517c373cb917e653fd2b02f60a061fbf51b2c0c3ddcdf5cd1eb8a453f24667b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/287feafbb915fb877e6f2001535a741a1a1cc5c570e5f8e0cabf8fd344799c24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_hangul_basics_06 -> audio/generated/ko-KR/lexical/287feafbb915fb877e6f2001535a741a1a1cc5c570e5f8e0cabf8fd344799c24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('232e8f72-15ad-53b9-a46e-32178089e803', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_hangul_basics_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17bf126e7928e8c68edc6c0c3dd2a008520a0142423eb065a2faa0e666c3e73b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f72f7383-d519-5b4e-90f4-96542a879edd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('232e8f72-15ad-53b9-a46e-32178089e803', 1), '17bf126e7928e8c68edc6c0c3dd2a008520a0142423eb065a2faa0e666c3e73b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/287feafbb915fb877e6f2001535a741a1a1cc5c570e5f8e0cabf8fd344799c24.mp3', 783, '2026-09-14 13:41:48.753090', '6517c373cb917e653fd2b02f60a061fbf51b2c0c3ddcdf5cd1eb8a453f24667b', 'validated', '{"audio_key":"287feafbb915fb877e6f2001535a741a1a1cc5c570e5f8e0cabf8fd344799c24","entity_key":"wf_hangul_basics_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6517c373cb917e653fd2b02f60a061fbf51b2c0c3ddcdf5cd1eb8a453f24667b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/287feafbb915fb877e6f2001535a741a1a1cc5c570e5f8e0cabf8fd344799c24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_01 -> audio/generated/ko-KR/lexical/29bf7ff0b56d17410cda8d70d84c6f7ccbb314e14488c10c768fe6f6be834db0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('22e0b189-558f-584e-8728-4b254a7c1207', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed8d7800a0b7901bb02aa98eb83a9da417b2635c8142ebd5d117d3d287c09f98'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('188053ce-312a-55f4-b26c-b3c57ebb53b9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('22e0b189-558f-584e-8728-4b254a7c1207', 1), 'ed8d7800a0b7901bb02aa98eb83a9da417b2635c8142ebd5d117d3d287c09f98',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/29bf7ff0b56d17410cda8d70d84c6f7ccbb314e14488c10c768fe6f6be834db0.mp3', 966, '2026-09-14 13:41:50.044702', '6a9634fc673d086a380ecf6b410f5d25f011d428182070f5b4e56a06e81cf842', 'validated', '{"audio_key":"29bf7ff0b56d17410cda8d70d84c6f7ccbb314e14488c10c768fe6f6be834db0","entity_key":"lx_numbers_0_10_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6a9634fc673d086a380ecf6b410f5d25f011d428182070f5b4e56a06e81cf842","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/29bf7ff0b56d17410cda8d70d84c6f7ccbb314e14488c10c768fe6f6be834db0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_01 -> audio/generated/ko-KR/lexical/29bf7ff0b56d17410cda8d70d84c6f7ccbb314e14488c10c768fe6f6be834db0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3de1fc04-9ca0-516e-88f7-de1ba526662a', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ed8d7800a0b7901bb02aa98eb83a9da417b2635c8142ebd5d117d3d287c09f98'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73175cc4-45d7-5120-87b2-8556c7f8044b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3de1fc04-9ca0-516e-88f7-de1ba526662a', 1), 'ed8d7800a0b7901bb02aa98eb83a9da417b2635c8142ebd5d117d3d287c09f98',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/29bf7ff0b56d17410cda8d70d84c6f7ccbb314e14488c10c768fe6f6be834db0.mp3', 966, '2026-09-14 13:41:50.044702', '6a9634fc673d086a380ecf6b410f5d25f011d428182070f5b4e56a06e81cf842', 'validated', '{"audio_key":"29bf7ff0b56d17410cda8d70d84c6f7ccbb314e14488c10c768fe6f6be834db0","entity_key":"wf_numbers_0_10_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6a9634fc673d086a380ecf6b410f5d25f011d428182070f5b4e56a06e81cf842","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/29bf7ff0b56d17410cda8d70d84c6f7ccbb314e14488c10c768fe6f6be834db0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_02 -> audio/generated/ko-KR/lexical/31e8216097f091cc19ecba68239ede0f317c3d2dd17c58b07eb458871620cfff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e7a09497-3fd8-58b1-8467-898a4c0ad1f9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '253d1510caf5362045ce50b1bdc33758fc4b3fd6ddc552d8dc0619784bd9c7d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('82494c52-38ba-5a7c-b1b4-943e3f282958', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e7a09497-3fd8-58b1-8467-898a4c0ad1f9', 1), '253d1510caf5362045ce50b1bdc33758fc4b3fd6ddc552d8dc0619784bd9c7d1',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/31e8216097f091cc19ecba68239ede0f317c3d2dd17c58b07eb458871620cfff.mp3', 835, '2026-09-14 13:41:51.009657', '2ea5829cae422bd8896092896be52c19acc1e092a089bcb51dcce17c4b21f5d3', 'validated', '{"audio_key":"31e8216097f091cc19ecba68239ede0f317c3d2dd17c58b07eb458871620cfff","entity_key":"lx_my_name_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2ea5829cae422bd8896092896be52c19acc1e092a089bcb51dcce17c4b21f5d3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/31e8216097f091cc19ecba68239ede0f317c3d2dd17c58b07eb458871620cfff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_02 -> audio/generated/ko-KR/lexical/31e8216097f091cc19ecba68239ede0f317c3d2dd17c58b07eb458871620cfff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('745619db-f604-59a8-9a0d-1f6c4d826fbf', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '253d1510caf5362045ce50b1bdc33758fc4b3fd6ddc552d8dc0619784bd9c7d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe0b84de-62ae-5939-a111-d77d6194bcdb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('745619db-f604-59a8-9a0d-1f6c4d826fbf', 1), '253d1510caf5362045ce50b1bdc33758fc4b3fd6ddc552d8dc0619784bd9c7d1',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/31e8216097f091cc19ecba68239ede0f317c3d2dd17c58b07eb458871620cfff.mp3', 835, '2026-09-14 13:41:51.009657', '2ea5829cae422bd8896092896be52c19acc1e092a089bcb51dcce17c4b21f5d3', 'validated', '{"audio_key":"31e8216097f091cc19ecba68239ede0f317c3d2dd17c58b07eb458871620cfff","entity_key":"wf_my_name_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2ea5829cae422bd8896092896be52c19acc1e092a089bcb51dcce17c4b21f5d3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/31e8216097f091cc19ecba68239ede0f317c3d2dd17c58b07eb458871620cfff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_02 -> audio/generated/ko-KR/lexical/37059260df31868e48fda7c56f66f0085748476157c3f6cc98de6ed2fc075ec5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a1b679c7-642a-5dc6-858f-f34c153f77bf', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '95b5c8cf1b249b7a376b06dc5d8d5560ca7f369b5e83bc2b2d69825beda2875f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b4d98bc-b2e6-5973-a985-0eb017113fcf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a1b679c7-642a-5dc6-858f-f34c153f77bf', 1), '95b5c8cf1b249b7a376b06dc5d8d5560ca7f369b5e83bc2b2d69825beda2875f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/37059260df31868e48fda7c56f66f0085748476157c3f6cc98de6ed2fc075ec5.mp3', 835, '2026-09-14 13:41:52.010652', '8b0287f473c267a94107dd4f4e5a66a8d5c68111ec00bf1ec2023c8e8e0f4bca', 'validated', '{"audio_key":"37059260df31868e48fda7c56f66f0085748476157c3f6cc98de6ed2fc075ec5","entity_key":"lx_first_objects_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8b0287f473c267a94107dd4f4e5a66a8d5c68111ec00bf1ec2023c8e8e0f4bca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/37059260df31868e48fda7c56f66f0085748476157c3f6cc98de6ed2fc075ec5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_02 -> audio/generated/ko-KR/lexical/37059260df31868e48fda7c56f66f0085748476157c3f6cc98de6ed2fc075ec5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6c1cb4e8-fbd7-5cc7-b35e-9eaa7d3d0a99', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '95b5c8cf1b249b7a376b06dc5d8d5560ca7f369b5e83bc2b2d69825beda2875f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('92a283e9-f9e3-56e7-9019-0d9ec127ec0f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6c1cb4e8-fbd7-5cc7-b35e-9eaa7d3d0a99', 1), '95b5c8cf1b249b7a376b06dc5d8d5560ca7f369b5e83bc2b2d69825beda2875f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/37059260df31868e48fda7c56f66f0085748476157c3f6cc98de6ed2fc075ec5.mp3', 835, '2026-09-14 13:41:52.010652', '8b0287f473c267a94107dd4f4e5a66a8d5c68111ec00bf1ec2023c8e8e0f4bca', 'validated', '{"audio_key":"37059260df31868e48fda7c56f66f0085748476157c3f6cc98de6ed2fc075ec5","entity_key":"wf_first_objects_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8b0287f473c267a94107dd4f4e5a66a8d5c68111ec00bf1ec2023c8e8e0f4bca","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/37059260df31868e48fda7c56f66f0085748476157c3f6cc98de6ed2fc075ec5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_04 -> audio/generated/ko-KR/lexical/39fd0406a1b74a75e5c24bb44a468fc79688e002caa59fef954c52b65bf5198f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('003c76a6-59d8-5d56-8bc8-89f4c722e882', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aef613c6612d424ab454e08337ab51a5c8f4695e4762b8c63c8b171667eb66b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dffb3b0c-c7a4-57b1-9ed1-2b7121cee6d4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('003c76a6-59d8-5d56-8bc8-89f4c722e882', 1), 'aef613c6612d424ab454e08337ab51a5c8f4695e4762b8c63c8b171667eb66b2',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/39fd0406a1b74a75e5c24bb44a468fc79688e002caa59fef954c52b65bf5198f.mp3', 1018, '2026-09-14 13:41:52.956070', 'f4aa896e8f2bcf948b35a89e2372d16974bb4b8d7d5bcc32867cac9c82f4b1af', 'validated', '{"audio_key":"39fd0406a1b74a75e5c24bb44a468fc79688e002caa59fef954c52b65bf5198f","entity_key":"lx_first_conversation_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f4aa896e8f2bcf948b35a89e2372d16974bb4b8d7d5bcc32867cac9c82f4b1af","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/39fd0406a1b74a75e5c24bb44a468fc79688e002caa59fef954c52b65bf5198f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_04 -> audio/generated/ko-KR/lexical/39fd0406a1b74a75e5c24bb44a468fc79688e002caa59fef954c52b65bf5198f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('208fee2a-f7fd-5d68-9166-d7ad8ac6a0ee', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aef613c6612d424ab454e08337ab51a5c8f4695e4762b8c63c8b171667eb66b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('672e4e7f-4420-58b3-9a99-057ced7027b8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('208fee2a-f7fd-5d68-9166-d7ad8ac6a0ee', 1), 'aef613c6612d424ab454e08337ab51a5c8f4695e4762b8c63c8b171667eb66b2',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/39fd0406a1b74a75e5c24bb44a468fc79688e002caa59fef954c52b65bf5198f.mp3', 1018, '2026-09-14 13:41:52.956070', 'f4aa896e8f2bcf948b35a89e2372d16974bb4b8d7d5bcc32867cac9c82f4b1af', 'validated', '{"audio_key":"39fd0406a1b74a75e5c24bb44a468fc79688e002caa59fef954c52b65bf5198f","entity_key":"wf_first_conversation_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f4aa896e8f2bcf948b35a89e2372d16974bb4b8d7d5bcc32867cac9c82f4b1af","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/39fd0406a1b74a75e5c24bb44a468fc79688e002caa59fef954c52b65bf5198f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_06 -> audio/generated/ko-KR/lexical/3a613239257700ca41f3e2fdc9193ea40fe956268ed1f08eef9db3986cbd9cdf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8cb1f0b3-0603-531f-8edd-d6a11269b01f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1dbd1db7e2427222fde8d01cd52939eee0d2d1e59a33b446816daf1c9f2712aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78f1806d-b755-5b2d-bf8e-4ed19d7092f2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8cb1f0b3-0603-531f-8edd-d6a11269b01f', 1), '1dbd1db7e2427222fde8d01cd52939eee0d2d1e59a33b446816daf1c9f2712aa',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/3a613239257700ca41f3e2fdc9193ea40fe956268ed1f08eef9db3986cbd9cdf.mp3', 1280, '2026-09-14 13:41:53.965534', 'fe0d4a55f9bdce292270aace61be903205788c31391cabdb7562ff20d1dc55d6', 'validated', '{"audio_key":"3a613239257700ca41f3e2fdc9193ea40fe956268ed1f08eef9db3986cbd9cdf","entity_key":"lx_survival_words_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fe0d4a55f9bdce292270aace61be903205788c31391cabdb7562ff20d1dc55d6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/3a613239257700ca41f3e2fdc9193ea40fe956268ed1f08eef9db3986cbd9cdf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_06 -> audio/generated/ko-KR/lexical/3a613239257700ca41f3e2fdc9193ea40fe956268ed1f08eef9db3986cbd9cdf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('956f19d7-b488-52f2-ba3d-1345b5300694', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1dbd1db7e2427222fde8d01cd52939eee0d2d1e59a33b446816daf1c9f2712aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87fa0565-3334-5f31-961f-f7e23a4a5ee8', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('956f19d7-b488-52f2-ba3d-1345b5300694', 1), '1dbd1db7e2427222fde8d01cd52939eee0d2d1e59a33b446816daf1c9f2712aa',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/3a613239257700ca41f3e2fdc9193ea40fe956268ed1f08eef9db3986cbd9cdf.mp3', 1280, '2026-09-14 13:41:53.965534', 'fe0d4a55f9bdce292270aace61be903205788c31391cabdb7562ff20d1dc55d6', 'validated', '{"audio_key":"3a613239257700ca41f3e2fdc9193ea40fe956268ed1f08eef9db3986cbd9cdf","entity_key":"wf_survival_words_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fe0d4a55f9bdce292270aace61be903205788c31391cabdb7562ff20d1dc55d6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/3a613239257700ca41f3e2fdc9193ea40fe956268ed1f08eef9db3986cbd9cdf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_how_are_you_05 -> audio/generated/ko-KR/lexical/3bfe59fff2b5d8912366450cd5a25ce4febcfcc7185ed04fe901e2425aef1717.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d3f5a51d-bca1-5a4c-85f1-25c247694c19', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_how_are_you_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3bc6235e1d18162fb94cd242a101ce19f00f7bb5d4682419f2dba8102d00ad45'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b2235f8-f3a9-59bb-9ebc-4fabd9a224a4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d3f5a51d-bca1-5a4c-85f1-25c247694c19', 1), '3bc6235e1d18162fb94cd242a101ce19f00f7bb5d4682419f2dba8102d00ad45',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/3bfe59fff2b5d8912366450cd5a25ce4febcfcc7185ed04fe901e2425aef1717.mp3', 862, '2026-09-14 13:41:54.923806', 'd1f6ea1690f8dd410fa3f45b6338252d38ff0f730286ec2967fbfdaf30a4ac6c', 'validated', '{"audio_key":"3bfe59fff2b5d8912366450cd5a25ce4febcfcc7185ed04fe901e2425aef1717","entity_key":"lx_how_are_you_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d1f6ea1690f8dd410fa3f45b6338252d38ff0f730286ec2967fbfdaf30a4ac6c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/3bfe59fff2b5d8912366450cd5a25ce4febcfcc7185ed04fe901e2425aef1717.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_how_are_you_05 -> audio/generated/ko-KR/lexical/3bfe59fff2b5d8912366450cd5a25ce4febcfcc7185ed04fe901e2425aef1717.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cb7fba0d-ed1d-5ee0-bbb5-836952b26b05', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_how_are_you_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3bc6235e1d18162fb94cd242a101ce19f00f7bb5d4682419f2dba8102d00ad45'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('da134f44-799c-5b1b-88fb-2972339cecc0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cb7fba0d-ed1d-5ee0-bbb5-836952b26b05', 1), '3bc6235e1d18162fb94cd242a101ce19f00f7bb5d4682419f2dba8102d00ad45',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/3bfe59fff2b5d8912366450cd5a25ce4febcfcc7185ed04fe901e2425aef1717.mp3', 862, '2026-09-14 13:41:54.923806', 'd1f6ea1690f8dd410fa3f45b6338252d38ff0f730286ec2967fbfdaf30a4ac6c', 'validated', '{"audio_key":"3bfe59fff2b5d8912366450cd5a25ce4febcfcc7185ed04fe901e2425aef1717","entity_key":"wf_how_are_you_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d1f6ea1690f8dd410fa3f45b6338252d38ff0f730286ec2967fbfdaf30a4ac6c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/3bfe59fff2b5d8912366450cd5a25ce4febcfcc7185ed04fe901e2425aef1717.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_06 -> audio/generated/ko-KR/lexical/48e83fe2d3110d3795202b6dc5d3c79dff4f2646333374c55b93e1e1f117e98b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7b59719b-69a4-5c20-a146-adb5edc7db64', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6852b2954fc8556674f1a79057a7aba64fd383d89f5b42a3e28a4c7b0c698a11'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c9ac7acb-2bf2-58b4-9ba7-ae376ac6c0fd', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7b59719b-69a4-5c20-a146-adb5edc7db64', 1), '6852b2954fc8556674f1a79057a7aba64fd383d89f5b42a3e28a4c7b0c698a11',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/48e83fe2d3110d3795202b6dc5d3c79dff4f2646333374c55b93e1e1f117e98b.mp3', 966, '2026-09-14 13:41:55.887562', '03f2e789b694c0c5c6d534ab1d58ca1d8304b615a89445eb62efe2bac5fb6dc2', 'validated', '{"audio_key":"48e83fe2d3110d3795202b6dc5d3c79dff4f2646333374c55b93e1e1f117e98b","entity_key":"lx_first_objects_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"03f2e789b694c0c5c6d534ab1d58ca1d8304b615a89445eb62efe2bac5fb6dc2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/48e83fe2d3110d3795202b6dc5d3c79dff4f2646333374c55b93e1e1f117e98b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_06 -> audio/generated/ko-KR/lexical/48e83fe2d3110d3795202b6dc5d3c79dff4f2646333374c55b93e1e1f117e98b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('53ccdf16-ec36-53fd-9fb4-3d9ee86822e5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6852b2954fc8556674f1a79057a7aba64fd383d89f5b42a3e28a4c7b0c698a11'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bf4883f5-15c3-5b5a-bd30-2f810127083f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('53ccdf16-ec36-53fd-9fb4-3d9ee86822e5', 1), '6852b2954fc8556674f1a79057a7aba64fd383d89f5b42a3e28a4c7b0c698a11',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/48e83fe2d3110d3795202b6dc5d3c79dff4f2646333374c55b93e1e1f117e98b.mp3', 966, '2026-09-14 13:41:55.887562', '03f2e789b694c0c5c6d534ab1d58ca1d8304b615a89445eb62efe2bac5fb6dc2', 'validated', '{"audio_key":"48e83fe2d3110d3795202b6dc5d3c79dff4f2646333374c55b93e1e1f117e98b","entity_key":"wf_first_objects_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"03f2e789b694c0c5c6d534ab1d58ca1d8304b615a89445eb62efe2bac5fb6dc2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/48e83fe2d3110d3795202b6dc5d3c79dff4f2646333374c55b93e1e1f117e98b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_04 -> audio/generated/ko-KR/lexical/51da8a04458aedc82f8c138625aeb413444a23b4bf3f6ba8579c07b04624b433.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('50ac67e2-a020-57f3-875d-76ec5408ec52', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3cd6c40aac5fd42ef96dc0b3d55d168c116831304b6e3120e61a076d17bf8b78'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e8302d3-073d-5c19-a43c-64dd83b4b447', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('50ac67e2-a020-57f3-875d-76ec5408ec52', 1), '3cd6c40aac5fd42ef96dc0b3d55d168c116831304b6e3120e61a076d17bf8b78',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/51da8a04458aedc82f8c138625aeb413444a23b4bf3f6ba8579c07b04624b433.mp3', 966, '2026-09-14 13:41:56.835839', '16215d784e0a0e3aa8192877d4eb991c4c8b8fe6e5f5eb40e5856447d778ac89', 'validated', '{"audio_key":"51da8a04458aedc82f8c138625aeb413444a23b4bf3f6ba8579c07b04624b433","entity_key":"lx_numbers_0_10_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"16215d784e0a0e3aa8192877d4eb991c4c8b8fe6e5f5eb40e5856447d778ac89","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/51da8a04458aedc82f8c138625aeb413444a23b4bf3f6ba8579c07b04624b433.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_04 -> audio/generated/ko-KR/lexical/51da8a04458aedc82f8c138625aeb413444a23b4bf3f6ba8579c07b04624b433.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('046813f3-0513-5a9c-8cc6-3e9bbebe09b7', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3cd6c40aac5fd42ef96dc0b3d55d168c116831304b6e3120e61a076d17bf8b78'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff8d5a27-64e3-5de5-9416-c1e02d7bb033', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('046813f3-0513-5a9c-8cc6-3e9bbebe09b7', 1), '3cd6c40aac5fd42ef96dc0b3d55d168c116831304b6e3120e61a076d17bf8b78',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/51da8a04458aedc82f8c138625aeb413444a23b4bf3f6ba8579c07b04624b433.mp3', 966, '2026-09-14 13:41:56.835839', '16215d784e0a0e3aa8192877d4eb991c4c8b8fe6e5f5eb40e5856447d778ac89', 'validated', '{"audio_key":"51da8a04458aedc82f8c138625aeb413444a23b4bf3f6ba8579c07b04624b433","entity_key":"wf_numbers_0_10_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"16215d784e0a0e3aa8192877d4eb991c4c8b8fe6e5f5eb40e5856447d778ac89","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/51da8a04458aedc82f8c138625aeb413444a23b4bf3f6ba8579c07b04624b433.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_05 -> audio/generated/ko-KR/lexical/5398a6114da38171eed65d93e5a2ac1b5cb8233b6735e7dc1178e9ba7f0a4164.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('458a45d4-eaa0-5793-9826-4a28e350b5f4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9474acc7539b7e2cedafe13bd8d11322d13c13f1698fd919d6cbcd4533730c55'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a167b984-55ed-516e-8a0b-5bcc7cf23797', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('458a45d4-eaa0-5793-9826-4a28e350b5f4', 1), '9474acc7539b7e2cedafe13bd8d11322d13c13f1698fd919d6cbcd4533730c55',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5398a6114da38171eed65d93e5a2ac1b5cb8233b6735e7dc1178e9ba7f0a4164.mp3', 914, '2026-09-14 13:41:57.789585', '4bd1986409447310ed397868c3fec1c02f8603d02599da86bb6db741b45758c4', 'validated', '{"audio_key":"5398a6114da38171eed65d93e5a2ac1b5cb8233b6735e7dc1178e9ba7f0a4164","entity_key":"lx_first_greetings_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4bd1986409447310ed397868c3fec1c02f8603d02599da86bb6db741b45758c4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5398a6114da38171eed65d93e5a2ac1b5cb8233b6735e7dc1178e9ba7f0a4164.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_05 -> audio/generated/ko-KR/lexical/5398a6114da38171eed65d93e5a2ac1b5cb8233b6735e7dc1178e9ba7f0a4164.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('da067e5a-6200-5509-a7d5-430bfc3e7a9e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9474acc7539b7e2cedafe13bd8d11322d13c13f1698fd919d6cbcd4533730c55'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52529d2f-20a6-5f7e-8ed2-0845bfb6c2b1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('da067e5a-6200-5509-a7d5-430bfc3e7a9e', 1), '9474acc7539b7e2cedafe13bd8d11322d13c13f1698fd919d6cbcd4533730c55',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5398a6114da38171eed65d93e5a2ac1b5cb8233b6735e7dc1178e9ba7f0a4164.mp3', 914, '2026-09-14 13:41:57.789585', '4bd1986409447310ed397868c3fec1c02f8603d02599da86bb6db741b45758c4', 'validated', '{"audio_key":"5398a6114da38171eed65d93e5a2ac1b5cb8233b6735e7dc1178e9ba7f0a4164","entity_key":"wf_first_greetings_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4bd1986409447310ed397868c3fec1c02f8603d02599da86bb6db741b45758c4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5398a6114da38171eed65d93e5a2ac1b5cb8233b6735e7dc1178e9ba7f0a4164.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_03 -> audio/generated/ko-KR/lexical/60f28a6ec6a40a2faff8696d9a5b80ef15ff9a438d4fa970710c6bcd8c941550.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a56d2333-2fa6-5431-854a-b76f692af16f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8bafb6b7d17ead4985bfd429412da3a6276b40529b508f7f57f9b3a25bd5c727'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('26bf2a11-1988-5d8e-97a6-ff3633f0d016', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a56d2333-2fa6-5431-854a-b76f692af16f', 1), '8bafb6b7d17ead4985bfd429412da3a6276b40529b508f7f57f9b3a25bd5c727',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/60f28a6ec6a40a2faff8696d9a5b80ef15ff9a438d4fa970710c6bcd8c941550.mp3', 679, '2026-09-14 13:41:58.726255', '76653980f218e470683f20d921518ff209a3a7c798fc0c26bb17a3ba8b0a3768', 'validated', '{"audio_key":"60f28a6ec6a40a2faff8696d9a5b80ef15ff9a438d4fa970710c6bcd8c941550","entity_key":"lx_numbers_0_10_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"76653980f218e470683f20d921518ff209a3a7c798fc0c26bb17a3ba8b0a3768","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/60f28a6ec6a40a2faff8696d9a5b80ef15ff9a438d4fa970710c6bcd8c941550.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_03 -> audio/generated/ko-KR/lexical/60f28a6ec6a40a2faff8696d9a5b80ef15ff9a438d4fa970710c6bcd8c941550.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7e400fcc-bb07-5071-a266-1544e094f6f4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8bafb6b7d17ead4985bfd429412da3a6276b40529b508f7f57f9b3a25bd5c727'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bede0a9c-ed52-5262-8bdf-18b64a5f5fe4', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7e400fcc-bb07-5071-a266-1544e094f6f4', 1), '8bafb6b7d17ead4985bfd429412da3a6276b40529b508f7f57f9b3a25bd5c727',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/60f28a6ec6a40a2faff8696d9a5b80ef15ff9a438d4fa970710c6bcd8c941550.mp3', 679, '2026-09-14 13:41:58.726255', '76653980f218e470683f20d921518ff209a3a7c798fc0c26bb17a3ba8b0a3768', 'validated', '{"audio_key":"60f28a6ec6a40a2faff8696d9a5b80ef15ff9a438d4fa970710c6bcd8c941550","entity_key":"wf_numbers_0_10_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"76653980f218e470683f20d921518ff209a3a7c798fc0c26bb17a3ba8b0a3768","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/60f28a6ec6a40a2faff8696d9a5b80ef15ff9a438d4fa970710c6bcd8c941550.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_03 -> audio/generated/ko-KR/lexical/693b143ba6cd45a5374217980c599536b4f4bf58862c56f75190a54564dcaa2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('265ab54e-4360-576d-87aa-d82582070dba', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ecc9311f8fd95a5ab8e8494f5db1516335a8dc46f1ed195d2db9361b31df2720'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3228d7a5-5f13-5aa1-9deb-30350a52f9b9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('265ab54e-4360-576d-87aa-d82582070dba', 1), 'ecc9311f8fd95a5ab8e8494f5db1516335a8dc46f1ed195d2db9361b31df2720',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/693b143ba6cd45a5374217980c599536b4f4bf58862c56f75190a54564dcaa2d.mp3', 1436, '2026-09-14 13:41:59.753629', '3390344179c3c4e39091fd1916f7ffad16d9e8348f8993059e6b0c517a06d7a6', 'validated', '{"audio_key":"693b143ba6cd45a5374217980c599536b4f4bf58862c56f75190a54564dcaa2d","entity_key":"lx_first_greetings_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3390344179c3c4e39091fd1916f7ffad16d9e8348f8993059e6b0c517a06d7a6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/693b143ba6cd45a5374217980c599536b4f4bf58862c56f75190a54564dcaa2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_03 -> audio/generated/ko-KR/lexical/693b143ba6cd45a5374217980c599536b4f4bf58862c56f75190a54564dcaa2d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0b60b9d9-3bcd-5293-8960-2c552ff3d46e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ecc9311f8fd95a5ab8e8494f5db1516335a8dc46f1ed195d2db9361b31df2720'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ef9b082-dc89-5159-8007-d270193f5c6c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0b60b9d9-3bcd-5293-8960-2c552ff3d46e', 1), 'ecc9311f8fd95a5ab8e8494f5db1516335a8dc46f1ed195d2db9361b31df2720',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/693b143ba6cd45a5374217980c599536b4f4bf58862c56f75190a54564dcaa2d.mp3', 1436, '2026-09-14 13:41:59.753629', '3390344179c3c4e39091fd1916f7ffad16d9e8348f8993059e6b0c517a06d7a6', 'validated', '{"audio_key":"693b143ba6cd45a5374217980c599536b4f4bf58862c56f75190a54564dcaa2d","entity_key":"wf_first_greetings_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3390344179c3c4e39091fd1916f7ffad16d9e8348f8993059e6b0c517a06d7a6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/693b143ba6cd45a5374217980c599536b4f4bf58862c56f75190a54564dcaa2d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_hangul_basics_02 -> audio/generated/ko-KR/lexical/6a186d8875ccfa2fa2f5e5c2e8816cd9e3bdffed598563c73a36b6c2d6e9e725.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('22b46488-c200-5b4b-8ebe-542e80b20fcb', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_hangul_basics_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e28a673835fd6986ae24bd20534176f393516b1f10656ca12aacc206beea36b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d894c708-b72e-5f5d-9837-eec25667d3d6', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('22b46488-c200-5b4b-8ebe-542e80b20fcb', 1), '9e28a673835fd6986ae24bd20534176f393516b1f10656ca12aacc206beea36b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6a186d8875ccfa2fa2f5e5c2e8816cd9e3bdffed598563c73a36b6c2d6e9e725.mp3', 783, '2026-09-14 13:42:00.671587', '7db6667c4e9ee020cb8893adf0f92ff96f46016ced3c8384fc6c3f915eec19d7', 'validated', '{"audio_key":"6a186d8875ccfa2fa2f5e5c2e8816cd9e3bdffed598563c73a36b6c2d6e9e725","entity_key":"lx_hangul_basics_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7db6667c4e9ee020cb8893adf0f92ff96f46016ced3c8384fc6c3f915eec19d7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6a186d8875ccfa2fa2f5e5c2e8816cd9e3bdffed598563c73a36b6c2d6e9e725.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_hangul_basics_02 -> audio/generated/ko-KR/lexical/6a186d8875ccfa2fa2f5e5c2e8816cd9e3bdffed598563c73a36b6c2d6e9e725.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c3340ee4-1ae2-5e87-8917-72b0c4ca7763', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_hangul_basics_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e28a673835fd6986ae24bd20534176f393516b1f10656ca12aacc206beea36b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89083a0a-c39f-5b41-986f-ce99aee329af', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c3340ee4-1ae2-5e87-8917-72b0c4ca7763', 1), '9e28a673835fd6986ae24bd20534176f393516b1f10656ca12aacc206beea36b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6a186d8875ccfa2fa2f5e5c2e8816cd9e3bdffed598563c73a36b6c2d6e9e725.mp3', 783, '2026-09-14 13:42:00.671587', '7db6667c4e9ee020cb8893adf0f92ff96f46016ced3c8384fc6c3f915eec19d7', 'validated', '{"audio_key":"6a186d8875ccfa2fa2f5e5c2e8816cd9e3bdffed598563c73a36b6c2d6e9e725","entity_key":"wf_hangul_basics_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7db6667c4e9ee020cb8893adf0f92ff96f46016ced3c8384fc6c3f915eec19d7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6a186d8875ccfa2fa2f5e5c2e8816cd9e3bdffed598563c73a36b6c2d6e9e725.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_02 -> audio/generated/ko-KR/lexical/6dfc235fae4150ea904ac503b454a18afc481b8efd64ec2c6178707d83d79075.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('018dcf99-be31-546d-ad18-94056c0f8e65', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dfc76879e2f5c3ead09186ff1c6b635624f96b7adbd71d94c37566429ca5df6f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3fb48737-dbd1-53aa-9181-3e9a2cd39d8d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('018dcf99-be31-546d-ad18-94056c0f8e65', 1), 'dfc76879e2f5c3ead09186ff1c6b635624f96b7adbd71d94c37566429ca5df6f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6dfc235fae4150ea904ac503b454a18afc481b8efd64ec2c6178707d83d79075.mp3', 783, '2026-09-14 13:42:01.615229', '2ae5c39a0ae7b1e20465771c241f1a38c2dff88ee0f4a09f5f7b4d177cbc69d8', 'validated', '{"audio_key":"6dfc235fae4150ea904ac503b454a18afc481b8efd64ec2c6178707d83d79075","entity_key":"lx_numbers_0_10_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2ae5c39a0ae7b1e20465771c241f1a38c2dff88ee0f4a09f5f7b4d177cbc69d8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6dfc235fae4150ea904ac503b454a18afc481b8efd64ec2c6178707d83d79075.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_02 -> audio/generated/ko-KR/lexical/6dfc235fae4150ea904ac503b454a18afc481b8efd64ec2c6178707d83d79075.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d5aebd42-f988-5a86-8844-14b05035bcf9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dfc76879e2f5c3ead09186ff1c6b635624f96b7adbd71d94c37566429ca5df6f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b83e2d4e-04b3-59fa-867a-8473d587914d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d5aebd42-f988-5a86-8844-14b05035bcf9', 1), 'dfc76879e2f5c3ead09186ff1c6b635624f96b7adbd71d94c37566429ca5df6f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6dfc235fae4150ea904ac503b454a18afc481b8efd64ec2c6178707d83d79075.mp3', 783, '2026-09-14 13:42:01.615229', '2ae5c39a0ae7b1e20465771c241f1a38c2dff88ee0f4a09f5f7b4d177cbc69d8', 'validated', '{"audio_key":"6dfc235fae4150ea904ac503b454a18afc481b8efd64ec2c6178707d83d79075","entity_key":"wf_numbers_0_10_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2ae5c39a0ae7b1e20465771c241f1a38c2dff88ee0f4a09f5f7b4d177cbc69d8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6dfc235fae4150ea904ac503b454a18afc481b8efd64ec2c6178707d83d79075.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_01 -> audio/generated/ko-KR/lexical/6efe78edd6a9b9e82ffc1170f00fc8ab26f529ecf3565fe80e7fe88c6fb6565f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7dccc6e1-003d-5ead-98e5-2803ab3eefa6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '080ef3b94e3a9d86197072fd9cd9ccfdd299eb3001dc309a889f0c031e006b7d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dac1570a-6cdd-53fa-b351-6694c9ff7802', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7dccc6e1-003d-5ead-98e5-2803ab3eefa6', 1), '080ef3b94e3a9d86197072fd9cd9ccfdd299eb3001dc309a889f0c031e006b7d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6efe78edd6a9b9e82ffc1170f00fc8ab26f529ecf3565fe80e7fe88c6fb6565f.mp3', 966, '2026-09-14 13:42:02.554851', 'fa9c215c35314be93c15a8902ff1f7240926c8130b6839240cfb1456c07c7c86', 'validated', '{"audio_key":"6efe78edd6a9b9e82ffc1170f00fc8ab26f529ecf3565fe80e7fe88c6fb6565f","entity_key":"lx_first_objects_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fa9c215c35314be93c15a8902ff1f7240926c8130b6839240cfb1456c07c7c86","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6efe78edd6a9b9e82ffc1170f00fc8ab26f529ecf3565fe80e7fe88c6fb6565f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_01 -> audio/generated/ko-KR/lexical/6efe78edd6a9b9e82ffc1170f00fc8ab26f529ecf3565fe80e7fe88c6fb6565f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a4b72299-de59-5375-9f65-ff90f41b8637', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '080ef3b94e3a9d86197072fd9cd9ccfdd299eb3001dc309a889f0c031e006b7d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('228eb303-87b0-5352-b58b-d2bc267f12cb', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a4b72299-de59-5375-9f65-ff90f41b8637', 1), '080ef3b94e3a9d86197072fd9cd9ccfdd299eb3001dc309a889f0c031e006b7d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6efe78edd6a9b9e82ffc1170f00fc8ab26f529ecf3565fe80e7fe88c6fb6565f.mp3', 966, '2026-09-14 13:42:02.554851', 'fa9c215c35314be93c15a8902ff1f7240926c8130b6839240cfb1456c07c7c86', 'validated', '{"audio_key":"6efe78edd6a9b9e82ffc1170f00fc8ab26f529ecf3565fe80e7fe88c6fb6565f","entity_key":"wf_first_objects_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fa9c215c35314be93c15a8902ff1f7240926c8130b6839240cfb1456c07c7c86","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6efe78edd6a9b9e82ffc1170f00fc8ab26f529ecf3565fe80e7fe88c6fb6565f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_03 -> audio/generated/ko-KR/lexical/7129e7c7d1c2849c97a06c2effb71a82bd588caaba75de7ab3ad1be313c91a27.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0b9dc0f6-a008-5741-a794-975a17f1e5b7', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76982215b10b189d185f9c5dc56b6768ff450ee59f731171781e0d65a9090d9e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bfb0c632-ca80-5215-882e-7b57dddc1e30', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0b9dc0f6-a008-5741-a794-975a17f1e5b7', 1), '76982215b10b189d185f9c5dc56b6768ff450ee59f731171781e0d65a9090d9e',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7129e7c7d1c2849c97a06c2effb71a82bd588caaba75de7ab3ad1be313c91a27.mp3', 1332, '2026-09-14 13:42:03.609062', '1b256dab9ec6341a7058c41ee71855aa952fa3b7e5da640574f15a3e38b2ee4d', 'validated', '{"audio_key":"7129e7c7d1c2849c97a06c2effb71a82bd588caaba75de7ab3ad1be313c91a27","entity_key":"lx_my_name_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1b256dab9ec6341a7058c41ee71855aa952fa3b7e5da640574f15a3e38b2ee4d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7129e7c7d1c2849c97a06c2effb71a82bd588caaba75de7ab3ad1be313c91a27.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_03 -> audio/generated/ko-KR/lexical/7129e7c7d1c2849c97a06c2effb71a82bd588caaba75de7ab3ad1be313c91a27.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f160019d-649b-5989-b915-ceb79bf81d0c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '76982215b10b189d185f9c5dc56b6768ff450ee59f731171781e0d65a9090d9e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('49d9f791-5099-5308-8d8a-a26d4ac972ba', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f160019d-649b-5989-b915-ceb79bf81d0c', 1), '76982215b10b189d185f9c5dc56b6768ff450ee59f731171781e0d65a9090d9e',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7129e7c7d1c2849c97a06c2effb71a82bd588caaba75de7ab3ad1be313c91a27.mp3', 1332, '2026-09-14 13:42:03.609062', '1b256dab9ec6341a7058c41ee71855aa952fa3b7e5da640574f15a3e38b2ee4d', 'validated', '{"audio_key":"7129e7c7d1c2849c97a06c2effb71a82bd588caaba75de7ab3ad1be313c91a27","entity_key":"wf_my_name_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1b256dab9ec6341a7058c41ee71855aa952fa3b7e5da640574f15a3e38b2ee4d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7129e7c7d1c2849c97a06c2effb71a82bd588caaba75de7ab3ad1be313c91a27.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_05 -> audio/generated/ko-KR/lexical/7cb79ac248ec9ef87649981da2c7168531816d3c0afe3b81e32b36c78d54b5bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8a4cdc5c-f04a-50b3-aa17-41db1302a40c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b05af6c0b14d6e70820b8e7f7effa749fdd270eac989b8c0b81f689784a1e98'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ec20195-f235-5f6b-8979-504a71ef4283', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8a4cdc5c-f04a-50b3-aa17-41db1302a40c', 1), '0b05af6c0b14d6e70820b8e7f7effa749fdd270eac989b8c0b81f689784a1e98',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7cb79ac248ec9ef87649981da2c7168531816d3c0afe3b81e32b36c78d54b5bc.mp3', 862, '2026-09-14 13:42:04.579382', '458c1db1786ec57018d6070f8991d0e28130ceb8e3440391b873fd79ec9dbe06', 'validated', '{"audio_key":"7cb79ac248ec9ef87649981da2c7168531816d3c0afe3b81e32b36c78d54b5bc","entity_key":"lx_my_name_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"458c1db1786ec57018d6070f8991d0e28130ceb8e3440391b873fd79ec9dbe06","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7cb79ac248ec9ef87649981da2c7168531816d3c0afe3b81e32b36c78d54b5bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_05 -> audio/generated/ko-KR/lexical/7cb79ac248ec9ef87649981da2c7168531816d3c0afe3b81e32b36c78d54b5bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a7e781f2-8ac7-59a2-a0da-20a1dcebc8f7', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0b05af6c0b14d6e70820b8e7f7effa749fdd270eac989b8c0b81f689784a1e98'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33279f3a-40a9-5f8e-be9a-8db0c03f4940', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a7e781f2-8ac7-59a2-a0da-20a1dcebc8f7', 1), '0b05af6c0b14d6e70820b8e7f7effa749fdd270eac989b8c0b81f689784a1e98',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7cb79ac248ec9ef87649981da2c7168531816d3c0afe3b81e32b36c78d54b5bc.mp3', 862, '2026-09-14 13:42:04.579382', '458c1db1786ec57018d6070f8991d0e28130ceb8e3440391b873fd79ec9dbe06', 'validated', '{"audio_key":"7cb79ac248ec9ef87649981da2c7168531816d3c0afe3b81e32b36c78d54b5bc","entity_key":"wf_my_name_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"458c1db1786ec57018d6070f8991d0e28130ceb8e3440391b873fd79ec9dbe06","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7cb79ac248ec9ef87649981da2c7168531816d3c0afe3b81e32b36c78d54b5bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_how_are_you_02 -> audio/generated/ko-KR/lexical/7fa8b6fcbbd866bc4122e287d57229c225acb20a713f96ceabffe1f8149716ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('234892c8-4f0b-5d53-bc4b-e0178bb0e8d5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_how_are_you_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a677ef57c964e04dd622f592996092e23fe6167f440c42e1c28fbf59da01e790'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ff0fcbe-498e-5960-a54d-9f513bee8e72', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('234892c8-4f0b-5d53-bc4b-e0178bb0e8d5', 1), 'a677ef57c964e04dd622f592996092e23fe6167f440c42e1c28fbf59da01e790',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7fa8b6fcbbd866bc4122e287d57229c225acb20a713f96ceabffe1f8149716ad.mp3', 1280, '2026-09-14 13:42:05.591501', '67fd98b2ef7b9b233514b9ea0e4ba33fa36be899652b6f0e0cf1c09150a03efd', 'validated', '{"audio_key":"7fa8b6fcbbd866bc4122e287d57229c225acb20a713f96ceabffe1f8149716ad","entity_key":"lx_how_are_you_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"67fd98b2ef7b9b233514b9ea0e4ba33fa36be899652b6f0e0cf1c09150a03efd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7fa8b6fcbbd866bc4122e287d57229c225acb20a713f96ceabffe1f8149716ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_how_are_you_02 -> audio/generated/ko-KR/lexical/7fa8b6fcbbd866bc4122e287d57229c225acb20a713f96ceabffe1f8149716ad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('426a1960-acbd-5a30-8726-18b4ccaa839d', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_how_are_you_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a677ef57c964e04dd622f592996092e23fe6167f440c42e1c28fbf59da01e790'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('40404675-e95b-5d80-82a2-d90da0873b07', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('426a1960-acbd-5a30-8726-18b4ccaa839d', 1), 'a677ef57c964e04dd622f592996092e23fe6167f440c42e1c28fbf59da01e790',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7fa8b6fcbbd866bc4122e287d57229c225acb20a713f96ceabffe1f8149716ad.mp3', 1280, '2026-09-14 13:42:05.591501', '67fd98b2ef7b9b233514b9ea0e4ba33fa36be899652b6f0e0cf1c09150a03efd', 'validated', '{"audio_key":"7fa8b6fcbbd866bc4122e287d57229c225acb20a713f96ceabffe1f8149716ad","entity_key":"wf_how_are_you_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"67fd98b2ef7b9b233514b9ea0e4ba33fa36be899652b6f0e0cf1c09150a03efd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7fa8b6fcbbd866bc4122e287d57229c225acb20a713f96ceabffe1f8149716ad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_words_02 -> audio/generated/ko-KR/lexical/80872c87bb898cd55222d765f9f5ccf6ed0a6b88352a1c0030c7717f0c8b71d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('aaa0a7a5-f63c-5aa3-8c45-eceff8f309f3', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d3815f2e8ff35e316cf709d803c4ef111a0fbc21d8438a4c73eda743cd8a342'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('80181c54-bf93-5637-941a-d4802ff17a12', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('aaa0a7a5-f63c-5aa3-8c45-eceff8f309f3', 1), '9d3815f2e8ff35e316cf709d803c4ef111a0fbc21d8438a4c73eda743cd8a342',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/80872c87bb898cd55222d765f9f5ccf6ed0a6b88352a1c0030c7717f0c8b71d3.mp3', 1384, '2026-09-14 13:42:06.600114', 'b10734d49eaad8688cd7de128398b2a5ae7d53cfdde5268df56604b4b1967c71', 'validated', '{"audio_key":"80872c87bb898cd55222d765f9f5ccf6ed0a6b88352a1c0030c7717f0c8b71d3","entity_key":"lx_polite_words_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b10734d49eaad8688cd7de128398b2a5ae7d53cfdde5268df56604b4b1967c71","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/80872c87bb898cd55222d765f9f5ccf6ed0a6b88352a1c0030c7717f0c8b71d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_words_02 -> audio/generated/ko-KR/lexical/80872c87bb898cd55222d765f9f5ccf6ed0a6b88352a1c0030c7717f0c8b71d3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8206e0f3-075c-512d-b621-778cc61400cf', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9d3815f2e8ff35e316cf709d803c4ef111a0fbc21d8438a4c73eda743cd8a342'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b84a9a1d-b7cb-591e-998b-acf7d90d4ecc', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8206e0f3-075c-512d-b621-778cc61400cf', 1), '9d3815f2e8ff35e316cf709d803c4ef111a0fbc21d8438a4c73eda743cd8a342',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/80872c87bb898cd55222d765f9f5ccf6ed0a6b88352a1c0030c7717f0c8b71d3.mp3', 1384, '2026-09-14 13:42:06.600114', 'b10734d49eaad8688cd7de128398b2a5ae7d53cfdde5268df56604b4b1967c71', 'validated', '{"audio_key":"80872c87bb898cd55222d765f9f5ccf6ed0a6b88352a1c0030c7717f0c8b71d3","entity_key":"wf_polite_words_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b10734d49eaad8688cd7de128398b2a5ae7d53cfdde5268df56604b4b1967c71","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/80872c87bb898cd55222d765f9f5ccf6ed0a6b88352a1c0030c7717f0c8b71d3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_03 -> audio/generated/ko-KR/lexical/842826f002589777ecc28c12b7d9cf93735543086a7d8d104e9ddf994b2ba469.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3807f6a3-b14b-58ad-998f-09db4ac2d4f9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba928dd573a2db9e75799c93457027aec2147c652baa2070364af4ea5aa1fed1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0b6a4b11-ebb0-5d5c-af20-d846dd3fa932', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3807f6a3-b14b-58ad-998f-09db4ac2d4f9', 1), 'ba928dd573a2db9e75799c93457027aec2147c652baa2070364af4ea5aa1fed1',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/842826f002589777ecc28c12b7d9cf93735543086a7d8d104e9ddf994b2ba469.mp3', 1018, '2026-09-14 13:42:07.568799', '7997c529edb9424d99c7dfea02ed2634e23a320358315df520506cfb72835055', 'validated', '{"audio_key":"842826f002589777ecc28c12b7d9cf93735543086a7d8d104e9ddf994b2ba469","entity_key":"lx_first_objects_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7997c529edb9424d99c7dfea02ed2634e23a320358315df520506cfb72835055","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/842826f002589777ecc28c12b7d9cf93735543086a7d8d104e9ddf994b2ba469.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_03 -> audio/generated/ko-KR/lexical/842826f002589777ecc28c12b7d9cf93735543086a7d8d104e9ddf994b2ba469.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d97013f6-1668-5028-8c6e-d1a5daa50233', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ba928dd573a2db9e75799c93457027aec2147c652baa2070364af4ea5aa1fed1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3fd8938-30f4-5877-a15e-9c6a046b82c6', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d97013f6-1668-5028-8c6e-d1a5daa50233', 1), 'ba928dd573a2db9e75799c93457027aec2147c652baa2070364af4ea5aa1fed1',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/842826f002589777ecc28c12b7d9cf93735543086a7d8d104e9ddf994b2ba469.mp3', 1018, '2026-09-14 13:42:07.568799', '7997c529edb9424d99c7dfea02ed2634e23a320358315df520506cfb72835055', 'validated', '{"audio_key":"842826f002589777ecc28c12b7d9cf93735543086a7d8d104e9ddf994b2ba469","entity_key":"wf_first_objects_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7997c529edb9424d99c7dfea02ed2634e23a320358315df520506cfb72835055","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/842826f002589777ecc28c12b7d9cf93735543086a7d8d104e9ddf994b2ba469.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_01 -> audio/generated/ko-KR/lexical/88d7c2dbbf7df57b6a4284501c47bac59ae8f347d4b7b4c2c46db9438a7a6d26.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('abf66111-3b68-5f45-8ec1-1f7a13e69848', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c68318e352971113645cbc72861e1ec23f48d5baa5f9b405fed9dddca893eb4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('33929614-b9f7-5194-b2fd-e151c0a2391f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('abf66111-3b68-5f45-8ec1-1f7a13e69848', 1), '2c68318e352971113645cbc72861e1ec23f48d5baa5f9b405fed9dddca893eb4',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/88d7c2dbbf7df57b6a4284501c47bac59ae8f347d4b7b4c2c46db9438a7a6d26.mp3', 1253, '2026-09-14 13:42:08.543460', '168f32af9546ac9be8404a5544bb8dab37b196cae9f4d9d92d88ce053ce17a2e', 'validated', '{"audio_key":"88d7c2dbbf7df57b6a4284501c47bac59ae8f347d4b7b4c2c46db9438a7a6d26","entity_key":"lx_first_greetings_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"168f32af9546ac9be8404a5544bb8dab37b196cae9f4d9d92d88ce053ce17a2e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/88d7c2dbbf7df57b6a4284501c47bac59ae8f347d4b7b4c2c46db9438a7a6d26.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_01 -> audio/generated/ko-KR/lexical/88d7c2dbbf7df57b6a4284501c47bac59ae8f347d4b7b4c2c46db9438a7a6d26.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0011bb79-30e7-52a6-9a0f-8ec59ed1c357', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2c68318e352971113645cbc72861e1ec23f48d5baa5f9b405fed9dddca893eb4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('267f4e02-bfb2-5525-b8e8-b0604451046f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0011bb79-30e7-52a6-9a0f-8ec59ed1c357', 1), '2c68318e352971113645cbc72861e1ec23f48d5baa5f9b405fed9dddca893eb4',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/88d7c2dbbf7df57b6a4284501c47bac59ae8f347d4b7b4c2c46db9438a7a6d26.mp3', 1253, '2026-09-14 13:42:08.543460', '168f32af9546ac9be8404a5544bb8dab37b196cae9f4d9d92d88ce053ce17a2e', 'validated', '{"audio_key":"88d7c2dbbf7df57b6a4284501c47bac59ae8f347d4b7b4c2c46db9438a7a6d26","entity_key":"wf_first_greetings_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"168f32af9546ac9be8404a5544bb8dab37b196cae9f4d9d92d88ce053ce17a2e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/88d7c2dbbf7df57b6a4284501c47bac59ae8f347d4b7b4c2c46db9438a7a6d26.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_01 -> audio/generated/ko-KR/lexical/917a4257b8e6f1334dafcdd1b6dd8f3d87dca0de2e5831fffcffa0820aed9ef4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6891955a-14d2-59cd-a474-0b8052cfc578', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d692ebb8eba98e28650d7c768b7200eef6fe0558fe81a4b0e9d16f3e14c0a9d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a673b87-5c3b-5896-aaaa-c101b9b57da2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6891955a-14d2-59cd-a474-0b8052cfc578', 1), '0d692ebb8eba98e28650d7c768b7200eef6fe0558fe81a4b0e9d16f3e14c0a9d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/917a4257b8e6f1334dafcdd1b6dd8f3d87dca0de2e5831fffcffa0820aed9ef4.mp3', 1018, '2026-09-14 13:42:09.522548', '1cec10773bd03909c4f8a814c098257117c8978849cce62ffbef3b4fd532aa96', 'validated', '{"audio_key":"917a4257b8e6f1334dafcdd1b6dd8f3d87dca0de2e5831fffcffa0820aed9ef4","entity_key":"lx_survival_words_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1cec10773bd03909c4f8a814c098257117c8978849cce62ffbef3b4fd532aa96","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/917a4257b8e6f1334dafcdd1b6dd8f3d87dca0de2e5831fffcffa0820aed9ef4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_01 -> audio/generated/ko-KR/lexical/917a4257b8e6f1334dafcdd1b6dd8f3d87dca0de2e5831fffcffa0820aed9ef4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ffee9ae0-6fc7-5412-93be-1462959ba583', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0d692ebb8eba98e28650d7c768b7200eef6fe0558fe81a4b0e9d16f3e14c0a9d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a1cb422e-ebee-5fef-be06-ea88e1599293', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ffee9ae0-6fc7-5412-93be-1462959ba583', 1), '0d692ebb8eba98e28650d7c768b7200eef6fe0558fe81a4b0e9d16f3e14c0a9d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/917a4257b8e6f1334dafcdd1b6dd8f3d87dca0de2e5831fffcffa0820aed9ef4.mp3', 1018, '2026-09-14 13:42:09.522548', '1cec10773bd03909c4f8a814c098257117c8978849cce62ffbef3b4fd532aa96', 'validated', '{"audio_key":"917a4257b8e6f1334dafcdd1b6dd8f3d87dca0de2e5831fffcffa0820aed9ef4","entity_key":"wf_survival_words_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1cec10773bd03909c4f8a814c098257117c8978849cce62ffbef3b4fd532aa96","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/917a4257b8e6f1334dafcdd1b6dd8f3d87dca0de2e5831fffcffa0820aed9ef4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_01 -> audio/generated/ko-KR/lexical/9684446bda1bef2ecf3a29d2fe8e87e3f53598b326d69c28b503d64d354b4907.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b61401ba-8585-5a8a-a206-5d1e4bcff21e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e274ebad4675928ad87c90dddc9874a98e0cdc3347c5f72f8a8ac7ba934856c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fcc22fe9-ba71-5dae-8ace-b3a0878d751f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b61401ba-8585-5a8a-a206-5d1e4bcff21e', 1), '2e274ebad4675928ad87c90dddc9874a98e0cdc3347c5f72f8a8ac7ba934856c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/9684446bda1bef2ecf3a29d2fe8e87e3f53598b326d69c28b503d64d354b4907.mp3', 862, '2026-09-14 13:42:10.461831', 'a016c2fac9f2ad4dd4218e141155fd6bcccad4ebfda5d8d3b3545c2fa6fbaf5a', 'validated', '{"audio_key":"9684446bda1bef2ecf3a29d2fe8e87e3f53598b326d69c28b503d64d354b4907","entity_key":"lx_first_conversation_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a016c2fac9f2ad4dd4218e141155fd6bcccad4ebfda5d8d3b3545c2fa6fbaf5a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/9684446bda1bef2ecf3a29d2fe8e87e3f53598b326d69c28b503d64d354b4907.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_01 -> audio/generated/ko-KR/lexical/9684446bda1bef2ecf3a29d2fe8e87e3f53598b326d69c28b503d64d354b4907.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2c376ef2-a659-5e89-8e43-cb1a7e5c4eba', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e274ebad4675928ad87c90dddc9874a98e0cdc3347c5f72f8a8ac7ba934856c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9f5b0b2d-c74f-5a6b-b27c-338347d8fa0d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2c376ef2-a659-5e89-8e43-cb1a7e5c4eba', 1), '2e274ebad4675928ad87c90dddc9874a98e0cdc3347c5f72f8a8ac7ba934856c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/9684446bda1bef2ecf3a29d2fe8e87e3f53598b326d69c28b503d64d354b4907.mp3', 862, '2026-09-14 13:42:10.461831', 'a016c2fac9f2ad4dd4218e141155fd6bcccad4ebfda5d8d3b3545c2fa6fbaf5a', 'validated', '{"audio_key":"9684446bda1bef2ecf3a29d2fe8e87e3f53598b326d69c28b503d64d354b4907","entity_key":"wf_first_conversation_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a016c2fac9f2ad4dd4218e141155fd6bcccad4ebfda5d8d3b3545c2fa6fbaf5a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/9684446bda1bef2ecf3a29d2fe8e87e3f53598b326d69c28b503d64d354b4907.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_hangul_basics_01 -> audio/generated/ko-KR/lexical/9693b62e73601ea8e5fba1891d2b738f40d6c20f91435bbdfe8a4dcab0ca0566.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('687cb14c-a55d-5f0f-957e-a71c7f4b3b24', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_hangul_basics_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fcae0b0f80045e9a25c6d1a52cf03370e9992654f8e00b2a49bda476a6029156'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d458f67-be3c-53b7-a75c-81f36bc81f47', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('687cb14c-a55d-5f0f-957e-a71c7f4b3b24', 1), 'fcae0b0f80045e9a25c6d1a52cf03370e9992654f8e00b2a49bda476a6029156',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/9693b62e73601ea8e5fba1891d2b738f40d6c20f91435bbdfe8a4dcab0ca0566.mp3', 783, '2026-09-14 13:42:11.504105', '214505a25c4c76f81a1123602ef3b185b50ceeb4a4d964921c351acb0dcb51da', 'validated', '{"audio_key":"9693b62e73601ea8e5fba1891d2b738f40d6c20f91435bbdfe8a4dcab0ca0566","entity_key":"lx_hangul_basics_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"214505a25c4c76f81a1123602ef3b185b50ceeb4a4d964921c351acb0dcb51da","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/9693b62e73601ea8e5fba1891d2b738f40d6c20f91435bbdfe8a4dcab0ca0566.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_hangul_basics_01 -> audio/generated/ko-KR/lexical/9693b62e73601ea8e5fba1891d2b738f40d6c20f91435bbdfe8a4dcab0ca0566.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8c695388-0d74-5aed-8fc8-27ce152ea274', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_hangul_basics_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fcae0b0f80045e9a25c6d1a52cf03370e9992654f8e00b2a49bda476a6029156'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc36fd0a-cc75-5ff5-89a4-35f17340a18f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8c695388-0d74-5aed-8fc8-27ce152ea274', 1), 'fcae0b0f80045e9a25c6d1a52cf03370e9992654f8e00b2a49bda476a6029156',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/9693b62e73601ea8e5fba1891d2b738f40d6c20f91435bbdfe8a4dcab0ca0566.mp3', 783, '2026-09-14 13:42:11.504105', '214505a25c4c76f81a1123602ef3b185b50ceeb4a4d964921c351acb0dcb51da', 'validated', '{"audio_key":"9693b62e73601ea8e5fba1891d2b738f40d6c20f91435bbdfe8a4dcab0ca0566","entity_key":"wf_hangul_basics_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"214505a25c4c76f81a1123602ef3b185b50ceeb4a4d964921c351acb0dcb51da","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/9693b62e73601ea8e5fba1891d2b738f40d6c20f91435bbdfe8a4dcab0ca0566.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_how_are_you_06 -> audio/generated/ko-KR/lexical/a3eebf31bcc8bb284d7cd6f288029a430b185ab9d979499540994aabce738356.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('09b7f7fe-62cf-5527-9a14-f89646291d83', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_how_are_you_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df159f47a890ff65503985e485398a14711e34b04fb0fa285e036a277910375a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fbf39a93-7438-58b0-9eda-2d27f20f92c8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('09b7f7fe-62cf-5527-9a14-f89646291d83', 1), 'df159f47a890ff65503985e485398a14711e34b04fb0fa285e036a277910375a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a3eebf31bcc8bb284d7cd6f288029a430b185ab9d979499540994aabce738356.mp3', 966, '2026-09-14 13:42:12.525686', 'e41bd4f9230264ad5560fe84bdd795b0187d5c94f798d2506aa2f823800664c9', 'validated', '{"audio_key":"a3eebf31bcc8bb284d7cd6f288029a430b185ab9d979499540994aabce738356","entity_key":"lx_how_are_you_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e41bd4f9230264ad5560fe84bdd795b0187d5c94f798d2506aa2f823800664c9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a3eebf31bcc8bb284d7cd6f288029a430b185ab9d979499540994aabce738356.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_how_are_you_06 -> audio/generated/ko-KR/lexical/a3eebf31bcc8bb284d7cd6f288029a430b185ab9d979499540994aabce738356.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('98ef242b-86fa-59e2-ac79-5a24c4821349', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_how_are_you_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'df159f47a890ff65503985e485398a14711e34b04fb0fa285e036a277910375a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8a7a5aac-0e91-50ff-9755-fcc1c38e7219', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('98ef242b-86fa-59e2-ac79-5a24c4821349', 1), 'df159f47a890ff65503985e485398a14711e34b04fb0fa285e036a277910375a',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a3eebf31bcc8bb284d7cd6f288029a430b185ab9d979499540994aabce738356.mp3', 966, '2026-09-14 13:42:12.525686', 'e41bd4f9230264ad5560fe84bdd795b0187d5c94f798d2506aa2f823800664c9', 'validated', '{"audio_key":"a3eebf31bcc8bb284d7cd6f288029a430b185ab9d979499540994aabce738356","entity_key":"wf_how_are_you_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e41bd4f9230264ad5560fe84bdd795b0187d5c94f798d2506aa2f823800664c9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a3eebf31bcc8bb284d7cd6f288029a430b185ab9d979499540994aabce738356.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_01 -> audio/generated/ko-KR/lexical/a6b164f5be7f5623ea29f51ff785ee857cee7acebd8aa19d4ede338016fda81c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e058ee5f-5352-5738-904d-8f1b086df7a5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b94e182b9a95d9dc23294428515515c68a59d1d634e19d301cdc19e9a9516fed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4cbcbeee-e40c-5fb8-b5d6-9cde1c0c581b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e058ee5f-5352-5738-904d-8f1b086df7a5', 1), 'b94e182b9a95d9dc23294428515515c68a59d1d634e19d301cdc19e9a9516fed',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a6b164f5be7f5623ea29f51ff785ee857cee7acebd8aa19d4ede338016fda81c.mp3', 731, '2026-09-14 13:42:13.460004', '5b6a2a922a865794b7e136042da07e39e7e51c9925dc9b42e74a3125d45b249a', 'validated', '{"audio_key":"a6b164f5be7f5623ea29f51ff785ee857cee7acebd8aa19d4ede338016fda81c","entity_key":"lx_my_name_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5b6a2a922a865794b7e136042da07e39e7e51c9925dc9b42e74a3125d45b249a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a6b164f5be7f5623ea29f51ff785ee857cee7acebd8aa19d4ede338016fda81c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_01 -> audio/generated/ko-KR/lexical/a6b164f5be7f5623ea29f51ff785ee857cee7acebd8aa19d4ede338016fda81c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d6ef9115-776f-59be-8085-f14ac756b841', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b94e182b9a95d9dc23294428515515c68a59d1d634e19d301cdc19e9a9516fed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2983ea63-efb2-5c5f-8a24-7ce2551137e9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d6ef9115-776f-59be-8085-f14ac756b841', 1), 'b94e182b9a95d9dc23294428515515c68a59d1d634e19d301cdc19e9a9516fed',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a6b164f5be7f5623ea29f51ff785ee857cee7acebd8aa19d4ede338016fda81c.mp3', 731, '2026-09-14 13:42:13.460004', '5b6a2a922a865794b7e136042da07e39e7e51c9925dc9b42e74a3125d45b249a', 'validated', '{"audio_key":"a6b164f5be7f5623ea29f51ff785ee857cee7acebd8aa19d4ede338016fda81c","entity_key":"wf_my_name_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5b6a2a922a865794b7e136042da07e39e7e51c9925dc9b42e74a3125d45b249a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a6b164f5be7f5623ea29f51ff785ee857cee7acebd8aa19d4ede338016fda81c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_how_are_you_03 -> audio/generated/ko-KR/lexical/a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8f5e3648-3b73-58b2-a88c-198d3abf39a0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_how_are_you_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db585874cabc5ce89a9a72e3cdb0a3c6c5d238c6c7d78c721e63aa3941e540e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a670b787-9c0b-51cb-a719-e7f02bfdd574', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8f5e3648-3b73-58b2-a88c-198d3abf39a0', 1), 'db585874cabc5ce89a9a72e3cdb0a3c6c5d238c6c7d78c721e63aa3941e540e1',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f.mp3', 1201, '2026-09-14 13:42:14.459845', 'ca6af5a62a81c01bef1811755f6addfaf41b61bee414e413ba588ed17609c0c6', 'validated', '{"audio_key":"a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f","entity_key":"lx_how_are_you_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ca6af5a62a81c01bef1811755f6addfaf41b61bee414e413ba588ed17609c0c6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_how_are_you_03 -> audio/generated/ko-KR/lexical/a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e0e3c0a2-7f86-5af8-b3de-8a3e7ca8f7a7', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_how_are_you_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db585874cabc5ce89a9a72e3cdb0a3c6c5d238c6c7d78c721e63aa3941e540e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f0c6f4a-8d9a-5317-91fc-6e7070455a80', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e0e3c0a2-7f86-5af8-b3de-8a3e7ca8f7a7', 1), 'db585874cabc5ce89a9a72e3cdb0a3c6c5d238c6c7d78c721e63aa3941e540e1',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f.mp3', 1201, '2026-09-14 13:42:14.459845', 'ca6af5a62a81c01bef1811755f6addfaf41b61bee414e413ba588ed17609c0c6', 'validated', '{"audio_key":"a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f","entity_key":"wf_how_are_you_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ca6af5a62a81c01bef1811755f6addfaf41b61bee414e413ba588ed17609c0c6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_words_05 -> audio/generated/ko-KR/lexical/a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8f5e3648-3b73-58b2-a88c-198d3abf39a0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_words_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db585874cabc5ce89a9a72e3cdb0a3c6c5d238c6c7d78c721e63aa3941e540e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a670b787-9c0b-51cb-a719-e7f02bfdd574', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8f5e3648-3b73-58b2-a88c-198d3abf39a0', 1), 'db585874cabc5ce89a9a72e3cdb0a3c6c5d238c6c7d78c721e63aa3941e540e1',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f.mp3', 1201, '2026-09-14 13:42:14.459845', 'ca6af5a62a81c01bef1811755f6addfaf41b61bee414e413ba588ed17609c0c6', 'validated', '{"audio_key":"a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f","entity_key":"lx_polite_words_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ca6af5a62a81c01bef1811755f6addfaf41b61bee414e413ba588ed17609c0c6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_words_05 -> audio/generated/ko-KR/lexical/a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('463fab02-b53d-5f8a-b557-e39474ad4d45', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_words_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db585874cabc5ce89a9a72e3cdb0a3c6c5d238c6c7d78c721e63aa3941e540e1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d70fdfa1-3933-5339-991c-bc2514eada38', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('463fab02-b53d-5f8a-b557-e39474ad4d45', 1), 'db585874cabc5ce89a9a72e3cdb0a3c6c5d238c6c7d78c721e63aa3941e540e1',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f.mp3', 1201, '2026-09-14 13:42:14.459845', 'ca6af5a62a81c01bef1811755f6addfaf41b61bee414e413ba588ed17609c0c6', 'validated', '{"audio_key":"a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f","entity_key":"wf_polite_words_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ca6af5a62a81c01bef1811755f6addfaf41b61bee414e413ba588ed17609c0c6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_how_are_you_04 -> audio/generated/ko-KR/lexical/acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('acb5d024-6dad-5e8f-9ac2-e1dc5ebafa2c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_how_are_you_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f7c2c9d4d32045f28cdb7d19afd6195cc59d2eb9a19a267a059daf496c27ed3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb0800c1-3167-5146-950d-eec9c7ce4324', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('acb5d024-6dad-5e8f-9ac2-e1dc5ebafa2c', 1), '3f7c2c9d4d32045f28cdb7d19afd6195cc59d2eb9a19a267a059daf496c27ed3',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06.mp3', 1280, '2026-09-14 13:42:15.553087', '8181a447734c0158b335c46a35fd057339551ab68e65e6c0b55ff87074b6a565', 'validated', '{"audio_key":"acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06","entity_key":"lx_how_are_you_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8181a447734c0158b335c46a35fd057339551ab68e65e6c0b55ff87074b6a565","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_how_are_you_04 -> audio/generated/ko-KR/lexical/acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('402cf3c8-6a74-533c-9c07-96c6d3a546e4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_how_are_you_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f7c2c9d4d32045f28cdb7d19afd6195cc59d2eb9a19a267a059daf496c27ed3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('29196ca7-2d36-59b4-a64a-9a936177ad9c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('402cf3c8-6a74-533c-9c07-96c6d3a546e4', 1), '3f7c2c9d4d32045f28cdb7d19afd6195cc59d2eb9a19a267a059daf496c27ed3',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06.mp3', 1280, '2026-09-14 13:42:15.553087', '8181a447734c0158b335c46a35fd057339551ab68e65e6c0b55ff87074b6a565', 'validated', '{"audio_key":"acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06","entity_key":"wf_how_are_you_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8181a447734c0158b335c46a35fd057339551ab68e65e6c0b55ff87074b6a565","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_words_03 -> audio/generated/ko-KR/lexical/acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('acb5d024-6dad-5e8f-9ac2-e1dc5ebafa2c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f7c2c9d4d32045f28cdb7d19afd6195cc59d2eb9a19a267a059daf496c27ed3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb0800c1-3167-5146-950d-eec9c7ce4324', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('acb5d024-6dad-5e8f-9ac2-e1dc5ebafa2c', 1), '3f7c2c9d4d32045f28cdb7d19afd6195cc59d2eb9a19a267a059daf496c27ed3',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06.mp3', 1280, '2026-09-14 13:42:15.553087', '8181a447734c0158b335c46a35fd057339551ab68e65e6c0b55ff87074b6a565', 'validated', '{"audio_key":"acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06","entity_key":"lx_polite_words_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8181a447734c0158b335c46a35fd057339551ab68e65e6c0b55ff87074b6a565","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_words_03 -> audio/generated/ko-KR/lexical/acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e8d445f5-c22b-5457-aeae-a6f3378d061e', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f7c2c9d4d32045f28cdb7d19afd6195cc59d2eb9a19a267a059daf496c27ed3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01534374-bf06-52ce-9f25-c0607ebc143e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e8d445f5-c22b-5457-aeae-a6f3378d061e', 1), '3f7c2c9d4d32045f28cdb7d19afd6195cc59d2eb9a19a267a059daf496c27ed3',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06.mp3', 1280, '2026-09-14 13:42:15.553087', '8181a447734c0158b335c46a35fd057339551ab68e65e6c0b55ff87074b6a565', 'validated', '{"audio_key":"acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06","entity_key":"wf_polite_words_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8181a447734c0158b335c46a35fd057339551ab68e65e6c0b55ff87074b6a565","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_05 -> audio/generated/ko-KR/lexical/ad5798d8ccbbbc351daeef13eabf0726a17970e622de3718c09b3adacf650e61.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('fe04eedf-7790-5c9c-bf84-578c5e8035c6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c0ccf82e09f1e8734531bfc1e37cb7ba0e061c3caa131f23614fc27e9078759f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ffd36e0-2166-533a-bb2a-32bdb07d373f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('fe04eedf-7790-5c9c-bf84-578c5e8035c6', 1), 'c0ccf82e09f1e8734531bfc1e37cb7ba0e061c3caa131f23614fc27e9078759f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ad5798d8ccbbbc351daeef13eabf0726a17970e622de3718c09b3adacf650e61.mp3', 653, '2026-09-14 13:42:16.488861', '50da35af827512218c0c215926b81affdd9bf2fe23e05c73db3b6a8b0873a9bf', 'validated', '{"audio_key":"ad5798d8ccbbbc351daeef13eabf0726a17970e622de3718c09b3adacf650e61","entity_key":"lx_numbers_0_10_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"50da35af827512218c0c215926b81affdd9bf2fe23e05c73db3b6a8b0873a9bf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ad5798d8ccbbbc351daeef13eabf0726a17970e622de3718c09b3adacf650e61.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_05 -> audio/generated/ko-KR/lexical/ad5798d8ccbbbc351daeef13eabf0726a17970e622de3718c09b3adacf650e61.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1b4c35c9-160a-5a28-bf3a-9a4ea5aedb64', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c0ccf82e09f1e8734531bfc1e37cb7ba0e061c3caa131f23614fc27e9078759f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c76ffab3-209e-5ff6-8986-b03859eaaf9a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1b4c35c9-160a-5a28-bf3a-9a4ea5aedb64', 1), 'c0ccf82e09f1e8734531bfc1e37cb7ba0e061c3caa131f23614fc27e9078759f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ad5798d8ccbbbc351daeef13eabf0726a17970e622de3718c09b3adacf650e61.mp3', 653, '2026-09-14 13:42:16.488861', '50da35af827512218c0c215926b81affdd9bf2fe23e05c73db3b6a8b0873a9bf', 'validated', '{"audio_key":"ad5798d8ccbbbc351daeef13eabf0726a17970e622de3718c09b3adacf650e61","entity_key":"wf_numbers_0_10_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"50da35af827512218c0c215926b81affdd9bf2fe23e05c73db3b6a8b0873a9bf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ad5798d8ccbbbc351daeef13eabf0726a17970e622de3718c09b3adacf650e61.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_02 -> audio/generated/ko-KR/lexical/ae646577489db57fa5e3b01de909b8b7878c5d6e0393ea641602d9130dcf4721.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('39b380a8-89a2-5f81-9860-4b7eff35b173', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1098bbe54520ab2a367cb44888f829c7bb843cf525e6721b99f022c9953abd4d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0149706e-454c-59fc-919d-eec16cfd6a03', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('39b380a8-89a2-5f81-9860-4b7eff35b173', 1), '1098bbe54520ab2a367cb44888f829c7bb843cf525e6721b99f022c9953abd4d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ae646577489db57fa5e3b01de909b8b7878c5d6e0393ea641602d9130dcf4721.mp3', 783, '2026-09-14 13:42:17.445228', 'd11f5f5e0f674c8f4fa0a4dda611630ed3a326e3682cea98a5f761d1e073dd5e', 'validated', '{"audio_key":"ae646577489db57fa5e3b01de909b8b7878c5d6e0393ea641602d9130dcf4721","entity_key":"lx_first_sounds_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d11f5f5e0f674c8f4fa0a4dda611630ed3a326e3682cea98a5f761d1e073dd5e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ae646577489db57fa5e3b01de909b8b7878c5d6e0393ea641602d9130dcf4721.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_02 -> audio/generated/ko-KR/lexical/ae646577489db57fa5e3b01de909b8b7878c5d6e0393ea641602d9130dcf4721.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6f80134f-796c-59d6-9090-3a4516c26b13', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1098bbe54520ab2a367cb44888f829c7bb843cf525e6721b99f022c9953abd4d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('308173a5-ea41-5226-8228-e578aa5ee8b9', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6f80134f-796c-59d6-9090-3a4516c26b13', 1), '1098bbe54520ab2a367cb44888f829c7bb843cf525e6721b99f022c9953abd4d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ae646577489db57fa5e3b01de909b8b7878c5d6e0393ea641602d9130dcf4721.mp3', 783, '2026-09-14 13:42:17.445228', 'd11f5f5e0f674c8f4fa0a4dda611630ed3a326e3682cea98a5f761d1e073dd5e', 'validated', '{"audio_key":"ae646577489db57fa5e3b01de909b8b7878c5d6e0393ea641602d9130dcf4721","entity_key":"wf_first_sounds_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d11f5f5e0f674c8f4fa0a4dda611630ed3a326e3682cea98a5f761d1e073dd5e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ae646577489db57fa5e3b01de909b8b7878c5d6e0393ea641602d9130dcf4721.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_05 -> audio/generated/ko-KR/lexical/b130b1226cff697a79e7930f3800c9931da0a2608a30fee78dad62ccd0e3f2af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('54703944-e35b-5f0c-abb4-c1ec9f9e4e37', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dcb937f72e0bb79fdc4e29993b935fba311ca7779b8011ddd6d1cc5fa0ade3d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6bee3ad-6555-5479-9380-b316ffd37f8a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('54703944-e35b-5f0c-abb4-c1ec9f9e4e37', 1), 'dcb937f72e0bb79fdc4e29993b935fba311ca7779b8011ddd6d1cc5fa0ade3d3',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b130b1226cff697a79e7930f3800c9931da0a2608a30fee78dad62ccd0e3f2af.mp3', 1071, '2026-09-14 13:42:18.409660', '352cd5ea19d307b841a072a8d25a84ab21ea014923c366c4f7fc60febce8e112', 'validated', '{"audio_key":"b130b1226cff697a79e7930f3800c9931da0a2608a30fee78dad62ccd0e3f2af","entity_key":"lx_survival_words_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"352cd5ea19d307b841a072a8d25a84ab21ea014923c366c4f7fc60febce8e112","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b130b1226cff697a79e7930f3800c9931da0a2608a30fee78dad62ccd0e3f2af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_05 -> audio/generated/ko-KR/lexical/b130b1226cff697a79e7930f3800c9931da0a2608a30fee78dad62ccd0e3f2af.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('238b1fa5-f051-5a9b-82a9-c59498078aee', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dcb937f72e0bb79fdc4e29993b935fba311ca7779b8011ddd6d1cc5fa0ade3d3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4b6f1408-d18b-52af-8cc4-100620a77d58', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('238b1fa5-f051-5a9b-82a9-c59498078aee', 1), 'dcb937f72e0bb79fdc4e29993b935fba311ca7779b8011ddd6d1cc5fa0ade3d3',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b130b1226cff697a79e7930f3800c9931da0a2608a30fee78dad62ccd0e3f2af.mp3', 1071, '2026-09-14 13:42:18.409660', '352cd5ea19d307b841a072a8d25a84ab21ea014923c366c4f7fc60febce8e112', 'validated', '{"audio_key":"b130b1226cff697a79e7930f3800c9931da0a2608a30fee78dad62ccd0e3f2af","entity_key":"wf_survival_words_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"352cd5ea19d307b841a072a8d25a84ab21ea014923c366c4f7fc60febce8e112","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b130b1226cff697a79e7930f3800c9931da0a2608a30fee78dad62ccd0e3f2af.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_06 -> audio/generated/ko-KR/lexical/b34f5e1cffecdcc69efd5e60c838d8022142156fb30db26aebf0344e4fff4609.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9a7600a0-a286-55fc-8ac4-e1ed77e9afa2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8aff11a4aebdccdbf05dad622b0dd2ea6dd440a12edd2e450fa02013743bb007'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('73432ad1-db70-5a36-91b6-40a4485410fe', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9a7600a0-a286-55fc-8ac4-e1ed77e9afa2', 1), '8aff11a4aebdccdbf05dad622b0dd2ea6dd440a12edd2e450fa02013743bb007',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b34f5e1cffecdcc69efd5e60c838d8022142156fb30db26aebf0344e4fff4609.mp3', 914, '2026-09-14 13:42:19.365310', '578cbd14b6a75fff23157056f85923c9fa4232f2c77a7d6edb23a7b415768b18', 'validated', '{"audio_key":"b34f5e1cffecdcc69efd5e60c838d8022142156fb30db26aebf0344e4fff4609","entity_key":"lx_first_conversation_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"578cbd14b6a75fff23157056f85923c9fa4232f2c77a7d6edb23a7b415768b18","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b34f5e1cffecdcc69efd5e60c838d8022142156fb30db26aebf0344e4fff4609.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_06 -> audio/generated/ko-KR/lexical/b34f5e1cffecdcc69efd5e60c838d8022142156fb30db26aebf0344e4fff4609.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('db63d42f-7edb-554d-8180-357fc78401e8', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8aff11a4aebdccdbf05dad622b0dd2ea6dd440a12edd2e450fa02013743bb007'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48ca3da0-0719-5a33-9919-7ba966949de7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('db63d42f-7edb-554d-8180-357fc78401e8', 1), '8aff11a4aebdccdbf05dad622b0dd2ea6dd440a12edd2e450fa02013743bb007',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b34f5e1cffecdcc69efd5e60c838d8022142156fb30db26aebf0344e4fff4609.mp3', 914, '2026-09-14 13:42:19.365310', '578cbd14b6a75fff23157056f85923c9fa4232f2c77a7d6edb23a7b415768b18', 'validated', '{"audio_key":"b34f5e1cffecdcc69efd5e60c838d8022142156fb30db26aebf0344e4fff4609","entity_key":"wf_first_conversation_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"578cbd14b6a75fff23157056f85923c9fa4232f2c77a7d6edb23a7b415768b18","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b34f5e1cffecdcc69efd5e60c838d8022142156fb30db26aebf0344e4fff4609.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_06 -> audio/generated/ko-KR/lexical/bf2246ccedc9fcdf906419be1d3a9c114cbee1fd7d75d63eadbed6829f1996d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a311d381-ffe5-5155-8426-7cbc5510d780', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32c19d84b2e0bd21cf52df078abfc10ce8114331f9cb407d1502b2a5c62aac8c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eddca02d-780c-5ac6-bae9-94a4d95a1879', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a311d381-ffe5-5155-8426-7cbc5510d780', 1), '32c19d84b2e0bd21cf52df078abfc10ce8114331f9cb407d1502b2a5c62aac8c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bf2246ccedc9fcdf906419be1d3a9c114cbee1fd7d75d63eadbed6829f1996d6.mp3', 1619, '2026-09-14 13:42:20.611417', '4b919e04fd6d92be35adcc89f0154893360b7c78fa9a024ef57a9851fcdc2b5f', 'validated', '{"audio_key":"bf2246ccedc9fcdf906419be1d3a9c114cbee1fd7d75d63eadbed6829f1996d6","entity_key":"lx_first_greetings_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4b919e04fd6d92be35adcc89f0154893360b7c78fa9a024ef57a9851fcdc2b5f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bf2246ccedc9fcdf906419be1d3a9c114cbee1fd7d75d63eadbed6829f1996d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_06 -> audio/generated/ko-KR/lexical/bf2246ccedc9fcdf906419be1d3a9c114cbee1fd7d75d63eadbed6829f1996d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7a872e64-22e2-5cf0-960a-2da13044ff59', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '32c19d84b2e0bd21cf52df078abfc10ce8114331f9cb407d1502b2a5c62aac8c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cc82c07e-e6b8-5194-a657-0924ef6105b0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7a872e64-22e2-5cf0-960a-2da13044ff59', 1), '32c19d84b2e0bd21cf52df078abfc10ce8114331f9cb407d1502b2a5c62aac8c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bf2246ccedc9fcdf906419be1d3a9c114cbee1fd7d75d63eadbed6829f1996d6.mp3', 1619, '2026-09-14 13:42:20.611417', '4b919e04fd6d92be35adcc89f0154893360b7c78fa9a024ef57a9851fcdc2b5f', 'validated', '{"audio_key":"bf2246ccedc9fcdf906419be1d3a9c114cbee1fd7d75d63eadbed6829f1996d6","entity_key":"wf_first_greetings_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4b919e04fd6d92be35adcc89f0154893360b7c78fa9a024ef57a9851fcdc2b5f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bf2246ccedc9fcdf906419be1d3a9c114cbee1fd7d75d63eadbed6829f1996d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_05 -> audio/generated/ko-KR/lexical/bf79588b51d9d713db34f7e2968be5aef975643e66f221b405347c483a942c61.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('eb7357cc-3289-5ab1-b974-e5467bbdce7f', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4215a3126661d523ba2fef93507ce53ca9fefb31d0c4d32094e49aff918b60b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('82ab1f66-aa97-59c9-b60e-c5eec4c4a702', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('eb7357cc-3289-5ab1-b974-e5467bbdce7f', 1), 'a4215a3126661d523ba2fef93507ce53ca9fefb31d0c4d32094e49aff918b60b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bf79588b51d9d713db34f7e2968be5aef975643e66f221b405347c483a942c61.mp3', 1097, '2026-09-14 13:42:21.576766', '639e8743f056a26de3ff90e2e97572f228a750b34ccd2f2796981d371ca1fedd', 'validated', '{"audio_key":"bf79588b51d9d713db34f7e2968be5aef975643e66f221b405347c483a942c61","entity_key":"lx_first_objects_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"639e8743f056a26de3ff90e2e97572f228a750b34ccd2f2796981d371ca1fedd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bf79588b51d9d713db34f7e2968be5aef975643e66f221b405347c483a942c61.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_05 -> audio/generated/ko-KR/lexical/bf79588b51d9d713db34f7e2968be5aef975643e66f221b405347c483a942c61.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('980004a8-b06f-5d19-a7f4-8b91b2f67f31', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4215a3126661d523ba2fef93507ce53ca9fefb31d0c4d32094e49aff918b60b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3323c99b-dab9-5795-93e0-447cf13406ec', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('980004a8-b06f-5d19-a7f4-8b91b2f67f31', 1), 'a4215a3126661d523ba2fef93507ce53ca9fefb31d0c4d32094e49aff918b60b',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bf79588b51d9d713db34f7e2968be5aef975643e66f221b405347c483a942c61.mp3', 1097, '2026-09-14 13:42:21.576766', '639e8743f056a26de3ff90e2e97572f228a750b34ccd2f2796981d371ca1fedd', 'validated', '{"audio_key":"bf79588b51d9d713db34f7e2968be5aef975643e66f221b405347c483a942c61","entity_key":"wf_first_objects_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"639e8743f056a26de3ff90e2e97572f228a750b34ccd2f2796981d371ca1fedd","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bf79588b51d9d713db34f7e2968be5aef975643e66f221b405347c483a942c61.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_words_06 -> audio/generated/ko-KR/lexical/c77bd3323f7a670288741a5c8d9150f6b826ed86175d6c3196f9c76e180d929d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3a6f622a-b98a-5be8-b7d7-612bfa4490e5', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_words_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9eb28c45e4e577e49d1315fa2288005b16018a7dda5071153fb37b8f8caa563c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb3d4fb9-4a43-52c8-8540-d1fc62397e91', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3a6f622a-b98a-5be8-b7d7-612bfa4490e5', 1), '9eb28c45e4e577e49d1315fa2288005b16018a7dda5071153fb37b8f8caa563c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/c77bd3323f7a670288741a5c8d9150f6b826ed86175d6c3196f9c76e180d929d.mp3', 1280, '2026-09-14 13:42:22.541122', '56d71db9cfe410bcca8b8efd3e3af19bd63a4c415085cf705578d14a9eeff1e4', 'validated', '{"audio_key":"c77bd3323f7a670288741a5c8d9150f6b826ed86175d6c3196f9c76e180d929d","entity_key":"lx_polite_words_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"56d71db9cfe410bcca8b8efd3e3af19bd63a4c415085cf705578d14a9eeff1e4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/c77bd3323f7a670288741a5c8d9150f6b826ed86175d6c3196f9c76e180d929d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_words_06 -> audio/generated/ko-KR/lexical/c77bd3323f7a670288741a5c8d9150f6b826ed86175d6c3196f9c76e180d929d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c631343d-0cd5-5a15-9f19-52f967e8a213', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_words_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9eb28c45e4e577e49d1315fa2288005b16018a7dda5071153fb37b8f8caa563c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c19e9cd-ab82-5d77-8a88-97baf5a179ac', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c631343d-0cd5-5a15-9f19-52f967e8a213', 1), '9eb28c45e4e577e49d1315fa2288005b16018a7dda5071153fb37b8f8caa563c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/c77bd3323f7a670288741a5c8d9150f6b826ed86175d6c3196f9c76e180d929d.mp3', 1280, '2026-09-14 13:42:22.541122', '56d71db9cfe410bcca8b8efd3e3af19bd63a4c415085cf705578d14a9eeff1e4', 'validated', '{"audio_key":"c77bd3323f7a670288741a5c8d9150f6b826ed86175d6c3196f9c76e180d929d","entity_key":"wf_polite_words_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"56d71db9cfe410bcca8b8efd3e3af19bd63a4c415085cf705578d14a9eeff1e4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/c77bd3323f7a670288741a5c8d9150f6b826ed86175d6c3196f9c76e180d929d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_05 -> audio/generated/ko-KR/lexical/cd11ad13a18103df479c8f9aaaf2ccefe96d8aab416a92ce0996303594ece1da.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7f2e9aa3-4248-55a3-a88e-1a596ed8e5f6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc7dc158d915635d6cbc80154200a98efa76c52a2b05fc15b64130c184ea9596'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff07c957-6772-5f23-a8f7-bba077d2b830', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7f2e9aa3-4248-55a3-a88e-1a596ed8e5f6', 1), 'fc7dc158d915635d6cbc80154200a98efa76c52a2b05fc15b64130c184ea9596',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/cd11ad13a18103df479c8f9aaaf2ccefe96d8aab416a92ce0996303594ece1da.mp3', 966, '2026-09-14 13:42:23.489606', '7791b5a4f5bbb1fbb4adf08b197922bd6bdef5d77b6341ccf49ac6962a43d768', 'validated', '{"audio_key":"cd11ad13a18103df479c8f9aaaf2ccefe96d8aab416a92ce0996303594ece1da","entity_key":"lx_first_conversation_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7791b5a4f5bbb1fbb4adf08b197922bd6bdef5d77b6341ccf49ac6962a43d768","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/cd11ad13a18103df479c8f9aaaf2ccefe96d8aab416a92ce0996303594ece1da.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_05 -> audio/generated/ko-KR/lexical/cd11ad13a18103df479c8f9aaaf2ccefe96d8aab416a92ce0996303594ece1da.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d5ed0509-9d3d-5ba0-8602-7d5efbbfe966', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fc7dc158d915635d6cbc80154200a98efa76c52a2b05fc15b64130c184ea9596'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('017536ef-7a73-5f3e-ae69-a7d0f79ae520', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d5ed0509-9d3d-5ba0-8602-7d5efbbfe966', 1), 'fc7dc158d915635d6cbc80154200a98efa76c52a2b05fc15b64130c184ea9596',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/cd11ad13a18103df479c8f9aaaf2ccefe96d8aab416a92ce0996303594ece1da.mp3', 966, '2026-09-14 13:42:23.489606', '7791b5a4f5bbb1fbb4adf08b197922bd6bdef5d77b6341ccf49ac6962a43d768', 'validated', '{"audio_key":"cd11ad13a18103df479c8f9aaaf2ccefe96d8aab416a92ce0996303594ece1da","entity_key":"wf_first_conversation_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7791b5a4f5bbb1fbb4adf08b197922bd6bdef5d77b6341ccf49ac6962a43d768","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/cd11ad13a18103df479c8f9aaaf2ccefe96d8aab416a92ce0996303594ece1da.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_01 -> audio/generated/ko-KR/lexical/ce67c000c45cfcccee8dd96897664b24969c853d235850e2be51c27e412389c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0052841e-40ba-5043-aa7c-0b88b308f0e3', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64ee5293d31bc58b72d76ae9a86a902e90442428e29f24f4ecb257ba841cdd36'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e44cd96-a976-56eb-a9be-2a618420ac09', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0052841e-40ba-5043-aa7c-0b88b308f0e3', 1), '64ee5293d31bc58b72d76ae9a86a902e90442428e29f24f4ecb257ba841cdd36',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ce67c000c45cfcccee8dd96897664b24969c853d235850e2be51c27e412389c4.mp3', 731, '2026-09-14 13:42:24.749953', 'ff1996fd69f61bb049bf65dbbb78c6613f135bba29135cc33f63b4babcc3600e', 'validated', '{"audio_key":"ce67c000c45cfcccee8dd96897664b24969c853d235850e2be51c27e412389c4","entity_key":"lx_first_sounds_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ff1996fd69f61bb049bf65dbbb78c6613f135bba29135cc33f63b4babcc3600e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ce67c000c45cfcccee8dd96897664b24969c853d235850e2be51c27e412389c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_01 -> audio/generated/ko-KR/lexical/ce67c000c45cfcccee8dd96897664b24969c853d235850e2be51c27e412389c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('28d2ab71-c330-5eef-bbea-3f705cba4d46', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '64ee5293d31bc58b72d76ae9a86a902e90442428e29f24f4ecb257ba841cdd36'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('172fde72-249a-5fd5-a77e-5018ec4593ae', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('28d2ab71-c330-5eef-bbea-3f705cba4d46', 1), '64ee5293d31bc58b72d76ae9a86a902e90442428e29f24f4ecb257ba841cdd36',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ce67c000c45cfcccee8dd96897664b24969c853d235850e2be51c27e412389c4.mp3', 731, '2026-09-14 13:42:24.749953', 'ff1996fd69f61bb049bf65dbbb78c6613f135bba29135cc33f63b4babcc3600e', 'validated', '{"audio_key":"ce67c000c45cfcccee8dd96897664b24969c853d235850e2be51c27e412389c4","entity_key":"wf_first_sounds_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ff1996fd69f61bb049bf65dbbb78c6613f135bba29135cc33f63b4babcc3600e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ce67c000c45cfcccee8dd96897664b24969c853d235850e2be51c27e412389c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_06 -> audio/generated/ko-KR/lexical/cfd3fd0958929b6268681f0621ebd299d22b1cda350809d1035782fe8a6a6256.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('450f4549-310a-5ce4-9c1d-edad248f4821', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7470d030eddae163a579976c3858c4524caf7a3b38e78c8a3df7e64e2c90fb8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d4e7314-36e8-5ff2-bcf6-6086ff4b42e8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('450f4549-310a-5ce4-9c1d-edad248f4821', 1), 'c7470d030eddae163a579976c3858c4524caf7a3b38e78c8a3df7e64e2c90fb8',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/cfd3fd0958929b6268681f0621ebd299d22b1cda350809d1035782fe8a6a6256.mp3', 914, '2026-09-14 13:42:25.750155', '38242833802b852bccdba7703715c1e87595791c57942a44a5682c13f29bc96a', 'validated', '{"audio_key":"cfd3fd0958929b6268681f0621ebd299d22b1cda350809d1035782fe8a6a6256","entity_key":"lx_numbers_0_10_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"38242833802b852bccdba7703715c1e87595791c57942a44a5682c13f29bc96a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/cfd3fd0958929b6268681f0621ebd299d22b1cda350809d1035782fe8a6a6256.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_06 -> audio/generated/ko-KR/lexical/cfd3fd0958929b6268681f0621ebd299d22b1cda350809d1035782fe8a6a6256.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('664a61df-7f3a-5f6a-a371-37aae67cfb02', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c7470d030eddae163a579976c3858c4524caf7a3b38e78c8a3df7e64e2c90fb8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a3056283-e023-5419-89a1-ce99d79cafaf', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('664a61df-7f3a-5f6a-a371-37aae67cfb02', 1), 'c7470d030eddae163a579976c3858c4524caf7a3b38e78c8a3df7e64e2c90fb8',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/cfd3fd0958929b6268681f0621ebd299d22b1cda350809d1035782fe8a6a6256.mp3', 914, '2026-09-14 13:42:25.750155', '38242833802b852bccdba7703715c1e87595791c57942a44a5682c13f29bc96a', 'validated', '{"audio_key":"cfd3fd0958929b6268681f0621ebd299d22b1cda350809d1035782fe8a6a6256","entity_key":"wf_numbers_0_10_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"38242833802b852bccdba7703715c1e87595791c57942a44a5682c13f29bc96a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/cfd3fd0958929b6268681f0621ebd299d22b1cda350809d1035782fe8a6a6256.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_how_are_you_01 -> audio/generated/ko-KR/lexical/d81477873ba648bfa0facc067684f488d6ef547c57a4cfc28ac5e2d515dea9e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a072d071-93be-539c-aca6-efb5035beec4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_how_are_you_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '44fe50a252a76410a68d6d56cdc659a93f90edc4c5e833ef45c7c22b67a3b2ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6d0e791c-6024-51e2-88f7-519929f61ad7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a072d071-93be-539c-aca6-efb5035beec4', 1), '44fe50a252a76410a68d6d56cdc659a93f90edc4c5e833ef45c7c22b67a3b2ea',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/d81477873ba648bfa0facc067684f488d6ef547c57a4cfc28ac5e2d515dea9e8.mp3', 1201, '2026-09-14 13:42:26.778249', 'e46c307689100e4f6d34a2b2a54b57f7543ae751ac357b5801b07c49a07924f6', 'validated', '{"audio_key":"d81477873ba648bfa0facc067684f488d6ef547c57a4cfc28ac5e2d515dea9e8","entity_key":"lx_how_are_you_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e46c307689100e4f6d34a2b2a54b57f7543ae751ac357b5801b07c49a07924f6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/d81477873ba648bfa0facc067684f488d6ef547c57a4cfc28ac5e2d515dea9e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_how_are_you_01 -> audio/generated/ko-KR/lexical/d81477873ba648bfa0facc067684f488d6ef547c57a4cfc28ac5e2d515dea9e8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('32167bab-9862-5a3e-a2fd-c0e9173b6dae', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_how_are_you_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '44fe50a252a76410a68d6d56cdc659a93f90edc4c5e833ef45c7c22b67a3b2ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5026dc9d-258e-5384-b670-7b70a60c8940', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('32167bab-9862-5a3e-a2fd-c0e9173b6dae', 1), '44fe50a252a76410a68d6d56cdc659a93f90edc4c5e833ef45c7c22b67a3b2ea',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/d81477873ba648bfa0facc067684f488d6ef547c57a4cfc28ac5e2d515dea9e8.mp3', 1201, '2026-09-14 13:42:26.778249', 'e46c307689100e4f6d34a2b2a54b57f7543ae751ac357b5801b07c49a07924f6', 'validated', '{"audio_key":"d81477873ba648bfa0facc067684f488d6ef547c57a4cfc28ac5e2d515dea9e8","entity_key":"wf_how_are_you_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e46c307689100e4f6d34a2b2a54b57f7543ae751ac357b5801b07c49a07924f6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/d81477873ba648bfa0facc067684f488d6ef547c57a4cfc28ac5e2d515dea9e8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_02 -> audio/generated/ko-KR/lexical/db937b4bb615c0169e770dab5afbda28dd110ef0db49f37ba43275d02ee1ab92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6cf0dca7-fbcb-5902-9ffc-7c028fee9a59', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '262161281aabff06df61c5a9ca4974f77a6b4ec70d509e4220822cf391842a91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8632d09-36bf-5a53-a7a6-3218da0f61f2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6cf0dca7-fbcb-5902-9ffc-7c028fee9a59', 1), '262161281aabff06df61c5a9ca4974f77a6b4ec70d509e4220822cf391842a91',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/db937b4bb615c0169e770dab5afbda28dd110ef0db49f37ba43275d02ee1ab92.mp3', 1332, '2026-09-14 13:42:27.776665', '5abb6101a92ae9f59d871a19cf6dd4c8b246ed2bd05f641b73bf7d79f08712a9', 'validated', '{"audio_key":"db937b4bb615c0169e770dab5afbda28dd110ef0db49f37ba43275d02ee1ab92","entity_key":"lx_survival_words_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5abb6101a92ae9f59d871a19cf6dd4c8b246ed2bd05f641b73bf7d79f08712a9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/db937b4bb615c0169e770dab5afbda28dd110ef0db49f37ba43275d02ee1ab92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_02 -> audio/generated/ko-KR/lexical/db937b4bb615c0169e770dab5afbda28dd110ef0db49f37ba43275d02ee1ab92.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4a9cc3ba-929c-5dfb-b2b2-90e55a83eb29', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '262161281aabff06df61c5a9ca4974f77a6b4ec70d509e4220822cf391842a91'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5c78a26-5b9b-5db4-ae17-3c9217fff87c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4a9cc3ba-929c-5dfb-b2b2-90e55a83eb29', 1), '262161281aabff06df61c5a9ca4974f77a6b4ec70d509e4220822cf391842a91',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/db937b4bb615c0169e770dab5afbda28dd110ef0db49f37ba43275d02ee1ab92.mp3', 1332, '2026-09-14 13:42:27.776665', '5abb6101a92ae9f59d871a19cf6dd4c8b246ed2bd05f641b73bf7d79f08712a9', 'validated', '{"audio_key":"db937b4bb615c0169e770dab5afbda28dd110ef0db49f37ba43275d02ee1ab92","entity_key":"wf_survival_words_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5abb6101a92ae9f59d871a19cf6dd4c8b246ed2bd05f641b73bf7d79f08712a9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/db937b4bb615c0169e770dab5afbda28dd110ef0db49f37ba43275d02ee1ab92.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_04 -> audio/generated/ko-KR/lexical/dfd1946f50418128513123eb5791b36c35d155d1762436ca45377c9d2540908b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('50b031cf-0b08-5ade-9e35-1b685bb969a3', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '71c0b7db98a074453c8748f4b8082755cf2cbe4507bcaacee11ad0a7c79bcf6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('017f1b4e-29f2-5201-b0a2-9fe2cc752096', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('50b031cf-0b08-5ade-9e35-1b685bb969a3', 1), '71c0b7db98a074453c8748f4b8082755cf2cbe4507bcaacee11ad0a7c79bcf6c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/dfd1946f50418128513123eb5791b36c35d155d1762436ca45377c9d2540908b.mp3', 1201, '2026-09-14 13:42:28.774596', 'df05db99ee040854bfd7923f17f22f259cc96b162574c1f19695d6d991e391e9', 'validated', '{"audio_key":"dfd1946f50418128513123eb5791b36c35d155d1762436ca45377c9d2540908b","entity_key":"lx_survival_words_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"df05db99ee040854bfd7923f17f22f259cc96b162574c1f19695d6d991e391e9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/dfd1946f50418128513123eb5791b36c35d155d1762436ca45377c9d2540908b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_04 -> audio/generated/ko-KR/lexical/dfd1946f50418128513123eb5791b36c35d155d1762436ca45377c9d2540908b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f165a4c7-8c7e-59bf-8e32-18a931f58da2', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '71c0b7db98a074453c8748f4b8082755cf2cbe4507bcaacee11ad0a7c79bcf6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34692d9b-b130-5cfd-bd51-4005b77ba562', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f165a4c7-8c7e-59bf-8e32-18a931f58da2', 1), '71c0b7db98a074453c8748f4b8082755cf2cbe4507bcaacee11ad0a7c79bcf6c',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/dfd1946f50418128513123eb5791b36c35d155d1762436ca45377c9d2540908b.mp3', 1201, '2026-09-14 13:42:28.774596', 'df05db99ee040854bfd7923f17f22f259cc96b162574c1f19695d6d991e391e9', 'validated', '{"audio_key":"dfd1946f50418128513123eb5791b36c35d155d1762436ca45377c9d2540908b","entity_key":"wf_survival_words_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"df05db99ee040854bfd7923f17f22f259cc96b162574c1f19695d6d991e391e9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/dfd1946f50418128513123eb5791b36c35d155d1762436ca45377c9d2540908b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_06 -> audio/generated/ko-KR/lexical/e1f2d5ab68f4d7129ee73f5f9b7755410e5708fb0e12f3e0ab9e58190e5fe7fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8e9cd996-85bf-5ab8-8b3c-19b0f244c760', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da9e530428ce1c2deaf3362a2e344acb933bc45d7d140b2e5b9bb29673d6fef4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8dcda3a9-0bad-5fce-8464-8164026b596c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8e9cd996-85bf-5ab8-8b3c-19b0f244c760', 1), 'da9e530428ce1c2deaf3362a2e344acb933bc45d7d140b2e5b9bb29673d6fef4',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e1f2d5ab68f4d7129ee73f5f9b7755410e5708fb0e12f3e0ab9e58190e5fe7fe.mp3', 862, '2026-09-14 13:42:29.717939', 'f0b0e92458488a6e1167a5395ed4ebf7377cdc80e6d7fbca9c7d761ac186e886', 'validated', '{"audio_key":"e1f2d5ab68f4d7129ee73f5f9b7755410e5708fb0e12f3e0ab9e58190e5fe7fe","entity_key":"lx_first_sounds_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f0b0e92458488a6e1167a5395ed4ebf7377cdc80e6d7fbca9c7d761ac186e886","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e1f2d5ab68f4d7129ee73f5f9b7755410e5708fb0e12f3e0ab9e58190e5fe7fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_06 -> audio/generated/ko-KR/lexical/e1f2d5ab68f4d7129ee73f5f9b7755410e5708fb0e12f3e0ab9e58190e5fe7fe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('85bc70d8-887c-5885-ad08-67b8fe1da61c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'da9e530428ce1c2deaf3362a2e344acb933bc45d7d140b2e5b9bb29673d6fef4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('42adc629-c8c9-5ef2-b1a6-d35ecfce85d0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('85bc70d8-887c-5885-ad08-67b8fe1da61c', 1), 'da9e530428ce1c2deaf3362a2e344acb933bc45d7d140b2e5b9bb29673d6fef4',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e1f2d5ab68f4d7129ee73f5f9b7755410e5708fb0e12f3e0ab9e58190e5fe7fe.mp3', 862, '2026-09-14 13:42:29.717939', 'f0b0e92458488a6e1167a5395ed4ebf7377cdc80e6d7fbca9c7d761ac186e886', 'validated', '{"audio_key":"e1f2d5ab68f4d7129ee73f5f9b7755410e5708fb0e12f3e0ab9e58190e5fe7fe","entity_key":"wf_first_sounds_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f0b0e92458488a6e1167a5395ed4ebf7377cdc80e6d7fbca9c7d761ac186e886","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e1f2d5ab68f4d7129ee73f5f9b7755410e5708fb0e12f3e0ab9e58190e5fe7fe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_05 -> audio/generated/ko-KR/lexical/e20baefd086b105688939f05db4ffec216102557f3d5b09550ff69f9660c8f02.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('87b87c59-59a2-5bda-9ac9-b93343ed6727', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e2c7d5c49b61f5326c139536e680e8e54fe4a180e48dd7390550969967180eb9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6ba7ce7a-b1eb-5d27-a19e-7dbbff05cd79', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('87b87c59-59a2-5bda-9ac9-b93343ed6727', 1), 'e2c7d5c49b61f5326c139536e680e8e54fe4a180e48dd7390550969967180eb9',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e20baefd086b105688939f05db4ffec216102557f3d5b09550ff69f9660c8f02.mp3', 1097, '2026-09-14 13:42:30.678497', 'd90e34e9fc78f8c3c9f87b36cb90f3458ec62c3676a7191ca46c560d651a08c4', 'validated', '{"audio_key":"e20baefd086b105688939f05db4ffec216102557f3d5b09550ff69f9660c8f02","entity_key":"lx_first_sounds_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d90e34e9fc78f8c3c9f87b36cb90f3458ec62c3676a7191ca46c560d651a08c4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e20baefd086b105688939f05db4ffec216102557f3d5b09550ff69f9660c8f02.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_05 -> audio/generated/ko-KR/lexical/e20baefd086b105688939f05db4ffec216102557f3d5b09550ff69f9660c8f02.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('91939f9d-6c3d-59a1-bce7-e5de3a10a37c', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e2c7d5c49b61f5326c139536e680e8e54fe4a180e48dd7390550969967180eb9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b316fb8f-61be-51d3-a5c8-c4c3efaee84b', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('91939f9d-6c3d-59a1-bce7-e5de3a10a37c', 1), 'e2c7d5c49b61f5326c139536e680e8e54fe4a180e48dd7390550969967180eb9',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e20baefd086b105688939f05db4ffec216102557f3d5b09550ff69f9660c8f02.mp3', 1097, '2026-09-14 13:42:30.678497', 'd90e34e9fc78f8c3c9f87b36cb90f3458ec62c3676a7191ca46c560d651a08c4', 'validated', '{"audio_key":"e20baefd086b105688939f05db4ffec216102557f3d5b09550ff69f9660c8f02","entity_key":"wf_first_sounds_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d90e34e9fc78f8c3c9f87b36cb90f3458ec62c3676a7191ca46c560d651a08c4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e20baefd086b105688939f05db4ffec216102557f3d5b09550ff69f9660c8f02.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_03 -> audio/generated/ko-KR/lexical/e27ad3ca34111b0043226c7d7862fbc258a59f16eafeb4ecaaa42108be2d44a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1a738c37-42be-58ff-9000-ce277088bd00', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a8a81fee098641dbae52eab744ea6001357b2536e894fb67ac5085c76057b4f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9099bea1-d69c-5bfe-9c6c-d291ec4acbd2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1a738c37-42be-58ff-9000-ce277088bd00', 1), '0a8a81fee098641dbae52eab744ea6001357b2536e894fb67ac5085c76057b4f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e27ad3ca34111b0043226c7d7862fbc258a59f16eafeb4ecaaa42108be2d44a4.mp3', 862, '2026-09-14 13:42:31.635405', '724c1298b3e29f2c78e09cb080c16d651a25b73ce5ed16859b9faf73c05437b8', 'validated', '{"audio_key":"e27ad3ca34111b0043226c7d7862fbc258a59f16eafeb4ecaaa42108be2d44a4","entity_key":"lx_first_sounds_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"724c1298b3e29f2c78e09cb080c16d651a25b73ce5ed16859b9faf73c05437b8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e27ad3ca34111b0043226c7d7862fbc258a59f16eafeb4ecaaa42108be2d44a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_03 -> audio/generated/ko-KR/lexical/e27ad3ca34111b0043226c7d7862fbc258a59f16eafeb4ecaaa42108be2d44a4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8073cfc7-55c9-582a-a42b-1b0a35621d6b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0a8a81fee098641dbae52eab744ea6001357b2536e894fb67ac5085c76057b4f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('795e505f-f2a6-5924-9144-a91af37e9c2a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8073cfc7-55c9-582a-a42b-1b0a35621d6b', 1), '0a8a81fee098641dbae52eab744ea6001357b2536e894fb67ac5085c76057b4f',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e27ad3ca34111b0043226c7d7862fbc258a59f16eafeb4ecaaa42108be2d44a4.mp3', 862, '2026-09-14 13:42:31.635405', '724c1298b3e29f2c78e09cb080c16d651a25b73ce5ed16859b9faf73c05437b8', 'validated', '{"audio_key":"e27ad3ca34111b0043226c7d7862fbc258a59f16eafeb4ecaaa42108be2d44a4","entity_key":"wf_first_sounds_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"724c1298b3e29f2c78e09cb080c16d651a25b73ce5ed16859b9faf73c05437b8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e27ad3ca34111b0043226c7d7862fbc258a59f16eafeb4ecaaa42108be2d44a4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_words_04 -> audio/generated/ko-KR/lexical/e3c93c5b42d7b2ed9ece501a5476b558b77c518c3798b637dfb561c17471adb3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ed138a52-1070-5a57-88e1-d1dea7eb76d4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '46ce53f2332052b62c9f98c42cc937a90be41cd02976e3f7ed824a48e4152415'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1dedd84c-100a-541e-ac97-94ee01ef9fd4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ed138a52-1070-5a57-88e1-d1dea7eb76d4', 1), '46ce53f2332052b62c9f98c42cc937a90be41cd02976e3f7ed824a48e4152415',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e3c93c5b42d7b2ed9ece501a5476b558b77c518c3798b637dfb561c17471adb3.mp3', 1253, '2026-09-14 13:42:32.614460', 'e05e92d531869feddcc75c7494eecb30eb4cc59829575e7cf4502e4f9e5994f9', 'validated', '{"audio_key":"e3c93c5b42d7b2ed9ece501a5476b558b77c518c3798b637dfb561c17471adb3","entity_key":"lx_polite_words_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e05e92d531869feddcc75c7494eecb30eb4cc59829575e7cf4502e4f9e5994f9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e3c93c5b42d7b2ed9ece501a5476b558b77c518c3798b637dfb561c17471adb3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_words_04 -> audio/generated/ko-KR/lexical/e3c93c5b42d7b2ed9ece501a5476b558b77c518c3798b637dfb561c17471adb3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('7859286f-f8ae-55bb-bd12-ed43cb34e115', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '46ce53f2332052b62c9f98c42cc937a90be41cd02976e3f7ed824a48e4152415'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c24ffb1a-dd6f-54b9-a968-27bbb28b62c3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('7859286f-f8ae-55bb-bd12-ed43cb34e115', 1), '46ce53f2332052b62c9f98c42cc937a90be41cd02976e3f7ed824a48e4152415',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e3c93c5b42d7b2ed9ece501a5476b558b77c518c3798b637dfb561c17471adb3.mp3', 1253, '2026-09-14 13:42:32.614460', 'e05e92d531869feddcc75c7494eecb30eb4cc59829575e7cf4502e4f9e5994f9', 'validated', '{"audio_key":"e3c93c5b42d7b2ed9ece501a5476b558b77c518c3798b637dfb561c17471adb3","entity_key":"wf_polite_words_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e05e92d531869feddcc75c7494eecb30eb4cc59829575e7cf4502e4f9e5994f9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e3c93c5b42d7b2ed9ece501a5476b558b77c518c3798b637dfb561c17471adb3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_04 -> audio/generated/ko-KR/lexical/e48c10628163d1b67a85f7eb1b3b04b60e6f0a76c26feae7c4ff153fc582a7bb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('87f6b554-20ff-5f4d-aab4-51b2740fd35b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f5cef3090eaab6a16ff53347f7377b225bd04839274c8e751fd37117479ccde'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f79b61db-8d08-5da2-bdb5-abc9d6ad8838', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('87f6b554-20ff-5f4d-aab4-51b2740fd35b', 1), '4f5cef3090eaab6a16ff53347f7377b225bd04839274c8e751fd37117479ccde',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e48c10628163d1b67a85f7eb1b3b04b60e6f0a76c26feae7c4ff153fc582a7bb.mp3', 1097, '2026-09-14 13:42:33.562599', '656da8d3f4cfaac6e386084be501fcc6facfcf3dea8e87ad5074f6e37436227d', 'validated', '{"audio_key":"e48c10628163d1b67a85f7eb1b3b04b60e6f0a76c26feae7c4ff153fc582a7bb","entity_key":"lx_my_name_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"656da8d3f4cfaac6e386084be501fcc6facfcf3dea8e87ad5074f6e37436227d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e48c10628163d1b67a85f7eb1b3b04b60e6f0a76c26feae7c4ff153fc582a7bb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_04 -> audio/generated/ko-KR/lexical/e48c10628163d1b67a85f7eb1b3b04b60e6f0a76c26feae7c4ff153fc582a7bb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f05277bd-9332-5bb9-ae1a-e92a37e15895', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f5cef3090eaab6a16ff53347f7377b225bd04839274c8e751fd37117479ccde'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c590c9f6-6181-567d-8ad6-fbbbf222ad83', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f05277bd-9332-5bb9-ae1a-e92a37e15895', 1), '4f5cef3090eaab6a16ff53347f7377b225bd04839274c8e751fd37117479ccde',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e48c10628163d1b67a85f7eb1b3b04b60e6f0a76c26feae7c4ff153fc582a7bb.mp3', 1097, '2026-09-14 13:42:33.562599', '656da8d3f4cfaac6e386084be501fcc6facfcf3dea8e87ad5074f6e37436227d', 'validated', '{"audio_key":"e48c10628163d1b67a85f7eb1b3b04b60e6f0a76c26feae7c4ff153fc582a7bb","entity_key":"wf_my_name_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"656da8d3f4cfaac6e386084be501fcc6facfcf3dea8e87ad5074f6e37436227d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e48c10628163d1b67a85f7eb1b3b04b60e6f0a76c26feae7c4ff153fc582a7bb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_06 -> audio/generated/ko-KR/lexical/eea43451cd45f6374fdda36cf60d6609b9f041f804a73c80d8d02f8b2277d895.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('dcd6fb34-e747-5c92-ad86-f049dacfb314', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '389e7564ae2551b4f94dbea3458906b7afb8851da988aa1a85992fcc1dd3d346'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3b0731e5-1954-5061-ae28-61a3f7d5b937', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('dcd6fb34-e747-5c92-ad86-f049dacfb314', 1), '389e7564ae2551b4f94dbea3458906b7afb8851da988aa1a85992fcc1dd3d346',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/eea43451cd45f6374fdda36cf60d6609b9f041f804a73c80d8d02f8b2277d895.mp3', 914, '2026-09-14 13:42:34.563574', 'ba3144308e63bdb8c7296b3fd917b0ef5af3e388d59cdee244bcaad938378bbe', 'validated', '{"audio_key":"eea43451cd45f6374fdda36cf60d6609b9f041f804a73c80d8d02f8b2277d895","entity_key":"lx_my_name_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ba3144308e63bdb8c7296b3fd917b0ef5af3e388d59cdee244bcaad938378bbe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/eea43451cd45f6374fdda36cf60d6609b9f041f804a73c80d8d02f8b2277d895.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_06 -> audio/generated/ko-KR/lexical/eea43451cd45f6374fdda36cf60d6609b9f041f804a73c80d8d02f8b2277d895.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5c713faf-6d82-5a56-b792-e74bc26deac4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '389e7564ae2551b4f94dbea3458906b7afb8851da988aa1a85992fcc1dd3d346'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ece92e3d-7f35-5604-ad14-c83a2520ab60', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5c713faf-6d82-5a56-b792-e74bc26deac4', 1), '389e7564ae2551b4f94dbea3458906b7afb8851da988aa1a85992fcc1dd3d346',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/eea43451cd45f6374fdda36cf60d6609b9f041f804a73c80d8d02f8b2277d895.mp3', 914, '2026-09-14 13:42:34.563574', 'ba3144308e63bdb8c7296b3fd917b0ef5af3e388d59cdee244bcaad938378bbe', 'validated', '{"audio_key":"eea43451cd45f6374fdda36cf60d6609b9f041f804a73c80d8d02f8b2277d895","entity_key":"wf_my_name_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ba3144308e63bdb8c7296b3fd917b0ef5af3e388d59cdee244bcaad938378bbe","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/eea43451cd45f6374fdda36cf60d6609b9f041f804a73c80d8d02f8b2277d895.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_04 -> audio/generated/ko-KR/lexical/f0e38f48fc9e9d24fc66fecde4ca1d045cfd70474b1acab973fa6184613156f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c33054e8-5fb8-5b10-97c2-83a5b543d5c6', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e7edc957ce601f5ff7c7d79ad426251c59edf1afbb4d6f1266e98515bc354c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5dd50045-6bd4-5122-b62c-7c466b044d8d', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c33054e8-5fb8-5b10-97c2-83a5b543d5c6', 1), '2e7edc957ce601f5ff7c7d79ad426251c59edf1afbb4d6f1266e98515bc354c0',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f0e38f48fc9e9d24fc66fecde4ca1d045cfd70474b1acab973fa6184613156f9.mp3', 862, '2026-09-14 13:42:35.502796', '1ceb6bc9fb64d8ca9902f7ed21d7ea499df71410a657171911bfdc664a7993dc', 'validated', '{"audio_key":"f0e38f48fc9e9d24fc66fecde4ca1d045cfd70474b1acab973fa6184613156f9","entity_key":"lx_first_objects_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1ceb6bc9fb64d8ca9902f7ed21d7ea499df71410a657171911bfdc664a7993dc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f0e38f48fc9e9d24fc66fecde4ca1d045cfd70474b1acab973fa6184613156f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_04 -> audio/generated/ko-KR/lexical/f0e38f48fc9e9d24fc66fecde4ca1d045cfd70474b1acab973fa6184613156f9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('9b1844b3-3367-5ae0-9da6-f5fbad3a51f9', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e7edc957ce601f5ff7c7d79ad426251c59edf1afbb4d6f1266e98515bc354c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25b986f0-6578-5086-934d-df3995250330', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('9b1844b3-3367-5ae0-9da6-f5fbad3a51f9', 1), '2e7edc957ce601f5ff7c7d79ad426251c59edf1afbb4d6f1266e98515bc354c0',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f0e38f48fc9e9d24fc66fecde4ca1d045cfd70474b1acab973fa6184613156f9.mp3', 862, '2026-09-14 13:42:35.502796', '1ceb6bc9fb64d8ca9902f7ed21d7ea499df71410a657171911bfdc664a7993dc', 'validated', '{"audio_key":"f0e38f48fc9e9d24fc66fecde4ca1d045cfd70474b1acab973fa6184613156f9","entity_key":"wf_first_objects_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1ceb6bc9fb64d8ca9902f7ed21d7ea499df71410a657171911bfdc664a7993dc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f0e38f48fc9e9d24fc66fecde4ca1d045cfd70474b1acab973fa6184613156f9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_02 -> audio/generated/ko-KR/lexical/f265c44169f4de76e226cdfe1df68dd609c833d4d76f449856986dc4a3480cf9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('eb3c436e-1610-5a92-bc8b-bcbd4bb8b1ea', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1ee1b7e560f9f3ac3bf29df793f29afd2f7bf72a7adfb8289f2245db86583f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('37036efc-8745-5489-8177-6f4e60291f64', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('eb3c436e-1610-5a92-bc8b-bcbd4bb8b1ea', 1), 'c1ee1b7e560f9f3ac3bf29df793f29afd2f7bf72a7adfb8289f2245db86583f3',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f265c44169f4de76e226cdfe1df68dd609c833d4d76f449856986dc4a3480cf9.mp3', 835, '2026-09-14 13:42:36.453146', 'ad4f2431b77743115ebdec492a13a9c27fda151bd3f747987d14109ebad04faf', 'validated', '{"audio_key":"f265c44169f4de76e226cdfe1df68dd609c833d4d76f449856986dc4a3480cf9","entity_key":"lx_first_conversation_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ad4f2431b77743115ebdec492a13a9c27fda151bd3f747987d14109ebad04faf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f265c44169f4de76e226cdfe1df68dd609c833d4d76f449856986dc4a3480cf9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_02 -> audio/generated/ko-KR/lexical/f265c44169f4de76e226cdfe1df68dd609c833d4d76f449856986dc4a3480cf9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('03514fe6-0b85-5b00-8e90-530bf520aa6b', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c1ee1b7e560f9f3ac3bf29df793f29afd2f7bf72a7adfb8289f2245db86583f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7c6c2215-da1f-5b65-b6e0-37b0863f094e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('03514fe6-0b85-5b00-8e90-530bf520aa6b', 1), 'c1ee1b7e560f9f3ac3bf29df793f29afd2f7bf72a7adfb8289f2245db86583f3',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f265c44169f4de76e226cdfe1df68dd609c833d4d76f449856986dc4a3480cf9.mp3', 835, '2026-09-14 13:42:36.453146', 'ad4f2431b77743115ebdec492a13a9c27fda151bd3f747987d14109ebad04faf', 'validated', '{"audio_key":"f265c44169f4de76e226cdfe1df68dd609c833d4d76f449856986dc4a3480cf9","entity_key":"wf_first_conversation_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ad4f2431b77743115ebdec492a13a9c27fda151bd3f747987d14109ebad04faf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f265c44169f4de76e226cdfe1df68dd609c833d4d76f449856986dc4a3480cf9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_03 -> audio/generated/ko-KR/lexical/f3571e40f3e8f1a247b7fa1b9f1e1c2862e9ea0a224ba792c97301c396ba88ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('732ca677-587b-59a5-89ab-22810e13b3d4', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34f0b2b0b4f463fa65822fe0b2c899e3032a4582b29f977a90e02637699a180d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa38e8ed-b477-575a-bf97-50fd82252064', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('732ca677-587b-59a5-89ab-22810e13b3d4', 1), '34f0b2b0b4f463fa65822fe0b2c899e3032a4582b29f977a90e02637699a180d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f3571e40f3e8f1a247b7fa1b9f1e1c2862e9ea0a224ba792c97301c396ba88ae.mp3', 1253, '2026-09-14 13:42:37.418963', 'cceaaeacc691f303c19fd57b16df121a7a1aae09def9b4796e68689830c5d4d8', 'validated', '{"audio_key":"f3571e40f3e8f1a247b7fa1b9f1e1c2862e9ea0a224ba792c97301c396ba88ae","entity_key":"lx_first_conversation_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cceaaeacc691f303c19fd57b16df121a7a1aae09def9b4796e68689830c5d4d8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f3571e40f3e8f1a247b7fa1b9f1e1c2862e9ea0a224ba792c97301c396ba88ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_03 -> audio/generated/ko-KR/lexical/f3571e40f3e8f1a247b7fa1b9f1e1c2862e9ea0a224ba792c97301c396ba88ae.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c0370c0f-d4b1-53cb-a497-eba9837e1be0', 1)
  AND voice_key = 'ko-kr.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34f0b2b0b4f463fa65822fe0b2c899e3032a4582b29f977a90e02637699a180d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f12bee11-2595-5a39-a935-44f1812f8fd3', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c0370c0f-d4b1-53cb-a497-eba9837e1be0', 1), '34f0b2b0b4f463fa65822fe0b2c899e3032a4582b29f977a90e02637699a180d',
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f3571e40f3e8f1a247b7fa1b9f1e1c2862e9ea0a224ba792c97301c396ba88ae.mp3', 1253, '2026-09-14 13:42:37.418963', 'cceaaeacc691f303c19fd57b16df121a7a1aae09def9b4796e68689830c5d4d8', 'validated', '{"audio_key":"f3571e40f3e8f1a247b7fa1b9f1e1c2862e9ea0a224ba792c97301c396ba88ae","entity_key":"wf_first_conversation_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cceaaeacc691f303c19fd57b16df121a7a1aae09def9b4796e68689830c5d4d8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f3571e40f3e8f1a247b7fa1b9f1e1c2862e9ea0a224ba792c97301c396ba88ae.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ko_ko-real-life-numbers_n20 -> audio/generated/ko-KR/utterances/02fad9050406abdf3726c08fa4cc8d1964434b66793eaa6eeae2bd4ba4b91bc6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('821456dc-ceb4-5abb-ab65-51ae29ab5f86', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ko_ko-real-life-numbers_n20')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b97d27f097a8b4a033bb65a101f6dd7abd69ea7d19b743276dbd7b3a57f57516'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a8db7830-ff27-5452-9e0e-ce8607d19729', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('821456dc-ceb4-5abb-ab65-51ae29ab5f86', 1), 'b97d27f097a8b4a033bb65a101f6dd7abd69ea7d19b743276dbd7b3a57f57516',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/02fad9050406abdf3726c08fa4cc8d1964434b66793eaa6eeae2bd4ba4b91bc6.mp3', 1097, '2026-09-14 13:42:38.369489', 'f06072eddd5c3d1484d25bf0037ec71267c502f6123166eb3ae41ac571229b5f', 'validated', '{"audio_key":"02fad9050406abdf3726c08fa4cc8d1964434b66793eaa6eeae2bd4ba4b91bc6","entity_key":"u_ko_ko-real-life-numbers_n20","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f06072eddd5c3d1484d25bf0037ec71267c502f6123166eb3ae41ac571229b5f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/02fad9050406abdf3726c08fa4cc8d1964434b66793eaa6eeae2bd4ba4b91bc6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polite_words_01 -> audio/generated/ko-KR/utterances/06097f43d770df860f0e7b9c9a8692196abb3acc9bf65c7f97ca776142e630c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5702ab5c-5dde-5e21-bcd3-fd1552967343', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polite_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5fbd199bc9025929b29825723cd38a4ca9e05e0c0640c21b8d96ccd8c359663f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2dfd095d-4182-5f1b-942d-1612e11f95c2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5702ab5c-5dde-5e21-bcd3-fd1552967343', 1), '5fbd199bc9025929b29825723cd38a4ca9e05e0c0640c21b8d96ccd8c359663f',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/06097f43d770df860f0e7b9c9a8692196abb3acc9bf65c7f97ca776142e630c3.mp3', 1149, '2026-09-14 13:42:39.415632', '2e5982dd2109e7c7bb28d8aa684ba8a3ac5bcbc17c00b52ac3c88c6b9d851f19', 'validated', '{"audio_key":"06097f43d770df860f0e7b9c9a8692196abb3acc9bf65c7f97ca776142e630c3","entity_key":"u_polite_words_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2e5982dd2109e7c7bb28d8aa684ba8a3ac5bcbc17c00b52ac3c88c6b9d851f19","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/06097f43d770df860f0e7b9c9a8692196abb3acc9bf65c7f97ca776142e630c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_how_are_you_04 -> audio/generated/ko-KR/utterances/0679561fc3897bfc091b588f6e8c6f9c04ac76bd2f5ea7f5f1153c709a94a640.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('744776bc-d357-569b-9bff-9e7a83381301', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_how_are_you_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4cc9b2206f6a2e7f7034a6c3bc7ec11a2aaaba0991135557acaf184418caa554'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea927fd3-7487-52e0-9d5e-5ff6350d88e4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('744776bc-d357-569b-9bff-9e7a83381301', 1), '4cc9b2206f6a2e7f7034a6c3bc7ec11a2aaaba0991135557acaf184418caa554',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/0679561fc3897bfc091b588f6e8c6f9c04ac76bd2f5ea7f5f1153c709a94a640.mp3', 1071, '2026-09-14 13:42:40.404669', 'e67573f3b8dce019badb2d44b2f54f2dd520351e714a06dbbb77ef8814384f39', 'validated', '{"audio_key":"0679561fc3897bfc091b588f6e8c6f9c04ac76bd2f5ea7f5f1153c709a94a640","entity_key":"u_how_are_you_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e67573f3b8dce019badb2d44b2f54f2dd520351e714a06dbbb77ef8814384f39","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/0679561fc3897bfc091b588f6e8c6f9c04ac76bd2f5ea7f5f1153c709a94a640.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_how_are_you_02_listen -> audio/generated/ko-KR/utterances/0679561fc3897bfc091b588f6e8c6f9c04ac76bd2f5ea7f5f1153c709a94a640.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('8c95719d-1888-5afd-8d17-78961ffa3ad2', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_how_are_you_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4cc9b2206f6a2e7f7034a6c3bc7ec11a2aaaba0991135557acaf184418caa554'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a2691dc-1a11-54a9-9866-c3894d3fd5b3', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('8c95719d-1888-5afd-8d17-78961ffa3ad2', 1), '4cc9b2206f6a2e7f7034a6c3bc7ec11a2aaaba0991135557acaf184418caa554',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/0679561fc3897bfc091b588f6e8c6f9c04ac76bd2f5ea7f5f1153c709a94a640.mp3', 1071, '2026-09-14 13:42:40.404669', 'e67573f3b8dce019badb2d44b2f54f2dd520351e714a06dbbb77ef8814384f39', 'validated', '{"audio_key":"0679561fc3897bfc091b588f6e8c6f9c04ac76bd2f5ea7f5f1153c709a94a640","entity_key":"e_how_are_you_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e67573f3b8dce019badb2d44b2f54f2dd520351e714a06dbbb77ef8814384f39","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/0679561fc3897bfc091b588f6e8c6f9c04ac76bd2f5ea7f5f1153c709a94a640.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_jamo_vowels:example:1 -> audio/generated/ko-KR/utterances/06a1f4a7553934df1ba82a0b09996347de4199410209e11d63521cfe6454b784.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('534ecb75-6efd-542d-8cf6-a6480f06a370', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_jamo_vowels:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8bafb6b7d17ead4985bfd429412da3a6276b40529b508f7f57f9b3a25bd5c727'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c41e0135-adbe-510e-84d0-be3af8aad18d', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('534ecb75-6efd-542d-8cf6-a6480f06a370', 1), '8bafb6b7d17ead4985bfd429412da3a6276b40529b508f7f57f9b3a25bd5c727',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/06a1f4a7553934df1ba82a0b09996347de4199410209e11d63521cfe6454b784.mp3', 783, '2026-09-14 13:42:41.376199', 'dc3ed18a3db357923588157826957019231cbeca1e5ba843088536224f0da274', 'validated', '{"audio_key":"06a1f4a7553934df1ba82a0b09996347de4199410209e11d63521cfe6454b784","entity_key":"g_ko_jamo_vowels:example:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"dc3ed18a3db357923588157826957019231cbeca1e5ba843088536224f0da274","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/06a1f4a7553934df1ba82a0b09996347de4199410209e11d63521cfe6454b784.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_numbers_0_10_04 -> audio/generated/ko-KR/utterances/09269131bff9797b87762c29edde784311a2287b4d64f35e37dd7e07582234aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c3a5da10-ed9d-5217-a5fc-90ba746da3bd', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_numbers_0_10_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a95e58b223324b90c30c5fc7c7c5160c8b315275e1e840d4d269689d82860ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('addfa6e5-a6fa-5505-8b80-e5c32c9fb72b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c3a5da10-ed9d-5217-a5fc-90ba746da3bd', 1), '4a95e58b223324b90c30c5fc7c7c5160c8b315275e1e840d4d269689d82860ea',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/09269131bff9797b87762c29edde784311a2287b4d64f35e37dd7e07582234aa.mp3', 1253, '2026-09-14 13:42:42.368017', 'b27f934b9c9ae122d9e8161fd3851c6a69cf8c428b61ae9b98a2ed9c6df31551', 'validated', '{"audio_key":"09269131bff9797b87762c29edde784311a2287b4d64f35e37dd7e07582234aa","entity_key":"u_numbers_0_10_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b27f934b9c9ae122d9e8161fd3851c6a69cf8c428b61ae9b98a2ed9c6df31551","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/09269131bff9797b87762c29edde784311a2287b4d64f35e37dd7e07582234aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_numbers_0_10_02_listen -> audio/generated/ko-KR/utterances/09269131bff9797b87762c29edde784311a2287b4d64f35e37dd7e07582234aa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ed025416-1cc8-5414-a8af-a118e8d0d11d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_numbers_0_10_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a95e58b223324b90c30c5fc7c7c5160c8b315275e1e840d4d269689d82860ea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ee3d38cd-69cd-5b00-b7b1-8db397e432dd', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ed025416-1cc8-5414-a8af-a118e8d0d11d', 1), '4a95e58b223324b90c30c5fc7c7c5160c8b315275e1e840d4d269689d82860ea',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/09269131bff9797b87762c29edde784311a2287b4d64f35e37dd7e07582234aa.mp3', 1253, '2026-09-14 13:42:42.368017', 'b27f934b9c9ae122d9e8161fd3851c6a69cf8c428b61ae9b98a2ed9c6df31551', 'validated', '{"audio_key":"09269131bff9797b87762c29edde784311a2287b4d64f35e37dd7e07582234aa","entity_key":"e_numbers_0_10_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b27f934b9c9ae122d9e8161fd3851c6a69cf8c428b61ae9b98a2ed9c6df31551","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/09269131bff9797b87762c29edde784311a2287b4d64f35e37dd7e07582234aa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_objects_04 -> audio/generated/ko-KR/utterances/0fc43ee2e231034f6137d8260d197b4b5ee3dc0578e07d8bd02a4eefd2067c52.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d07129e3-02ee-561a-854f-08263da5e794', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_objects_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '489aaaf15fc926bc29ae79834b347e774cebc583244255d6877cdc96d18657be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('77bab112-46d0-5189-ae9d-c064869b940c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d07129e3-02ee-561a-854f-08263da5e794', 1), '489aaaf15fc926bc29ae79834b347e774cebc583244255d6877cdc96d18657be',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/0fc43ee2e231034f6137d8260d197b4b5ee3dc0578e07d8bd02a4eefd2067c52.mp3', 1201, '2026-09-14 13:42:43.333915', 'f79084a150616045a9a6dc4c45611294ff22d05ca5dd849dd58fdbac08a8a826', 'validated', '{"audio_key":"0fc43ee2e231034f6137d8260d197b4b5ee3dc0578e07d8bd02a4eefd2067c52","entity_key":"u_first_objects_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f79084a150616045a9a6dc4c45611294ff22d05ca5dd849dd58fdbac08a8a826","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/0fc43ee2e231034f6137d8260d197b4b5ee3dc0578e07d8bd02a4eefd2067c52.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_objects_02_listen -> audio/generated/ko-KR/utterances/0fc43ee2e231034f6137d8260d197b4b5ee3dc0578e07d8bd02a4eefd2067c52.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('88584e07-9c89-5ec2-a656-cc9978be8533', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_objects_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '489aaaf15fc926bc29ae79834b347e774cebc583244255d6877cdc96d18657be'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('12e297ce-e8b6-5246-a447-b846651995aa', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('88584e07-9c89-5ec2-a656-cc9978be8533', 1), '489aaaf15fc926bc29ae79834b347e774cebc583244255d6877cdc96d18657be',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/0fc43ee2e231034f6137d8260d197b4b5ee3dc0578e07d8bd02a4eefd2067c52.mp3', 1201, '2026-09-14 13:42:43.333915', 'f79084a150616045a9a6dc4c45611294ff22d05ca5dd849dd58fdbac08a8a826', 'validated', '{"audio_key":"0fc43ee2e231034f6137d8260d197b4b5ee3dc0578e07d8bd02a4eefd2067c52","entity_key":"e_first_objects_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f79084a150616045a9a6dc4c45611294ff22d05ca5dd849dd58fdbac08a8a826","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/0fc43ee2e231034f6137d8260d197b4b5ee3dc0578e07d8bd02a4eefd2067c52.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ko_block_vertical -> audio/generated/ko-KR/utterances/10a44c4a22e10723e5624cb90cf5f3991b8dd2744830364a874f9ff74622a348.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('26ebcd68-bb95-5cbd-a7df-04653f34a932', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ko_block_vertical')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a6c8f7a82e40af47c33f7cb9a099e5a9fabfe158416972573a7376f549268bbe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46aa076b-10e6-5c88-b107-aab26a294fd4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('26ebcd68-bb95-5cbd-a7df-04653f34a932', 1), 'a6c8f7a82e40af47c33f7cb9a099e5a9fabfe158416972573a7376f549268bbe',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/10a44c4a22e10723e5624cb90cf5f3991b8dd2744830364a874f9ff74622a348.mp3', 1149, '2026-09-14 13:42:44.285060', 'd45d2a91ce3f211e913c79149bcbd073775d01dac16f6d12065874edf4aff402', 'validated', '{"audio_key":"10a44c4a22e10723e5624cb90cf5f3991b8dd2744830364a874f9ff74622a348","entity_key":"u_ko_block_vertical","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d45d2a91ce3f211e913c79149bcbd073775d01dac16f6d12065874edf4aff402","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/10a44c4a22e10723e5624cb90cf5f3991b8dd2744830364a874f9ff74622a348.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_ko_ko-forms-signs_form_write:model -> audio/generated/ko-KR/utterances/10e126b780c112a9a5732bc95221ac015f8e58aa44a4f78bfd19cf5c5f722eaf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('22407118-5c3e-56d0-a1a5-08756a21e710', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_ko_ko-forms-signs_form_write:model')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5eef1d529de5fcdd3449da0faa95ac290454cca6dcecdafe561101a3d8916dfe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f77aa68-941d-5152-92eb-b775f9353398', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('22407118-5c3e-56d0-a1a5-08756a21e710', 1), '5eef1d529de5fcdd3449da0faa95ac290454cca6dcecdafe561101a3d8916dfe',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/10e126b780c112a9a5732bc95221ac015f8e58aa44a4f78bfd19cf5c5f722eaf.mp3', 10213, '2026-09-14 13:42:46.383764', '9d2d532f357309193e0f5937160a3fd8c255ce532d746f89c8b82865d1f949e5', 'validated', '{"audio_key":"10e126b780c112a9a5732bc95221ac015f8e58aa44a4f78bfd19cf5c5f722eaf","entity_key":"ex_ko_ko-forms-signs_form_write:model","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9d2d532f357309193e0f5937160a3fd8c255ce532d746f89c8b82865d1f949e5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/10e126b780c112a9a5732bc95221ac015f8e58aa44a4f78bfd19cf5c5f722eaf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_ko_ko-real-world-gate_personal_form:model -> audio/generated/ko-KR/utterances/10e126b780c112a9a5732bc95221ac015f8e58aa44a4f78bfd19cf5c5f722eaf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('62540adc-b3d7-5de7-b5f2-e429830a2cf4', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_ko_ko-real-world-gate_personal_form:model')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5eef1d529de5fcdd3449da0faa95ac290454cca6dcecdafe561101a3d8916dfe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d8d7e919-ad70-56ea-9e1e-b24d4d978269', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('62540adc-b3d7-5de7-b5f2-e429830a2cf4', 1), '5eef1d529de5fcdd3449da0faa95ac290454cca6dcecdafe561101a3d8916dfe',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/10e126b780c112a9a5732bc95221ac015f8e58aa44a4f78bfd19cf5c5f722eaf.mp3', 10213, '2026-09-14 13:42:46.383764', '9d2d532f357309193e0f5937160a3fd8c255ce532d746f89c8b82865d1f949e5', 'validated', '{"audio_key":"10e126b780c112a9a5732bc95221ac015f8e58aa44a4f78bfd19cf5c5f722eaf","entity_key":"ex_ko_ko-real-world-gate_personal_form:model","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9d2d532f357309193e0f5937160a3fd8c255ce532d746f89c8b82865d1f949e5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/10e126b780c112a9a5732bc95221ac015f8e58aa44a4f78bfd19cf5c5f722eaf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_name_02 -> audio/generated/ko-KR/utterances/121e2aed76fde8f6b290a3b1e57e6266dcdaabfa2136b2a1ce908e922cf44089.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('752d6850-870a-5294-bc34-59730380ee39', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_name_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '588d25be7d113ed1f1cfa0573ce4193253f6f8a3bc12426758159d2fbfc3ec4e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dce776e4-bf97-5786-8f63-03f98413433e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('752d6850-870a-5294-bc34-59730380ee39', 1), '588d25be7d113ed1f1cfa0573ce4193253f6f8a3bc12426758159d2fbfc3ec4e',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/121e2aed76fde8f6b290a3b1e57e6266dcdaabfa2136b2a1ce908e922cf44089.mp3', 1384, '2026-09-14 13:42:47.352298', '1948ca5248336ad71447f7c5c9f80a29690c40ae5aa0b9139e9933271f2d7ebc', 'validated', '{"audio_key":"121e2aed76fde8f6b290a3b1e57e6266dcdaabfa2136b2a1ce908e922cf44089","entity_key":"u_my_name_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1948ca5248336ad71447f7c5c9f80a29690c40ae5aa0b9139e9933271f2d7ebc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/121e2aed76fde8f6b290a3b1e57e6266dcdaabfa2136b2a1ce908e922cf44089.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_my_name_01_listen -> audio/generated/ko-KR/utterances/121e2aed76fde8f6b290a3b1e57e6266dcdaabfa2136b2a1ce908e922cf44089.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a7337e0b-d654-5ee7-a344-a56a8e2f79ab', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_my_name_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '588d25be7d113ed1f1cfa0573ce4193253f6f8a3bc12426758159d2fbfc3ec4e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('15205e4c-04bf-5e6b-ae3c-75e32b9beff3', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a7337e0b-d654-5ee7-a344-a56a8e2f79ab', 1), '588d25be7d113ed1f1cfa0573ce4193253f6f8a3bc12426758159d2fbfc3ec4e',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/121e2aed76fde8f6b290a3b1e57e6266dcdaabfa2136b2a1ce908e922cf44089.mp3', 1384, '2026-09-14 13:42:47.352298', '1948ca5248336ad71447f7c5c9f80a29690c40ae5aa0b9139e9933271f2d7ebc', 'validated', '{"audio_key":"121e2aed76fde8f6b290a3b1e57e6266dcdaabfa2136b2a1ce908e922cf44089","entity_key":"e_my_name_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1948ca5248336ad71447f7c5c9f80a29690c40ae5aa0b9139e9933271f2d7ebc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/121e2aed76fde8f6b290a3b1e57e6266dcdaabfa2136b2a1ce908e922cf44089.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ko_jamo_vowel_examples -> audio/generated/ko-KR/utterances/14caac180b504646e7c9d3ff0a0832a297f1e60c73475d798e90855bdf23a4b0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9dacc31b-f19c-5d01-83e2-47372c23d4b5', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ko_jamo_vowel_examples')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '913d50c22cdc5ea22fc18a0adf56aaddabe471303fa9552cdd3b3dec939b8693'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6cce7457-17f8-5dc8-9b7a-983ab48f8050', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9dacc31b-f19c-5d01-83e2-47372c23d4b5', 1), '913d50c22cdc5ea22fc18a0adf56aaddabe471303fa9552cdd3b3dec939b8693',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/14caac180b504646e7c9d3ff0a0832a297f1e60c73475d798e90855bdf23a4b0.mp3', 1697, '2026-09-14 13:42:48.351027', '9896607a8e033a419459de218c6f72870a4586fa3916be744e539ffd340a8eff', 'validated', '{"audio_key":"14caac180b504646e7c9d3ff0a0832a297f1e60c73475d798e90855bdf23a4b0","entity_key":"u_ko_jamo_vowel_examples","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9896607a8e033a419459de218c6f72870a4586fa3916be744e539ffd340a8eff","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/14caac180b504646e7c9d3ff0a0832a297f1e60c73475d798e90855bdf23a4b0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polite_words_04 -> audio/generated/ko-KR/utterances/16a01c1d771884e5436732f34cb948ad9fdb3a8e9a84005fa46d9696e40d48b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('efeb3c4f-b7b5-5457-a89f-d9bbc12be89b', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polite_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '99f1275a28300f013f6fe2ba8b5535f1fecf5668edcfc9b733b5c8539fa511c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('528a1ea5-40dd-5deb-a5d5-3f86c08b4e9a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('efeb3c4f-b7b5-5457-a89f-d9bbc12be89b', 1), '99f1275a28300f013f6fe2ba8b5535f1fecf5668edcfc9b733b5c8539fa511c0',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/16a01c1d771884e5436732f34cb948ad9fdb3a8e9a84005fa46d9696e40d48b5.mp3', 1436, '2026-09-14 13:42:49.358737', '00828b5186f14e4b92cf050d1ea6299782d05b3d3d8e80d7ab259bccff993107', 'validated', '{"audio_key":"16a01c1d771884e5436732f34cb948ad9fdb3a8e9a84005fa46d9696e40d48b5","entity_key":"u_polite_words_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"00828b5186f14e4b92cf050d1ea6299782d05b3d3d8e80d7ab259bccff993107","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/16a01c1d771884e5436732f34cb948ad9fdb3a8e9a84005fa46d9696e40d48b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_polite_words_02_listen -> audio/generated/ko-KR/utterances/16a01c1d771884e5436732f34cb948ad9fdb3a8e9a84005fa46d9696e40d48b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a5c0c95e-bd53-500a-9729-5694425a0adf', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_polite_words_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '99f1275a28300f013f6fe2ba8b5535f1fecf5668edcfc9b733b5c8539fa511c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('777a5e85-8247-58be-9d44-db11238fb83f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a5c0c95e-bd53-500a-9729-5694425a0adf', 1), '99f1275a28300f013f6fe2ba8b5535f1fecf5668edcfc9b733b5c8539fa511c0',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/16a01c1d771884e5436732f34cb948ad9fdb3a8e9a84005fa46d9696e40d48b5.mp3', 1436, '2026-09-14 13:42:49.358737', '00828b5186f14e4b92cf050d1ea6299782d05b3d3d8e80d7ab259bccff993107', 'validated', '{"audio_key":"16a01c1d771884e5436732f34cb948ad9fdb3a8e9a84005fa46d9696e40d48b5","entity_key":"e_polite_words_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"00828b5186f14e4b92cf050d1ea6299782d05b3d3d8e80d7ab259bccff993107","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/16a01c1d771884e5436732f34cb948ad9fdb3a8e9a84005fa46d9696e40d48b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polite_words_03 -> audio/generated/ko-KR/utterances/18f99c3e7677a9dc0567d4755399fe5b40fc4e405a5f5b0218d82673505f0566.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c706382c-6563-5702-a33e-d404f86055b3', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polite_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0cdb6b1b37190b85ae104b878ecd2c35b535f7154cf8ea27ee6e5b70789e39b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1021808a-6e9f-579c-98b3-c8e84769bb9f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c706382c-6563-5702-a33e-d404f86055b3', 1), '0cdb6b1b37190b85ae104b878ecd2c35b535f7154cf8ea27ee6e5b70789e39b1',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/18f99c3e7677a9dc0567d4755399fe5b40fc4e405a5f5b0218d82673505f0566.mp3', 1253, '2026-09-14 13:42:50.388253', '5f8f97c256b9f3d9c469d0810818851a0172112957924a6bdffa6c3e9a2792a7', 'validated', '{"audio_key":"18f99c3e7677a9dc0567d4755399fe5b40fc4e405a5f5b0218d82673505f0566","entity_key":"u_polite_words_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5f8f97c256b9f3d9c469d0810818851a0172112957924a6bdffa6c3e9a2792a7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/18f99c3e7677a9dc0567d4755399fe5b40fc4e405a5f5b0218d82673505f0566.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ko_ko-real-life-numbers_n11 -> audio/generated/ko-KR/utterances/1d67d756a25c71d738a707d66efa6dc6b8e46e00a5b9ca18fd5d99abb98ea06b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('93e24aa5-5268-5929-8c1e-0db0e07f8f09', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ko_ko-real-life-numbers_n11')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '75e7501c3331503a35f76847e742f104d093c29cce8dfdb6e3d38d1613adf046'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af2c52de-e1e6-556a-8444-a6ae74e56ad7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('93e24aa5-5268-5929-8c1e-0db0e07f8f09', 1), '75e7501c3331503a35f76847e742f104d093c29cce8dfdb6e3d38d1613adf046',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/1d67d756a25c71d738a707d66efa6dc6b8e46e00a5b9ca18fd5d99abb98ea06b.mp3', 966, '2026-09-14 13:42:51.456304', '735eb4a46763c8ecef70caeb87ef2c36c5ae947d39a1867ab1b586d4ca293c72', 'validated', '{"audio_key":"1d67d756a25c71d738a707d66efa6dc6b8e46e00a5b9ca18fd5d99abb98ea06b","entity_key":"u_ko_ko-real-life-numbers_n11","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"735eb4a46763c8ecef70caeb87ef2c36c5ae947d39a1867ab1b586d4ca293c72","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/1d67d756a25c71d738a707d66efa6dc6b8e46e00a5b9ca18fd5d99abb98ea06b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ko_meaning_slow -> audio/generated/ko-KR/utterances/1e409d4c8ff1f3c86ead4dd40e3ab66ea231982f935572cd7f3e242bcefb52c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('04ec92a3-ad3c-5744-ba89-c242b64c01c0', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ko_meaning_slow')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b92077eb29673b239bf1a7dc2e4d05b54b2f5b05335a99786207c7b4bed4948d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea329f9e-d715-57ce-9bda-93194bf9e101', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('04ec92a3-ad3c-5744-ba89-c242b64c01c0', 1), 'b92077eb29673b239bf1a7dc2e4d05b54b2f5b05335a99786207c7b4bed4948d',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/1e409d4c8ff1f3c86ead4dd40e3ab66ea231982f935572cd7f3e242bcefb52c4.mp3', 1488, '2026-09-14 13:42:52.503830', 'b4394b103bc132559f260ac46c82aad89cd2469081f6c07b767639e7c26311a0', 'validated', '{"audio_key":"1e409d4c8ff1f3c86ead4dd40e3ab66ea231982f935572cd7f3e242bcefb52c4","entity_key":"u_ko_meaning_slow","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b4394b103bc132559f260ac46c82aad89cd2469081f6c07b767639e7c26311a0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/1e409d4c8ff1f3c86ead4dd40e3ab66ea231982f935572cd7f3e242bcefb52c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_meaning_chunks:example:3 -> audio/generated/ko-KR/utterances/1e409d4c8ff1f3c86ead4dd40e3ab66ea231982f935572cd7f3e242bcefb52c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('5e5b068b-752b-503c-92c8-54f52742ac0e', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_meaning_chunks:example:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b92077eb29673b239bf1a7dc2e4d05b54b2f5b05335a99786207c7b4bed4948d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0849894e-bbdc-5c63-a019-a4654f6620af', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('5e5b068b-752b-503c-92c8-54f52742ac0e', 1), 'b92077eb29673b239bf1a7dc2e4d05b54b2f5b05335a99786207c7b4bed4948d',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/1e409d4c8ff1f3c86ead4dd40e3ab66ea231982f935572cd7f3e242bcefb52c4.mp3', 1488, '2026-09-14 13:42:52.503830', 'b4394b103bc132559f260ac46c82aad89cd2469081f6c07b767639e7c26311a0', 'validated', '{"audio_key":"1e409d4c8ff1f3c86ead4dd40e3ab66ea231982f935572cd7f3e242bcefb52c4","entity_key":"g_ko_meaning_chunks:example:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b4394b103bc132559f260ac46c82aad89cd2469081f6c07b767639e7c26311a0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/1e409d4c8ff1f3c86ead4dd40e3ab66ea231982f935572cd7f3e242bcefb52c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_survival_words_03 -> audio/generated/ko-KR/utterances/1e409d4c8ff1f3c86ead4dd40e3ab66ea231982f935572cd7f3e242bcefb52c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('248a1181-8766-5efa-b088-83d85953793d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_survival_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b92077eb29673b239bf1a7dc2e4d05b54b2f5b05335a99786207c7b4bed4948d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('20bd7ef3-fdde-5e09-8cc9-9b90d50f9c47', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('248a1181-8766-5efa-b088-83d85953793d', 1), 'b92077eb29673b239bf1a7dc2e4d05b54b2f5b05335a99786207c7b4bed4948d',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/1e409d4c8ff1f3c86ead4dd40e3ab66ea231982f935572cd7f3e242bcefb52c4.mp3', 1488, '2026-09-14 13:42:52.503830', 'b4394b103bc132559f260ac46c82aad89cd2469081f6c07b767639e7c26311a0', 'validated', '{"audio_key":"1e409d4c8ff1f3c86ead4dd40e3ab66ea231982f935572cd7f3e242bcefb52c4","entity_key":"u_survival_words_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b4394b103bc132559f260ac46c82aad89cd2469081f6c07b767639e7c26311a0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/1e409d4c8ff1f3c86ead4dd40e3ab66ea231982f935572cd7f3e242bcefb52c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_conversation_04 -> audio/generated/ko-KR/utterances/29587fbc59b7c11a34b6f59ebdf0941660d1a9a3dabae38fc486911e8af6da81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('393f4182-c311-5908-97e3-74604aad320b', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_conversation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '645408d257427659dfee6b47d998f86150172bed445b1d41f474abcf3950fc31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9c76b5f-96a4-599d-b599-091c40fc121f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('393f4182-c311-5908-97e3-74604aad320b', 1), '645408d257427659dfee6b47d998f86150172bed445b1d41f474abcf3950fc31',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/29587fbc59b7c11a34b6f59ebdf0941660d1a9a3dabae38fc486911e8af6da81.mp3', 1280, '2026-09-14 13:42:53.561925', '73237a61242fae1ee15a20821098bd5c0bbaa759fb96aa408af1e5e2301dc594', 'validated', '{"audio_key":"29587fbc59b7c11a34b6f59ebdf0941660d1a9a3dabae38fc486911e8af6da81","entity_key":"u_first_conversation_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"73237a61242fae1ee15a20821098bd5c0bbaa759fb96aa408af1e5e2301dc594","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/29587fbc59b7c11a34b6f59ebdf0941660d1a9a3dabae38fc486911e8af6da81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_conversation_02_listen -> audio/generated/ko-KR/utterances/29587fbc59b7c11a34b6f59ebdf0941660d1a9a3dabae38fc486911e8af6da81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c6bc8104-175d-59fd-b7a0-0e4411ad431f', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_conversation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '645408d257427659dfee6b47d998f86150172bed445b1d41f474abcf3950fc31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('91a3d8e8-87e6-5d88-955a-81955f83d8d5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c6bc8104-175d-59fd-b7a0-0e4411ad431f', 1), '645408d257427659dfee6b47d998f86150172bed445b1d41f474abcf3950fc31',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/29587fbc59b7c11a34b6f59ebdf0941660d1a9a3dabae38fc486911e8af6da81.mp3', 1280, '2026-09-14 13:42:53.561925', '73237a61242fae1ee15a20821098bd5c0bbaa759fb96aa408af1e5e2301dc594', 'validated', '{"audio_key":"29587fbc59b7c11a34b6f59ebdf0941660d1a9a3dabae38fc486911e8af6da81","entity_key":"e_first_conversation_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"73237a61242fae1ee15a20821098bd5c0bbaa759fb96aa408af1e5e2301dc594","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/29587fbc59b7c11a34b6f59ebdf0941660d1a9a3dabae38fc486911e8af6da81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_sounds_03 -> audio/generated/ko-KR/utterances/2e4e1fc54780163bd68d726fd281843c494da486cc20e46df9366ef09238134a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e31c21ea-dd2d-5bb8-a369-40f6f088043e', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_sounds_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c3b8a05f04c0d19676e1202181758660d0b5b4221ef85ca5f0112799d0a4073'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11c71901-c707-57a4-9e34-b9166fc94002', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e31c21ea-dd2d-5bb8-a369-40f6f088043e', 1), '3c3b8a05f04c0d19676e1202181758660d0b5b4221ef85ca5f0112799d0a4073',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/2e4e1fc54780163bd68d726fd281843c494da486cc20e46df9366ef09238134a.mp3', 1802, '2026-09-14 13:42:54.719800', 'cfcceb87af9d52b1476a01da1837c0f77409217faa0e800f97d0bf4c29718e08', 'validated', '{"audio_key":"2e4e1fc54780163bd68d726fd281843c494da486cc20e46df9366ef09238134a","entity_key":"u_first_sounds_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cfcceb87af9d52b1476a01da1837c0f77409217faa0e800f97d0bf4c29718e08","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/2e4e1fc54780163bd68d726fd281843c494da486cc20e46df9366ef09238134a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_jamo_consonants:example:3 -> audio/generated/ko-KR/utterances/30bffcdd7de7e8f283bcf7c5f0b88b4833006e09b3331305bec46bdb9f6137a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('4ecc43a0-0623-5bc1-acbc-bdbaabcaef18', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_jamo_consonants:example:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3c12bb52442aa6e6aaffa023347cf60cb02da6f5a72936aeaafcb162878786d8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('402d8944-334a-53a3-814c-c96586cc29aa', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('4ecc43a0-0623-5bc1-acbc-bdbaabcaef18', 1), '3c12bb52442aa6e6aaffa023347cf60cb02da6f5a72936aeaafcb162878786d8',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/30bffcdd7de7e8f283bcf7c5f0b88b4833006e09b3331305bec46bdb9f6137a2.mp3', 862, '2026-09-14 13:42:55.671680', '96bfc635812b1a60bb2fb7af31132e807795196c91fba65845de4c4c9dca0145', 'validated', '{"audio_key":"30bffcdd7de7e8f283bcf7c5f0b88b4833006e09b3331305bec46bdb9f6137a2","entity_key":"g_ko_jamo_consonants:example:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"96bfc635812b1a60bb2fb7af31132e807795196c91fba65845de4c4c9dca0145","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/30bffcdd7de7e8f283bcf7c5f0b88b4833006e09b3331305bec46bdb9f6137a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_ko_jamo_hear_eu -> audio/generated/ko-KR/utterances/337accc6564fdb5db0c38f95add076b3c6ebb1d27cf1ba61147cec9446e15fa1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('993d4319-1ea3-5b38-b94d-27615f5813d3', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_ko_jamo_hear_eu')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '963c2374ff4c553e8117542530ec80373f9624b973ba97d394e5500117a6fbef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('10e0437a-4a15-5847-8840-dce749fffb3b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('993d4319-1ea3-5b38-b94d-27615f5813d3', 1), '963c2374ff4c553e8117542530ec80373f9624b973ba97d394e5500117a6fbef',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/337accc6564fdb5db0c38f95add076b3c6ebb1d27cf1ba61147cec9446e15fa1.mp3', 653, '2026-09-14 13:42:56.612052', '15e5b8f643abb8d5989817a018008c3efd3d2ec0d4593b9e7b660a83b4ac05f5', 'validated', '{"audio_key":"337accc6564fdb5db0c38f95add076b3c6ebb1d27cf1ba61147cec9446e15fa1","entity_key":"ex_ko_jamo_hear_eu","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"15e5b8f643abb8d5989817a018008c3efd3d2ec0d4593b9e7b660a83b4ac05f5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/337accc6564fdb5db0c38f95add076b3c6ebb1d27cf1ba61147cec9446e15fa1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_jamo_vowels:example:3 -> audio/generated/ko-KR/utterances/337accc6564fdb5db0c38f95add076b3c6ebb1d27cf1ba61147cec9446e15fa1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('534ecb75-6efd-542d-8cf6-a6480f06a370', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_jamo_vowels:example:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '963c2374ff4c553e8117542530ec80373f9624b973ba97d394e5500117a6fbef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f121de1f-2590-562f-ae77-eb9cd227aca9', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('534ecb75-6efd-542d-8cf6-a6480f06a370', 1), '963c2374ff4c553e8117542530ec80373f9624b973ba97d394e5500117a6fbef',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/337accc6564fdb5db0c38f95add076b3c6ebb1d27cf1ba61147cec9446e15fa1.mp3', 653, '2026-09-14 13:42:56.612052', '15e5b8f643abb8d5989817a018008c3efd3d2ec0d4593b9e7b660a83b4ac05f5', 'validated', '{"audio_key":"337accc6564fdb5db0c38f95add076b3c6ebb1d27cf1ba61147cec9446e15fa1","entity_key":"g_ko_jamo_vowels:example:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"15e5b8f643abb8d5989817a018008c3efd3d2ec0d4593b9e7b660a83b4ac05f5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/337accc6564fdb5db0c38f95add076b3c6ebb1d27cf1ba61147cec9446e15fa1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ko_ko-about-me_feeling -> audio/generated/ko-KR/utterances/3457a3fc83733049f4b05f0752dd29c4daa71113a8c2043cddf9575167cac693.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6d3e0b01-f4f9-5d2b-9b84-26323a9f3c44', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ko_ko-about-me_feeling')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52803505ac46a28c9a27ea692b9239eb362dce3b91efbc700f3f52ae0692b157'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('35c47899-6494-5ed0-bfcd-7112cf5c3b85', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6d3e0b01-f4f9-5d2b-9b84-26323a9f3c44', 1), '52803505ac46a28c9a27ea692b9239eb362dce3b91efbc700f3f52ae0692b157',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/3457a3fc83733049f4b05f0752dd29c4daa71113a8c2043cddf9575167cac693.mp3', 1280, '2026-09-14 13:42:57.650383', 'bef2ff83401add855247756c383556fd9e5e95ccd58fdc8b56f7caf74e4f2c6d', 'validated', '{"audio_key":"3457a3fc83733049f4b05f0752dd29c4daa71113a8c2043cddf9575167cac693","entity_key":"u_ko_ko-about-me_feeling","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bef2ff83401add855247756c383556fd9e5e95ccd58fdc8b56f7caf74e4f2c6d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/3457a3fc83733049f4b05f0752dd29c4daa71113a8c2043cddf9575167cac693.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_ko-about-me:example:3 -> audio/generated/ko-KR/utterances/3457a3fc83733049f4b05f0752dd29c4daa71113a8c2043cddf9575167cac693.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('c6f5a1b7-34ae-5225-8c6c-94871a0fce6a', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_ko-about-me:example:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52803505ac46a28c9a27ea692b9239eb362dce3b91efbc700f3f52ae0692b157'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a8dee4b-8e40-5350-850f-16dd8c3abb41', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('c6f5a1b7-34ae-5225-8c6c-94871a0fce6a', 1), '52803505ac46a28c9a27ea692b9239eb362dce3b91efbc700f3f52ae0692b157',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/3457a3fc83733049f4b05f0752dd29c4daa71113a8c2043cddf9575167cac693.mp3', 1280, '2026-09-14 13:42:57.650383', 'bef2ff83401add855247756c383556fd9e5e95ccd58fdc8b56f7caf74e4f2c6d', 'validated', '{"audio_key":"3457a3fc83733049f4b05f0752dd29c4daa71113a8c2043cddf9575167cac693","entity_key":"g_ko_ko-about-me:example:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bef2ff83401add855247756c383556fd9e5e95ccd58fdc8b56f7caf74e4f2c6d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/3457a3fc83733049f4b05f0752dd29c4daa71113a8c2043cddf9575167cac693.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_how_are_you_02 -> audio/generated/ko-KR/utterances/3457a3fc83733049f4b05f0752dd29c4daa71113a8c2043cddf9575167cac693.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7a864c4f-a549-5460-9ac3-3063c54d41e7', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_how_are_you_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52803505ac46a28c9a27ea692b9239eb362dce3b91efbc700f3f52ae0692b157'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('24549d90-c519-559e-a16e-07b6d56acdf4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7a864c4f-a549-5460-9ac3-3063c54d41e7', 1), '52803505ac46a28c9a27ea692b9239eb362dce3b91efbc700f3f52ae0692b157',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/3457a3fc83733049f4b05f0752dd29c4daa71113a8c2043cddf9575167cac693.mp3', 1280, '2026-09-14 13:42:57.650383', 'bef2ff83401add855247756c383556fd9e5e95ccd58fdc8b56f7caf74e4f2c6d', 'validated', '{"audio_key":"3457a3fc83733049f4b05f0752dd29c4daa71113a8c2043cddf9575167cac693","entity_key":"u_how_are_you_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bef2ff83401add855247756c383556fd9e5e95ccd58fdc8b56f7caf74e4f2c6d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/3457a3fc83733049f4b05f0752dd29c4daa71113a8c2043cddf9575167cac693.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_how_are_you_01_listen -> audio/generated/ko-KR/utterances/3457a3fc83733049f4b05f0752dd29c4daa71113a8c2043cddf9575167cac693.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f1270372-1d54-546f-8d92-ef14335adc5b', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_how_are_you_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '52803505ac46a28c9a27ea692b9239eb362dce3b91efbc700f3f52ae0692b157'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2a599c9-4613-5c26-9fc3-d14a03743539', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f1270372-1d54-546f-8d92-ef14335adc5b', 1), '52803505ac46a28c9a27ea692b9239eb362dce3b91efbc700f3f52ae0692b157',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/3457a3fc83733049f4b05f0752dd29c4daa71113a8c2043cddf9575167cac693.mp3', 1280, '2026-09-14 13:42:57.650383', 'bef2ff83401add855247756c383556fd9e5e95ccd58fdc8b56f7caf74e4f2c6d', 'validated', '{"audio_key":"3457a3fc83733049f4b05f0752dd29c4daa71113a8c2043cddf9575167cac693","entity_key":"e_how_are_you_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bef2ff83401add855247756c383556fd9e5e95ccd58fdc8b56f7caf74e4f2c6d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/3457a3fc83733049f4b05f0752dd29c4daa71113a8c2043cddf9575167cac693.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_sounds_04 -> audio/generated/ko-KR/utterances/37d233d49351ec7e79bfe4c36d86948a4e71f6e61f273c26c86738b92c4f189c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('95d39de0-d840-5f12-b95e-a3ea67258379', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_sounds_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f089d37ce912aff91acbef8cef7a29d6b99724da588282bf13345036a5b631b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5f2089a5-023b-57aa-9682-1abf7b225839', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('95d39de0-d840-5f12-b95e-a3ea67258379', 1), 'f089d37ce912aff91acbef8cef7a29d6b99724da588282bf13345036a5b631b9',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/37d233d49351ec7e79bfe4c36d86948a4e71f6e61f273c26c86738b92c4f189c.mp3', 1515, '2026-09-14 13:42:58.656153', '60ac9c111778ec78cc4646efc6aac90fcdb44fd2f110e39feac47ae5b085da42', 'validated', '{"audio_key":"37d233d49351ec7e79bfe4c36d86948a4e71f6e61f273c26c86738b92c4f189c","entity_key":"u_first_sounds_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"60ac9c111778ec78cc4646efc6aac90fcdb44fd2f110e39feac47ae5b085da42","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/37d233d49351ec7e79bfe4c36d86948a4e71f6e61f273c26c86738b92c4f189c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_sounds_02_listen -> audio/generated/ko-KR/utterances/37d233d49351ec7e79bfe4c36d86948a4e71f6e61f273c26c86738b92c4f189c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a381a979-1e52-58ee-b1ef-6cb17f27c431', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_sounds_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f089d37ce912aff91acbef8cef7a29d6b99724da588282bf13345036a5b631b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('792971c9-2f41-5ee7-b47e-98680f6884a4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a381a979-1e52-58ee-b1ef-6cb17f27c431', 1), 'f089d37ce912aff91acbef8cef7a29d6b99724da588282bf13345036a5b631b9',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/37d233d49351ec7e79bfe4c36d86948a4e71f6e61f273c26c86738b92c4f189c.mp3', 1515, '2026-09-14 13:42:58.656153', '60ac9c111778ec78cc4646efc6aac90fcdb44fd2f110e39feac47ae5b085da42', 'validated', '{"audio_key":"37d233d49351ec7e79bfe4c36d86948a4e71f6e61f273c26c86738b92c4f189c","entity_key":"e_first_sounds_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"60ac9c111778ec78cc4646efc6aac90fcdb44fd2f110e39feac47ae5b085da42","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/37d233d49351ec7e79bfe4c36d86948a4e71f6e61f273c26c86738b92c4f189c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_greetings_04 -> audio/generated/ko-KR/utterances/37fe41f9a3bf30b3046bbd5813c078b42010a7decbb779c63497da24b10d927d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a4944756-60d6-59f1-8d87-3b479953609c', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_greetings_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b648428e6df1bd5dd38830100dd9940484605cbfffca14d68c98d2bc6cd85417'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('41c84b7b-4174-5ed8-a6c1-1a1d7fd7741d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a4944756-60d6-59f1-8d87-3b479953609c', 1), 'b648428e6df1bd5dd38830100dd9940484605cbfffca14d68c98d2bc6cd85417',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/37fe41f9a3bf30b3046bbd5813c078b42010a7decbb779c63497da24b10d927d.mp3', 1436, '2026-09-14 13:42:59.726282', '08401851e6a9fe6f51f3f763557f9d998c8e425e3b81e99e44a7dd159243e1b8', 'validated', '{"audio_key":"37fe41f9a3bf30b3046bbd5813c078b42010a7decbb779c63497da24b10d927d","entity_key":"u_first_greetings_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"08401851e6a9fe6f51f3f763557f9d998c8e425e3b81e99e44a7dd159243e1b8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/37fe41f9a3bf30b3046bbd5813c078b42010a7decbb779c63497da24b10d927d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_greetings_02_listen -> audio/generated/ko-KR/utterances/37fe41f9a3bf30b3046bbd5813c078b42010a7decbb779c63497da24b10d927d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6ae0517f-bc95-570f-bc55-e0bea1af3ef0', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_greetings_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b648428e6df1bd5dd38830100dd9940484605cbfffca14d68c98d2bc6cd85417'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('be808af5-b0e4-5117-be83-0e3042752179', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6ae0517f-bc95-570f-bc55-e0bea1af3ef0', 1), 'b648428e6df1bd5dd38830100dd9940484605cbfffca14d68c98d2bc6cd85417',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/37fe41f9a3bf30b3046bbd5813c078b42010a7decbb779c63497da24b10d927d.mp3', 1436, '2026-09-14 13:42:59.726282', '08401851e6a9fe6f51f3f763557f9d998c8e425e3b81e99e44a7dd159243e1b8', 'validated', '{"audio_key":"37fe41f9a3bf30b3046bbd5813c078b42010a7decbb779c63497da24b10d927d","entity_key":"e_first_greetings_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"08401851e6a9fe6f51f3f763557f9d998c8e425e3b81e99e44a7dd159243e1b8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/37fe41f9a3bf30b3046bbd5813c078b42010a7decbb779c63497da24b10d927d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ko_block_horizontal -> audio/generated/ko-KR/utterances/4317303cec67bd1b91ee16d8a77d77c922ff74ab995debdb91973628cf470c8d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('49270024-231a-5745-8319-84fc95b7c416', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ko_block_horizontal')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4bf16f3076487508babb007c9d2e14f0a21f6f35bebd2def84221a3310758019'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('826450f6-7ae4-5169-b79f-ddbfd6250ea2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('49270024-231a-5745-8319-84fc95b7c416', 1), '4bf16f3076487508babb007c9d2e14f0a21f6f35bebd2def84221a3310758019',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/4317303cec67bd1b91ee16d8a77d77c922ff74ab995debdb91973628cf470c8d.mp3', 1619, '2026-09-14 13:43:00.815190', 'b9a69183d0f916c700ebb1a830808ea1645981616dfcbe14cee40b9f1eef4d81', 'validated', '{"audio_key":"4317303cec67bd1b91ee16d8a77d77c922ff74ab995debdb91973628cf470c8d","entity_key":"u_ko_block_horizontal","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b9a69183d0f916c700ebb1a830808ea1645981616dfcbe14cee40b9f1eef4d81","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/4317303cec67bd1b91ee16d8a77d77c922ff74ab995debdb91973628cf470c8d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_sounds_02 -> audio/generated/ko-KR/utterances/4342a8b1417bc73e5e0c4becc0279bf4d8d500c8f90687f9532a149e8fbc0093.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('32220084-6a45-5220-a8d8-8667ff670551', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_sounds_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dfcfdc8c4df5d0099b0f3027b5e798910d3aa00379e7b04bbd95b57e2b3a5aa0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('612fdae4-23d3-5711-92cf-6e72925a0b4b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('32220084-6a45-5220-a8d8-8667ff670551', 1), 'dfcfdc8c4df5d0099b0f3027b5e798910d3aa00379e7b04bbd95b57e2b3a5aa0',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/4342a8b1417bc73e5e0c4becc0279bf4d8d500c8f90687f9532a149e8fbc0093.mp3', 1567, '2026-09-14 13:43:01.925084', '3684b234b455021cb4f3b1a5c859eeef5b0de6d62645a1003170868847125f2a', 'validated', '{"audio_key":"4342a8b1417bc73e5e0c4becc0279bf4d8d500c8f90687f9532a149e8fbc0093","entity_key":"u_first_sounds_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3684b234b455021cb4f3b1a5c859eeef5b0de6d62645a1003170868847125f2a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/4342a8b1417bc73e5e0c4becc0279bf4d8d500c8f90687f9532a149e8fbc0093.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_sounds_01_listen -> audio/generated/ko-KR/utterances/4342a8b1417bc73e5e0c4becc0279bf4d8d500c8f90687f9532a149e8fbc0093.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('891ba76a-ac15-511c-b370-b6c7237a9f7e', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_sounds_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dfcfdc8c4df5d0099b0f3027b5e798910d3aa00379e7b04bbd95b57e2b3a5aa0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf315742-8440-5f2f-ae2d-35b1baefcede', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('891ba76a-ac15-511c-b370-b6c7237a9f7e', 1), 'dfcfdc8c4df5d0099b0f3027b5e798910d3aa00379e7b04bbd95b57e2b3a5aa0',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/4342a8b1417bc73e5e0c4becc0279bf4d8d500c8f90687f9532a149e8fbc0093.mp3', 1567, '2026-09-14 13:43:01.925084', '3684b234b455021cb4f3b1a5c859eeef5b0de6d62645a1003170868847125f2a', 'validated', '{"audio_key":"4342a8b1417bc73e5e0c4becc0279bf4d8d500c8f90687f9532a149e8fbc0093","entity_key":"e_first_sounds_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3684b234b455021cb4f3b1a5c859eeef5b0de6d62645a1003170868847125f2a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/4342a8b1417bc73e5e0c4becc0279bf4d8d500c8f90687f9532a149e8fbc0093.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_block_layout:example:1 -> audio/generated/ko-KR/utterances/463f29a874e29bd86f886699d44ea68a46855f7e8c0a04357f71512198c06d04.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('5141a135-23e9-5a17-abd3-e0ae05326840', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_block_layout:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ea4cc04b3b9067eb40d4257c21f1302a06dc30b5df17d6a31f070468c82b745e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b0f637c-d0e5-5fd0-885b-34df6d6973a2', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('5141a135-23e9-5a17-abd3-e0ae05326840', 1), 'ea4cc04b3b9067eb40d4257c21f1302a06dc30b5df17d6a31f070468c82b745e',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/463f29a874e29bd86f886699d44ea68a46855f7e8c0a04357f71512198c06d04.mp3', 1332, '2026-09-14 13:43:02.908323', '61c9e126364ca30addcdab429b5cae06dd49c96045165cebe4a831a179eb3d99', 'validated', '{"audio_key":"463f29a874e29bd86f886699d44ea68a46855f7e8c0a04357f71512198c06d04","entity_key":"g_ko_block_layout:example:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"61c9e126364ca30addcdab429b5cae06dd49c96045165cebe4a831a179eb3d99","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/463f29a874e29bd86f886699d44ea68a46855f7e8c0a04357f71512198c06d04.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_objects_01 -> audio/generated/ko-KR/utterances/492e9436de2676f7a8998e24c53d20d8696e70e36d3d056e88911a07e5f5dd4d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ed0b832f-3476-597f-a9cc-38b7ea57fb40', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_objects_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '07bbf423148c7b2299406241463718825c0dcd6b1616c584d8dc948f81ceb6a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dbdc124f-2525-59b1-99a7-f8628b292d78', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ed0b832f-3476-597f-a9cc-38b7ea57fb40', 1), '07bbf423148c7b2299406241463718825c0dcd6b1616c584d8dc948f81ceb6a0',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/492e9436de2676f7a8998e24c53d20d8696e70e36d3d056e88911a07e5f5dd4d.mp3', 1280, '2026-09-14 13:43:03.963526', '893146db17227dedf2788c499dc9cc62474b720e64a8ecc8260bd3d346163ce0', 'validated', '{"audio_key":"492e9436de2676f7a8998e24c53d20d8696e70e36d3d056e88911a07e5f5dd4d","entity_key":"u_first_objects_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"893146db17227dedf2788c499dc9cc62474b720e64a8ecc8260bd3d346163ce0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/492e9436de2676f7a8998e24c53d20d8696e70e36d3d056e88911a07e5f5dd4d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_greetings_03 -> audio/generated/ko-KR/utterances/4a2fdef62d853b44f3f14945a2db2796c43b00d9ac24684e4e19119605516ffe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8fa036ac-fad6-52a8-ad17-595d55939be2', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_greetings_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e8b2fb66d645be03080b2c99a1c0c25b5ff288e8874aaeeac5a8a2d58a42fa4c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('98687f9a-38d2-506b-a031-e7f524d746ed', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8fa036ac-fad6-52a8-ad17-595d55939be2', 1), 'e8b2fb66d645be03080b2c99a1c0c25b5ff288e8874aaeeac5a8a2d58a42fa4c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/4a2fdef62d853b44f3f14945a2db2796c43b00d9ac24684e4e19119605516ffe.mp3', 1436, '2026-09-14 13:43:05.018276', 'f47938bb4b26b9abf9b5e67784d953d5c519e45ec4ea4036e7767f9b78ee344c', 'validated', '{"audio_key":"4a2fdef62d853b44f3f14945a2db2796c43b00d9ac24684e4e19119605516ffe","entity_key":"u_first_greetings_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f47938bb4b26b9abf9b5e67784d953d5c519e45ec4ea4036e7767f9b78ee344c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/4a2fdef62d853b44f3f14945a2db2796c43b00d9ac24684e4e19119605516ffe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_ko_ko-about-me_about_write:model -> audio/generated/ko-KR/utterances/4b240e5e62260091201e6c2182899c968d30610e79411d4547eabcb75c9d1ba1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7537114b-8ede-5fe4-88a2-9cb3d074b781', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_ko_ko-about-me_about_write:model')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '789e4d1a3a2322b4579a2bce928add1e9c59f7b1de58fee615aad39686d63299'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2f25d43c-4f3a-504a-9414-418c78a858c2', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7537114b-8ede-5fe4-88a2-9cb3d074b781', 1), '789e4d1a3a2322b4579a2bce928add1e9c59f7b1de58fee615aad39686d63299',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/4b240e5e62260091201e6c2182899c968d30610e79411d4547eabcb75c9d1ba1.mp3', 3709, '2026-09-14 13:43:06.263640', 'a54a5190628463e8ba512a6cdb271379f8c25b4872a96af8c1cd9c0e078d03d8', 'validated', '{"audio_key":"4b240e5e62260091201e6c2182899c968d30610e79411d4547eabcb75c9d1ba1","entity_key":"ex_ko_ko-about-me_about_write:model","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a54a5190628463e8ba512a6cdb271379f8c25b4872a96af8c1cd9c0e078d03d8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/4b240e5e62260091201e6c2182899c968d30610e79411d4547eabcb75c9d1ba1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_ko_ko-real-world-gate_personal_speaking:model -> audio/generated/ko-KR/utterances/4b240e5e62260091201e6c2182899c968d30610e79411d4547eabcb75c9d1ba1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('321e3868-75e2-5ece-ac26-fa15e679e2a2', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_ko_ko-real-world-gate_personal_speaking:model')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '789e4d1a3a2322b4579a2bce928add1e9c59f7b1de58fee615aad39686d63299'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('289b6a22-f342-55db-861e-999b0e6dba65', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('321e3868-75e2-5ece-ac26-fa15e679e2a2', 1), '789e4d1a3a2322b4579a2bce928add1e9c59f7b1de58fee615aad39686d63299',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/4b240e5e62260091201e6c2182899c968d30610e79411d4547eabcb75c9d1ba1.mp3', 3709, '2026-09-14 13:43:06.263640', 'a54a5190628463e8ba512a6cdb271379f8c25b4872a96af8c1cd9c0e078d03d8', 'validated', '{"audio_key":"4b240e5e62260091201e6c2182899c968d30610e79411d4547eabcb75c9d1ba1","entity_key":"ex_ko_ko-real-world-gate_personal_speaking:model","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a54a5190628463e8ba512a6cdb271379f8c25b4872a96af8c1cd9c0e078d03d8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/4b240e5e62260091201e6c2182899c968d30610e79411d4547eabcb75c9d1ba1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_ko-real-world-gate:example:1 -> audio/generated/ko-KR/utterances/4b240e5e62260091201e6c2182899c968d30610e79411d4547eabcb75c9d1ba1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('7a36782d-7cd9-55dc-9f44-8640aa263c36', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_ko-real-world-gate:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '789e4d1a3a2322b4579a2bce928add1e9c59f7b1de58fee615aad39686d63299'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('319e4a40-5889-50aa-b569-d4cd5a00fade', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('7a36782d-7cd9-55dc-9f44-8640aa263c36', 1), '789e4d1a3a2322b4579a2bce928add1e9c59f7b1de58fee615aad39686d63299',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/4b240e5e62260091201e6c2182899c968d30610e79411d4547eabcb75c9d1ba1.mp3', 3709, '2026-09-14 13:43:06.263640', 'a54a5190628463e8ba512a6cdb271379f8c25b4872a96af8c1cd9c0e078d03d8', 'validated', '{"audio_key":"4b240e5e62260091201e6c2182899c968d30610e79411d4547eabcb75c9d1ba1","entity_key":"g_ko_ko-real-world-gate:example:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a54a5190628463e8ba512a6cdb271379f8c25b4872a96af8c1cd9c0e078d03d8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/4b240e5e62260091201e6c2182899c968d30610e79411d4547eabcb75c9d1ba1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_block_ieung:example:2 -> audio/generated/ko-KR/utterances/4bd1534e7464e719abaa91c22f1e60356cc95f48e3b2ffe58a304f2f4f34ad65.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('b439c62c-d7ba-5f52-8f7b-e2289fd01a6d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_block_ieung:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd90ed2084b71f17cebe5968955ff7cad50ca383f188f1237fabcb93d4b51548c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2851b23f-978b-5727-9b2f-cfb0e647b8cf', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('b439c62c-d7ba-5f52-8f7b-e2289fd01a6d', 1), 'd90ed2084b71f17cebe5968955ff7cad50ca383f188f1237fabcb93d4b51548c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/4bd1534e7464e719abaa91c22f1e60356cc95f48e3b2ffe58a304f2f4f34ad65.mp3', 862, '2026-09-14 13:43:07.216424', '441f8efb0580eddee49734a8653535001c7de3d9291f8ad374b5d2bb34caf50b', 'validated', '{"audio_key":"4bd1534e7464e719abaa91c22f1e60356cc95f48e3b2ffe58a304f2f4f34ad65","entity_key":"g_ko_block_ieung:example:2","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"441f8efb0580eddee49734a8653535001c7de3d9291f8ad374b5d2bb34caf50b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/4bd1534e7464e719abaa91c22f1e60356cc95f48e3b2ffe58a304f2f4f34ad65.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ko_ko-about-me_origin -> audio/generated/ko-KR/utterances/511459cfd29995f1e8f11e8599e3e69358ea993313d779bd58e6019225de0804.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('271e9114-e611-5ca9-8221-54f6a554e609', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ko_ko-about-me_origin')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c64bb303cccd212cb6b8a0b3a36705cb05f9e07b9b3eba2226b628d7b7f42a8e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2b7078c-8604-56f7-b656-430420beb21f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('271e9114-e611-5ca9-8221-54f6a554e609', 1), 'c64bb303cccd212cb6b8a0b3a36705cb05f9e07b9b3eba2226b628d7b7f42a8e',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/511459cfd29995f1e8f11e8599e3e69358ea993313d779bd58e6019225de0804.mp3', 1671, '2026-09-14 13:43:08.280134', 'dd198d324245b92a83a7c061539fb74ff3b3f85f942a9631def93ebaba666398', 'validated', '{"audio_key":"511459cfd29995f1e8f11e8599e3e69358ea993313d779bd58e6019225de0804","entity_key":"u_ko_ko-about-me_origin","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"dd198d324245b92a83a7c061539fb74ff3b3f85f942a9631def93ebaba666398","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/511459cfd29995f1e8f11e8599e3e69358ea993313d779bd58e6019225de0804.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_ko_ko-about-me_origin_listen -> audio/generated/ko-KR/utterances/511459cfd29995f1e8f11e8599e3e69358ea993313d779bd58e6019225de0804.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('4c192608-6c01-55eb-becd-7724dbb1784b', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_ko_ko-about-me_origin_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c64bb303cccd212cb6b8a0b3a36705cb05f9e07b9b3eba2226b628d7b7f42a8e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('924c691c-6178-54d6-a9c7-55474ab96e30', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('4c192608-6c01-55eb-becd-7724dbb1784b', 1), 'c64bb303cccd212cb6b8a0b3a36705cb05f9e07b9b3eba2226b628d7b7f42a8e',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/511459cfd29995f1e8f11e8599e3e69358ea993313d779bd58e6019225de0804.mp3', 1671, '2026-09-14 13:43:08.280134', 'dd198d324245b92a83a7c061539fb74ff3b3f85f942a9631def93ebaba666398', 'validated', '{"audio_key":"511459cfd29995f1e8f11e8599e3e69358ea993313d779bd58e6019225de0804","entity_key":"ex_ko_ko-about-me_origin_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"dd198d324245b92a83a7c061539fb74ff3b3f85f942a9631def93ebaba666398","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/511459cfd29995f1e8f11e8599e3e69358ea993313d779bd58e6019225de0804.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_ko-about-me:example:1 -> audio/generated/ko-KR/utterances/511459cfd29995f1e8f11e8599e3e69358ea993313d779bd58e6019225de0804.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('c6f5a1b7-34ae-5225-8c6c-94871a0fce6a', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_ko-about-me:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c64bb303cccd212cb6b8a0b3a36705cb05f9e07b9b3eba2226b628d7b7f42a8e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('601c711a-e2b8-558f-abd4-68313ff688a9', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('c6f5a1b7-34ae-5225-8c6c-94871a0fce6a', 1), 'c64bb303cccd212cb6b8a0b3a36705cb05f9e07b9b3eba2226b628d7b7f42a8e',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/511459cfd29995f1e8f11e8599e3e69358ea993313d779bd58e6019225de0804.mp3', 1671, '2026-09-14 13:43:08.280134', 'dd198d324245b92a83a7c061539fb74ff3b3f85f942a9631def93ebaba666398', 'validated', '{"audio_key":"511459cfd29995f1e8f11e8599e3e69358ea993313d779bd58e6019225de0804","entity_key":"g_ko_ko-about-me:example:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"dd198d324245b92a83a7c061539fb74ff3b3f85f942a9631def93ebaba666398","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/511459cfd29995f1e8f11e8599e3e69358ea993313d779bd58e6019225de0804.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_conversation_01 -> audio/generated/ko-KR/utterances/511459cfd29995f1e8f11e8599e3e69358ea993313d779bd58e6019225de0804.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('55bd3a22-4154-502a-9c99-7ac37b8ab3d2', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_conversation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c64bb303cccd212cb6b8a0b3a36705cb05f9e07b9b3eba2226b628d7b7f42a8e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0255d8f6-4f1d-5cfc-b18f-71990658a88d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('55bd3a22-4154-502a-9c99-7ac37b8ab3d2', 1), 'c64bb303cccd212cb6b8a0b3a36705cb05f9e07b9b3eba2226b628d7b7f42a8e',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/511459cfd29995f1e8f11e8599e3e69358ea993313d779bd58e6019225de0804.mp3', 1671, '2026-09-14 13:43:08.280134', 'dd198d324245b92a83a7c061539fb74ff3b3f85f942a9631def93ebaba666398', 'validated', '{"audio_key":"511459cfd29995f1e8f11e8599e3e69358ea993313d779bd58e6019225de0804","entity_key":"u_first_conversation_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"dd198d324245b92a83a7c061539fb74ff3b3f85f942a9631def93ebaba666398","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/511459cfd29995f1e8f11e8599e3e69358ea993313d779bd58e6019225de0804.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_how_are_you_03 -> audio/generated/ko-KR/utterances/5317c3e26cd755e4c24d7812845e6c5d92a243da78ff8778885d432b22ada4a2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('fd4e8b41-f0fc-563a-887e-c624b49ccd36', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_how_are_you_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '356ff65a79ae67c904f7b8b3323a6586a08653f61f889697cbff4bda4949971c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f78d51a-a328-5950-9b5e-e18ffa060eea', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('fd4e8b41-f0fc-563a-887e-c624b49ccd36', 1), '356ff65a79ae67c904f7b8b3323a6586a08653f61f889697cbff4bda4949971c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5317c3e26cd755e4c24d7812845e6c5d92a243da78ff8778885d432b22ada4a2.mp3', 1488, '2026-09-14 13:43:09.314624', '2e936e8d9926af7d94cc7485c0a22499b4657ee336a5acab7466a3fbe2d4e7af', 'validated', '{"audio_key":"5317c3e26cd755e4c24d7812845e6c5d92a243da78ff8778885d432b22ada4a2","entity_key":"u_how_are_you_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2e936e8d9926af7d94cc7485c0a22499b4657ee336a5acab7466a3fbe2d4e7af","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5317c3e26cd755e4c24d7812845e6c5d92a243da78ff8778885d432b22ada4a2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_hangul_basics_04 -> audio/generated/ko-KR/utterances/5421b4783388b9ab29a0dc3d658fc4802448b4fc9575d1f6548aa42facafa06e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d5de36d3-2da6-5add-9264-934033fb16e4', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_hangul_basics_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c670f527073f4b0abf274757a41345ae4c76a4a2fb79d11f4cb08fb0f2f8d27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a2ebd7f-55e4-53ae-8abb-2a91e5645022', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d5de36d3-2da6-5add-9264-934033fb16e4', 1), '0c670f527073f4b0abf274757a41345ae4c76a4a2fb79d11f4cb08fb0f2f8d27',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5421b4783388b9ab29a0dc3d658fc4802448b4fc9575d1f6548aa42facafa06e.mp3', 2403, '2026-09-14 13:43:10.413891', '0bde73b98424c6ee7e81b86a45c0ea75c3f226f9f366c11b933fd68be8003348', 'validated', '{"audio_key":"5421b4783388b9ab29a0dc3d658fc4802448b4fc9575d1f6548aa42facafa06e","entity_key":"u_hangul_basics_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0bde73b98424c6ee7e81b86a45c0ea75c3f226f9f366c11b933fd68be8003348","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5421b4783388b9ab29a0dc3d658fc4802448b4fc9575d1f6548aa42facafa06e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_hangul_basics_02_listen -> audio/generated/ko-KR/utterances/5421b4783388b9ab29a0dc3d658fc4802448b4fc9575d1f6548aa42facafa06e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('39ae546d-a8c2-5e41-90ca-f39e3e798f5f', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_hangul_basics_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0c670f527073f4b0abf274757a41345ae4c76a4a2fb79d11f4cb08fb0f2f8d27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('67454182-7d94-5956-a9a3-6536e54140d4', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('39ae546d-a8c2-5e41-90ca-f39e3e798f5f', 1), '0c670f527073f4b0abf274757a41345ae4c76a4a2fb79d11f4cb08fb0f2f8d27',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5421b4783388b9ab29a0dc3d658fc4802448b4fc9575d1f6548aa42facafa06e.mp3', 2403, '2026-09-14 13:43:10.413891', '0bde73b98424c6ee7e81b86a45c0ea75c3f226f9f366c11b933fd68be8003348', 'validated', '{"audio_key":"5421b4783388b9ab29a0dc3d658fc4802448b4fc9575d1f6548aa42facafa06e","entity_key":"e_hangul_basics_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0bde73b98424c6ee7e81b86a45c0ea75c3f226f9f366c11b933fd68be8003348","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5421b4783388b9ab29a0dc3d658fc4802448b4fc9575d1f6548aa42facafa06e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_greetings_02 -> audio/generated/ko-KR/utterances/5444e428ec42805f65125a49e2db448ee34580e9b74aced9a8c50ade760a6b3c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ab6498e6-2d2b-54db-9e94-476422a8e976', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_greetings_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a5fddbc201cb8774cdb7cc1eac3f320a72c32304900f12d2b0947040bdd4fc35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ef7ab7a-e898-5df0-83f2-aebafc870528', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ab6498e6-2d2b-54db-9e94-476422a8e976', 1), 'a5fddbc201cb8774cdb7cc1eac3f320a72c32304900f12d2b0947040bdd4fc35',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5444e428ec42805f65125a49e2db448ee34580e9b74aced9a8c50ade760a6b3c.mp3', 1567, '2026-09-14 13:43:11.434919', '67d0db0adf5d19eeaf4af6eb386eef56fcea77075ed460851f034dd5a2f11ee1', 'validated', '{"audio_key":"5444e428ec42805f65125a49e2db448ee34580e9b74aced9a8c50ade760a6b3c","entity_key":"u_first_greetings_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"67d0db0adf5d19eeaf4af6eb386eef56fcea77075ed460851f034dd5a2f11ee1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5444e428ec42805f65125a49e2db448ee34580e9b74aced9a8c50ade760a6b3c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_greetings_01_listen -> audio/generated/ko-KR/utterances/5444e428ec42805f65125a49e2db448ee34580e9b74aced9a8c50ade760a6b3c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('bc400488-1b44-5914-abbd-a5f8a0de9713', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_greetings_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a5fddbc201cb8774cdb7cc1eac3f320a72c32304900f12d2b0947040bdd4fc35'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd42f5ed-f513-52e0-8a95-968d3109c4c0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('bc400488-1b44-5914-abbd-a5f8a0de9713', 1), 'a5fddbc201cb8774cdb7cc1eac3f320a72c32304900f12d2b0947040bdd4fc35',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5444e428ec42805f65125a49e2db448ee34580e9b74aced9a8c50ade760a6b3c.mp3', 1567, '2026-09-14 13:43:11.434919', '67d0db0adf5d19eeaf4af6eb386eef56fcea77075ed460851f034dd5a2f11ee1', 'validated', '{"audio_key":"5444e428ec42805f65125a49e2db448ee34580e9b74aced9a8c50ade760a6b3c","entity_key":"e_first_greetings_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"67d0db0adf5d19eeaf4af6eb386eef56fcea77075ed460851f034dd5a2f11ee1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5444e428ec42805f65125a49e2db448ee34580e9b74aced9a8c50ade760a6b3c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_survival_words_04 -> audio/generated/ko-KR/utterances/5492d3111fddec4eafce37903ed9c7c6c07d0fc29cf607341078a2c662d802fd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('cdf28b85-bee3-5930-ac46-59c3e9b8a1b0', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_survival_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34ab2e2ec4d1ed2718536d9b3db6dccd2c545b4c9cf86dff80159d92e39b32aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58fed99d-e8df-502a-a147-cfe223c6f00e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('cdf28b85-bee3-5930-ac46-59c3e9b8a1b0', 1), '34ab2e2ec4d1ed2718536d9b3db6dccd2c545b4c9cf86dff80159d92e39b32aa',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5492d3111fddec4eafce37903ed9c7c6c07d0fc29cf607341078a2c662d802fd.mp3', 1149, '2026-09-14 13:43:12.453383', '3db0d0a28f83cf2596355bf2e300d980e0f96b2e3104029d43c46c013f0f52de', 'validated', '{"audio_key":"5492d3111fddec4eafce37903ed9c7c6c07d0fc29cf607341078a2c662d802fd","entity_key":"u_survival_words_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3db0d0a28f83cf2596355bf2e300d980e0f96b2e3104029d43c46c013f0f52de","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5492d3111fddec4eafce37903ed9c7c6c07d0fc29cf607341078a2c662d802fd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_survival_words_02_listen -> audio/generated/ko-KR/utterances/5492d3111fddec4eafce37903ed9c7c6c07d0fc29cf607341078a2c662d802fd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b20fa32e-d5ef-5e63-9e4f-fbde50d2f1c5', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_survival_words_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34ab2e2ec4d1ed2718536d9b3db6dccd2c545b4c9cf86dff80159d92e39b32aa'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('65feba7f-e31e-50f8-bba9-3606e1f2f0db', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b20fa32e-d5ef-5e63-9e4f-fbde50d2f1c5', 1), '34ab2e2ec4d1ed2718536d9b3db6dccd2c545b4c9cf86dff80159d92e39b32aa',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5492d3111fddec4eafce37903ed9c7c6c07d0fc29cf607341078a2c662d802fd.mp3', 1149, '2026-09-14 13:43:12.453383', '3db0d0a28f83cf2596355bf2e300d980e0f96b2e3104029d43c46c013f0f52de', 'validated', '{"audio_key":"5492d3111fddec4eafce37903ed9c7c6c07d0fc29cf607341078a2c662d802fd","entity_key":"e_survival_words_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3db0d0a28f83cf2596355bf2e300d980e0f96b2e3104029d43c46c013f0f52de","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5492d3111fddec4eafce37903ed9c7c6c07d0fc29cf607341078a2c662d802fd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ko_ko-forms-signs_exit_q -> audio/generated/ko-KR/utterances/57b1bb5f8d25524ea263423fb32ed16016f2a105e1e3954ee2cdc7800167b1c4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('04a2d2d8-0927-51f1-bdde-65ea586fe323', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ko_ko-forms-signs_exit_q')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eef29f00727e489aa72e3e23444865969bb47aa2dd4b6b25a3ea9dba0de67ec8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ff57dde1-3f50-5f77-bd09-c7ab00f39b27', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('04a2d2d8-0927-51f1-bdde-65ea586fe323', 1), 'eef29f00727e489aa72e3e23444865969bb47aa2dd4b6b25a3ea9dba0de67ec8',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/57b1bb5f8d25524ea263423fb32ed16016f2a105e1e3954ee2cdc7800167b1c4.mp3', 1567, '2026-09-14 13:43:13.472465', 'f8d01aba2a421adbb671b546899fa0bda7cb7ab43d4c1cc80b5c087a42442b73', 'validated', '{"audio_key":"57b1bb5f8d25524ea263423fb32ed16016f2a105e1e3954ee2cdc7800167b1c4","entity_key":"u_ko_ko-forms-signs_exit_q","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f8d01aba2a421adbb671b546899fa0bda7cb7ab43d4c1cc80b5c087a42442b73","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/57b1bb5f8d25524ea263423fb32ed16016f2a105e1e3954ee2cdc7800167b1c4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_conversation_03 -> audio/generated/ko-KR/utterances/58d4071ce9e9e39634ec53543845be856be2322d7b2f195ba8485466bcac0e71.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0cb9a46a-c36c-5411-92ba-e6dd629c24e0', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_conversation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a6ab84994d8deea8e8daf7c360f885b644ba723f1c36a13a6e3b18627ad6f63'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7f2559bb-e521-56b7-a46d-d2e7297511b4', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0cb9a46a-c36c-5411-92ba-e6dd629c24e0', 1), '9a6ab84994d8deea8e8daf7c360f885b644ba723f1c36a13a6e3b18627ad6f63',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/58d4071ce9e9e39634ec53543845be856be2322d7b2f195ba8485466bcac0e71.mp3', 1567, '2026-09-14 13:43:14.462165', '40f6ca05bb4917d3aaa5726246bbc0c0609b96c99d83d5cce3fc0bbfcd2ffab2', 'validated', '{"audio_key":"58d4071ce9e9e39634ec53543845be856be2322d7b2f195ba8485466bcac0e71","entity_key":"u_first_conversation_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"40f6ca05bb4917d3aaa5726246bbc0c0609b96c99d83d5cce3fc0bbfcd2ffab2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/58d4071ce9e9e39634ec53543845be856be2322d7b2f195ba8485466bcac0e71.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_ko_block_hear_gong -> audio/generated/ko-KR/utterances/5cb96f7028043676ed0784a5758bcce80e490dfed5d3f213758cd7623380aee7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b930bb41-a1bf-5dd5-a971-80874a59fdd1', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_ko_block_hear_gong')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '396159745e203d0de79fc70ad06731e7c3d747858c5618b1497bff4f8a6bf4b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25484b6a-7447-54ff-bec2-c590e1df4a3b', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b930bb41-a1bf-5dd5-a971-80874a59fdd1', 1), '396159745e203d0de79fc70ad06731e7c3d747858c5618b1497bff4f8a6bf4b1',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5cb96f7028043676ed0784a5758bcce80e490dfed5d3f213758cd7623380aee7.mp3', 914, '2026-09-14 13:43:15.397549', '8e6c3a33b92eb338a4baf2b77a5b30f995ec41c9cc8dcdd0fdd6501962477067', 'validated', '{"audio_key":"5cb96f7028043676ed0784a5758bcce80e490dfed5d3f213758cd7623380aee7","entity_key":"ex_ko_block_hear_gong","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8e6c3a33b92eb338a4baf2b77a5b30f995ec41c9cc8dcdd0fdd6501962477067","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5cb96f7028043676ed0784a5758bcce80e490dfed5d3f213758cd7623380aee7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_ko_ready_listen -> audio/generated/ko-KR/utterances/5cb96f7028043676ed0784a5758bcce80e490dfed5d3f213758cd7623380aee7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2d80e28b-eec2-537f-b812-f7b7a76c58a3', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_ko_ready_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '396159745e203d0de79fc70ad06731e7c3d747858c5618b1497bff4f8a6bf4b1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('89748dc6-2815-54d6-b4a4-460fc6abad21', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2d80e28b-eec2-537f-b812-f7b7a76c58a3', 1), '396159745e203d0de79fc70ad06731e7c3d747858c5618b1497bff4f8a6bf4b1',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5cb96f7028043676ed0784a5758bcce80e490dfed5d3f213758cd7623380aee7.mp3', 914, '2026-09-14 13:43:15.397549', '8e6c3a33b92eb338a4baf2b77a5b30f995ec41c9cc8dcdd0fdd6501962477067', 'validated', '{"audio_key":"5cb96f7028043676ed0784a5758bcce80e490dfed5d3f213758cd7623380aee7","entity_key":"ex_ko_ready_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8e6c3a33b92eb338a4baf2b77a5b30f995ec41c9cc8dcdd0fdd6501962477067","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5cb96f7028043676ed0784a5758bcce80e490dfed5d3f213758cd7623380aee7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_conversation_02 -> audio/generated/ko-KR/utterances/5e5a397b31bdc18b9426c7088674bd05208a2625efbcc6b1655e1b3a7773be40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7604b66d-f8df-5d7a-a2aa-e4bab87439e2', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_conversation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '828ace6339fb2f74fc0c8356a23f9982acd88d43578d059821ced51133d16169'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('99991ffb-3051-5dd0-ab70-ba4e868c8d46', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7604b66d-f8df-5d7a-a2aa-e4bab87439e2', 1), '828ace6339fb2f74fc0c8356a23f9982acd88d43578d059821ced51133d16169',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5e5a397b31bdc18b9426c7088674bd05208a2625efbcc6b1655e1b3a7773be40.mp3', 1201, '2026-09-14 13:43:16.385714', '92d80a796a5eda83b4e2fdbf40ff9e5fea9c32e0d6b6fabda929174a8dae8249', 'validated', '{"audio_key":"5e5a397b31bdc18b9426c7088674bd05208a2625efbcc6b1655e1b3a7773be40","entity_key":"u_first_conversation_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"92d80a796a5eda83b4e2fdbf40ff9e5fea9c32e0d6b6fabda929174a8dae8249","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5e5a397b31bdc18b9426c7088674bd05208a2625efbcc6b1655e1b3a7773be40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_conversation_01_listen -> audio/generated/ko-KR/utterances/5e5a397b31bdc18b9426c7088674bd05208a2625efbcc6b1655e1b3a7773be40.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6b22600a-e9b5-5cdf-a97f-3162d8b9978a', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_conversation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '828ace6339fb2f74fc0c8356a23f9982acd88d43578d059821ced51133d16169'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0bdcce23-1b56-52b4-83eb-a16afbdbd13c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6b22600a-e9b5-5cdf-a97f-3162d8b9978a', 1), '828ace6339fb2f74fc0c8356a23f9982acd88d43578d059821ced51133d16169',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5e5a397b31bdc18b9426c7088674bd05208a2625efbcc6b1655e1b3a7773be40.mp3', 1201, '2026-09-14 13:43:16.385714', '92d80a796a5eda83b4e2fdbf40ff9e5fea9c32e0d6b6fabda929174a8dae8249', 'validated', '{"audio_key":"5e5a397b31bdc18b9426c7088674bd05208a2625efbcc6b1655e1b3a7773be40","entity_key":"e_first_conversation_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"92d80a796a5eda83b4e2fdbf40ff9e5fea9c32e0d6b6fabda929174a8dae8249","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5e5a397b31bdc18b9426c7088674bd05208a2625efbcc6b1655e1b3a7773be40.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_jamo_consonants:example:1 -> audio/generated/ko-KR/utterances/60c65a89a5199fae773bd5dd763d819810fb68eb992c93f4cdd4ab638d24f159.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('4ecc43a0-0623-5bc1-acbc-bdbaabcaef18', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_jamo_consonants:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f6a780a386d59bfa68ead455e5414ee6738b34dfbba3ef077c602d1d1a261b41'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b87215c-6380-5f58-b132-9603e79e274f', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('4ecc43a0-0623-5bc1-acbc-bdbaabcaef18', 1), 'f6a780a386d59bfa68ead455e5414ee6738b34dfbba3ef077c602d1d1a261b41',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/60c65a89a5199fae773bd5dd763d819810fb68eb992c93f4cdd4ab638d24f159.mp3', 835, '2026-09-14 13:43:17.301178', '5bc9ed792084bd170c4a52dad93ff04fe119e272df63d463fc90c295b5b1a378', 'validated', '{"audio_key":"60c65a89a5199fae773bd5dd763d819810fb68eb992c93f4cdd4ab638d24f159","entity_key":"g_ko_jamo_consonants:example:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5bc9ed792084bd170c4a52dad93ff04fe119e272df63d463fc90c295b5b1a378","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/60c65a89a5199fae773bd5dd763d819810fb68eb992c93f4cdd4ab638d24f159.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ko_block_initial_ieung -> audio/generated/ko-KR/utterances/638845835b88399d4b28ef12567ac0b204f4d844cd377d810c14d1802c6c3720.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7c9a3564-d124-558f-bb40-43e6faa700b8', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ko_block_initial_ieung')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eb6d831a0b18625875dc8d5a3a100350be5dd6a05af572be1ac92dfa339ef15f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c4381a4-e2f5-534d-aeac-5dd8f60e34f6', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7c9a3564-d124-558f-bb40-43e6faa700b8', 1), 'eb6d831a0b18625875dc8d5a3a100350be5dd6a05af572be1ac92dfa339ef15f',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/638845835b88399d4b28ef12567ac0b204f4d844cd377d810c14d1802c6c3720.mp3', 1149, '2026-09-14 13:43:18.306791', 'a806b0809cf4ca5088ab32e3b7cb0b0944c1fb67ab3d3a09d30b24cf48d270b3', 'validated', '{"audio_key":"638845835b88399d4b28ef12567ac0b204f4d844cd377d810c14d1802c6c3720","entity_key":"u_ko_block_initial_ieung","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a806b0809cf4ca5088ab32e3b7cb0b0944c1fb67ab3d3a09d30b24cf48d270b3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/638845835b88399d4b28ef12567ac0b204f4d844cd377d810c14d1802c6c3720.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_jamo_vowels:example:2 -> audio/generated/ko-KR/utterances/66dade657c80144ee1967c4280bf343846ad7d90c8c221c5b97b6d1e986de64e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('534ecb75-6efd-542d-8cf6-a6480f06a370', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_jamo_vowels:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '637bfe7928f524a3c40dcc17fe91d1fb4e9b80a2a95f9ed848c4ddc0d62f9fd1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('87d98e43-3e5b-5320-b6a6-82501a1a0051', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('534ecb75-6efd-542d-8cf6-a6480f06a370', 1), '637bfe7928f524a3c40dcc17fe91d1fb4e9b80a2a95f9ed848c4ddc0d62f9fd1',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/66dade657c80144ee1967c4280bf343846ad7d90c8c221c5b97b6d1e986de64e.mp3', 1071, '2026-09-14 13:43:19.246268', '8d94e381241c094de11a2b11c662f582028e8cc6db60a714909e4ea7208779e6', 'validated', '{"audio_key":"66dade657c80144ee1967c4280bf343846ad7d90c8c221c5b97b6d1e986de64e","entity_key":"g_ko_jamo_vowels:example:2","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8d94e381241c094de11a2b11c662f582028e8cc6db60a714909e4ea7208779e6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/66dade657c80144ee1967c4280bf343846ad7d90c8c221c5b97b6d1e986de64e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_ko_ko-forms-signs_field_listen -> audio/generated/ko-KR/utterances/69a74bbf681b4f1f011b29c338e22863c761a5deb4da9e68670f0c0c98688af7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('6dc7d43c-ff2b-5519-abcd-f9b4f52455d6', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_ko_ko-forms-signs_field_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4edc94394feec0a6ca6b04c04db74384ad82a009922c2195ea48a7c1cda5088e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df4bcf48-ddc3-568e-b33f-adb486a2e43c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('6dc7d43c-ff2b-5519-abcd-f9b4f52455d6', 1), '4edc94394feec0a6ca6b04c04db74384ad82a009922c2195ea48a7c1cda5088e',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/69a74bbf681b4f1f011b29c338e22863c761a5deb4da9e68670f0c0c98688af7.mp3', 1201, '2026-09-14 13:43:20.264889', '6af8ea117dcf3c6456265346dba3cb64442a2b87607c18263c27a533084e6ca3', 'validated', '{"audio_key":"69a74bbf681b4f1f011b29c338e22863c761a5deb4da9e68670f0c0c98688af7","entity_key":"ex_ko_ko-forms-signs_field_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6af8ea117dcf3c6456265346dba3cb64442a2b87607c18263c27a533084e6ca3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/69a74bbf681b4f1f011b29c338e22863c761a5deb4da9e68670f0c0c98688af7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_survival_words_01 -> audio/generated/ko-KR/utterances/6fa86e68ce3c3d7c44074abb5623260aa0dab5d9073837a05155ecbf7110e784.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f25ebf36-4885-5549-b0d8-d1e01edc2197', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_survival_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1f2ad793952adf27356a2c4be0c2612d6b04e0ed79b80c1fcee48166787f1f5b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8935caf7-14e0-592c-9816-1b71c8efd235', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f25ebf36-4885-5549-b0d8-d1e01edc2197', 1), '1f2ad793952adf27356a2c4be0c2612d6b04e0ed79b80c1fcee48166787f1f5b',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/6fa86e68ce3c3d7c44074abb5623260aa0dab5d9073837a05155ecbf7110e784.mp3', 1488, '2026-09-14 13:43:21.332053', 'eed575c8bf221b8c12a0d186e895887a7c1d695ad0eb8198e2ad67e77a2e128c', 'validated', '{"audio_key":"6fa86e68ce3c3d7c44074abb5623260aa0dab5d9073837a05155ecbf7110e784","entity_key":"u_survival_words_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"eed575c8bf221b8c12a0d186e895887a7c1d695ad0eb8198e2ad67e77a2e128c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/6fa86e68ce3c3d7c44074abb5623260aa0dab5d9073837a05155ecbf7110e784.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ko_ko-real-life-numbers_date -> audio/generated/ko-KR/utterances/70023e192d5409f4e13fc4ad3209236a2b066044bc7f217b6abc2eda443959e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8d60fdc4-9632-519c-a34f-629257137717', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ko_ko-real-life-numbers_date')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8db3a24dc6f22eccd0505175371e0a9aed72c80b266ff85fc4962af1bc4a1278'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0a00b510-ea4d-5180-b0ac-b6070f9426c1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8d60fdc4-9632-519c-a34f-629257137717', 1), '8db3a24dc6f22eccd0505175371e0a9aed72c80b266ff85fc4962af1bc4a1278',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/70023e192d5409f4e13fc4ad3209236a2b066044bc7f217b6abc2eda443959e7.mp3', 1280, '2026-09-14 13:43:22.313863', '2673e55cf9fe04bd55f5742fbcbebefc372c234a97905cf2113c463ae32864e4', 'validated', '{"audio_key":"70023e192d5409f4e13fc4ad3209236a2b066044bc7f217b6abc2eda443959e7","entity_key":"u_ko_ko-real-life-numbers_date","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2673e55cf9fe04bd55f5742fbcbebefc372c234a97905cf2113c463ae32864e4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/70023e192d5409f4e13fc4ad3209236a2b066044bc7f217b6abc2eda443959e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_ko-real-life-numbers:example:3 -> audio/generated/ko-KR/utterances/70023e192d5409f4e13fc4ad3209236a2b066044bc7f217b6abc2eda443959e7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('a256bead-50a6-54dc-9d7a-08eced937299', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_ko-real-life-numbers:example:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8db3a24dc6f22eccd0505175371e0a9aed72c80b266ff85fc4962af1bc4a1278'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6bd4c30-537c-5ac6-9cdd-1673200aba07', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('a256bead-50a6-54dc-9d7a-08eced937299', 1), '8db3a24dc6f22eccd0505175371e0a9aed72c80b266ff85fc4962af1bc4a1278',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/70023e192d5409f4e13fc4ad3209236a2b066044bc7f217b6abc2eda443959e7.mp3', 1280, '2026-09-14 13:43:22.313863', '2673e55cf9fe04bd55f5742fbcbebefc372c234a97905cf2113c463ae32864e4', 'validated', '{"audio_key":"70023e192d5409f4e13fc4ad3209236a2b066044bc7f217b6abc2eda443959e7","entity_key":"g_ko_ko-real-life-numbers:example:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2673e55cf9fe04bd55f5742fbcbebefc372c234a97905cf2113c463ae32864e4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/70023e192d5409f4e13fc4ad3209236a2b066044bc7f217b6abc2eda443959e7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_ko_block_hear_mi -> audio/generated/ko-KR/utterances/71479725a34bd707536b959ed9b2f85086e2cf338646270055acadd6bcb7c7eb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b0faa0ab-b2ee-5bb4-9739-5c99a43577d9', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_ko_block_hear_mi')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e83af8fc06c76dbbc509e279c485cdbb11b9b78ae67cd595a0621ca0aefa027'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('023b8393-36f2-53a7-967b-fe2d55788b87', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b0faa0ab-b2ee-5bb4-9739-5c99a43577d9', 1), '9e83af8fc06c76dbbc509e279c485cdbb11b9b78ae67cd595a0621ca0aefa027',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/71479725a34bd707536b959ed9b2f85086e2cf338646270055acadd6bcb7c7eb.mp3', 862, '2026-09-14 13:43:23.275310', 'fcabad79279987c4ea0bd0c87e2e0bfa52b175095615355699003e9b0fd26fb3', 'validated', '{"audio_key":"71479725a34bd707536b959ed9b2f85086e2cf338646270055acadd6bcb7c7eb","entity_key":"ex_ko_block_hear_mi","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fcabad79279987c4ea0bd0c87e2e0bfa52b175095615355699003e9b0fd26fb3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/71479725a34bd707536b959ed9b2f85086e2cf338646270055acadd6bcb7c7eb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_objects_02 -> audio/generated/ko-KR/utterances/7705b567b283892ef1e3299ba474cb2bdd7c0017d9171ae5fcc78603c9245401.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8715216c-e88b-5a30-b07c-d89bf2d749a2', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_objects_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77f42f3ec34e8bb9f14dc8ed8a0aa4c74b642fb547f180b830c430c8ece82b88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('469fab5f-8dec-5cd6-a84c-bb6b0a779d74', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8715216c-e88b-5a30-b07c-d89bf2d749a2', 1), '77f42f3ec34e8bb9f14dc8ed8a0aa4c74b642fb547f180b830c430c8ece82b88',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7705b567b283892ef1e3299ba474cb2bdd7c0017d9171ae5fcc78603c9245401.mp3', 1071, '2026-09-14 13:43:24.248283', 'db1d084f8017acf8f7c75ce75845fdd765f886e42c4f6706d9b831c9b1e7a38d', 'validated', '{"audio_key":"7705b567b283892ef1e3299ba474cb2bdd7c0017d9171ae5fcc78603c9245401","entity_key":"u_first_objects_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"db1d084f8017acf8f7c75ce75845fdd765f886e42c4f6706d9b831c9b1e7a38d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7705b567b283892ef1e3299ba474cb2bdd7c0017d9171ae5fcc78603c9245401.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_objects_01_listen -> audio/generated/ko-KR/utterances/7705b567b283892ef1e3299ba474cb2bdd7c0017d9171ae5fcc78603c9245401.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('92b40329-78b3-5c03-9c97-fbd6e43bdeb8', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_objects_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77f42f3ec34e8bb9f14dc8ed8a0aa4c74b642fb547f180b830c430c8ece82b88'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('309a53c5-7bfd-5fe2-b42d-145f5f677bbe', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('92b40329-78b3-5c03-9c97-fbd6e43bdeb8', 1), '77f42f3ec34e8bb9f14dc8ed8a0aa4c74b642fb547f180b830c430c8ece82b88',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7705b567b283892ef1e3299ba474cb2bdd7c0017d9171ae5fcc78603c9245401.mp3', 1071, '2026-09-14 13:43:24.248283', 'db1d084f8017acf8f7c75ce75845fdd765f886e42c4f6706d9b831c9b1e7a38d', 'validated', '{"audio_key":"7705b567b283892ef1e3299ba474cb2bdd7c0017d9171ae5fcc78603c9245401","entity_key":"e_first_objects_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"db1d084f8017acf8f7c75ce75845fdd765f886e42c4f6706d9b831c9b1e7a38d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7705b567b283892ef1e3299ba474cb2bdd7c0017d9171ae5fcc78603c9245401.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_block_layout:example:2 -> audio/generated/ko-KR/utterances/7a26a760ce92dcde9e381fc211f6bf2ed2f7f6927d102368e6d55a15866762b8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('5141a135-23e9-5a17-abd3-e0ae05326840', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_block_layout:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a5847a4f054a0b2990d8782cbb74c166ca5365188f3ec17a98c691e6ff910d6c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a594388d-7184-575d-ac2d-308d93ca1156', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('5141a135-23e9-5a17-abd3-e0ae05326840', 1), 'a5847a4f054a0b2990d8782cbb74c166ca5365188f3ec17a98c691e6ff910d6c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7a26a760ce92dcde9e381fc211f6bf2ed2f7f6927d102368e6d55a15866762b8.mp3', 1384, '2026-09-14 13:43:25.284510', '578ec11fbf7581385d29003b116417aac6e0451d3c1f7dabf01324854eb0d18e', 'validated', '{"audio_key":"7a26a760ce92dcde9e381fc211f6bf2ed2f7f6927d102368e6d55a15866762b8","entity_key":"g_ko_block_layout:example:2","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"578ec11fbf7581385d29003b116417aac6e0451d3c1f7dabf01324854eb0d18e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7a26a760ce92dcde9e381fc211f6bf2ed2f7f6927d102368e6d55a15866762b8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ko_meaning_tteut -> audio/generated/ko-KR/utterances/7a4575234eb44287d67ad3ec3bdf1bf28e5b94a37f36fedf435082669c3ea713.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('88a7fa82-079d-5bc5-aba8-653691e7c159', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ko_meaning_tteut')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae713b65439d2c5c68601f886c885c9bf9839769e45c6de8c42f382e8c4a0f2f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('395d6e56-cd8c-56c9-b007-3a783b140459', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('88a7fa82-079d-5bc5-aba8-653691e7c159', 1), 'ae713b65439d2c5c68601f886c885c9bf9839769e45c6de8c42f382e8c4a0f2f',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7a4575234eb44287d67ad3ec3bdf1bf28e5b94a37f36fedf435082669c3ea713.mp3', 1332, '2026-09-14 13:43:26.274951', '7fcdc995cdef3834bddab88a8de1aee64bae9e36471f2e1d3419a5c90547417b', 'validated', '{"audio_key":"7a4575234eb44287d67ad3ec3bdf1bf28e5b94a37f36fedf435082669c3ea713","entity_key":"u_ko_meaning_tteut","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7fcdc995cdef3834bddab88a8de1aee64bae9e36471f2e1d3419a5c90547417b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7a4575234eb44287d67ad3ec3bdf1bf28e5b94a37f36fedf435082669c3ea713.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_meaning_chunks:example:1 -> audio/generated/ko-KR/utterances/7a4575234eb44287d67ad3ec3bdf1bf28e5b94a37f36fedf435082669c3ea713.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('5e5b068b-752b-503c-92c8-54f52742ac0e', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_meaning_chunks:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae713b65439d2c5c68601f886c885c9bf9839769e45c6de8c42f382e8c4a0f2f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4f91665-20c3-596d-ab64-8fc8fd20b67d', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('5e5b068b-752b-503c-92c8-54f52742ac0e', 1), 'ae713b65439d2c5c68601f886c885c9bf9839769e45c6de8c42f382e8c4a0f2f',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7a4575234eb44287d67ad3ec3bdf1bf28e5b94a37f36fedf435082669c3ea713.mp3', 1332, '2026-09-14 13:43:26.274951', '7fcdc995cdef3834bddab88a8de1aee64bae9e36471f2e1d3419a5c90547417b', 'validated', '{"audio_key":"7a4575234eb44287d67ad3ec3bdf1bf28e5b94a37f36fedf435082669c3ea713","entity_key":"g_ko_meaning_chunks:example:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7fcdc995cdef3834bddab88a8de1aee64bae9e36471f2e1d3419a5c90547417b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7a4575234eb44287d67ad3ec3bdf1bf28e5b94a37f36fedf435082669c3ea713.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_ready_gate:example:3 -> audio/generated/ko-KR/utterances/7a4575234eb44287d67ad3ec3bdf1bf28e5b94a37f36fedf435082669c3ea713.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('0621062c-9141-5b25-98f3-c2f793da23a2', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_ready_gate:example:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ae713b65439d2c5c68601f886c885c9bf9839769e45c6de8c42f382e8c4a0f2f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ed2b7dc-845e-5732-a926-2e84efa7dc00', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('0621062c-9141-5b25-98f3-c2f793da23a2', 1), 'ae713b65439d2c5c68601f886c885c9bf9839769e45c6de8c42f382e8c4a0f2f',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7a4575234eb44287d67ad3ec3bdf1bf28e5b94a37f36fedf435082669c3ea713.mp3', 1332, '2026-09-14 13:43:26.274951', '7fcdc995cdef3834bddab88a8de1aee64bae9e36471f2e1d3419a5c90547417b', 'validated', '{"audio_key":"7a4575234eb44287d67ad3ec3bdf1bf28e5b94a37f36fedf435082669c3ea713","entity_key":"g_ko_ready_gate:example:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7fcdc995cdef3834bddab88a8de1aee64bae9e36471f2e1d3419a5c90547417b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7a4575234eb44287d67ad3ec3bdf1bf28e5b94a37f36fedf435082669c3ea713.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ko_ko-real-life-numbers_phone -> audio/generated/ko-KR/utterances/7f89966bb5d46d6a02b87be4e3833a873af56c8bdfcc7795e1644191c2d59eea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1a45fc5c-ad44-5b41-ac1a-4ce24220618b', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ko_ko-real-life-numbers_phone')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6787b9084d72d6255456ff518eddb41ac9d195c76e1bd473947602b782cade4c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0efdb73-398c-5c12-a47f-7d2e559f751e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1a45fc5c-ad44-5b41-ac1a-4ce24220618b', 1), '6787b9084d72d6255456ff518eddb41ac9d195c76e1bd473947602b782cade4c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7f89966bb5d46d6a02b87be4e3833a873af56c8bdfcc7795e1644191c2d59eea.mp3', 2455, '2026-09-14 13:43:27.369465', '1b3e035fb2616b5b717b6b56d3d23540c7393d7978785824a44526d516bd6fe9', 'validated', '{"audio_key":"7f89966bb5d46d6a02b87be4e3833a873af56c8bdfcc7795e1644191c2d59eea","entity_key":"u_ko_ko-real-life-numbers_phone","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1b3e035fb2616b5b717b6b56d3d23540c7393d7978785824a44526d516bd6fe9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7f89966bb5d46d6a02b87be4e3833a873af56c8bdfcc7795e1644191c2d59eea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_ko-real-life-numbers:example:1 -> audio/generated/ko-KR/utterances/7f89966bb5d46d6a02b87be4e3833a873af56c8bdfcc7795e1644191c2d59eea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('a256bead-50a6-54dc-9d7a-08eced937299', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_ko-real-life-numbers:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6787b9084d72d6255456ff518eddb41ac9d195c76e1bd473947602b782cade4c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('52f18630-7d9d-5c47-9e69-2d40daf95f3e', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('a256bead-50a6-54dc-9d7a-08eced937299', 1), '6787b9084d72d6255456ff518eddb41ac9d195c76e1bd473947602b782cade4c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7f89966bb5d46d6a02b87be4e3833a873af56c8bdfcc7795e1644191c2d59eea.mp3', 2455, '2026-09-14 13:43:27.369465', '1b3e035fb2616b5b717b6b56d3d23540c7393d7978785824a44526d516bd6fe9', 'validated', '{"audio_key":"7f89966bb5d46d6a02b87be4e3833a873af56c8bdfcc7795e1644191c2d59eea","entity_key":"g_ko_ko-real-life-numbers:example:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1b3e035fb2616b5b717b6b56d3d23540c7393d7978785824a44526d516bd6fe9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7f89966bb5d46d6a02b87be4e3833a873af56c8bdfcc7795e1644191c2d59eea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_ko_ko-real-world-gate_phone_listen -> audio/generated/ko-KR/utterances/7f89966bb5d46d6a02b87be4e3833a873af56c8bdfcc7795e1644191c2d59eea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7c2d86e3-3494-53bd-8b09-ba404b18fa66', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_ko_ko-real-world-gate_phone_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6787b9084d72d6255456ff518eddb41ac9d195c76e1bd473947602b782cade4c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a03de9d8-ece3-5008-b0a9-d5ad0d500f45', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7c2d86e3-3494-53bd-8b09-ba404b18fa66', 1), '6787b9084d72d6255456ff518eddb41ac9d195c76e1bd473947602b782cade4c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7f89966bb5d46d6a02b87be4e3833a873af56c8bdfcc7795e1644191c2d59eea.mp3', 2455, '2026-09-14 13:43:27.369465', '1b3e035fb2616b5b717b6b56d3d23540c7393d7978785824a44526d516bd6fe9', 'validated', '{"audio_key":"7f89966bb5d46d6a02b87be4e3833a873af56c8bdfcc7795e1644191c2d59eea","entity_key":"ex_ko_ko-real-world-gate_phone_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1b3e035fb2616b5b717b6b56d3d23540c7393d7978785824a44526d516bd6fe9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7f89966bb5d46d6a02b87be4e3833a873af56c8bdfcc7795e1644191c2d59eea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ko_jamo_consonants -> audio/generated/ko-KR/utterances/8d1fa7170b6457b11e7e86c02b20f8ac7691fdadab46a45003da4f055f29ba2b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('67f0abf1-46e1-5d6b-a9c7-1136bed0f3ce', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ko_jamo_consonants')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c81cf21c047dfc704cb05bced48b1b2e96214752080bcb2ae1e781e8b02df701'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('337e4273-4f5b-5b84-aec4-e231b0a21c33', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('67f0abf1-46e1-5d6b-a9c7-1136bed0f3ce', 1), 'c81cf21c047dfc704cb05bced48b1b2e96214752080bcb2ae1e781e8b02df701',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/8d1fa7170b6457b11e7e86c02b20f8ac7691fdadab46a45003da4f055f29ba2b.mp3', 1253, '2026-09-14 13:43:28.360420', '33fe7f72fca98543348cd360bb375d9690666d48a4d630be072c0cfd709299a1', 'validated', '{"audio_key":"8d1fa7170b6457b11e7e86c02b20f8ac7691fdadab46a45003da4f055f29ba2b","entity_key":"u_ko_jamo_consonants","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"33fe7f72fca98543348cd360bb375d9690666d48a4d630be072c0cfd709299a1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/8d1fa7170b6457b11e7e86c02b20f8ac7691fdadab46a45003da4f055f29ba2b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ko_block_final_ieung -> audio/generated/ko-KR/utterances/8e268e5818d06c3117d0c6b567b61533d03c6dd513313b76729843aa284c9805.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('aa766cc6-3c74-54b2-a21c-3abc1a251def', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ko_block_final_ieung')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34d82d465fabd79e01d54d3bbf8b7e3c4b5f290bcb85e51c58ca531437c639ff'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('573ec55b-6e57-54e4-a270-320b79a94001', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('aa766cc6-3c74-54b2-a21c-3abc1a251def', 1), '34d82d465fabd79e01d54d3bbf8b7e3c4b5f290bcb85e51c58ca531437c639ff',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/8e268e5818d06c3117d0c6b567b61533d03c6dd513313b76729843aa284c9805.mp3', 1201, '2026-09-14 13:43:29.324165', 'a52d90475789e68b2fc027de95803c6a361c9ba0bfde446665dcb1923c668f78', 'validated', '{"audio_key":"8e268e5818d06c3117d0c6b567b61533d03c6dd513313b76729843aa284c9805","entity_key":"u_ko_block_final_ieung","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a52d90475789e68b2fc027de95803c6a361c9ba0bfde446665dcb1923c668f78","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/8e268e5818d06c3117d0c6b567b61533d03c6dd513313b76729843aa284c9805.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ko_ko-real-life-numbers_n15 -> audio/generated/ko-KR/utterances/911413544434b8b510c44f36b561a93db4e3bf9a8a4a9372588ef5c00b9c9d8b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ab97e6f1-889b-5e81-afb0-0ce6b216e27d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ko_ko-real-life-numbers_n15')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '040202745858e436ea647cad2d5a6939d0b70006148ac291855b2a5fc05eca48'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bba04274-49bc-55b0-8b26-8f00f0c09d26', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ab97e6f1-889b-5e81-afb0-0ce6b216e27d', 1), '040202745858e436ea647cad2d5a6939d0b70006148ac291855b2a5fc05eca48',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/911413544434b8b510c44f36b561a93db4e3bf9a8a4a9372588ef5c00b9c9d8b.mp3', 862, '2026-09-14 13:43:30.271713', 'ccfd92677ffcd50c67cd0ca67666ba06b73bdade14bc624af30289f6af6bfa82', 'validated', '{"audio_key":"911413544434b8b510c44f36b561a93db4e3bf9a8a4a9372588ef5c00b9c9d8b","entity_key":"u_ko_ko-real-life-numbers_n15","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ccfd92677ffcd50c67cd0ca67666ba06b73bdade14bc624af30289f6af6bfa82","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/911413544434b8b510c44f36b561a93db4e3bf9a8a4a9372588ef5c00b9c9d8b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_ko_ko-real-life-numbers_number_listen -> audio/generated/ko-KR/utterances/911413544434b8b510c44f36b561a93db4e3bf9a8a4a9372588ef5c00b9c9d8b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('00dc7d89-6f0f-5fdd-a730-d013e48e7eae', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_ko_ko-real-life-numbers_number_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '040202745858e436ea647cad2d5a6939d0b70006148ac291855b2a5fc05eca48'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('866b3e02-f87c-5e43-b59c-dc64ac496ea5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('00dc7d89-6f0f-5fdd-a730-d013e48e7eae', 1), '040202745858e436ea647cad2d5a6939d0b70006148ac291855b2a5fc05eca48',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/911413544434b8b510c44f36b561a93db4e3bf9a8a4a9372588ef5c00b9c9d8b.mp3', 862, '2026-09-14 13:43:30.271713', 'ccfd92677ffcd50c67cd0ca67666ba06b73bdade14bc624af30289f6af6bfa82', 'validated', '{"audio_key":"911413544434b8b510c44f36b561a93db4e3bf9a8a4a9372588ef5c00b9c9d8b","entity_key":"ex_ko_ko-real-life-numbers_number_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ccfd92677ffcd50c67cd0ca67666ba06b73bdade14bc624af30289f6af6bfa82","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/911413544434b8b510c44f36b561a93db4e3bf9a8a4a9372588ef5c00b9c9d8b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_jamo_consonants:example:2 -> audio/generated/ko-KR/utterances/9b39ba9e4576a7706e7460de404f547cf2f368fc61e4de908169b1b16895077f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('4ecc43a0-0623-5bc1-acbc-bdbaabcaef18', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_jamo_consonants:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34f404d9d0a79aa558baab1bc8c72555b392dc1bd242f069dd81c2e6817c8f70'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('01455f51-a091-515e-baf6-cef24601aa0c', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('4ecc43a0-0623-5bc1-acbc-bdbaabcaef18', 1), '34f404d9d0a79aa558baab1bc8c72555b392dc1bd242f069dd81c2e6817c8f70',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/9b39ba9e4576a7706e7460de404f547cf2f368fc61e4de908169b1b16895077f.mp3', 783, '2026-09-14 13:43:31.190914', 'fc03c4a0d86502b1f2bc2b408929710ffaed0352c116a31188f785f0f187221f', 'validated', '{"audio_key":"9b39ba9e4576a7706e7460de404f547cf2f368fc61e4de908169b1b16895077f","entity_key":"g_ko_jamo_consonants:example:2","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fc03c4a0d86502b1f2bc2b408929710ffaed0352c116a31188f785f0f187221f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/9b39ba9e4576a7706e7460de404f547cf2f368fc61e4de908169b1b16895077f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ko_ko-about-me_family -> audio/generated/ko-KR/utterances/9e3c74c0d6f98338db71e6a05a64f4914670a1fbb482b8f8774b0b8e41dc0f3d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('644ef33a-4652-51b6-bd86-cdda40e8db3e', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ko_ko-about-me_family')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eff5afb76409af2679c7c6dcfd3024b902aeb2a1b2a9cd4c6a8e3b12acc28d8a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d842dbd0-94ca-56e6-b01c-1288809b98b5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('644ef33a-4652-51b6-bd86-cdda40e8db3e', 1), 'eff5afb76409af2679c7c6dcfd3024b902aeb2a1b2a9cd4c6a8e3b12acc28d8a',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/9e3c74c0d6f98338db71e6a05a64f4914670a1fbb482b8f8774b0b8e41dc0f3d.mp3', 1253, '2026-09-14 13:43:32.170225', '5d06abb392c052cee61ee510f47384883644fd3267939baaa9fa6b5e5c123fe2', 'validated', '{"audio_key":"9e3c74c0d6f98338db71e6a05a64f4914670a1fbb482b8f8774b0b8e41dc0f3d","entity_key":"u_ko_ko-about-me_family","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5d06abb392c052cee61ee510f47384883644fd3267939baaa9fa6b5e5c123fe2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/9e3c74c0d6f98338db71e6a05a64f4914670a1fbb482b8f8774b0b8e41dc0f3d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_name_03 -> audio/generated/ko-KR/utterances/9e9b366e179afa7a154f201ffbe8ceeae1168ad155c0022d40dc3ae370ba8dea.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('91644906-c10b-5cca-8e51-3817dc661d4f', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_name_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3dcabe999a327b0fba569013d9bb8e7d1c1d8bb8f6eaff32289bec239b94b6ce'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2e460434-e42d-5d30-aec9-4451c6be9535', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('91644906-c10b-5cca-8e51-3817dc661d4f', 1), '3dcabe999a327b0fba569013d9bb8e7d1c1d8bb8f6eaff32289bec239b94b6ce',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/9e9b366e179afa7a154f201ffbe8ceeae1168ad155c0022d40dc3ae370ba8dea.mp3', 1488, '2026-09-14 13:43:33.162323', '76ff1dfc28d5c995d925dae4833fa465cc973408648efc8001d08758cc333949', 'validated', '{"audio_key":"9e9b366e179afa7a154f201ffbe8ceeae1168ad155c0022d40dc3ae370ba8dea","entity_key":"u_my_name_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"76ff1dfc28d5c995d925dae4833fa465cc973408648efc8001d08758cc333949","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/9e9b366e179afa7a154f201ffbe8ceeae1168ad155c0022d40dc3ae370ba8dea.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_numbers_0_10_02 -> audio/generated/ko-KR/utterances/9ef677515e82df3773b9eaffa983531a771e9ac7d3e2029ec50610575260ba8b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('596aa4b3-79ac-5a45-ab2e-5ba7a13025cf', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_numbers_0_10_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '999d9a75a6b08b407e76ecc3c5a48b94faf8405e88d01d6854583fffdbd8d67e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4ba29777-1139-5cad-8890-3caa547826df', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('596aa4b3-79ac-5a45-ab2e-5ba7a13025cf', 1), '999d9a75a6b08b407e76ecc3c5a48b94faf8405e88d01d6854583fffdbd8d67e',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/9ef677515e82df3773b9eaffa983531a771e9ac7d3e2029ec50610575260ba8b.mp3', 1567, '2026-09-14 13:43:34.159297', '4dac541b76ed6a5bb11a0c9b929647ba2a336f147b4d8264da82c425ae3c7008', 'validated', '{"audio_key":"9ef677515e82df3773b9eaffa983531a771e9ac7d3e2029ec50610575260ba8b","entity_key":"u_numbers_0_10_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4dac541b76ed6a5bb11a0c9b929647ba2a336f147b4d8264da82c425ae3c7008","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/9ef677515e82df3773b9eaffa983531a771e9ac7d3e2029ec50610575260ba8b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_numbers_0_10_01_listen -> audio/generated/ko-KR/utterances/9ef677515e82df3773b9eaffa983531a771e9ac7d3e2029ec50610575260ba8b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ea3fe110-9cf0-5b78-ac78-afed114abac8', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_numbers_0_10_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '999d9a75a6b08b407e76ecc3c5a48b94faf8405e88d01d6854583fffdbd8d67e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1a7fccb6-3ae7-5774-8181-b773a85a11ee', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ea3fe110-9cf0-5b78-ac78-afed114abac8', 1), '999d9a75a6b08b407e76ecc3c5a48b94faf8405e88d01d6854583fffdbd8d67e',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/9ef677515e82df3773b9eaffa983531a771e9ac7d3e2029ec50610575260ba8b.mp3', 1567, '2026-09-14 13:43:34.159297', '4dac541b76ed6a5bb11a0c9b929647ba2a336f147b4d8264da82c425ae3c7008', 'validated', '{"audio_key":"9ef677515e82df3773b9eaffa983531a771e9ac7d3e2029ec50610575260ba8b","entity_key":"e_numbers_0_10_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4dac541b76ed6a5bb11a0c9b929647ba2a336f147b4d8264da82c425ae3c7008","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/9ef677515e82df3773b9eaffa983531a771e9ac7d3e2029ec50610575260ba8b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_name_01 -> audio/generated/ko-KR/utterances/ad7e0d6b43bf8ab390293a1e52a0dac49b498fafa326510bb9757de754745a1d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('67ebb6af-b640-5f0a-9ade-7a8419bd1a9e', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_name_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'def36dc0f56ab3cd38400683656b39097cc4eae3fb92da885a3bc5a5e3ca7a55'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f7c314e9-8e2e-5234-a032-e46b2caf4631', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('67ebb6af-b640-5f0a-9ade-7a8419bd1a9e', 1), 'def36dc0f56ab3cd38400683656b39097cc4eae3fb92da885a3bc5a5e3ca7a55',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/ad7e0d6b43bf8ab390293a1e52a0dac49b498fafa326510bb9757de754745a1d.mp3', 1567, '2026-09-14 13:43:35.250028', '6fc23157cf31ae1cc90616161958c723c7df81685f3e168cbcf7471172d4ab8a', 'validated', '{"audio_key":"ad7e0d6b43bf8ab390293a1e52a0dac49b498fafa326510bb9757de754745a1d","entity_key":"u_my_name_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6fc23157cf31ae1cc90616161958c723c7df81685f3e168cbcf7471172d4ab8a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/ad7e0d6b43bf8ab390293a1e52a0dac49b498fafa326510bb9757de754745a1d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ko_ko-real-life-numbers_day -> audio/generated/ko-KR/utterances/b30e6a70a7b88a3238b548a513a4545b7ee44839717a39ab5110c6fde96fde7d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f902ae5b-754e-5b20-9fc6-0105cb83f537', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ko_ko-real-life-numbers_day')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6c95540e90f1a66864be896a441a4a5d4cc012901b4f7494e1faceab210cdd98'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f5da567-7447-50de-8aec-1b4d8706e78a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f902ae5b-754e-5b20-9fc6-0105cb83f537', 1), '6c95540e90f1a66864be896a441a4a5d4cc012901b4f7494e1faceab210cdd98',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/b30e6a70a7b88a3238b548a513a4545b7ee44839717a39ab5110c6fde96fde7d.mp3', 1071, '2026-09-14 13:43:36.217535', '96374f71c354709ae47b22668054952e0581cab028b46c34a5da3bb3c41dcab8', 'validated', '{"audio_key":"b30e6a70a7b88a3238b548a513a4545b7ee44839717a39ab5110c6fde96fde7d","entity_key":"u_ko_ko-real-life-numbers_day","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"96374f71c354709ae47b22668054952e0581cab028b46c34a5da3bb3c41dcab8","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/b30e6a70a7b88a3238b548a513a4545b7ee44839717a39ab5110c6fde96fde7d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_ready_gate:example:1 -> audio/generated/ko-KR/utterances/b977ade52323ee722837fb15d7b60061f616d47dbb142d473a130339d2a0e948.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('0621062c-9141-5b25-98f3-c2f793da23a2', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_ready_gate:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd12e07e2abf5a6fb0fb8f99f649a2cb3ba596c9007ccbf233fddf1804615e132'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('69ebd22b-549f-50e1-b17a-fd1160c04ce6', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('0621062c-9141-5b25-98f3-c2f793da23a2', 1), 'd12e07e2abf5a6fb0fb8f99f649a2cb3ba596c9007ccbf233fddf1804615e132',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/b977ade52323ee722837fb15d7b60061f616d47dbb142d473a130339d2a0e948.mp3', 1280, '2026-09-14 13:43:37.245705', '29b34d9a57440adccf01a0a70354c54b8eac3cd03cce765b5c1429970eb1c7a7', 'validated', '{"audio_key":"b977ade52323ee722837fb15d7b60061f616d47dbb142d473a130339d2a0e948","entity_key":"g_ko_ready_gate:example:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"29b34d9a57440adccf01a0a70354c54b8eac3cd03cce765b5c1429970eb1c7a7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/b977ade52323ee722837fb15d7b60061f616d47dbb142d473a130339d2a0e948.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_hangul_basics_03 -> audio/generated/ko-KR/utterances/bd3575f411de6b32607eaaa86129cdcd19a97b0893d4581b7af2218587c41c49.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('91203686-fc16-50bc-bc63-8c44587e5dbc', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_hangul_basics_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e53b6dbf0e9a345d4105a87a626524596b8aa64db8ec55720bc531c8f7eb5aa2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('841545aa-1086-5643-a3b8-09a740c5fc53', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('91203686-fc16-50bc-bc63-8c44587e5dbc', 1), 'e53b6dbf0e9a345d4105a87a626524596b8aa64db8ec55720bc531c8f7eb5aa2',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/bd3575f411de6b32607eaaa86129cdcd19a97b0893d4581b7af2218587c41c49.mp3', 1515, '2026-09-14 13:43:38.274454', '07593d432a162763e6a3e592c5470f5a4a2dcec79c72ab5465352bb76632caf9', 'validated', '{"audio_key":"bd3575f411de6b32607eaaa86129cdcd19a97b0893d4581b7af2218587c41c49","entity_key":"u_hangul_basics_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"07593d432a162763e6a3e592c5470f5a4a2dcec79c72ab5465352bb76632caf9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/bd3575f411de6b32607eaaa86129cdcd19a97b0893d4581b7af2218587c41c49.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ko_ko-real-life-numbers_price -> audio/generated/ko-KR/utterances/bf12fbcede13a2ef71502bb6ad56b3c51076e3d9dc829fcad85e323a3b96249b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('74a4714d-1f24-5945-99c7-2d49a83adb47', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ko_ko-real-life-numbers_price')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b332361b479b105b2a370da3b15a39e8b53dccc78b078f31389185a9a725c272'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('534f2d96-ac15-5b09-bae9-57db788abae1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('74a4714d-1f24-5945-99c7-2d49a83adb47', 1), 'b332361b479b105b2a370da3b15a39e8b53dccc78b078f31389185a9a725c272',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/bf12fbcede13a2ef71502bb6ad56b3c51076e3d9dc829fcad85e323a3b96249b.mp3', 1280, '2026-09-14 13:43:39.229913', '65a530e27867c1ca8e9b5238baf0f7f39a08c5d0d4e8f6883b4b2111738ba281', 'validated', '{"audio_key":"bf12fbcede13a2ef71502bb6ad56b3c51076e3d9dc829fcad85e323a3b96249b","entity_key":"u_ko_ko-real-life-numbers_price","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"65a530e27867c1ca8e9b5238baf0f7f39a08c5d0d4e8f6883b4b2111738ba281","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/bf12fbcede13a2ef71502bb6ad56b3c51076e3d9dc829fcad85e323a3b96249b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_ko-real-life-numbers:example:2 -> audio/generated/ko-KR/utterances/bf12fbcede13a2ef71502bb6ad56b3c51076e3d9dc829fcad85e323a3b96249b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('a256bead-50a6-54dc-9d7a-08eced937299', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_ko-real-life-numbers:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b332361b479b105b2a370da3b15a39e8b53dccc78b078f31389185a9a725c272'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eb2baa8c-c75c-55f9-afd1-bf6b2689cb15', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('a256bead-50a6-54dc-9d7a-08eced937299', 1), 'b332361b479b105b2a370da3b15a39e8b53dccc78b078f31389185a9a725c272',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/bf12fbcede13a2ef71502bb6ad56b3c51076e3d9dc829fcad85e323a3b96249b.mp3', 1280, '2026-09-14 13:43:39.229913', '65a530e27867c1ca8e9b5238baf0f7f39a08c5d0d4e8f6883b4b2111738ba281', 'validated', '{"audio_key":"bf12fbcede13a2ef71502bb6ad56b3c51076e3d9dc829fcad85e323a3b96249b","entity_key":"g_ko_ko-real-life-numbers:example:2","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"65a530e27867c1ca8e9b5238baf0f7f39a08c5d0d4e8f6883b4b2111738ba281","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/bf12fbcede13a2ef71502bb6ad56b3c51076e3d9dc829fcad85e323a3b96249b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_jamo_vowels:example:4 -> audio/generated/ko-KR/utterances/bfd38316831019818d36ee882f32394981bbd8eabb3ddaf3ccfc48e12fda8f4b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('534ecb75-6efd-542d-8cf6-a6480f06a370', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_jamo_vowels:example:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dd7f4bf020e9b76751e7f9a32562a11aa47b297dabbfc2e51262f1ec81e716ad'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2c4f473a-46d4-5c1e-b361-517db94c64b2', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('534ecb75-6efd-542d-8cf6-a6480f06a370', 1), 'dd7f4bf020e9b76751e7f9a32562a11aa47b297dabbfc2e51262f1ec81e716ad',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/bfd38316831019818d36ee882f32394981bbd8eabb3ddaf3ccfc48e12fda8f4b.mp3', 653, '2026-09-14 13:43:40.150314', '13098d79c5fb7f10f8f763cf4f9928db1127595aab5f0ac9fcaa0419e39c2127', 'validated', '{"audio_key":"bfd38316831019818d36ee882f32394981bbd8eabb3ddaf3ccfc48e12fda8f4b","entity_key":"g_ko_jamo_vowels:example:4","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"13098d79c5fb7f10f8f763cf4f9928db1127595aab5f0ac9fcaa0419e39c2127","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/bfd38316831019818d36ee882f32394981bbd8eabb3ddaf3ccfc48e12fda8f4b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_numbers_0_10_03 -> audio/generated/ko-KR/utterances/c43e3f9ee13d6ddff2df7fb325f5c8b73af7b1a39a565e79041760ff2799eec6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('9d31bcdf-b845-5060-8710-e7db83cd95ab', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_numbers_0_10_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '01bebbbe81541c3e1c3db1c77539f30e862249d9a3dc048bad61bc7d2c5f8baf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e703de49-7054-5da0-94ce-4fa4acf97154', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('9d31bcdf-b845-5060-8710-e7db83cd95ab', 1), '01bebbbe81541c3e1c3db1c77539f30e862249d9a3dc048bad61bc7d2c5f8baf',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c43e3f9ee13d6ddff2df7fb325f5c8b73af7b1a39a565e79041760ff2799eec6.mp3', 1201, '2026-09-14 13:43:41.104408', 'dd46a8f684969a6d118698c6ba1ad214295c1eed0ebfbea528bad5e5c31f0f00', 'validated', '{"audio_key":"c43e3f9ee13d6ddff2df7fb325f5c8b73af7b1a39a565e79041760ff2799eec6","entity_key":"u_numbers_0_10_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"dd46a8f684969a6d118698c6ba1ad214295c1eed0ebfbea528bad5e5c31f0f00","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c43e3f9ee13d6ddff2df7fb325f5c8b73af7b1a39a565e79041760ff2799eec6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_block_ieung:example:1 -> audio/generated/ko-KR/utterances/c504bdfbd3039d67f0a525ffec052a40f0619ee36979e1d352a9094e9ad1d22e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('b439c62c-d7ba-5f52-8f7b-e2289fd01a6d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_block_ieung:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd6ce479be9ddc9b7de97f62dc4c7c9c1319300d5635e0de0f35d474f380b2ea5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2669935b-8638-524a-a53b-6b904286d707', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('b439c62c-d7ba-5f52-8f7b-e2289fd01a6d', 1), 'd6ce479be9ddc9b7de97f62dc4c7c9c1319300d5635e0de0f35d474f380b2ea5',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c504bdfbd3039d67f0a525ffec052a40f0619ee36979e1d352a9094e9ad1d22e.mp3', 783, '2026-09-14 13:43:42.034009', '36079608ecf42110127003ad9072f2bdbdfe6b5a6cb6efc37ed12e49c9882680', 'validated', '{"audio_key":"c504bdfbd3039d67f0a525ffec052a40f0619ee36979e1d352a9094e9ad1d22e","entity_key":"g_ko_block_ieung:example:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"36079608ecf42110127003ad9072f2bdbdfe6b5a6cb6efc37ed12e49c9882680","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c504bdfbd3039d67f0a525ffec052a40f0619ee36979e1d352a9094e9ad1d22e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_how_are_you_01 -> audio/generated/ko-KR/utterances/c574b280f5ef37ffcbe0f8f914a0d8844dca4856b4bd1deeecc16a444cf45bc0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c03aa965-a97f-53c6-8ce7-95ee753b3795', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_how_are_you_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '478c962d7db98238a9254aae79d1cf571f955f4bf6b28c17386f1c51fd1f3f66'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('78baa411-5b72-5dd2-9bd1-f839ed399396', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c03aa965-a97f-53c6-8ce7-95ee753b3795', 1), '478c962d7db98238a9254aae79d1cf571f955f4bf6b28c17386f1c51fd1f3f66',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c574b280f5ef37ffcbe0f8f914a0d8844dca4856b4bd1deeecc16a444cf45bc0.mp3', 1280, '2026-09-14 13:43:43.047392', '4c47a0a1daee8cbbf9a1dba9ab1608c00b46a76bf08c3323b488c1dba795e79c', 'validated', '{"audio_key":"c574b280f5ef37ffcbe0f8f914a0d8844dca4856b4bd1deeecc16a444cf45bc0","entity_key":"u_how_are_you_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4c47a0a1daee8cbbf9a1dba9ab1608c00b46a76bf08c3323b488c1dba795e79c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c574b280f5ef37ffcbe0f8f914a0d8844dca4856b4bd1deeecc16a444cf45bc0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ko_ko-about-me_age -> audio/generated/ko-KR/utterances/c8898230bcfa78efb0f7fe82bad956958dcc2e48850374bf6b05dfe7fb66fdfd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4007e0f1-6ff3-5129-9880-4df12132bade', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ko_ko-about-me_age')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '980077856d3b41c2260e9598d3a2f2c62ad369e14908675a84224c27d0997d8a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3bd166a0-cf12-5bb7-a38f-712e10474312', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4007e0f1-6ff3-5129-9880-4df12132bade', 1), '980077856d3b41c2260e9598d3a2f2c62ad369e14908675a84224c27d0997d8a',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c8898230bcfa78efb0f7fe82bad956958dcc2e48850374bf6b05dfe7fb66fdfd.mp3', 1384, '2026-09-14 13:43:44.098001', '72eaeed677d7d82d22796923d857b5a3a51148b48cf9473b248414d9533a635b', 'validated', '{"audio_key":"c8898230bcfa78efb0f7fe82bad956958dcc2e48850374bf6b05dfe7fb66fdfd","entity_key":"u_ko_ko-about-me_age","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"72eaeed677d7d82d22796923d857b5a3a51148b48cf9473b248414d9533a635b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c8898230bcfa78efb0f7fe82bad956958dcc2e48850374bf6b05dfe7fb66fdfd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_ko-about-me:example:2 -> audio/generated/ko-KR/utterances/c8898230bcfa78efb0f7fe82bad956958dcc2e48850374bf6b05dfe7fb66fdfd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('c6f5a1b7-34ae-5225-8c6c-94871a0fce6a', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_ko-about-me:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '980077856d3b41c2260e9598d3a2f2c62ad369e14908675a84224c27d0997d8a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('577a4113-b089-5766-a5a6-744e964a4a6b', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('c6f5a1b7-34ae-5225-8c6c-94871a0fce6a', 1), '980077856d3b41c2260e9598d3a2f2c62ad369e14908675a84224c27d0997d8a',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c8898230bcfa78efb0f7fe82bad956958dcc2e48850374bf6b05dfe7fb66fdfd.mp3', 1384, '2026-09-14 13:43:44.098001', '72eaeed677d7d82d22796923d857b5a3a51148b48cf9473b248414d9533a635b', 'validated', '{"audio_key":"c8898230bcfa78efb0f7fe82bad956958dcc2e48850374bf6b05dfe7fb66fdfd","entity_key":"g_ko_ko-about-me:example:2","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"72eaeed677d7d82d22796923d857b5a3a51148b48cf9473b248414d9533a635b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c8898230bcfa78efb0f7fe82bad956958dcc2e48850374bf6b05dfe7fb66fdfd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_ko-forms-signs:example:1 -> audio/generated/ko-KR/utterances/cbec86ae3b8f9a2b1ef8689a2d9e7dfa53ace98a3565ab9a199c3014d56706bd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('26d9f0da-a21c-512a-89f8-db96190d7435', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_ko-forms-signs:example:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b4231a6de8f04520b2cd01542a56c71ec5bbf6340025c5820372e9826efd674f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bb3ee413-5cd2-5a98-aced-c06c20c4d884', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('26d9f0da-a21c-512a-89f8-db96190d7435', 1), 'b4231a6de8f04520b2cd01542a56c71ec5bbf6340025c5820372e9826efd674f',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/cbec86ae3b8f9a2b1ef8689a2d9e7dfa53ace98a3565ab9a199c3014d56706bd.mp3', 914, '2026-09-14 13:43:45.026224', 'ba19a5134085809191aefe6f7fe6778b05952be1928a1b3932fd9f40519012b2', 'validated', '{"audio_key":"cbec86ae3b8f9a2b1ef8689a2d9e7dfa53ace98a3565ab9a199c3014d56706bd","entity_key":"g_ko_ko-forms-signs:example:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ba19a5134085809191aefe6f7fe6778b05952be1928a1b3932fd9f40519012b2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/cbec86ae3b8f9a2b1ef8689a2d9e7dfa53ace98a3565ab9a199c3014d56706bd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ko_jamo_vowels -> audio/generated/ko-KR/utterances/cc7ce3bc5ee70b125e3cff45d05deb72aa75940b239ec8f20f7fa0b7937e7316.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0723b88a-8616-532f-b482-34e34616ed03', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ko_jamo_vowels')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28b94ecc84a94cdcf535fd5d01ed91c33fc875f96c5ca84d776cc0345635bbd5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d46fd87-4ce2-5717-8f6e-bffe93779b6e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0723b88a-8616-532f-b482-34e34616ed03', 1), '28b94ecc84a94cdcf535fd5d01ed91c33fc875f96c5ca84d776cc0345635bbd5',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/cc7ce3bc5ee70b125e3cff45d05deb72aa75940b239ec8f20f7fa0b7937e7316.mp3', 1201, '2026-09-14 13:43:46.031496', '12ec5d2e1686a4b08474ab55fa2ae8ce1815436f8d8993cffc9c103d5dddb89d', 'validated', '{"audio_key":"cc7ce3bc5ee70b125e3cff45d05deb72aa75940b239ec8f20f7fa0b7937e7316","entity_key":"u_ko_jamo_vowels","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"12ec5d2e1686a4b08474ab55fa2ae8ce1815436f8d8993cffc9c103d5dddb89d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/cc7ce3bc5ee70b125e3cff45d05deb72aa75940b239ec8f20f7fa0b7937e7316.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_hangul_basics_02 -> audio/generated/ko-KR/utterances/d53e180b70f94c68f7609374da6542723ca64574e402c22509c2c9ccc3c21813.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f4d605f8-1fbd-5e2e-9856-2d29e104c4ad', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_hangul_basics_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a7da10b49c85e8278cc952f30280954fc1506b86ab3b69f2175f6ca2e6e2eeaf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce5bd6af-96d2-54da-9e17-f8897f830f13', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f4d605f8-1fbd-5e2e-9856-2d29e104c4ad', 1), 'a7da10b49c85e8278cc952f30280954fc1506b86ab3b69f2175f6ca2e6e2eeaf',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d53e180b70f94c68f7609374da6542723ca64574e402c22509c2c9ccc3c21813.mp3', 1436, '2026-09-14 13:43:47.052631', '1fbed9f81fc8fbe135d09b283567ac3fb150b7e7b4759ebf5cf30c4af968e7a9', 'validated', '{"audio_key":"d53e180b70f94c68f7609374da6542723ca64574e402c22509c2c9ccc3c21813","entity_key":"u_hangul_basics_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1fbed9f81fc8fbe135d09b283567ac3fb150b7e7b4759ebf5cf30c4af968e7a9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d53e180b70f94c68f7609374da6542723ca64574e402c22509c2c9ccc3c21813.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_hangul_basics_01_listen -> audio/generated/ko-KR/utterances/d53e180b70f94c68f7609374da6542723ca64574e402c22509c2c9ccc3c21813.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('82863312-67ff-568a-93f1-7c3afc24878d', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_hangul_basics_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a7da10b49c85e8278cc952f30280954fc1506b86ab3b69f2175f6ca2e6e2eeaf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6cd99d66-9d8d-5bbe-a6f4-b32015128941', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('82863312-67ff-568a-93f1-7c3afc24878d', 1), 'a7da10b49c85e8278cc952f30280954fc1506b86ab3b69f2175f6ca2e6e2eeaf',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d53e180b70f94c68f7609374da6542723ca64574e402c22509c2c9ccc3c21813.mp3', 1436, '2026-09-14 13:43:47.052631', '1fbed9f81fc8fbe135d09b283567ac3fb150b7e7b4759ebf5cf30c4af968e7a9', 'validated', '{"audio_key":"d53e180b70f94c68f7609374da6542723ca64574e402c22509c2c9ccc3c21813","entity_key":"e_hangul_basics_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1fbed9f81fc8fbe135d09b283567ac3fb150b7e7b4759ebf5cf30c4af968e7a9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d53e180b70f94c68f7609374da6542723ca64574e402c22509c2c9ccc3c21813.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_objects_03 -> audio/generated/ko-KR/utterances/d57524319d62aaeedb98665fd84711cd629a5c83774d789047b6b8f24bcb350d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d4a92dc9-3c66-5c1f-a726-2f737fb53cc4', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_objects_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73048d52a534805b4cb97b94046fd9373c3b9aae48650cc7eb93af0485a881bd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d19d277-37dc-52e8-84a3-9e86fc5ca020', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d4a92dc9-3c66-5c1f-a726-2f737fb53cc4', 1), '73048d52a534805b4cb97b94046fd9373c3b9aae48650cc7eb93af0485a881bd',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d57524319d62aaeedb98665fd84711cd629a5c83774d789047b6b8f24bcb350d.mp3', 1201, '2026-09-14 13:43:48.010931', 'c38b8580d2c8cba377a43c0568d9f8231301ec616fc8ace16af17ffe40dcab53', 'validated', '{"audio_key":"d57524319d62aaeedb98665fd84711cd629a5c83774d789047b6b8f24bcb350d","entity_key":"u_first_objects_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c38b8580d2c8cba377a43c0568d9f8231301ec616fc8ace16af17ffe40dcab53","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d57524319d62aaeedb98665fd84711cd629a5c83774d789047b6b8f24bcb350d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_ko_jamo_hear_h -> audio/generated/ko-KR/utterances/d60d909be5398a3b1510c4129d1134a90a64a0859e0f51b728738ce3821d6b91.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('a05a08d0-d4de-5324-b734-ca71c26c2a8e', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_ko_jamo_hear_h')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ec2c0a001ac1822d70cc621fcc6292e1129dc5210eebdc8487449ce2e3fc9dd5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('599e6e95-bdf3-55d5-8154-d15d927d5613', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('a05a08d0-d4de-5324-b734-ca71c26c2a8e', 1), 'ec2c0a001ac1822d70cc621fcc6292e1129dc5210eebdc8487449ce2e3fc9dd5',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d60d909be5398a3b1510c4129d1134a90a64a0859e0f51b728738ce3821d6b91.mp3', 914, '2026-09-14 13:43:48.963278', '20fd881669b7e4cbf4690a1bf850cbb162f7f16a45f590d51139b03dcd92ccb4', 'validated', '{"audio_key":"d60d909be5398a3b1510c4129d1134a90a64a0859e0f51b728738ce3821d6b91","entity_key":"ex_ko_jamo_hear_h","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"20fd881669b7e4cbf4690a1bf850cbb162f7f16a45f590d51139b03dcd92ccb4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d60d909be5398a3b1510c4129d1134a90a64a0859e0f51b728738ce3821d6b91.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_sounds_01 -> audio/generated/ko-KR/utterances/da3538f873b88e6e725af09d42108ecef97ac5c8a9dd3940e4d46df5a208a6b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('5dee1279-d8cf-5d4f-a176-8edba4c24c5f', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_sounds_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '094faa460e51c62c3522a2f769b1fd4dd45f1a689a3c696123554651f766cb31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ef0f990-6e6a-5221-91b9-15e58dbe7226', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('5dee1279-d8cf-5d4f-a176-8edba4c24c5f', 1), '094faa460e51c62c3522a2f769b1fd4dd45f1a689a3c696123554651f766cb31',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/da3538f873b88e6e725af09d42108ecef97ac5c8a9dd3940e4d46df5a208a6b5.mp3', 1018, '2026-09-14 13:43:49.899424', 'ad3009077bd4373ace076183f4e8b9de7ea6da588faf62264e903ef31a5ddddc', 'validated', '{"audio_key":"da3538f873b88e6e725af09d42108ecef97ac5c8a9dd3940e4d46df5a208a6b5","entity_key":"u_first_sounds_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ad3009077bd4373ace076183f4e8b9de7ea6da588faf62264e903ef31a5ddddc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/da3538f873b88e6e725af09d42108ecef97ac5c8a9dd3940e4d46df5a208a6b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ko_ko-forms-signs_name_field -> audio/generated/ko-KR/utterances/dcb73f44e64dd0da9becd22e37f4a818a8a89551475412f1f3e68082fc6cb625.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('65ac7b65-898b-5faa-84ee-42c1e1382b5e', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ko_ko-forms-signs_name_field')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '253d1510caf5362045ce50b1bdc33758fc4b3fd6ddc552d8dc0619784bd9c7d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a38f834-54bf-57c1-9df4-07e3540a9b20', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('65ac7b65-898b-5faa-84ee-42c1e1382b5e', 1), '253d1510caf5362045ce50b1bdc33758fc4b3fd6ddc552d8dc0619784bd9c7d1',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/dcb73f44e64dd0da9becd22e37f4a818a8a89551475412f1f3e68082fc6cb625.mp3', 862, '2026-09-14 13:43:50.855597', 'a4b50835362cea8edcdbbca436026528a6856f062e622cf6c75c5eff77e66534', 'validated', '{"audio_key":"dcb73f44e64dd0da9becd22e37f4a818a8a89551475412f1f3e68082fc6cb625","entity_key":"u_ko_ko-forms-signs_name_field","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a4b50835362cea8edcdbbca436026528a6856f062e622cf6c75c5eff77e66534","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/dcb73f44e64dd0da9becd22e37f4a818a8a89551475412f1f3e68082fc6cb625.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_ko-forms-signs:example:2 -> audio/generated/ko-KR/utterances/dcb73f44e64dd0da9becd22e37f4a818a8a89551475412f1f3e68082fc6cb625.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('26d9f0da-a21c-512a-89f8-db96190d7435', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_ko-forms-signs:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '253d1510caf5362045ce50b1bdc33758fc4b3fd6ddc552d8dc0619784bd9c7d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fda86e7c-4fc6-5a2c-99ce-c138e26b09b7', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('26d9f0da-a21c-512a-89f8-db96190d7435', 1), '253d1510caf5362045ce50b1bdc33758fc4b3fd6ddc552d8dc0619784bd9c7d1',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/dcb73f44e64dd0da9becd22e37f4a818a8a89551475412f1f3e68082fc6cb625.mp3', 862, '2026-09-14 13:43:50.855597', 'a4b50835362cea8edcdbbca436026528a6856f062e622cf6c75c5eff77e66534', 'validated', '{"audio_key":"dcb73f44e64dd0da9becd22e37f4a818a8a89551475412f1f3e68082fc6cb625","entity_key":"g_ko_ko-forms-signs:example:2","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a4b50835362cea8edcdbbca436026528a6856f062e622cf6c75c5eff77e66534","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/dcb73f44e64dd0da9becd22e37f4a818a8a89551475412f1f3e68082fc6cb625.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polite_words_02 -> audio/generated/ko-KR/utterances/ddd643014eb4353591f7c8f244b526fc96ae968bdb593950473f12bf4c26ad31.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f9831b46-fde8-5d6d-ac98-80404b2c6936', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polite_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e951aae21fa2384a611eed2a1d42748cae6cf497908e3b499a14eab036f868d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ac289ef2-ad95-5e00-80fa-de0b56719ab2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f9831b46-fde8-5d6d-ac98-80404b2c6936', 1), 'e951aae21fa2384a611eed2a1d42748cae6cf497908e3b499a14eab036f868d5',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/ddd643014eb4353591f7c8f244b526fc96ae968bdb593950473f12bf4c26ad31.mp3', 1332, '2026-09-14 13:43:51.819441', '03515c65ff2829866f50c5a6c675b28199faff4a8824b7100a06065495983e41', 'validated', '{"audio_key":"ddd643014eb4353591f7c8f244b526fc96ae968bdb593950473f12bf4c26ad31","entity_key":"u_polite_words_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"03515c65ff2829866f50c5a6c675b28199faff4a8824b7100a06065495983e41","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/ddd643014eb4353591f7c8f244b526fc96ae968bdb593950473f12bf4c26ad31.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_polite_words_01_listen -> audio/generated/ko-KR/utterances/ddd643014eb4353591f7c8f244b526fc96ae968bdb593950473f12bf4c26ad31.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('c3e6229a-9916-5b75-8ca8-7d44aff77f14', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_polite_words_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e951aae21fa2384a611eed2a1d42748cae6cf497908e3b499a14eab036f868d5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0ecee9d7-68a0-5cb2-afd0-0a0d8e6b9d92', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('c3e6229a-9916-5b75-8ca8-7d44aff77f14', 1), 'e951aae21fa2384a611eed2a1d42748cae6cf497908e3b499a14eab036f868d5',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/ddd643014eb4353591f7c8f244b526fc96ae968bdb593950473f12bf4c26ad31.mp3', 1332, '2026-09-14 13:43:51.819441', '03515c65ff2829866f50c5a6c675b28199faff4a8824b7100a06065495983e41', 'validated', '{"audio_key":"ddd643014eb4353591f7c8f244b526fc96ae968bdb593950473f12bf4c26ad31","entity_key":"e_polite_words_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"03515c65ff2829866f50c5a6c675b28199faff4a8824b7100a06065495983e41","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/ddd643014eb4353591f7c8f244b526fc96ae968bdb593950473f12bf4c26ad31.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_greetings_01 -> audio/generated/ko-KR/utterances/e7d2d3fda3e86a88edb34e39adc7ee69181d0d3e0f4cbb2b477a4e5c6adfcbaf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('be41f21d-0040-58fc-811e-2df7b1030e9e', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_greetings_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e0f639938481a5a0c0632b36b0fc7d363c18c8ee5b0a2484d168d5c99b55b9f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b24a8fb3-36b8-5b7b-ba25-87886ab61bf3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('be41f21d-0040-58fc-811e-2df7b1030e9e', 1), 'e0f639938481a5a0c0632b36b0fc7d363c18c8ee5b0a2484d168d5c99b55b9f3',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/e7d2d3fda3e86a88edb34e39adc7ee69181d0d3e0f4cbb2b477a4e5c6adfcbaf.mp3', 1384, '2026-09-14 13:43:52.819246', 'bddcfd07a694e3a7bffc6e1e7df901b0cfacbbd6b1eb993d9f54c3d27d78e03b', 'validated', '{"audio_key":"e7d2d3fda3e86a88edb34e39adc7ee69181d0d3e0f4cbb2b477a4e5c6adfcbaf","entity_key":"u_first_greetings_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bddcfd07a694e3a7bffc6e1e7df901b0cfacbbd6b1eb993d9f54c3d27d78e03b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/e7d2d3fda3e86a88edb34e39adc7ee69181d0d3e0f4cbb2b477a4e5c6adfcbaf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_hangul_basics_01 -> audio/generated/ko-KR/utterances/eafe771482ce335c37761754b0e87eebd51c797e61c74e8641b851826601dcd6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('74d89d0d-79d1-5a46-8ee5-0c61e42b75ad', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_hangul_basics_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d83dcf7141ca4532ac828e05879450ecef56fb681d679d83c096d20b625c254'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('610e82ae-2087-5f9a-8384-716f5130b7ee', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('74d89d0d-79d1-5a46-8ee5-0c61e42b75ad', 1), '2d83dcf7141ca4532ac828e05879450ecef56fb681d679d83c096d20b625c254',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/eafe771482ce335c37761754b0e87eebd51c797e61c74e8641b851826601dcd6.mp3', 1515, '2026-09-14 13:43:53.862045', '1876cb17ca1bd6e4d8f2c7b327dcf7095fab7d5902b2b0049f9311a9eb6ad470', 'validated', '{"audio_key":"eafe771482ce335c37761754b0e87eebd51c797e61c74e8641b851826601dcd6","entity_key":"u_hangul_basics_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1876cb17ca1bd6e4d8f2c7b327dcf7095fab7d5902b2b0049f9311a9eb6ad470","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/eafe771482ce335c37761754b0e87eebd51c797e61c74e8641b851826601dcd6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_name_04 -> audio/generated/ko-KR/utterances/eef47246d6ce27a6830f4d01b4a65c93b66bd37d07778adb8d5593f49789ebef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('32b34ad4-e6af-526c-96f2-2be364932f41', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_name_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4c8e544dfe301d06503ad76d69efb80826f504b87b0a2cdbf3c0fea4bee456c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6476aaa3-646d-5f7a-bb01-4df09768f8a3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('32b34ad4-e6af-526c-96f2-2be364932f41', 1), 'a4c8e544dfe301d06503ad76d69efb80826f504b87b0a2cdbf3c0fea4bee456c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/eef47246d6ce27a6830f4d01b4a65c93b66bd37d07778adb8d5593f49789ebef.mp3', 1515, '2026-09-14 13:43:54.889357', 'ef0fca721d35a11c5d65f11a9e356f94fbb934f5c3233b325535da3294c5fedd', 'validated', '{"audio_key":"eef47246d6ce27a6830f4d01b4a65c93b66bd37d07778adb8d5593f49789ebef","entity_key":"u_my_name_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ef0fca721d35a11c5d65f11a9e356f94fbb934f5c3233b325535da3294c5fedd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/eef47246d6ce27a6830f4d01b4a65c93b66bd37d07778adb8d5593f49789ebef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_my_name_02_listen -> audio/generated/ko-KR/utterances/eef47246d6ce27a6830f4d01b4a65c93b66bd37d07778adb8d5593f49789ebef.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('151212d8-3f2a-55cb-9d3e-93ab3f092e23', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_my_name_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4c8e544dfe301d06503ad76d69efb80826f504b87b0a2cdbf3c0fea4bee456c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ab39a4ad-5cf2-529a-9563-f7d159d1d84d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('151212d8-3f2a-55cb-9d3e-93ab3f092e23', 1), 'a4c8e544dfe301d06503ad76d69efb80826f504b87b0a2cdbf3c0fea4bee456c',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/eef47246d6ce27a6830f4d01b4a65c93b66bd37d07778adb8d5593f49789ebef.mp3', 1515, '2026-09-14 13:43:54.889357', 'ef0fca721d35a11c5d65f11a9e356f94fbb934f5c3233b325535da3294c5fedd', 'validated', '{"audio_key":"eef47246d6ce27a6830f4d01b4a65c93b66bd37d07778adb8d5593f49789ebef","entity_key":"e_my_name_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ef0fca721d35a11c5d65f11a9e356f94fbb934f5c3233b325535da3294c5fedd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/eef47246d6ce27a6830f4d01b4a65c93b66bd37d07778adb8d5593f49789ebef.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ko_ko-forms-signs_exit_a -> audio/generated/ko-KR/utterances/f7ee41188045743ffb47267e7e6bd83772d361e440c8b975ea7af177f0e56623.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4c4186e4-1eb7-54dc-a208-37d751740878', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ko_ko-forms-signs_exit_a')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '290b2cc57330166c23092f982e322e6fd078e861194d28a76d1ce87a1a5fa5b8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f1aa88e8-f36c-5ed1-864d-abbd95860a3f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4c4186e4-1eb7-54dc-a208-37d751740878', 1), '290b2cc57330166c23092f982e322e6fd078e861194d28a76d1ce87a1a5fa5b8',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/f7ee41188045743ffb47267e7e6bd83772d361e440c8b975ea7af177f0e56623.mp3', 1149, '2026-09-14 13:43:55.831265', '7cdebec41babeffc5040055128b21bd554acd9a69d1242fdd6597690586ec7d3', 'validated', '{"audio_key":"f7ee41188045743ffb47267e7e6bd83772d361e440c8b975ea7af177f0e56623","entity_key":"u_ko_ko-forms-signs_exit_a","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7cdebec41babeffc5040055128b21bd554acd9a69d1242fdd6597690586ec7d3","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/f7ee41188045743ffb47267e7e6bd83772d361e440c8b975ea7af177f0e56623.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_ko_meaning_repeat -> audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('7cd9cd71-a34f-554f-a7fc-bd45ac0a7c81', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_ko_meaning_repeat')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67c64c9cae445f707ce250b88595fa992fa4c6e2e5e05b1f2032c73d70151dd1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('974f3a9f-7756-5f2c-8504-15f1846125ec', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('7cd9cd71-a34f-554f-a7fc-bd45ac0a7c81', 1), '67c64c9cae445f707ce250b88595fa992fa4c6e2e5e05b1f2032c73d70151dd1',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3', 1488, '2026-09-14 13:43:56.853144', '1ad874716d90342741b33c64751611096cc65913ec3135c19e7ab8c4d312d38d', 'validated', '{"audio_key":"f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d","entity_key":"u_ko_meaning_repeat","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1ad874716d90342741b33c64751611096cc65913ec3135c19e7ab8c4d312d38d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- ex_ko_meaning_listen_repeat -> audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e2831cce-73ff-5eca-a77b-d8988354e75c', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'ex_ko_meaning_listen_repeat')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67c64c9cae445f707ce250b88595fa992fa4c6e2e5e05b1f2032c73d70151dd1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1a64163-5339-5219-b372-fe323bd46bfb', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e2831cce-73ff-5eca-a77b-d8988354e75c', 1), '67c64c9cae445f707ce250b88595fa992fa4c6e2e5e05b1f2032c73d70151dd1',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3', 1488, '2026-09-14 13:43:56.853144', '1ad874716d90342741b33c64751611096cc65913ec3135c19e7ab8c4d312d38d', 'validated', '{"audio_key":"f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d","entity_key":"ex_ko_meaning_listen_repeat","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1ad874716d90342741b33c64751611096cc65913ec3135c19e7ab8c4d312d38d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_meaning_chunks:example:2 -> audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('5e5b068b-752b-503c-92c8-54f52742ac0e', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_meaning_chunks:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67c64c9cae445f707ce250b88595fa992fa4c6e2e5e05b1f2032c73d70151dd1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('96b2862f-bc68-559c-a036-67a9b5ea4438', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('5e5b068b-752b-503c-92c8-54f52742ac0e', 1), '67c64c9cae445f707ce250b88595fa992fa4c6e2e5e05b1f2032c73d70151dd1',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3', 1488, '2026-09-14 13:43:56.853144', '1ad874716d90342741b33c64751611096cc65913ec3135c19e7ab8c4d312d38d', 'validated', '{"audio_key":"f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d","entity_key":"g_ko_meaning_chunks:example:2","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1ad874716d90342741b33c64751611096cc65913ec3135c19e7ab8c4d312d38d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_ready_gate:example:2 -> audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('0621062c-9141-5b25-98f3-c2f793da23a2', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_ready_gate:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67c64c9cae445f707ce250b88595fa992fa4c6e2e5e05b1f2032c73d70151dd1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('db98f19b-c930-5a76-aa14-744f93cce1a3', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('0621062c-9141-5b25-98f3-c2f793da23a2', 1), '67c64c9cae445f707ce250b88595fa992fa4c6e2e5e05b1f2032c73d70151dd1',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3', 1488, '2026-09-14 13:43:56.853144', '1ad874716d90342741b33c64751611096cc65913ec3135c19e7ab8c4d312d38d', 'validated', '{"audio_key":"f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d","entity_key":"g_ko_ready_gate:example:2","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1ad874716d90342741b33c64751611096cc65913ec3135c19e7ab8c4d312d38d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- g_ko_ko-real-world-gate:example:2 -> audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'grammar_point'
  AND entity_id = UUID_TO_BIN('7a36782d-7cd9-55dc-9f44-8640aa263c36', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'g_ko_ko-real-world-gate:example:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67c64c9cae445f707ce250b88595fa992fa4c6e2e5e05b1f2032c73d70151dd1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a3f5f99-cce9-5cbb-8592-4c9c72ef37e3', 1), @audio_language_id, @audio_variant_id, 'grammar_point', UUID_TO_BIN('7a36782d-7cd9-55dc-9f44-8640aa263c36', 1), '67c64c9cae445f707ce250b88595fa992fa4c6e2e5e05b1f2032c73d70151dd1',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3', 1488, '2026-09-14 13:43:56.853144', '1ad874716d90342741b33c64751611096cc65913ec3135c19e7ab8c4d312d38d', 'validated', '{"audio_key":"f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d","entity_key":"g_ko_ko-real-world-gate:example:2","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1ad874716d90342741b33c64751611096cc65913ec3135c19e7ab8c4d312d38d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_survival_words_02 -> audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e8a73445-1432-5fd2-a81c-8121fcfa9e2a', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_survival_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67c64c9cae445f707ce250b88595fa992fa4c6e2e5e05b1f2032c73d70151dd1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bd561fdf-247a-5d90-91d9-7916b6c8edd7', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e8a73445-1432-5fd2-a81c-8121fcfa9e2a', 1), '67c64c9cae445f707ce250b88595fa992fa4c6e2e5e05b1f2032c73d70151dd1',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3', 1488, '2026-09-14 13:43:56.853144', '1ad874716d90342741b33c64751611096cc65913ec3135c19e7ab8c4d312d38d', 'validated', '{"audio_key":"f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d","entity_key":"u_survival_words_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1ad874716d90342741b33c64751611096cc65913ec3135c19e7ab8c4d312d38d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_survival_words_01_listen -> audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('99a4ebac-5899-519a-9bd4-2c43ac40aa92', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_survival_words_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67c64c9cae445f707ce250b88595fa992fa4c6e2e5e05b1f2032c73d70151dd1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dbb6cc8e-275c-58a7-9a67-90ad889655cf', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('99a4ebac-5899-519a-9bd4-2c43ac40aa92', 1), '67c64c9cae445f707ce250b88595fa992fa4c6e2e5e05b1f2032c73d70151dd1',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3', 1488, '2026-09-14 13:43:56.853144', '1ad874716d90342741b33c64751611096cc65913ec3135c19e7ab8c4d312d38d', 'validated', '{"audio_key":"f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d","entity_key":"e_survival_words_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1ad874716d90342741b33c64751611096cc65913ec3135c19e7ab8c4d312d38d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_numbers_0_10_01 -> audio/generated/ko-KR/utterances/f9ba2be4331218f5a9c6f86152df2f9dd8167fe2c59cd38eb63b5abbfab6fc77.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1c5b27bb-5965-5765-b62a-d91449252dfa', 1)
  AND voice_key = 'ko-kr.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_numbers_0_10_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5189c324f42a39b94800aae197bc7ef7150a37a9e2ced0395e861138c24766fd'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('550c4bad-0bad-5dfd-a504-5783a3da967d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1c5b27bb-5965-5765-b62a-d91449252dfa', 1), '5189c324f42a39b94800aae197bc7ef7150a37a9e2ced0395e861138c24766fd',
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/f9ba2be4331218f5a9c6f86152df2f9dd8167fe2c59cd38eb63b5abbfab6fc77.mp3', 1436, '2026-09-14 13:43:57.857838', 'de0ce6f8a46c93d29d570be37cf641b59c7c298661a8c64552f20a5d2f7fe2d2', 'validated', '{"audio_key":"f9ba2be4331218f5a9c6f86152df2f9dd8167fe2c59cd38eb63b5abbfab6fc77","entity_key":"u_numbers_0_10_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"de0ce6f8a46c93d29d570be37cf641b59c7c298661a8c64552f20a5d2f7fe2d2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/f9ba2be4331218f5a9c6f86152df2f9dd8167fe2c59cd38eb63b5abbfab6fc77.mp3"}'
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

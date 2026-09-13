-- Generated audio link import for ko-KR Pre-A1
-- Source manifest: audio/manifests/ko/Pre-A1.json
-- Generated rows: 260
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'ko' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'ko-KR' LIMIT 1);
START TRANSACTION;

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
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/13f6cc35f370b2302fa93fb0118dcc6795187172d254e251bf80929c94483a17.mp3', 1488, '2026-09-13 21:04:19.484794', '8f723df0568d267547bc1bd965553bbf4dd52f07d89d9270b939b72dd3a729df', 'validated', '{"audio_key":"13f6cc35f370b2302fa93fb0118dcc6795187172d254e251bf80929c94483a17","entity_key":"d_first_conversation_02:4","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8f723df0568d267547bc1bd965553bbf4dd52f07d89d9270b939b72dd3a729df","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/13f6cc35f370b2302fa93fb0118dcc6795187172d254e251bf80929c94483a17.mp3"}'
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
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/16f1a91c05ef90f3d34c6c188e5477eb9930315a5a100b62a8fb903db25f4013.mp3', 1515, '2026-09-13 21:10:08.716271', 'd9281e54a0c8e3907a95fc6a7ae4b9213db888365b6a2bb76205e6d1582d7f69', 'validated', '{"audio_key":"16f1a91c05ef90f3d34c6c188e5477eb9930315a5a100b62a8fb903db25f4013","entity_key":"d_numbers_0_10_01:2","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d9281e54a0c8e3907a95fc6a7ae4b9213db888365b6a2bb76205e6d1582d7f69","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/16f1a91c05ef90f3d34c6c188e5477eb9930315a5a100b62a8fb903db25f4013.mp3"}'
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
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/20f62849946c80e82adad6abdbd41704e7cc4e6b27ab93363bdd5e46ae178b41.mp3', 2742, '2026-09-13 21:10:13.260450', '1cc766aad10082e352edb44c1c4fef6bd64ebbd2d5eeb6007fba3cb2f895a867', 'validated', '{"audio_key":"20f62849946c80e82adad6abdbd41704e7cc4e6b27ab93363bdd5e46ae178b41","entity_key":"d_my_name_01:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1cc766aad10082e352edb44c1c4fef6bd64ebbd2d5eeb6007fba3cb2f895a867","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/20f62849946c80e82adad6abdbd41704e7cc4e6b27ab93363bdd5e46ae178b41.mp3"}'
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
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2767511f48173a4081d53d0647571f92784141a08a59805a1142baf567eaa9e5.mp3', 1384, '2026-09-13 21:04:27.698251', '4f22556e7e2a936142ef9c9c758a6c74986b6aa35f039ba0fe74f804540ef20d', 'validated', '{"audio_key":"2767511f48173a4081d53d0647571f92784141a08a59805a1142baf567eaa9e5","entity_key":"d_first_greetings_01:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4f22556e7e2a936142ef9c9c758a6c74986b6aa35f039ba0fe74f804540ef20d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/2767511f48173a4081d53d0647571f92784141a08a59805a1142baf567eaa9e5.mp3"}'
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
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2b4cdad36afb0e7d9a76e33b3931ac907c42870a673301323d4504a1a80c3064.mp3', 1018, '2026-09-13 21:04:26.984918', 'e1a366b628e7dc9945d03d1f1313f3f3ea5764202dc6a6e0f898b651ef88241f', 'validated', '{"audio_key":"2b4cdad36afb0e7d9a76e33b3931ac907c42870a673301323d4504a1a80c3064","entity_key":"d_numbers_0_10_01:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"e1a366b628e7dc9945d03d1f1313f3f3ea5764202dc6a6e0f898b651ef88241f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/2b4cdad36afb0e7d9a76e33b3931ac907c42870a673301323d4504a1a80c3064.mp3"}'
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
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/2f792b9b998446e10549e883a50449549b76a372862bb1c30e39698a76f7ee51.mp3', 1201, '2026-09-13 21:04:31.358393', '9769b028b2d58ee895328af9172bd61178a80a1824d94a8a992abb2768cc4a21', 'validated', '{"audio_key":"2f792b9b998446e10549e883a50449549b76a372862bb1c30e39698a76f7ee51","entity_key":"d_hangul_basics_01:3","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9769b028b2d58ee895328af9172bd61178a80a1824d94a8a992abb2768cc4a21","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/2f792b9b998446e10549e883a50449549b76a372862bb1c30e39698a76f7ee51.mp3"}'
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
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/31dd4a224cc7228b4331c9f806be54a75f651143f278e0c2f5882eb8143693a7.mp3', 1018, '2026-09-13 21:10:14.769720', '4f88ae390bc1ddafe07f4e1fb71d9d78b472c3e6339fd019fc8cfa09c13cacdc', 'validated', '{"audio_key":"31dd4a224cc7228b4331c9f806be54a75f651143f278e0c2f5882eb8143693a7","entity_key":"d_numbers_0_10_02:3","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4f88ae390bc1ddafe07f4e1fb71d9d78b472c3e6339fd019fc8cfa09c13cacdc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/31dd4a224cc7228b4331c9f806be54a75f651143f278e0c2f5882eb8143693a7.mp3"}'
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
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/323a06d3c717ed68adb8d24948f22839ea436349b580f5f70576e9ad43ecfd40.mp3', 1619, '2026-09-13 21:10:14.573695', '97d4b267f1abd6da2700e6f7948d8fec1ea0e3e1b6f6d5d4b8728731dea0ddb5', 'validated', '{"audio_key":"323a06d3c717ed68adb8d24948f22839ea436349b580f5f70576e9ad43ecfd40","entity_key":"d_first_greetings_01:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"97d4b267f1abd6da2700e6f7948d8fec1ea0e3e1b6f6d5d4b8728731dea0ddb5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/323a06d3c717ed68adb8d24948f22839ea436349b580f5f70576e9ad43ecfd40.mp3"}'
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
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/38ad6b2274948b2eb82fd9cc8e472e3deb256e0b57e203115d2fb65ec7325c3b.mp3', 1201, '2026-09-13 21:04:35.087575', 'c713cd042bce3a75b6ed460f33848119ddb7d3dd11f892acb7e629169049aec7', 'validated', '{"audio_key":"38ad6b2274948b2eb82fd9cc8e472e3deb256e0b57e203115d2fb65ec7325c3b","entity_key":"d_hangul_basics_02:4","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"c713cd042bce3a75b6ed460f33848119ddb7d3dd11f892acb7e629169049aec7","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/38ad6b2274948b2eb82fd9cc8e472e3deb256e0b57e203115d2fb65ec7325c3b.mp3"}'
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
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/3f18d3056bc5e8e0182c6c0155d1d58674fd761a3b55347e6d31cd0700e33895.mp3', 1436, '2026-09-13 21:10:15.639230', '2df4875c4f4b6bcb4e7a0648518c12b2701ac4ce6b35124bfe27139dc094b11a', 'validated', '{"audio_key":"3f18d3056bc5e8e0182c6c0155d1d58674fd761a3b55347e6d31cd0700e33895","entity_key":"d_first_sounds_01:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2df4875c4f4b6bcb4e7a0648518c12b2701ac4ce6b35124bfe27139dc094b11a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/3f18d3056bc5e8e0182c6c0155d1d58674fd761a3b55347e6d31cd0700e33895.mp3"}'
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
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/3fb2c6e33aca0ee35629b35ed001cf65dfff107a52424899964bf93b23026d51.mp3', 1280, '2026-09-13 21:10:15.995881', 'fa45d41f9604714afc2347885b8a4d6137a1bbf8640e8b45d9298251a4f2aaec', 'validated', '{"audio_key":"3fb2c6e33aca0ee35629b35ed001cf65dfff107a52424899964bf93b23026d51","entity_key":"d_first_objects_02:4","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"fa45d41f9604714afc2347885b8a4d6137a1bbf8640e8b45d9298251a4f2aaec","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/3fb2c6e33aca0ee35629b35ed001cf65dfff107a52424899964bf93b23026d51.mp3"}'
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
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/4294c6e2b4b9cd59d91c7f0d9b85b2de75180afe61fe768d6647ae87f3d305d7.mp3', 835, '2026-09-13 21:10:20.478356', '7afda7c12ecb0225b869b37e408dc9bfeff1989e7e015b16ed88037057dc5e68', 'validated', '{"audio_key":"4294c6e2b4b9cd59d91c7f0d9b85b2de75180afe61fe768d6647ae87f3d305d7","entity_key":"d_first_sounds_01:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7afda7c12ecb0225b869b37e408dc9bfeff1989e7e015b16ed88037057dc5e68","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/4294c6e2b4b9cd59d91c7f0d9b85b2de75180afe61fe768d6647ae87f3d305d7.mp3"}'
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
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/42bafacdb5e9cf8ef845d153fe526836e55d8812e47932f04dc7e34e36f55f06.mp3', 1332, '2026-09-13 21:10:17.036473', 'c233808fcfe6a39918599dee88592d81fb09c0252b7807acd71ef9f5a53cae8f', 'validated', '{"audio_key":"42bafacdb5e9cf8ef845d153fe526836e55d8812e47932f04dc7e34e36f55f06","entity_key":"d_first_objects_01:4","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c233808fcfe6a39918599dee88592d81fb09c0252b7807acd71ef9f5a53cae8f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/42bafacdb5e9cf8ef845d153fe526836e55d8812e47932f04dc7e34e36f55f06.mp3"}'
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
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/4ec58ad10e215740ec9f916e0ab402b7ab8a1b75c6836be59e69486b2041bc51.mp3', 1201, '2026-09-13 21:04:38.078597', '010f01f966d708eb74ab0af9aba1b3b91ce39ba68c01ea7ec1fb9eae2233257b', 'validated', '{"audio_key":"4ec58ad10e215740ec9f916e0ab402b7ab8a1b75c6836be59e69486b2041bc51","entity_key":"d_how_are_you_01:4","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"010f01f966d708eb74ab0af9aba1b3b91ce39ba68c01ea7ec1fb9eae2233257b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/4ec58ad10e215740ec9f916e0ab402b7ab8a1b75c6836be59e69486b2041bc51.mp3"}'
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
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/4fc8c60ba8da8913c5540bc457e4cd2d54e24020410cf83be7c8db65dfeb1d76.mp3', 1750, '2026-09-13 21:10:18.117591', '2954b7d2778e817a3ee72bd8cecb80831465a93625284a64cf94e9943be48485', 'validated', '{"audio_key":"4fc8c60ba8da8913c5540bc457e4cd2d54e24020410cf83be7c8db65dfeb1d76","entity_key":"d_first_sounds_01:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2954b7d2778e817a3ee72bd8cecb80831465a93625284a64cf94e9943be48485","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/4fc8c60ba8da8913c5540bc457e4cd2d54e24020410cf83be7c8db65dfeb1d76.mp3"}'
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
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/5040489471cf1e65c624894f82017aaad95a5de8cec65bf65c0e9a926b47a88d.mp3', 1332, '2026-09-13 21:04:44.950118', '62089b52c3b2d3e69e38782a8403feaa245c3c3d26acecbe4ebf5fd79b1d1e94', 'validated', '{"audio_key":"5040489471cf1e65c624894f82017aaad95a5de8cec65bf65c0e9a926b47a88d","entity_key":"d_my_name_02:2","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"62089b52c3b2d3e69e38782a8403feaa245c3c3d26acecbe4ebf5fd79b1d1e94","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/5040489471cf1e65c624894f82017aaad95a5de8cec65bf65c0e9a926b47a88d.mp3"}'
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
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/509ffccc5b28144ade730a31b71a3e01be5e7a0a8a86b1baa49b5ffb6236bac3.mp3', 1149, '2026-09-13 21:10:19.181083', '5a144c55e61f1241531cf764786e1d1144a667d518c2d8b76fddcec3625cd7c1', 'validated', '{"audio_key":"509ffccc5b28144ade730a31b71a3e01be5e7a0a8a86b1baa49b5ffb6236bac3","entity_key":"d_numbers_0_10_02:2","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5a144c55e61f1241531cf764786e1d1144a667d518c2d8b76fddcec3625cd7c1","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/509ffccc5b28144ade730a31b71a3e01be5e7a0a8a86b1baa49b5ffb6236bac3.mp3"}'
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
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/53705db6c6d88db475c175d83d1890ab44e47e2ade3d455118a025e8ee90ac19.mp3', 1332, '2026-09-13 21:10:20.431062', '70edb9d9255916d0db25217d70147cf1e7b6fea7491eb228b21dfe0ed10cd4f5', 'validated', '{"audio_key":"53705db6c6d88db475c175d83d1890ab44e47e2ade3d455118a025e8ee90ac19","entity_key":"d_first_greetings_02:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"70edb9d9255916d0db25217d70147cf1e7b6fea7491eb228b21dfe0ed10cd4f5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/53705db6c6d88db475c175d83d1890ab44e47e2ade3d455118a025e8ee90ac19.mp3"}'
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
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/55d4cdeb3be5ac8eb3b5fc5b722b3f8f7faab081d9187c06f87fa93a507e020b.mp3', 1384, '2026-09-13 21:04:44.890443', '7ea8b259358d1168e2bf9d92a9384f4af414fb5445f96792f50933de54850038', 'validated', '{"audio_key":"55d4cdeb3be5ac8eb3b5fc5b722b3f8f7faab081d9187c06f87fa93a507e020b","entity_key":"d_first_conversation_02:1","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7ea8b259358d1168e2bf9d92a9384f4af414fb5445f96792f50933de54850038","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/55d4cdeb3be5ac8eb3b5fc5b722b3f8f7faab081d9187c06f87fa93a507e020b.mp3"}'
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
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/5a18fb890865993eb068aef327ddfe90afb3c63517f2bd6ae4e35f0c2d7f808b.mp3', 1436, '2026-09-13 21:10:21.463375', '9d235b3ebe078893a85399049cc1d65c3e7b8e28fc7dfe69de5665370e22c483', 'validated', '{"audio_key":"5a18fb890865993eb068aef327ddfe90afb3c63517f2bd6ae4e35f0c2d7f808b","entity_key":"d_numbers_0_10_02:4","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9d235b3ebe078893a85399049cc1d65c3e7b8e28fc7dfe69de5665370e22c483","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/5a18fb890865993eb068aef327ddfe90afb3c63517f2bd6ae4e35f0c2d7f808b.mp3"}'
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
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/5a45fb1d896e4a3244c0c660ab06f4d92510d661faf087642de7e786189abab0.mp3', 1071, '2026-09-13 21:04:45.932973', '8bfb89e2a875153269040afa201a131f20cae5962854f530f1e43bd8575ee907', 'validated', '{"audio_key":"5a45fb1d896e4a3244c0c660ab06f4d92510d661faf087642de7e786189abab0","entity_key":"d_hangul_basics_02:1","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8bfb89e2a875153269040afa201a131f20cae5962854f530f1e43bd8575ee907","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/5a45fb1d896e4a3244c0c660ab06f4d92510d661faf087642de7e786189abab0.mp3"}'
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
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/5ba15d023292a422a91d8f3d9972d3d26f22a0c946912f5ede9fe4af0071f4a9.mp3', 1071, '2026-09-13 21:04:46.912002', 'e4aca8d1148300954bb8ec8bf2e7c5fadad26361dd3abcd484906a2d97aa5ff8', 'validated', '{"audio_key":"5ba15d023292a422a91d8f3d9972d3d26f22a0c946912f5ede9fe4af0071f4a9","entity_key":"d_polite_words_02:2","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e4aca8d1148300954bb8ec8bf2e7c5fadad26361dd3abcd484906a2d97aa5ff8","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/5ba15d023292a422a91d8f3d9972d3d26f22a0c946912f5ede9fe4af0071f4a9.mp3"}'
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
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/68fef7cafe3828fa282436d22d276550dfc8a509ef4f3ab2a2f39a66388e6972.mp3', 1933, '2026-09-13 21:10:21.543353', '25964f5b6a7c9e9168e627c8a9e5d8be52aa4d996fcb4dd706835636a8cc5c26', 'validated', '{"audio_key":"68fef7cafe3828fa282436d22d276550dfc8a509ef4f3ab2a2f39a66388e6972","entity_key":"d_first_greetings_02:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"25964f5b6a7c9e9168e627c8a9e5d8be52aa4d996fcb4dd706835636a8cc5c26","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/68fef7cafe3828fa282436d22d276550dfc8a509ef4f3ab2a2f39a66388e6972.mp3"}'
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
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6c691c95eff6e22a85fc3b807d72c3c6ce1d1a646735644531031d58a5b03051.mp3', 1201, '2026-09-13 21:10:22.462864', '5082bd4d1199e1ef1b8ff4447cddf26f7c43775f2026747dc8f0bba26084b719', 'validated', '{"audio_key":"6c691c95eff6e22a85fc3b807d72c3c6ce1d1a646735644531031d58a5b03051","entity_key":"d_survival_words_02:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5082bd4d1199e1ef1b8ff4447cddf26f7c43775f2026747dc8f0bba26084b719","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/6c691c95eff6e22a85fc3b807d72c3c6ce1d1a646735644531031d58a5b03051.mp3"}'
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
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6d0396b15dd8833a6422dd9f41eac5a2f3b638ad007657d0a689e93add86209b.mp3', 1149, '2026-09-13 21:04:48.034226', '636512c9287b14fb09ab132902496179cc4d26a27919f10ac25e59257df57d5d', 'validated', '{"audio_key":"6d0396b15dd8833a6422dd9f41eac5a2f3b638ad007657d0a689e93add86209b","entity_key":"d_hangul_basics_02:2","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"636512c9287b14fb09ab132902496179cc4d26a27919f10ac25e59257df57d5d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/6d0396b15dd8833a6422dd9f41eac5a2f3b638ad007657d0a689e93add86209b.mp3"}'
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
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/6dc6a27078101a849732313c236db963b2e91473fe3c10a88a83cea059ccefdc.mp3', 1488, '2026-09-13 21:04:48.923645', '9f1ec031d9118981e779d49238474a29779bfdbf4cf6015ee4f151cc372862ad', 'validated', '{"audio_key":"6dc6a27078101a849732313c236db963b2e91473fe3c10a88a83cea059ccefdc","entity_key":"d_first_conversation_02:2","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9f1ec031d9118981e779d49238474a29779bfdbf4cf6015ee4f151cc372862ad","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/6dc6a27078101a849732313c236db963b2e91473fe3c10a88a83cea059ccefdc.mp3"}'
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
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7142b80dbd3647b380f9f7614dbaac2b0125723bea78cc38b2356f199a140e29.mp3', 1201, '2026-09-13 21:10:22.530086', 'e2ab64cf23164fa24ca39ebbb54ed05dd7558b891959aca760961b71b56290ec', 'validated', '{"audio_key":"7142b80dbd3647b380f9f7614dbaac2b0125723bea78cc38b2356f199a140e29","entity_key":"d_numbers_0_10_02:1","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e2ab64cf23164fa24ca39ebbb54ed05dd7558b891959aca760961b71b56290ec","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/7142b80dbd3647b380f9f7614dbaac2b0125723bea78cc38b2356f199a140e29.mp3"}'
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
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7174004751864fe4977fc2789996698350cb2a9feb3ad4abdf63d5acabfa1eef.mp3', 1018, '2026-09-13 21:10:23.446031', '1f572da7d68e5ee731514f70e8db0ddab21d0b2abc8c60296f3377626769041e', 'validated', '{"audio_key":"7174004751864fe4977fc2789996698350cb2a9feb3ad4abdf63d5acabfa1eef","entity_key":"d_first_sounds_02:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1f572da7d68e5ee731514f70e8db0ddab21d0b2abc8c60296f3377626769041e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/7174004751864fe4977fc2789996698350cb2a9feb3ad4abdf63d5acabfa1eef.mp3"}'
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
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/75c0baf509d91054787835c49b9d34e2d7649e9ecf43ff8ab8b4a4b2fc032c18.mp3', 835, '2026-09-13 21:04:50.009650', '0c61bb3963a8d9821304d6a46a62c5751db9437a4cc3c35115e750b10789dacb', 'validated', '{"audio_key":"75c0baf509d91054787835c49b9d34e2d7649e9ecf43ff8ab8b4a4b2fc032c18","entity_key":"d_polite_words_01:4","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0c61bb3963a8d9821304d6a46a62c5751db9437a4cc3c35115e750b10789dacb","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/75c0baf509d91054787835c49b9d34e2d7649e9ecf43ff8ab8b4a4b2fc032c18.mp3"}'
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
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7c2623eec6c19a7da85d3845664891ed883963934b8be824352cc4acaf692918.mp3', 1436, '2026-09-13 21:10:23.594038', 'bbf5e81807605d8112096edd357965e782a7bc6e2b14b594c4d2582d12872483', 'validated', '{"audio_key":"7c2623eec6c19a7da85d3845664891ed883963934b8be824352cc4acaf692918","entity_key":"d_first_objects_01:3","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bbf5e81807605d8112096edd357965e782a7bc6e2b14b594c4d2582d12872483","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/7c2623eec6c19a7da85d3845664891ed883963934b8be824352cc4acaf692918.mp3"}'
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
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/7d0ecae022ed459cc1ef48a0562060bbd5361d5e205e6724856a331038ce0d8f.mp3', 2351, '2026-09-13 21:10:24.657204', 'c2c62ceb4c9c75e2a0d4a3432731ddd25e6ab69e85bebf9e8c939f41e26065fd', 'validated', '{"audio_key":"7d0ecae022ed459cc1ef48a0562060bbd5361d5e205e6724856a331038ce0d8f","entity_key":"d_survival_words_02:2","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c2c62ceb4c9c75e2a0d4a3432731ddd25e6ab69e85bebf9e8c939f41e26065fd","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/7d0ecae022ed459cc1ef48a0562060bbd5361d5e205e6724856a331038ce0d8f.mp3"}'
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
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/8113d7be4f04a4a8cacd8355777b32f176fe3bce4de465f3450578b29d2d3958.mp3', 1253, '2026-09-13 21:10:24.618042', 'b46f0c1b69685b8ed2f2951dacf05c00575ae2070c3a48095c4fc4fb629f8991', 'validated', '{"audio_key":"8113d7be4f04a4a8cacd8355777b32f176fe3bce4de465f3450578b29d2d3958","entity_key":"d_first_objects_02:2","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b46f0c1b69685b8ed2f2951dacf05c00575ae2070c3a48095c4fc4fb629f8991","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/8113d7be4f04a4a8cacd8355777b32f176fe3bce4de465f3450578b29d2d3958.mp3"}'
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
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/833ea59e7d32c48fd119ad0c060af2d2bfb47a5b91b2146b00cd46d04fefa31c.mp3', 1384, '2026-09-13 21:04:52.114159', 'a0ee84d8b033dc8dd001786e71fb0aac16c339b681da3a70956c486b585c7560', 'validated', '{"audio_key":"833ea59e7d32c48fd119ad0c060af2d2bfb47a5b91b2146b00cd46d04fefa31c","entity_key":"d_how_are_you_01:2","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"a0ee84d8b033dc8dd001786e71fb0aac16c339b681da3a70956c486b585c7560","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/833ea59e7d32c48fd119ad0c060af2d2bfb47a5b91b2146b00cd46d04fefa31c.mp3"}'
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
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/84cd78df57e5696b4876745281aa07500e87fb03eea78ec233d413f76644dbb4.mp3', 731, '2026-09-13 21:10:25.621492', '2fa43838a4ce058cac2968238e598b6fc574b98e50303118c6d7d920aec028bb', 'validated', '{"audio_key":"84cd78df57e5696b4876745281aa07500e87fb03eea78ec233d413f76644dbb4","entity_key":"d_first_sounds_01:4","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"2fa43838a4ce058cac2968238e598b6fc574b98e50303118c6d7d920aec028bb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/84cd78df57e5696b4876745281aa07500e87fb03eea78ec233d413f76644dbb4.mp3"}'
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
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/86431f68dfd0d6d72c3917581f7884716d910246fdbbc93837563381656037f7.mp3', 1488, '2026-09-13 21:04:53.138803', 'be131d4517ba08ac6dfa8d797c52ad189f985de4173a4a595eff3e1cbafc70e1', 'validated', '{"audio_key":"86431f68dfd0d6d72c3917581f7884716d910246fdbbc93837563381656037f7","entity_key":"d_how_are_you_01:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"be131d4517ba08ac6dfa8d797c52ad189f985de4173a4a595eff3e1cbafc70e1","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/86431f68dfd0d6d72c3917581f7884716d910246fdbbc93837563381656037f7.mp3"}'
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
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/89777d6a73e8c365dea56f2c93082b6dde22739f8bf3835596aa05679f4ce562.mp3', 1253, '2026-09-13 21:10:25.662712', 'e6dbea70d112108cc310de26f88ab5ec3b5975ea17a2c9edb49a0c36d8a8c9ea', 'validated', '{"audio_key":"89777d6a73e8c365dea56f2c93082b6dde22739f8bf3835596aa05679f4ce562","entity_key":"d_first_objects_02:3","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e6dbea70d112108cc310de26f88ab5ec3b5975ea17a2c9edb49a0c36d8a8c9ea","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/89777d6a73e8c365dea56f2c93082b6dde22739f8bf3835596aa05679f4ce562.mp3"}'
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
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/8d4123f32c4f33be2138468d5b1147837bd5a7e2789cc371305ee1453e99d893.mp3', 966, '2026-09-13 21:04:54.135292', '6f3e5bf6453622c6059e831487483570e5ec66b26269e5a294bf05d75a677f12', 'validated', '{"audio_key":"8d4123f32c4f33be2138468d5b1147837bd5a7e2789cc371305ee1453e99d893","entity_key":"d_hangul_basics_01:4","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"6f3e5bf6453622c6059e831487483570e5ec66b26269e5a294bf05d75a677f12","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/8d4123f32c4f33be2138468d5b1147837bd5a7e2789cc371305ee1453e99d893.mp3"}'
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
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/905713644f08092df67abf472a88244fad576e2b4810a2810bdada20aafb4b9e.mp3', 1515, '2026-09-13 21:04:54.784483', '8772f08ea9c6566198c50a677bb8155225ec41ddea794628bb2ddd067f23deb2', 'validated', '{"audio_key":"905713644f08092df67abf472a88244fad576e2b4810a2810bdada20aafb4b9e","entity_key":"d_my_name_02:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"8772f08ea9c6566198c50a677bb8155225ec41ddea794628bb2ddd067f23deb2","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/905713644f08092df67abf472a88244fad576e2b4810a2810bdada20aafb4b9e.mp3"}'
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
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/90ddd43ee8f54b5f88c4f3bcc64b1418df6fa6f4cd9ca1bc438e2566e18feea3.mp3', 2115, '2026-09-13 21:04:55.200073', 'd742ba8e2f32ec126e2950314f830569d5fab5a0b37cc56232f1c4b9c3fdf2ff', 'validated', '{"audio_key":"90ddd43ee8f54b5f88c4f3bcc64b1418df6fa6f4cd9ca1bc438e2566e18feea3","entity_key":"d_first_conversation_01:2","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d742ba8e2f32ec126e2950314f830569d5fab5a0b37cc56232f1c4b9c3fdf2ff","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/90ddd43ee8f54b5f88c4f3bcc64b1418df6fa6f4cd9ca1bc438e2566e18feea3.mp3"}'
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
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9117d8b82ae0cdc772900ad5d4159a0ca32b9711c243f3be01450e7cc5b015f8.mp3', 1933, '2026-09-13 21:10:26.747524', '879c7291fa905235d3d4e8751a644ccbc27c1376465868e0eabcab73290a5fee', 'validated', '{"audio_key":"9117d8b82ae0cdc772900ad5d4159a0ca32b9711c243f3be01450e7cc5b015f8","entity_key":"d_first_greetings_02:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"879c7291fa905235d3d4e8751a644ccbc27c1376465868e0eabcab73290a5fee","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/9117d8b82ae0cdc772900ad5d4159a0ca32b9711c243f3be01450e7cc5b015f8.mp3"}'
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
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/94e93bf3e1572b7c5c181efd8df1c40d20d54d2b831e28a13b80223e862149a1.mp3', 1436, '2026-09-13 21:10:26.655075', '160ac18e1761d513e0333df635137655a811356c8d2e12ccd705cb9fc687ef35', 'validated', '{"audio_key":"94e93bf3e1572b7c5c181efd8df1c40d20d54d2b831e28a13b80223e862149a1","entity_key":"d_survival_words_01:1","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"160ac18e1761d513e0333df635137655a811356c8d2e12ccd705cb9fc687ef35","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/94e93bf3e1572b7c5c181efd8df1c40d20d54d2b831e28a13b80223e862149a1.mp3"}'
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
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/94e93bf3e1572b7c5c181efd8df1c40d20d54d2b831e28a13b80223e862149a1.mp3', 1436, '2026-09-13 21:10:26.655075', '160ac18e1761d513e0333df635137655a811356c8d2e12ccd705cb9fc687ef35', 'validated', '{"audio_key":"94e93bf3e1572b7c5c181efd8df1c40d20d54d2b831e28a13b80223e862149a1","entity_key":"d_survival_words_01:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"160ac18e1761d513e0333df635137655a811356c8d2e12ccd705cb9fc687ef35","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/94e93bf3e1572b7c5c181efd8df1c40d20d54d2b831e28a13b80223e862149a1.mp3"}'
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
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9b3546278636aae9413ecbb6ba634a92b0c5138aec331abf0e5564c8f81c328d.mp3', 1253, '2026-09-13 21:04:56.859140', 'e939dd8cb1bacd6803309caa4b61ac7757e7897388eb2ed5f558b7c0b8dde484', 'validated', '{"audio_key":"9b3546278636aae9413ecbb6ba634a92b0c5138aec331abf0e5564c8f81c328d","entity_key":"d_polite_words_02:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"e939dd8cb1bacd6803309caa4b61ac7757e7897388eb2ed5f558b7c0b8dde484","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/9b3546278636aae9413ecbb6ba634a92b0c5138aec331abf0e5564c8f81c328d.mp3"}'
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
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9c1f18bee6a22968b8e22f0c6eb0e95019c41c9296d2a854fafc6c82c8acf2ff.mp3', 1488, '2026-09-13 21:04:57.337622', 'b5bcce9e6b82ff91984a87138dcd6c2b9d3e2a705fd0bdd0beb777ce622c2424', 'validated', '{"audio_key":"9c1f18bee6a22968b8e22f0c6eb0e95019c41c9296d2a854fafc6c82c8acf2ff","entity_key":"d_polite_words_02:3","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"b5bcce9e6b82ff91984a87138dcd6c2b9d3e2a705fd0bdd0beb777ce622c2424","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/9c1f18bee6a22968b8e22f0c6eb0e95019c41c9296d2a854fafc6c82c8acf2ff.mp3"}'
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
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/9c6179e96d98b738e9121c95922617befb34bace65376ff59bdfe9d10d1efccc.mp3', 2455, '2026-09-13 21:10:27.782766', 'be832eb9d35a24dd37296d4aac130a1674c34aafab87827c618a4f33f41a3729', 'validated', '{"audio_key":"9c6179e96d98b738e9121c95922617befb34bace65376ff59bdfe9d10d1efccc","entity_key":"d_survival_words_01:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"be832eb9d35a24dd37296d4aac130a1674c34aafab87827c618a4f33f41a3729","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/9c6179e96d98b738e9121c95922617befb34bace65376ff59bdfe9d10d1efccc.mp3"}'
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
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a0fe5e0d90c70bb668efd461d25963c5e0864719f0414fd47ea3334bea11a7a6.mp3', 1436, '2026-09-13 21:04:58.346276', 'c323ce00aa7c05f899dbd3623db871d8dc445befa9010339047475957e1fc965', 'validated', '{"audio_key":"a0fe5e0d90c70bb668efd461d25963c5e0864719f0414fd47ea3334bea11a7a6","entity_key":"d_hangul_basics_01:1","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c323ce00aa7c05f899dbd3623db871d8dc445befa9010339047475957e1fc965","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/a0fe5e0d90c70bb668efd461d25963c5e0864719f0414fd47ea3334bea11a7a6.mp3"}'
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
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a5d2044be238dbb7e1123fb0c13042f389d3b55aef566aed4e65b26dbee9ddc6.mp3', 1097, '2026-09-13 21:04:58.969412', '9e98bc46fc542cdebed1f8e7aad8281935a17a94c2c9fad3eb83acb10e9c4eed', 'validated', '{"audio_key":"a5d2044be238dbb7e1123fb0c13042f389d3b55aef566aed4e65b26dbee9ddc6","entity_key":"d_first_conversation_02:3","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9e98bc46fc542cdebed1f8e7aad8281935a17a94c2c9fad3eb83acb10e9c4eed","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/a5d2044be238dbb7e1123fb0c13042f389d3b55aef566aed4e65b26dbee9ddc6.mp3"}'
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
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a5edbce2d34677f76ee5c7ddab54962705f7e122ed8bbae7a977f04d0e9a2b8d.mp3', 1071, '2026-09-13 21:04:59.359592', '62499699dc27cbf605d821ef38357278407edf77433baeb0902bbec76028fb02', 'validated', '{"audio_key":"a5edbce2d34677f76ee5c7ddab54962705f7e122ed8bbae7a977f04d0e9a2b8d","entity_key":"d_numbers_0_10_01:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"62499699dc27cbf605d821ef38357278407edf77433baeb0902bbec76028fb02","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/a5edbce2d34677f76ee5c7ddab54962705f7e122ed8bbae7a977f04d0e9a2b8d.mp3"}'
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
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a68a8891cbeeb3e8cd6225e4fcfed34c9d1c8ff311586e91af8555d3c0d70ff6.mp3', 1201, '2026-09-13 21:10:27.739846', '8208e42674ad5bb663633af60479759205887b557f95f16d6893267f9db8990f', 'validated', '{"audio_key":"a68a8891cbeeb3e8cd6225e4fcfed34c9d1c8ff311586e91af8555d3c0d70ff6","entity_key":"d_first_objects_01:1","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8208e42674ad5bb663633af60479759205887b557f95f16d6893267f9db8990f","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/a68a8891cbeeb3e8cd6225e4fcfed34c9d1c8ff311586e91af8555d3c0d70ff6.mp3"}'
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
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/a742a7abf623de7edc99f1015fc951df729aa58af0b7cf3ef1e23619a5a38829.mp3', 966, '2026-09-13 21:10:28.736555', '62160be5dcf69dfbbd6b3dcc8b3029ba8c07cba0a17828d17e2d5f525fc0518f', 'validated', '{"audio_key":"a742a7abf623de7edc99f1015fc951df729aa58af0b7cf3ef1e23619a5a38829","entity_key":"d_first_objects_01:2","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"62160be5dcf69dfbbd6b3dcc8b3029ba8c07cba0a17828d17e2d5f525fc0518f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/a742a7abf623de7edc99f1015fc951df729aa58af0b7cf3ef1e23619a5a38829.mp3"}'
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
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ab227e8effbb9031b61e9aac053271ecea3ae2d4f98f32eddae7b6cd0f4ead65.mp3', 1332, '2026-09-13 21:10:28.793090', '95462de85736ce1a6618729094cdb971705061258f03fa9489db341ed4b1b948', 'validated', '{"audio_key":"ab227e8effbb9031b61e9aac053271ecea3ae2d4f98f32eddae7b6cd0f4ead65","entity_key":"d_numbers_0_10_01:4","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"95462de85736ce1a6618729094cdb971705061258f03fa9489db341ed4b1b948","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/ab227e8effbb9031b61e9aac053271ecea3ae2d4f98f32eddae7b6cd0f4ead65.mp3"}'
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
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ab93e315a0ce44742b286633109db3d349c0b9814a1963276677ce7ce49944e3.mp3', 1671, '2026-09-13 21:10:29.810353', '318fc8ce9baea3c7cccb0bd6acb043c281356b5ae174884c801ebf78881fe73a', 'validated', '{"audio_key":"ab93e315a0ce44742b286633109db3d349c0b9814a1963276677ce7ce49944e3","entity_key":"d_first_sounds_02:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"318fc8ce9baea3c7cccb0bd6acb043c281356b5ae174884c801ebf78881fe73a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/ab93e315a0ce44742b286633109db3d349c0b9814a1963276677ce7ce49944e3.mp3"}'
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
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/adf520c1d7353e1e8ca0f05c4579e6ffdb52fc1315e07ffdacb10688b5a3298f.mp3', 1619, '2026-09-13 21:05:02.407454', 'c41b0bc5e274d8af5303583d1b3bea310317aac51a5785a4382be39100dde661', 'validated', '{"audio_key":"adf520c1d7353e1e8ca0f05c4579e6ffdb52fc1315e07ffdacb10688b5a3298f","entity_key":"d_how_are_you_01:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c41b0bc5e274d8af5303583d1b3bea310317aac51a5785a4382be39100dde661","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/adf520c1d7353e1e8ca0f05c4579e6ffdb52fc1315e07ffdacb10688b5a3298f.mp3"}'
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
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b7e22a3f521248492ab8a6848b0709c1b2231ed4e9edaa503d0d0e632b237d8e.mp3', 1436, '2026-09-13 21:10:29.806853', '0ee65191902d84ab854e3abf6e9ce6c45314f944376ba52fab30a3fc6fe6ce33', 'validated', '{"audio_key":"b7e22a3f521248492ab8a6848b0709c1b2231ed4e9edaa503d0d0e632b237d8e","entity_key":"d_first_greetings_01:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0ee65191902d84ab854e3abf6e9ce6c45314f944376ba52fab30a3fc6fe6ce33","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/b7e22a3f521248492ab8a6848b0709c1b2231ed4e9edaa503d0d0e632b237d8e.mp3"}'
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
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b7ede91e0ca5116de383a07febd42c3ac6a54519bdb2b7975c8f2bdcc09e2145.mp3', 1488, '2026-09-13 21:05:03.437264', 'bc05159513677ec8931c7be5820dbd821c4fbf2669c9769f24a45895e59d42d3', 'validated', '{"audio_key":"b7ede91e0ca5116de383a07febd42c3ac6a54519bdb2b7975c8f2bdcc09e2145","entity_key":"d_how_are_you_02:2","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bc05159513677ec8931c7be5820dbd821c4fbf2669c9769f24a45895e59d42d3","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/b7ede91e0ca5116de383a07febd42c3ac6a54519bdb2b7975c8f2bdcc09e2145.mp3"}'
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
  'character:서연:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/b844bafc11af6f7f088e08b33672ff94e74d06bd1e535aad5b8b642c735ed587.mp3', 1332, '2026-09-13 21:10:30.839695', '7f4b7798cf769f889f61449b02d1e8f520c4fbe05929d60ee7d1fac8f46b754b', 'validated', '{"audio_key":"b844bafc11af6f7f088e08b33672ff94e74d06bd1e535aad5b8b642c735ed587","entity_key":"d_first_greetings_02:3","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7f4b7798cf769f889f61449b02d1e8f520c4fbe05929d60ee7d1fac8f46b754b","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/b844bafc11af6f7f088e08b33672ff94e74d06bd1e535aad5b8b642c735ed587.mp3"}'
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
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c06f411edcde0cf142a983cba057f4b41d743d6662f2753224dca811cd17589f.mp3', 1515, '2026-09-13 21:05:04.446290', '7ed2a852a40ee30c9fbe16d5b6616236ffe2b60fde2496ffabf54d5181d76eb2', 'validated', '{"audio_key":"c06f411edcde0cf142a983cba057f4b41d743d6662f2753224dca811cd17589f","entity_key":"d_first_greetings_01:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7ed2a852a40ee30c9fbe16d5b6616236ffe2b60fde2496ffabf54d5181d76eb2","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/c06f411edcde0cf142a983cba057f4b41d743d6662f2753224dca811cd17589f.mp3"}'
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
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c14d25c8eb40f85220b46df6bf1db564030ed04fa19cf2b1cb026da28aca5556.mp3', 1332, '2026-09-13 21:05:04.646765', 'c46fd6585390967ba021697002cd426c5199e890ea196d02aa9055f47935881f', 'validated', '{"audio_key":"c14d25c8eb40f85220b46df6bf1db564030ed04fa19cf2b1cb026da28aca5556","entity_key":"d_hangul_basics_02:3","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c46fd6585390967ba021697002cd426c5199e890ea196d02aa9055f47935881f","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/c14d25c8eb40f85220b46df6bf1db564030ed04fa19cf2b1cb026da28aca5556.mp3"}'
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
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c25ae913098904af3e14a331a80ee0cd6e5e0f7d778ae80b355cefe286eab7f7.mp3', 1567, '2026-09-13 21:05:05.511424', '957c4ef6137104da7484298b775165de5f45fa776f4d53c19d18bde6e93ff17c', 'validated', '{"audio_key":"c25ae913098904af3e14a331a80ee0cd6e5e0f7d778ae80b355cefe286eab7f7","entity_key":"d_my_name_02:1","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"957c4ef6137104da7484298b775165de5f45fa776f4d53c19d18bde6e93ff17c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/c25ae913098904af3e14a331a80ee0cd6e5e0f7d778ae80b355cefe286eab7f7.mp3"}'
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
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c3d19f5cf1fcd97a63dd53bff3bdead2b05942d15af4489ab32f8aa8694fb25a.mp3', 1280, '2026-09-13 21:05:05.668368', '58073542a273aad3d526d1f47c2553049e81dd61af1021890c3d68068b5e4641', 'validated', '{"audio_key":"c3d19f5cf1fcd97a63dd53bff3bdead2b05942d15af4489ab32f8aa8694fb25a","entity_key":"d_how_are_you_02:3","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"58073542a273aad3d526d1f47c2553049e81dd61af1021890c3d68068b5e4641","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/c3d19f5cf1fcd97a63dd53bff3bdead2b05942d15af4489ab32f8aa8694fb25a.mp3"}'
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
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c4978b23128c9ea58bb66829af29413dc07319ae965f9389f5d20e4ab7cbd874.mp3', 1619, '2026-09-13 21:05:06.564612', '067cbf557852940869d3a66d66a4ac274376a07ea36dcece741265d92053c4ee', 'validated', '{"audio_key":"c4978b23128c9ea58bb66829af29413dc07319ae965f9389f5d20e4ab7cbd874","entity_key":"d_first_conversation_01:4","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"067cbf557852940869d3a66d66a4ac274376a07ea36dcece741265d92053c4ee","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/c4978b23128c9ea58bb66829af29413dc07319ae965f9389f5d20e4ab7cbd874.mp3"}'
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
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c4f67b1367015376ac096e8df12c6f7825ac3f884a92df3d2080abc09259e8ce.mp3', 1201, '2026-09-13 21:05:06.664194', 'f0f3be501891be364cec746a0bfcf276c6447808977c7c0199bc65b89f23ce73', 'validated', '{"audio_key":"c4f67b1367015376ac096e8df12c6f7825ac3f884a92df3d2080abc09259e8ce","entity_key":"d_how_are_you_02:4","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f0f3be501891be364cec746a0bfcf276c6447808977c7c0199bc65b89f23ce73","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/c4f67b1367015376ac096e8df12c6f7825ac3f884a92df3d2080abc09259e8ce.mp3"}'
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
  'character:준호:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c8c70067ebf63923a7aacd5933169121771cce696fcd3262fb4a28241ce46265.mp3', 1149, '2026-09-13 21:10:30.825807', 'f8b446e8370544cfbb37c183584ac4d448230b9705efb10885609a1df2e575ed', 'validated', '{"audio_key":"c8c70067ebf63923a7aacd5933169121771cce696fcd3262fb4a28241ce46265","entity_key":"d_first_objects_02:1","voice_id":"L4az9Gb378GIycFl2nAB","voice_name":"KO - Calm, Friendly, Warm","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f8b446e8370544cfbb37c183584ac4d448230b9705efb10885609a1df2e575ed","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/ko-KR/dialogues/c8c70067ebf63923a7aacd5933169121771cce696fcd3262fb4a28241ce46265.mp3"}'
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
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/c9a166a1fa93ae30c1769af303d25b0bd743a57e844ee676303381867c40121d.mp3', 1488, '2026-09-13 21:10:31.868666', '591b58ae19d104cb3a54cb59f1502d5dfc85f28bf56ae45fb14c4e80e7c7de95', 'validated', '{"audio_key":"c9a166a1fa93ae30c1769af303d25b0bd743a57e844ee676303381867c40121d","entity_key":"d_survival_words_02:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"591b58ae19d104cb3a54cb59f1502d5dfc85f28bf56ae45fb14c4e80e7c7de95","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/c9a166a1fa93ae30c1769af303d25b0bd743a57e844ee676303381867c40121d.mp3"}'
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
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/cc1503f38b601f8fcf20109afc3d4517a00f21f0e371487ee6bd249e23d65296.mp3', 1436, '2026-09-13 21:05:08.634611', '1f967326ff7a99c13393f98d92ec3cfa095a5ed3f60eba4b426436e6206d7b37', 'validated', '{"audio_key":"cc1503f38b601f8fcf20109afc3d4517a00f21f0e371487ee6bd249e23d65296","entity_key":"d_how_are_you_02:1","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"1f967326ff7a99c13393f98d92ec3cfa095a5ed3f60eba4b426436e6206d7b37","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/cc1503f38b601f8fcf20109afc3d4517a00f21f0e371487ee6bd249e23d65296.mp3"}'
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
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d153a317cfe3064b859bb19611ef2e44c6a661460174a0eb52f758a8c65a0e80.mp3', 2220, '2026-09-13 21:10:31.963070', '91da49fc1eb793c59d5d07d41b8eab750d9911f074b7d18e98922be14b91a951', 'validated', '{"audio_key":"d153a317cfe3064b859bb19611ef2e44c6a661460174a0eb52f758a8c65a0e80","entity_key":"d_survival_words_02:1","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"91da49fc1eb793c59d5d07d41b8eab750d9911f074b7d18e98922be14b91a951","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/d153a317cfe3064b859bb19611ef2e44c6a661460174a0eb52f758a8c65a0e80.mp3"}'
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
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d27236d6e7a5971161d92939619a56c14510f2840e4acb2636ec5e55a8a96772.mp3', 1253, '2026-09-13 21:05:09.648226', 'ccac340106043c01766fe9b0c4b8f21fb51ab48606ca5274a784507fad2643af', 'validated', '{"audio_key":"d27236d6e7a5971161d92939619a56c14510f2840e4acb2636ec5e55a8a96772","entity_key":"d_polite_words_01:3","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"ccac340106043c01766fe9b0c4b8f21fb51ab48606ca5274a784507fad2643af","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/d27236d6e7a5971161d92939619a56c14510f2840e4acb2636ec5e55a8a96772.mp3"}'
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
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/d976907029734fb9a62ee9480a510d4e74e75b378b879eede58e1207a715bc13.mp3', 1280, '2026-09-13 21:05:09.872734', 'c8df548b29bf44ba0d2ab33842d2a4918b7a4c3e5f610889edc036d942693676', 'validated', '{"audio_key":"d976907029734fb9a62ee9480a510d4e74e75b378b879eede58e1207a715bc13","entity_key":"d_polite_words_02:4","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c8df548b29bf44ba0d2ab33842d2a4918b7a4c3e5f610889edc036d942693676","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/d976907029734fb9a62ee9480a510d4e74e75b378b879eede58e1207a715bc13.mp3"}'
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
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/dc405b02932894b784422cf64823bf7ae654ca0fb521e3a6d61b2cbfb206b1ac.mp3', 1488, '2026-09-13 21:05:10.670079', '3b9b33ee997ba4155e4b4be11fbd2c9d2c5792917988cf08eab1955cf48b4c23', 'validated', '{"audio_key":"dc405b02932894b784422cf64823bf7ae654ca0fb521e3a6d61b2cbfb206b1ac","entity_key":"d_polite_words_01:2","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3b9b33ee997ba4155e4b4be11fbd2c9d2c5792917988cf08eab1955cf48b4c23","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/dc405b02932894b784422cf64823bf7ae654ca0fb521e3a6d61b2cbfb206b1ac.mp3"}'
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
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ddc0824f44dee3f21652b1cf0ee436c31db5a1367b7c0e9f9b8ba34d8785b77a.mp3', 1384, '2026-09-13 21:10:32.888495', '45df435c3782fd8a7cf138da91d2c24ec7ada2c7372130f9ea88a0322d262e77', 'validated', '{"audio_key":"ddc0824f44dee3f21652b1cf0ee436c31db5a1367b7c0e9f9b8ba34d8785b77a","entity_key":"d_first_sounds_02:2","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"45df435c3782fd8a7cf138da91d2c24ec7ada2c7372130f9ea88a0322d262e77","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/ddc0824f44dee3f21652b1cf0ee436c31db5a1367b7c0e9f9b8ba34d8785b77a.mp3"}'
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
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e7acf6de0d74dde8b41d6c398367c73452097134a784d4754581b287dc4d58db.mp3', 2533, '2026-09-13 21:05:11.776634', 'd6d98b01657fca578442f9900733c4be8c3b9cb09e0e0858c76c734c0b271940', 'validated', '{"audio_key":"e7acf6de0d74dde8b41d6c398367c73452097134a784d4754581b287dc4d58db","entity_key":"d_first_conversation_01:1","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d6d98b01657fca578442f9900733c4be8c3b9cb09e0e0858c76c734c0b271940","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/e7acf6de0d74dde8b41d6c398367c73452097134a784d4754581b287dc4d58db.mp3"}'
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
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e7acf6de0d74dde8b41d6c398367c73452097134a784d4754581b287dc4d58db.mp3', 2533, '2026-09-13 21:05:11.776634', 'd6d98b01657fca578442f9900733c4be8c3b9cb09e0e0858c76c734c0b271940', 'validated', '{"audio_key":"e7acf6de0d74dde8b41d6c398367c73452097134a784d4754581b287dc4d58db","entity_key":"d_my_name_01:2","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d6d98b01657fca578442f9900733c4be8c3b9cb09e0e0858c76c734c0b271940","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/e7acf6de0d74dde8b41d6c398367c73452097134a784d4754581b287dc4d58db.mp3"}'
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
  'character:유나:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e91437323328fbc7c59f306cc83e7bd9ced3fc0ace69907161e1e6d74b844c81.mp3', 1097, '2026-09-13 21:05:11.829454', '59811d1a2b559cff4042c5812abe81e57e16dc992c4481a5d3ed4ded6d517e28', 'validated', '{"audio_key":"e91437323328fbc7c59f306cc83e7bd9ced3fc0ace69907161e1e6d74b844c81","entity_key":"d_hangul_basics_01:2","voice_id":"JguuvPsf0F2TNXefsblh","voice_name":"Yuna Kim - Warm, Trustworthy Korean","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"informative_educational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"59811d1a2b559cff4042c5812abe81e57e16dc992c4481a5d3ed4ded6d517e28","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/e91437323328fbc7c59f306cc83e7bd9ced3fc0ace69907161e1e6d74b844c81.mp3"}'
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
  'character:도윤:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/e9718c4d7e6574de21f2d80522cb4f099add6e0ff8a1f3424f58f7c647f9728c.mp3', 1280, '2026-09-13 21:05:12.861564', 'bec326b6e0bff4f544f92b48ea1a464092ac82b42b40a51fba813a6c3bbce45c', 'validated', '{"audio_key":"e9718c4d7e6574de21f2d80522cb4f099add6e0ff8a1f3424f58f7c647f9728c","entity_key":"d_my_name_02:4","voice_id":"MkyWvsz7jzJkip0vi9E6","voice_name":"Sung - Tender, Calm & Clear","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"bec326b6e0bff4f544f92b48ea1a464092ac82b42b40a51fba813a6c3bbce45c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/ko-KR/dialogues/e9718c4d7e6574de21f2d80522cb4f099add6e0ff8a1f3424f58f7c647f9728c.mp3"}'
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
  'character:지민:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/ed40ff0166c9e17a85b8d0b365b562ce5934362fb09da6e6814d6f5b248e508d.mp3', 1018, '2026-09-13 21:05:12.813760', '9d95cef50c74e121f1182fc8b1889e78db4aed67707a2e33b1a8d9898dca14f6', 'validated', '{"audio_key":"ed40ff0166c9e17a85b8d0b365b562ce5934362fb09da6e6814d6f5b248e508d","entity_key":"d_polite_words_01:1","voice_id":"ZubHeGTOAkECknc02Zmo","voice_name":"Eunhye - Composed and Reassuring","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9d95cef50c74e121f1182fc8b1889e78db4aed67707a2e33b1a8d9898dca14f6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/ed40ff0166c9e17a85b8d0b365b562ce5934362fb09da6e6814d6f5b248e508d.mp3"}'
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
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/efcedf91d2a89213a2f6df6b7b5d2fd869755cd13f7f8d33d4d89d14f224159b.mp3', 1384, '2026-09-13 21:10:33.254522', 'af98a4832f9e9c897eac331afc2bcdd00c7ca20f18e8f885157eb80d4d4fbb5f', 'validated', '{"audio_key":"efcedf91d2a89213a2f6df6b7b5d2fd869755cd13f7f8d33d4d89d14f224159b","entity_key":"d_first_sounds_02:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"af98a4832f9e9c897eac331afc2bcdd00c7ca20f18e8f885157eb80d4d4fbb5f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/efcedf91d2a89213a2f6df6b7b5d2fd869755cd13f7f8d33d4d89d14f224159b.mp3"}'
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
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f11a15c1cd0208cdd9cfcd2093a24e3002fe42657cbe1707e55f513c151dc814.mp3', 1436, '2026-09-13 21:05:13.910061', '50c9c9485827e40d9781b3c8d6942ef1f0d8d972150c350770a6922e0593417f', 'validated', '{"audio_key":"f11a15c1cd0208cdd9cfcd2093a24e3002fe42657cbe1707e55f513c151dc814","entity_key":"d_first_conversation_01:3","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"50c9c9485827e40d9781b3c8d6942ef1f0d8d972150c350770a6922e0593417f","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/f11a15c1cd0208cdd9cfcd2093a24e3002fe42657cbe1707e55f513c151dc814.mp3"}'
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
  'character:민수:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f18254889c20eaf29b03be34b2310ccd18453280eaf95f4a095f345505715f94.mp3', 2089, '2026-09-13 21:10:34.013693', 'fd5165cc01e554487de3b3f4a352fa0eb7bc34df6afdc325194180136225d3b8', 'validated', '{"audio_key":"f18254889c20eaf29b03be34b2310ccd18453280eaf95f4a095f345505715f94","entity_key":"d_survival_words_01:4","voice_id":"70DeQK5Ztp7WmEGGysLT","voice_name":"Hyun - Friendly and Natural","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"high_quality","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fd5165cc01e554487de3b3f4a352fa0eb7bc34df6afdc325194180136225d3b8","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/ko-KR/dialogues/f18254889c20eaf29b03be34b2310ccd18453280eaf95f4a095f345505715f94.mp3"}'
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
  'character:태호:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f67d14be4d993e8639dfed6a9e7d06da0827e4b82c4a7ee0708169f86dc0a1b8.mp3', 1280, '2026-09-13 21:05:14.920169', '4ebc630a4db336c7d06c01879987ed4a63d24d7af7f80988a356cee1e3c4dfc1', 'validated', '{"audio_key":"f67d14be4d993e8639dfed6a9e7d06da0827e4b82c4a7ee0708169f86dc0a1b8","entity_key":"d_my_name_01:4","voice_id":"QAuCXfOpYxbxOasYze98","voice_name":"Sein - Sweet & Gentle Korean\t","voice_labels":{"gender":"male","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"4ebc630a4db336c7d06c01879987ed4a63d24d7af7f80988a356cee1e3c4dfc1","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/f67d14be4d993e8639dfed6a9e7d06da0827e4b82c4a7ee0708169f86dc0a1b8.mp3"}'
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
  'character:하나:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/dialogues/f899615217d962ee01ddf0d5dced52e86253b69abf51fd0bc69a654b5fa963b8.mp3', 1332, '2026-09-13 21:10:34.302003', 'a6d249f09efe31fa0ab876baff1029e9bd5c1a8c31988cd6b51bf8bfe89475dd', 'validated', '{"audio_key":"f899615217d962ee01ddf0d5dced52e86253b69abf51fd0bc69a654b5fa963b8","entity_key":"d_my_name_01:3","voice_id":"7oLyBHyhxAjrctX6ZQlw","voice_name":"Bomisori - Warm and Clear","voice_labels":{"gender":"female","accent":"seoul","age":"middle_aged","category":"professional","language":"ko","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a6d249f09efe31fa0ab876baff1029e9bd5c1a8c31988cd6b51bf8bfe89475dd","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/dialogues/f899615217d962ee01ddf0d5dced52e86253b69abf51fd0bc69a654b5fa963b8.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/015424336a1849406dc5bba3d6b7a6121eccf227550556cab2420adfeb81eb48.mp3', 966, '2026-09-13 21:05:19.604372', '97c96b26ac7b539e2e03869eaf76858bb00bff768c5bfaacfbcceef97c2479eb', 'validated', '{"audio_key":"015424336a1849406dc5bba3d6b7a6121eccf227550556cab2420adfeb81eb48","entity_key":"lx_survival_words_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"97c96b26ac7b539e2e03869eaf76858bb00bff768c5bfaacfbcceef97c2479eb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/015424336a1849406dc5bba3d6b7a6121eccf227550556cab2420adfeb81eb48.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/015424336a1849406dc5bba3d6b7a6121eccf227550556cab2420adfeb81eb48.mp3', 966, '2026-09-13 21:05:19.604372', '97c96b26ac7b539e2e03869eaf76858bb00bff768c5bfaacfbcceef97c2479eb', 'validated', '{"audio_key":"015424336a1849406dc5bba3d6b7a6121eccf227550556cab2420adfeb81eb48","entity_key":"wf_survival_words_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"97c96b26ac7b539e2e03869eaf76858bb00bff768c5bfaacfbcceef97c2479eb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/015424336a1849406dc5bba3d6b7a6121eccf227550556cab2420adfeb81eb48.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0a83c541ebc4e2e109a2f7aa593fe4dc3e6d2d4f63029f7ef9b4bc6046987947.mp3', 835, '2026-09-13 21:05:19.586334', '2df675e55311c7e4a97157546554f08d53b0599d7cab306e816b44224f29b6e5', 'validated', '{"audio_key":"0a83c541ebc4e2e109a2f7aa593fe4dc3e6d2d4f63029f7ef9b4bc6046987947","entity_key":"lx_hangul_basics_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2df675e55311c7e4a97157546554f08d53b0599d7cab306e816b44224f29b6e5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0a83c541ebc4e2e109a2f7aa593fe4dc3e6d2d4f63029f7ef9b4bc6046987947.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/0a83c541ebc4e2e109a2f7aa593fe4dc3e6d2d4f63029f7ef9b4bc6046987947.mp3', 835, '2026-09-13 21:05:19.586334', '2df675e55311c7e4a97157546554f08d53b0599d7cab306e816b44224f29b6e5', 'validated', '{"audio_key":"0a83c541ebc4e2e109a2f7aa593fe4dc3e6d2d4f63029f7ef9b4bc6046987947","entity_key":"wf_hangul_basics_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2df675e55311c7e4a97157546554f08d53b0599d7cab306e816b44224f29b6e5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/0a83c541ebc4e2e109a2f7aa593fe4dc3e6d2d4f63029f7ef9b4bc6046987947.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/101544e2bf80b781e0c295c9a934f198951361e7014d4fda5fa7cd2a0502f2a9.mp3', 862, '2026-09-13 21:05:20.560836', '3f5f70cf9286f6544f3662beed4177d7812d9db18061e8fdbab649b67ffed758', 'validated', '{"audio_key":"101544e2bf80b781e0c295c9a934f198951361e7014d4fda5fa7cd2a0502f2a9","entity_key":"lx_first_sounds_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3f5f70cf9286f6544f3662beed4177d7812d9db18061e8fdbab649b67ffed758","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/101544e2bf80b781e0c295c9a934f198951361e7014d4fda5fa7cd2a0502f2a9.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/101544e2bf80b781e0c295c9a934f198951361e7014d4fda5fa7cd2a0502f2a9.mp3', 862, '2026-09-13 21:05:20.560836', '3f5f70cf9286f6544f3662beed4177d7812d9db18061e8fdbab649b67ffed758', 'validated', '{"audio_key":"101544e2bf80b781e0c295c9a934f198951361e7014d4fda5fa7cd2a0502f2a9","entity_key":"wf_first_sounds_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"3f5f70cf9286f6544f3662beed4177d7812d9db18061e8fdbab649b67ffed758","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/101544e2bf80b781e0c295c9a934f198951361e7014d4fda5fa7cd2a0502f2a9.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/180724c81b33afa4e68ead299c58bb1360c4184c37656614507f958701cd24f9.mp3', 1018, '2026-09-13 21:05:20.593143', 'a0b49bae5bb17497098d954af631826ca70aaae5fb82a36c01cd0587c0f88b38', 'validated', '{"audio_key":"180724c81b33afa4e68ead299c58bb1360c4184c37656614507f958701cd24f9","entity_key":"lx_polite_words_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a0b49bae5bb17497098d954af631826ca70aaae5fb82a36c01cd0587c0f88b38","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/180724c81b33afa4e68ead299c58bb1360c4184c37656614507f958701cd24f9.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/180724c81b33afa4e68ead299c58bb1360c4184c37656614507f958701cd24f9.mp3', 1018, '2026-09-13 21:05:20.593143', 'a0b49bae5bb17497098d954af631826ca70aaae5fb82a36c01cd0587c0f88b38', 'validated', '{"audio_key":"180724c81b33afa4e68ead299c58bb1360c4184c37656614507f958701cd24f9","entity_key":"wf_polite_words_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a0b49bae5bb17497098d954af631826ca70aaae5fb82a36c01cd0587c0f88b38","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/180724c81b33afa4e68ead299c58bb1360c4184c37656614507f958701cd24f9.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/19e8c5c99c074c51c414dc3b83e4e88c9ceb83066a537693a19df994cb2cfffe.mp3', 835, '2026-09-13 21:05:21.541580', 'cfda4faffe38aeb9c44da175452d784ad5b8d35833c5648d3c1a946bb46ffcf6', 'validated', '{"audio_key":"19e8c5c99c074c51c414dc3b83e4e88c9ceb83066a537693a19df994cb2cfffe","entity_key":"lx_hangul_basics_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cfda4faffe38aeb9c44da175452d784ad5b8d35833c5648d3c1a946bb46ffcf6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/19e8c5c99c074c51c414dc3b83e4e88c9ceb83066a537693a19df994cb2cfffe.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/19e8c5c99c074c51c414dc3b83e4e88c9ceb83066a537693a19df994cb2cfffe.mp3', 835, '2026-09-13 21:05:21.541580', 'cfda4faffe38aeb9c44da175452d784ad5b8d35833c5648d3c1a946bb46ffcf6', 'validated', '{"audio_key":"19e8c5c99c074c51c414dc3b83e4e88c9ceb83066a537693a19df994cb2cfffe","entity_key":"wf_hangul_basics_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cfda4faffe38aeb9c44da175452d784ad5b8d35833c5648d3c1a946bb46ffcf6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/19e8c5c99c074c51c414dc3b83e4e88c9ceb83066a537693a19df994cb2cfffe.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1cffeb903b2c64ccf9b369b0bf3d297a8d38b0cdbce0af5b84d35946bb95344e.mp3', 1384, '2026-09-13 21:05:21.600818', '771af308810d94a6d86ee950b5f273a27a333573e54fa4bb9d53e13561f5cadf', 'validated', '{"audio_key":"1cffeb903b2c64ccf9b369b0bf3d297a8d38b0cdbce0af5b84d35946bb95344e","entity_key":"lx_first_greetings_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"771af308810d94a6d86ee950b5f273a27a333573e54fa4bb9d53e13561f5cadf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1cffeb903b2c64ccf9b369b0bf3d297a8d38b0cdbce0af5b84d35946bb95344e.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1cffeb903b2c64ccf9b369b0bf3d297a8d38b0cdbce0af5b84d35946bb95344e.mp3', 1384, '2026-09-13 21:05:21.600818', '771af308810d94a6d86ee950b5f273a27a333573e54fa4bb9d53e13561f5cadf', 'validated', '{"audio_key":"1cffeb903b2c64ccf9b369b0bf3d297a8d38b0cdbce0af5b84d35946bb95344e","entity_key":"wf_first_greetings_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"771af308810d94a6d86ee950b5f273a27a333573e54fa4bb9d53e13561f5cadf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1cffeb903b2c64ccf9b369b0bf3d297a8d38b0cdbce0af5b84d35946bb95344e.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1ff99e9568eb05a00e54dccd3e7a08bd56032461292f2b4539d0d0b029453a3a.mp3', 966, '2026-09-13 21:05:22.563520', 'c6fb4f3ace00b2a95d3a5c9247e76183eca09c6d5ea2f4973797c31c28ed21ab', 'validated', '{"audio_key":"1ff99e9568eb05a00e54dccd3e7a08bd56032461292f2b4539d0d0b029453a3a","entity_key":"lx_first_greetings_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c6fb4f3ace00b2a95d3a5c9247e76183eca09c6d5ea2f4973797c31c28ed21ab","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1ff99e9568eb05a00e54dccd3e7a08bd56032461292f2b4539d0d0b029453a3a.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/1ff99e9568eb05a00e54dccd3e7a08bd56032461292f2b4539d0d0b029453a3a.mp3', 966, '2026-09-13 21:05:22.563520', 'c6fb4f3ace00b2a95d3a5c9247e76183eca09c6d5ea2f4973797c31c28ed21ab', 'validated', '{"audio_key":"1ff99e9568eb05a00e54dccd3e7a08bd56032461292f2b4539d0d0b029453a3a","entity_key":"wf_first_greetings_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c6fb4f3ace00b2a95d3a5c9247e76183eca09c6d5ea2f4973797c31c28ed21ab","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/1ff99e9568eb05a00e54dccd3e7a08bd56032461292f2b4539d0d0b029453a3a.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/27f0d7962ffd4b04e2d77fc56e54eb1651584449797d1c0d3548d42e14c2ccaf.mp3', 600, '2026-09-13 21:05:22.557886', '91fca178386eac95d2eca0a6dc0fb356febec34040b53361f5f04e9c2d8f5f14', 'validated', '{"audio_key":"27f0d7962ffd4b04e2d77fc56e54eb1651584449797d1c0d3548d42e14c2ccaf","entity_key":"lx_hangul_basics_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"91fca178386eac95d2eca0a6dc0fb356febec34040b53361f5f04e9c2d8f5f14","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/27f0d7962ffd4b04e2d77fc56e54eb1651584449797d1c0d3548d42e14c2ccaf.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/27f0d7962ffd4b04e2d77fc56e54eb1651584449797d1c0d3548d42e14c2ccaf.mp3', 600, '2026-09-13 21:05:22.557886', '91fca178386eac95d2eca0a6dc0fb356febec34040b53361f5f04e9c2d8f5f14', 'validated', '{"audio_key":"27f0d7962ffd4b04e2d77fc56e54eb1651584449797d1c0d3548d42e14c2ccaf","entity_key":"wf_hangul_basics_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"91fca178386eac95d2eca0a6dc0fb356febec34040b53361f5f04e9c2d8f5f14","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/27f0d7962ffd4b04e2d77fc56e54eb1651584449797d1c0d3548d42e14c2ccaf.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/287feafbb915fb877e6f2001535a741a1a1cc5c570e5f8e0cabf8fd344799c24.mp3', 679, '2026-09-13 21:05:23.542302', '89963b241d766f71ebd98f27ecf18b7a969a60e0e60aef1335421469ea942d0e', 'validated', '{"audio_key":"287feafbb915fb877e6f2001535a741a1a1cc5c570e5f8e0cabf8fd344799c24","entity_key":"lx_hangul_basics_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"89963b241d766f71ebd98f27ecf18b7a969a60e0e60aef1335421469ea942d0e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/287feafbb915fb877e6f2001535a741a1a1cc5c570e5f8e0cabf8fd344799c24.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/287feafbb915fb877e6f2001535a741a1a1cc5c570e5f8e0cabf8fd344799c24.mp3', 679, '2026-09-13 21:05:23.542302', '89963b241d766f71ebd98f27ecf18b7a969a60e0e60aef1335421469ea942d0e', 'validated', '{"audio_key":"287feafbb915fb877e6f2001535a741a1a1cc5c570e5f8e0cabf8fd344799c24","entity_key":"wf_hangul_basics_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"89963b241d766f71ebd98f27ecf18b7a969a60e0e60aef1335421469ea942d0e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/287feafbb915fb877e6f2001535a741a1a1cc5c570e5f8e0cabf8fd344799c24.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/29bf7ff0b56d17410cda8d70d84c6f7ccbb314e14488c10c768fe6f6be834db0.mp3', 1097, '2026-09-13 21:05:23.562284', 'de6a3706bcf948f433125ada4228bdb061d579cfb7382a8f779d9d997e55cf9a', 'validated', '{"audio_key":"29bf7ff0b56d17410cda8d70d84c6f7ccbb314e14488c10c768fe6f6be834db0","entity_key":"lx_numbers_0_10_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"de6a3706bcf948f433125ada4228bdb061d579cfb7382a8f779d9d997e55cf9a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/29bf7ff0b56d17410cda8d70d84c6f7ccbb314e14488c10c768fe6f6be834db0.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/29bf7ff0b56d17410cda8d70d84c6f7ccbb314e14488c10c768fe6f6be834db0.mp3', 1097, '2026-09-13 21:05:23.562284', 'de6a3706bcf948f433125ada4228bdb061d579cfb7382a8f779d9d997e55cf9a', 'validated', '{"audio_key":"29bf7ff0b56d17410cda8d70d84c6f7ccbb314e14488c10c768fe6f6be834db0","entity_key":"wf_numbers_0_10_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"de6a3706bcf948f433125ada4228bdb061d579cfb7382a8f779d9d997e55cf9a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/29bf7ff0b56d17410cda8d70d84c6f7ccbb314e14488c10c768fe6f6be834db0.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/31e8216097f091cc19ecba68239ede0f317c3d2dd17c58b07eb458871620cfff.mp3', 862, '2026-09-13 21:05:24.520914', 'ee0feb04ab249a933d543321ff129f71a54746c88dc4e643fcc0af5d5d021e13', 'validated', '{"audio_key":"31e8216097f091cc19ecba68239ede0f317c3d2dd17c58b07eb458871620cfff","entity_key":"lx_my_name_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ee0feb04ab249a933d543321ff129f71a54746c88dc4e643fcc0af5d5d021e13","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/31e8216097f091cc19ecba68239ede0f317c3d2dd17c58b07eb458871620cfff.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/31e8216097f091cc19ecba68239ede0f317c3d2dd17c58b07eb458871620cfff.mp3', 862, '2026-09-13 21:05:24.520914', 'ee0feb04ab249a933d543321ff129f71a54746c88dc4e643fcc0af5d5d021e13', 'validated', '{"audio_key":"31e8216097f091cc19ecba68239ede0f317c3d2dd17c58b07eb458871620cfff","entity_key":"wf_my_name_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ee0feb04ab249a933d543321ff129f71a54746c88dc4e643fcc0af5d5d021e13","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/31e8216097f091cc19ecba68239ede0f317c3d2dd17c58b07eb458871620cfff.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/37059260df31868e48fda7c56f66f0085748476157c3f6cc98de6ed2fc075ec5.mp3', 835, '2026-09-13 21:05:24.519696', '91df173553d5cffd8c6d2b7bde041c74a2cef9448f7a0d2c9eb593ed17d99ded', 'validated', '{"audio_key":"37059260df31868e48fda7c56f66f0085748476157c3f6cc98de6ed2fc075ec5","entity_key":"lx_first_objects_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"91df173553d5cffd8c6d2b7bde041c74a2cef9448f7a0d2c9eb593ed17d99ded","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/37059260df31868e48fda7c56f66f0085748476157c3f6cc98de6ed2fc075ec5.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/37059260df31868e48fda7c56f66f0085748476157c3f6cc98de6ed2fc075ec5.mp3', 835, '2026-09-13 21:05:24.519696', '91df173553d5cffd8c6d2b7bde041c74a2cef9448f7a0d2c9eb593ed17d99ded', 'validated', '{"audio_key":"37059260df31868e48fda7c56f66f0085748476157c3f6cc98de6ed2fc075ec5","entity_key":"wf_first_objects_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"91df173553d5cffd8c6d2b7bde041c74a2cef9448f7a0d2c9eb593ed17d99ded","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/37059260df31868e48fda7c56f66f0085748476157c3f6cc98de6ed2fc075ec5.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/39fd0406a1b74a75e5c24bb44a468fc79688e002caa59fef954c52b65bf5198f.mp3', 966, '2026-09-13 21:05:25.522565', '6e11d93bbf58de98f5039477be3bbe994f4cafd8208dcc262b4ce24b83c66b8c', 'validated', '{"audio_key":"39fd0406a1b74a75e5c24bb44a468fc79688e002caa59fef954c52b65bf5198f","entity_key":"lx_first_conversation_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6e11d93bbf58de98f5039477be3bbe994f4cafd8208dcc262b4ce24b83c66b8c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/39fd0406a1b74a75e5c24bb44a468fc79688e002caa59fef954c52b65bf5198f.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/39fd0406a1b74a75e5c24bb44a468fc79688e002caa59fef954c52b65bf5198f.mp3', 966, '2026-09-13 21:05:25.522565', '6e11d93bbf58de98f5039477be3bbe994f4cafd8208dcc262b4ce24b83c66b8c', 'validated', '{"audio_key":"39fd0406a1b74a75e5c24bb44a468fc79688e002caa59fef954c52b65bf5198f","entity_key":"wf_first_conversation_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"6e11d93bbf58de98f5039477be3bbe994f4cafd8208dcc262b4ce24b83c66b8c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/39fd0406a1b74a75e5c24bb44a468fc79688e002caa59fef954c52b65bf5198f.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/3a613239257700ca41f3e2fdc9193ea40fe956268ed1f08eef9db3986cbd9cdf.mp3', 1097, '2026-09-13 21:05:25.537908', 'addde2614fc356eac5ecbbf7354ae7a086c658a7a93e844d6069da005c2a0b79', 'validated', '{"audio_key":"3a613239257700ca41f3e2fdc9193ea40fe956268ed1f08eef9db3986cbd9cdf","entity_key":"lx_survival_words_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"addde2614fc356eac5ecbbf7354ae7a086c658a7a93e844d6069da005c2a0b79","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/3a613239257700ca41f3e2fdc9193ea40fe956268ed1f08eef9db3986cbd9cdf.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/3a613239257700ca41f3e2fdc9193ea40fe956268ed1f08eef9db3986cbd9cdf.mp3', 1097, '2026-09-13 21:05:25.537908', 'addde2614fc356eac5ecbbf7354ae7a086c658a7a93e844d6069da005c2a0b79', 'validated', '{"audio_key":"3a613239257700ca41f3e2fdc9193ea40fe956268ed1f08eef9db3986cbd9cdf","entity_key":"wf_survival_words_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"addde2614fc356eac5ecbbf7354ae7a086c658a7a93e844d6069da005c2a0b79","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/3a613239257700ca41f3e2fdc9193ea40fe956268ed1f08eef9db3986cbd9cdf.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/3bfe59fff2b5d8912366450cd5a25ce4febcfcc7185ed04fe901e2425aef1717.mp3', 862, '2026-09-13 21:05:26.501577', 'b05fbfe2e352816531c6fa72fccd6b9a857acfe3372e6fc43f43bf53781dd002', 'validated', '{"audio_key":"3bfe59fff2b5d8912366450cd5a25ce4febcfcc7185ed04fe901e2425aef1717","entity_key":"lx_how_are_you_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b05fbfe2e352816531c6fa72fccd6b9a857acfe3372e6fc43f43bf53781dd002","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/3bfe59fff2b5d8912366450cd5a25ce4febcfcc7185ed04fe901e2425aef1717.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/3bfe59fff2b5d8912366450cd5a25ce4febcfcc7185ed04fe901e2425aef1717.mp3', 862, '2026-09-13 21:05:26.501577', 'b05fbfe2e352816531c6fa72fccd6b9a857acfe3372e6fc43f43bf53781dd002', 'validated', '{"audio_key":"3bfe59fff2b5d8912366450cd5a25ce4febcfcc7185ed04fe901e2425aef1717","entity_key":"wf_how_are_you_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b05fbfe2e352816531c6fa72fccd6b9a857acfe3372e6fc43f43bf53781dd002","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/3bfe59fff2b5d8912366450cd5a25ce4febcfcc7185ed04fe901e2425aef1717.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/48e83fe2d3110d3795202b6dc5d3c79dff4f2646333374c55b93e1e1f117e98b.mp3', 1018, '2026-09-13 21:05:26.575292', 'b454ba3cce45dbe4f41c413f2dfe56f18f937d41adc30944f96f52670f60bc2c', 'validated', '{"audio_key":"48e83fe2d3110d3795202b6dc5d3c79dff4f2646333374c55b93e1e1f117e98b","entity_key":"lx_first_objects_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b454ba3cce45dbe4f41c413f2dfe56f18f937d41adc30944f96f52670f60bc2c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/48e83fe2d3110d3795202b6dc5d3c79dff4f2646333374c55b93e1e1f117e98b.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/48e83fe2d3110d3795202b6dc5d3c79dff4f2646333374c55b93e1e1f117e98b.mp3', 1018, '2026-09-13 21:05:26.575292', 'b454ba3cce45dbe4f41c413f2dfe56f18f937d41adc30944f96f52670f60bc2c', 'validated', '{"audio_key":"48e83fe2d3110d3795202b6dc5d3c79dff4f2646333374c55b93e1e1f117e98b","entity_key":"wf_first_objects_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b454ba3cce45dbe4f41c413f2dfe56f18f937d41adc30944f96f52670f60bc2c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/48e83fe2d3110d3795202b6dc5d3c79dff4f2646333374c55b93e1e1f117e98b.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/51da8a04458aedc82f8c138625aeb413444a23b4bf3f6ba8579c07b04624b433.mp3', 1018, '2026-09-13 21:05:27.493416', 'c9a54749219fb075edb40cfd91969e08ff5a68bedc1af55284537d5cc45ab8c6', 'validated', '{"audio_key":"51da8a04458aedc82f8c138625aeb413444a23b4bf3f6ba8579c07b04624b433","entity_key":"lx_numbers_0_10_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c9a54749219fb075edb40cfd91969e08ff5a68bedc1af55284537d5cc45ab8c6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/51da8a04458aedc82f8c138625aeb413444a23b4bf3f6ba8579c07b04624b433.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/51da8a04458aedc82f8c138625aeb413444a23b4bf3f6ba8579c07b04624b433.mp3', 1018, '2026-09-13 21:05:27.493416', 'c9a54749219fb075edb40cfd91969e08ff5a68bedc1af55284537d5cc45ab8c6', 'validated', '{"audio_key":"51da8a04458aedc82f8c138625aeb413444a23b4bf3f6ba8579c07b04624b433","entity_key":"wf_numbers_0_10_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c9a54749219fb075edb40cfd91969e08ff5a68bedc1af55284537d5cc45ab8c6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/51da8a04458aedc82f8c138625aeb413444a23b4bf3f6ba8579c07b04624b433.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5398a6114da38171eed65d93e5a2ac1b5cb8233b6735e7dc1178e9ba7f0a4164.mp3', 862, '2026-09-13 21:05:27.543331', 'bee8a91d01d8f540e4d96675f11fc8ec977d31cc8a05a563db06cc0c71122279', 'validated', '{"audio_key":"5398a6114da38171eed65d93e5a2ac1b5cb8233b6735e7dc1178e9ba7f0a4164","entity_key":"lx_first_greetings_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bee8a91d01d8f540e4d96675f11fc8ec977d31cc8a05a563db06cc0c71122279","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5398a6114da38171eed65d93e5a2ac1b5cb8233b6735e7dc1178e9ba7f0a4164.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/5398a6114da38171eed65d93e5a2ac1b5cb8233b6735e7dc1178e9ba7f0a4164.mp3', 862, '2026-09-13 21:05:27.543331', 'bee8a91d01d8f540e4d96675f11fc8ec977d31cc8a05a563db06cc0c71122279', 'validated', '{"audio_key":"5398a6114da38171eed65d93e5a2ac1b5cb8233b6735e7dc1178e9ba7f0a4164","entity_key":"wf_first_greetings_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bee8a91d01d8f540e4d96675f11fc8ec977d31cc8a05a563db06cc0c71122279","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/5398a6114da38171eed65d93e5a2ac1b5cb8233b6735e7dc1178e9ba7f0a4164.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/60f28a6ec6a40a2faff8696d9a5b80ef15ff9a438d4fa970710c6bcd8c941550.mp3', 731, '2026-09-13 21:05:28.448511', '8a172fac6b88537fd6e68fa8d6216d49e8af6a9f787468a1bea80afa8050e7b1', 'validated', '{"audio_key":"60f28a6ec6a40a2faff8696d9a5b80ef15ff9a438d4fa970710c6bcd8c941550","entity_key":"lx_numbers_0_10_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8a172fac6b88537fd6e68fa8d6216d49e8af6a9f787468a1bea80afa8050e7b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/60f28a6ec6a40a2faff8696d9a5b80ef15ff9a438d4fa970710c6bcd8c941550.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/60f28a6ec6a40a2faff8696d9a5b80ef15ff9a438d4fa970710c6bcd8c941550.mp3', 731, '2026-09-13 21:05:28.448511', '8a172fac6b88537fd6e68fa8d6216d49e8af6a9f787468a1bea80afa8050e7b1', 'validated', '{"audio_key":"60f28a6ec6a40a2faff8696d9a5b80ef15ff9a438d4fa970710c6bcd8c941550","entity_key":"wf_numbers_0_10_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8a172fac6b88537fd6e68fa8d6216d49e8af6a9f787468a1bea80afa8050e7b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/60f28a6ec6a40a2faff8696d9a5b80ef15ff9a438d4fa970710c6bcd8c941550.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/693b143ba6cd45a5374217980c599536b4f4bf58862c56f75190a54564dcaa2d.mp3', 1332, '2026-09-13 21:05:28.575995', '0405164f5cc791ae11781244271009a01d70ff2a58677723455ae3a015aa7706', 'validated', '{"audio_key":"693b143ba6cd45a5374217980c599536b4f4bf58862c56f75190a54564dcaa2d","entity_key":"lx_first_greetings_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0405164f5cc791ae11781244271009a01d70ff2a58677723455ae3a015aa7706","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/693b143ba6cd45a5374217980c599536b4f4bf58862c56f75190a54564dcaa2d.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/693b143ba6cd45a5374217980c599536b4f4bf58862c56f75190a54564dcaa2d.mp3', 1332, '2026-09-13 21:05:28.575995', '0405164f5cc791ae11781244271009a01d70ff2a58677723455ae3a015aa7706', 'validated', '{"audio_key":"693b143ba6cd45a5374217980c599536b4f4bf58862c56f75190a54564dcaa2d","entity_key":"wf_first_greetings_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0405164f5cc791ae11781244271009a01d70ff2a58677723455ae3a015aa7706","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/693b143ba6cd45a5374217980c599536b4f4bf58862c56f75190a54564dcaa2d.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6a186d8875ccfa2fa2f5e5c2e8816cd9e3bdffed598563c73a36b6c2d6e9e725.mp3', 679, '2026-09-13 21:05:29.467829', '09f175caf215d7af28e1606107f7fb450ebfb71d361cedbb07efe08fecf02a52', 'validated', '{"audio_key":"6a186d8875ccfa2fa2f5e5c2e8816cd9e3bdffed598563c73a36b6c2d6e9e725","entity_key":"lx_hangul_basics_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"09f175caf215d7af28e1606107f7fb450ebfb71d361cedbb07efe08fecf02a52","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6a186d8875ccfa2fa2f5e5c2e8816cd9e3bdffed598563c73a36b6c2d6e9e725.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6a186d8875ccfa2fa2f5e5c2e8816cd9e3bdffed598563c73a36b6c2d6e9e725.mp3', 679, '2026-09-13 21:05:29.467829', '09f175caf215d7af28e1606107f7fb450ebfb71d361cedbb07efe08fecf02a52', 'validated', '{"audio_key":"6a186d8875ccfa2fa2f5e5c2e8816cd9e3bdffed598563c73a36b6c2d6e9e725","entity_key":"wf_hangul_basics_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"09f175caf215d7af28e1606107f7fb450ebfb71d361cedbb07efe08fecf02a52","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6a186d8875ccfa2fa2f5e5c2e8816cd9e3bdffed598563c73a36b6c2d6e9e725.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6dfc235fae4150ea904ac503b454a18afc481b8efd64ec2c6178707d83d79075.mp3', 862, '2026-09-13 21:05:29.544218', 'c4609e2ea3835feccd8d9b8b9a44db86bd9eac8f6de7834b606bf239ddd530f1', 'validated', '{"audio_key":"6dfc235fae4150ea904ac503b454a18afc481b8efd64ec2c6178707d83d79075","entity_key":"lx_numbers_0_10_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c4609e2ea3835feccd8d9b8b9a44db86bd9eac8f6de7834b606bf239ddd530f1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6dfc235fae4150ea904ac503b454a18afc481b8efd64ec2c6178707d83d79075.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6dfc235fae4150ea904ac503b454a18afc481b8efd64ec2c6178707d83d79075.mp3', 862, '2026-09-13 21:05:29.544218', 'c4609e2ea3835feccd8d9b8b9a44db86bd9eac8f6de7834b606bf239ddd530f1', 'validated', '{"audio_key":"6dfc235fae4150ea904ac503b454a18afc481b8efd64ec2c6178707d83d79075","entity_key":"wf_numbers_0_10_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c4609e2ea3835feccd8d9b8b9a44db86bd9eac8f6de7834b606bf239ddd530f1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6dfc235fae4150ea904ac503b454a18afc481b8efd64ec2c6178707d83d79075.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6efe78edd6a9b9e82ffc1170f00fc8ab26f529ecf3565fe80e7fe88c6fb6565f.mp3', 966, '2026-09-13 21:05:30.458234', '155e1c52923f00e3629114dd13b9bf6cf2d2785c35df6c64de8cfb124f67d740', 'validated', '{"audio_key":"6efe78edd6a9b9e82ffc1170f00fc8ab26f529ecf3565fe80e7fe88c6fb6565f","entity_key":"lx_first_objects_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"155e1c52923f00e3629114dd13b9bf6cf2d2785c35df6c64de8cfb124f67d740","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6efe78edd6a9b9e82ffc1170f00fc8ab26f529ecf3565fe80e7fe88c6fb6565f.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/6efe78edd6a9b9e82ffc1170f00fc8ab26f529ecf3565fe80e7fe88c6fb6565f.mp3', 966, '2026-09-13 21:05:30.458234', '155e1c52923f00e3629114dd13b9bf6cf2d2785c35df6c64de8cfb124f67d740', 'validated', '{"audio_key":"6efe78edd6a9b9e82ffc1170f00fc8ab26f529ecf3565fe80e7fe88c6fb6565f","entity_key":"wf_first_objects_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"155e1c52923f00e3629114dd13b9bf6cf2d2785c35df6c64de8cfb124f67d740","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/6efe78edd6a9b9e82ffc1170f00fc8ab26f529ecf3565fe80e7fe88c6fb6565f.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7129e7c7d1c2849c97a06c2effb71a82bd588caaba75de7ab3ad1be313c91a27.mp3', 1253, '2026-09-13 21:05:30.558761', 'd8c4df336f34b7348964d5b51253ff928f176ca0f318387d07d9b9e4685c9937', 'validated', '{"audio_key":"7129e7c7d1c2849c97a06c2effb71a82bd588caaba75de7ab3ad1be313c91a27","entity_key":"lx_my_name_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d8c4df336f34b7348964d5b51253ff928f176ca0f318387d07d9b9e4685c9937","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7129e7c7d1c2849c97a06c2effb71a82bd588caaba75de7ab3ad1be313c91a27.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7129e7c7d1c2849c97a06c2effb71a82bd588caaba75de7ab3ad1be313c91a27.mp3', 1253, '2026-09-13 21:05:30.558761', 'd8c4df336f34b7348964d5b51253ff928f176ca0f318387d07d9b9e4685c9937', 'validated', '{"audio_key":"7129e7c7d1c2849c97a06c2effb71a82bd588caaba75de7ab3ad1be313c91a27","entity_key":"wf_my_name_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d8c4df336f34b7348964d5b51253ff928f176ca0f318387d07d9b9e4685c9937","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7129e7c7d1c2849c97a06c2effb71a82bd588caaba75de7ab3ad1be313c91a27.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7cb79ac248ec9ef87649981da2c7168531816d3c0afe3b81e32b36c78d54b5bc.mp3', 914, '2026-09-13 21:05:31.413041', '03c858e40fb3872d0e07e44ecc4d5dde1f7c37476b8acada00ecd53fdefc7190', 'validated', '{"audio_key":"7cb79ac248ec9ef87649981da2c7168531816d3c0afe3b81e32b36c78d54b5bc","entity_key":"lx_my_name_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"03c858e40fb3872d0e07e44ecc4d5dde1f7c37476b8acada00ecd53fdefc7190","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7cb79ac248ec9ef87649981da2c7168531816d3c0afe3b81e32b36c78d54b5bc.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7cb79ac248ec9ef87649981da2c7168531816d3c0afe3b81e32b36c78d54b5bc.mp3', 914, '2026-09-13 21:05:31.413041', '03c858e40fb3872d0e07e44ecc4d5dde1f7c37476b8acada00ecd53fdefc7190', 'validated', '{"audio_key":"7cb79ac248ec9ef87649981da2c7168531816d3c0afe3b81e32b36c78d54b5bc","entity_key":"wf_my_name_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"03c858e40fb3872d0e07e44ecc4d5dde1f7c37476b8acada00ecd53fdefc7190","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7cb79ac248ec9ef87649981da2c7168531816d3c0afe3b81e32b36c78d54b5bc.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7fa8b6fcbbd866bc4122e287d57229c225acb20a713f96ceabffe1f8149716ad.mp3', 1384, '2026-09-13 21:05:31.580002', 'd892fb7cdddfef98cfb1e20322e6d6ff6eaed06b4065148b160b34abd775a8d3', 'validated', '{"audio_key":"7fa8b6fcbbd866bc4122e287d57229c225acb20a713f96ceabffe1f8149716ad","entity_key":"lx_how_are_you_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d892fb7cdddfef98cfb1e20322e6d6ff6eaed06b4065148b160b34abd775a8d3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7fa8b6fcbbd866bc4122e287d57229c225acb20a713f96ceabffe1f8149716ad.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/7fa8b6fcbbd866bc4122e287d57229c225acb20a713f96ceabffe1f8149716ad.mp3', 1384, '2026-09-13 21:05:31.580002', 'd892fb7cdddfef98cfb1e20322e6d6ff6eaed06b4065148b160b34abd775a8d3', 'validated', '{"audio_key":"7fa8b6fcbbd866bc4122e287d57229c225acb20a713f96ceabffe1f8149716ad","entity_key":"wf_how_are_you_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d892fb7cdddfef98cfb1e20322e6d6ff6eaed06b4065148b160b34abd775a8d3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/7fa8b6fcbbd866bc4122e287d57229c225acb20a713f96ceabffe1f8149716ad.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/80872c87bb898cd55222d765f9f5ccf6ed0a6b88352a1c0030c7717f0c8b71d3.mp3', 1280, '2026-09-13 21:05:32.448556', '9ca984c7247412994379b22956c1c67cebe3d78891027e43c14e49d71e537e63', 'validated', '{"audio_key":"80872c87bb898cd55222d765f9f5ccf6ed0a6b88352a1c0030c7717f0c8b71d3","entity_key":"lx_polite_words_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9ca984c7247412994379b22956c1c67cebe3d78891027e43c14e49d71e537e63","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/80872c87bb898cd55222d765f9f5ccf6ed0a6b88352a1c0030c7717f0c8b71d3.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/80872c87bb898cd55222d765f9f5ccf6ed0a6b88352a1c0030c7717f0c8b71d3.mp3', 1280, '2026-09-13 21:05:32.448556', '9ca984c7247412994379b22956c1c67cebe3d78891027e43c14e49d71e537e63', 'validated', '{"audio_key":"80872c87bb898cd55222d765f9f5ccf6ed0a6b88352a1c0030c7717f0c8b71d3","entity_key":"wf_polite_words_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9ca984c7247412994379b22956c1c67cebe3d78891027e43c14e49d71e537e63","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/80872c87bb898cd55222d765f9f5ccf6ed0a6b88352a1c0030c7717f0c8b71d3.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/842826f002589777ecc28c12b7d9cf93735543086a7d8d104e9ddf994b2ba469.mp3', 862, '2026-09-13 21:05:32.555452', '4a964f86d4c23bdf9dbe137516ab2f8caa09e6c78cb30fd54f1d15f3d8018707', 'validated', '{"audio_key":"842826f002589777ecc28c12b7d9cf93735543086a7d8d104e9ddf994b2ba469","entity_key":"lx_first_objects_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4a964f86d4c23bdf9dbe137516ab2f8caa09e6c78cb30fd54f1d15f3d8018707","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/842826f002589777ecc28c12b7d9cf93735543086a7d8d104e9ddf994b2ba469.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/842826f002589777ecc28c12b7d9cf93735543086a7d8d104e9ddf994b2ba469.mp3', 862, '2026-09-13 21:05:32.555452', '4a964f86d4c23bdf9dbe137516ab2f8caa09e6c78cb30fd54f1d15f3d8018707', 'validated', '{"audio_key":"842826f002589777ecc28c12b7d9cf93735543086a7d8d104e9ddf994b2ba469","entity_key":"wf_first_objects_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4a964f86d4c23bdf9dbe137516ab2f8caa09e6c78cb30fd54f1d15f3d8018707","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/842826f002589777ecc28c12b7d9cf93735543086a7d8d104e9ddf994b2ba469.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/88d7c2dbbf7df57b6a4284501c47bac59ae8f347d4b7b4c2c46db9438a7a6d26.mp3', 1332, '2026-09-13 21:05:33.471065', '5a54a7c3bdc11b6c7bd244093fcc176e63ad3955ddd692a443ad7d5d684ef399', 'validated', '{"audio_key":"88d7c2dbbf7df57b6a4284501c47bac59ae8f347d4b7b4c2c46db9438a7a6d26","entity_key":"lx_first_greetings_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5a54a7c3bdc11b6c7bd244093fcc176e63ad3955ddd692a443ad7d5d684ef399","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/88d7c2dbbf7df57b6a4284501c47bac59ae8f347d4b7b4c2c46db9438a7a6d26.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/88d7c2dbbf7df57b6a4284501c47bac59ae8f347d4b7b4c2c46db9438a7a6d26.mp3', 1332, '2026-09-13 21:05:33.471065', '5a54a7c3bdc11b6c7bd244093fcc176e63ad3955ddd692a443ad7d5d684ef399', 'validated', '{"audio_key":"88d7c2dbbf7df57b6a4284501c47bac59ae8f347d4b7b4c2c46db9438a7a6d26","entity_key":"wf_first_greetings_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5a54a7c3bdc11b6c7bd244093fcc176e63ad3955ddd692a443ad7d5d684ef399","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/88d7c2dbbf7df57b6a4284501c47bac59ae8f347d4b7b4c2c46db9438a7a6d26.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/917a4257b8e6f1334dafcdd1b6dd8f3d87dca0de2e5831fffcffa0820aed9ef4.mp3', 966, '2026-09-13 21:05:33.531233', 'd70173d8689b59c6701d2e8f54e8aad69f37cccfbe2c5b65eb48197d45f5d6f6', 'validated', '{"audio_key":"917a4257b8e6f1334dafcdd1b6dd8f3d87dca0de2e5831fffcffa0820aed9ef4","entity_key":"lx_survival_words_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d70173d8689b59c6701d2e8f54e8aad69f37cccfbe2c5b65eb48197d45f5d6f6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/917a4257b8e6f1334dafcdd1b6dd8f3d87dca0de2e5831fffcffa0820aed9ef4.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/917a4257b8e6f1334dafcdd1b6dd8f3d87dca0de2e5831fffcffa0820aed9ef4.mp3', 966, '2026-09-13 21:05:33.531233', 'd70173d8689b59c6701d2e8f54e8aad69f37cccfbe2c5b65eb48197d45f5d6f6', 'validated', '{"audio_key":"917a4257b8e6f1334dafcdd1b6dd8f3d87dca0de2e5831fffcffa0820aed9ef4","entity_key":"wf_survival_words_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d70173d8689b59c6701d2e8f54e8aad69f37cccfbe2c5b65eb48197d45f5d6f6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/917a4257b8e6f1334dafcdd1b6dd8f3d87dca0de2e5831fffcffa0820aed9ef4.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/9684446bda1bef2ecf3a29d2fe8e87e3f53598b326d69c28b503d64d354b4907.mp3', 862, '2026-09-13 21:05:34.429174', '93f2ae07cdd0b552237f985ddb387f344abc1045f19c3c45c17c3ee81c53212d', 'validated', '{"audio_key":"9684446bda1bef2ecf3a29d2fe8e87e3f53598b326d69c28b503d64d354b4907","entity_key":"lx_first_conversation_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"93f2ae07cdd0b552237f985ddb387f344abc1045f19c3c45c17c3ee81c53212d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/9684446bda1bef2ecf3a29d2fe8e87e3f53598b326d69c28b503d64d354b4907.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/9684446bda1bef2ecf3a29d2fe8e87e3f53598b326d69c28b503d64d354b4907.mp3', 862, '2026-09-13 21:05:34.429174', '93f2ae07cdd0b552237f985ddb387f344abc1045f19c3c45c17c3ee81c53212d', 'validated', '{"audio_key":"9684446bda1bef2ecf3a29d2fe8e87e3f53598b326d69c28b503d64d354b4907","entity_key":"wf_first_conversation_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"93f2ae07cdd0b552237f985ddb387f344abc1045f19c3c45c17c3ee81c53212d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/9684446bda1bef2ecf3a29d2fe8e87e3f53598b326d69c28b503d64d354b4907.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/9693b62e73601ea8e5fba1891d2b738f40d6c20f91435bbdfe8a4dcab0ca0566.mp3', 679, '2026-09-13 21:05:34.516366', '171952a710b7e6d1084c1171f9fe1b3e7acf3a3b9ff292298f7368cb447b647b', 'validated', '{"audio_key":"9693b62e73601ea8e5fba1891d2b738f40d6c20f91435bbdfe8a4dcab0ca0566","entity_key":"lx_hangul_basics_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"171952a710b7e6d1084c1171f9fe1b3e7acf3a3b9ff292298f7368cb447b647b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/9693b62e73601ea8e5fba1891d2b738f40d6c20f91435bbdfe8a4dcab0ca0566.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/9693b62e73601ea8e5fba1891d2b738f40d6c20f91435bbdfe8a4dcab0ca0566.mp3', 679, '2026-09-13 21:05:34.516366', '171952a710b7e6d1084c1171f9fe1b3e7acf3a3b9ff292298f7368cb447b647b', 'validated', '{"audio_key":"9693b62e73601ea8e5fba1891d2b738f40d6c20f91435bbdfe8a4dcab0ca0566","entity_key":"wf_hangul_basics_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"171952a710b7e6d1084c1171f9fe1b3e7acf3a3b9ff292298f7368cb447b647b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/9693b62e73601ea8e5fba1891d2b738f40d6c20f91435bbdfe8a4dcab0ca0566.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a3eebf31bcc8bb284d7cd6f288029a430b185ab9d979499540994aabce738356.mp3', 1018, '2026-09-13 21:05:35.391912', '16dd1cc363cef10964ee98b9beeb21c30e05800de72030d92dafa4d7f1b5fa00', 'validated', '{"audio_key":"a3eebf31bcc8bb284d7cd6f288029a430b185ab9d979499540994aabce738356","entity_key":"lx_how_are_you_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"16dd1cc363cef10964ee98b9beeb21c30e05800de72030d92dafa4d7f1b5fa00","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a3eebf31bcc8bb284d7cd6f288029a430b185ab9d979499540994aabce738356.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a3eebf31bcc8bb284d7cd6f288029a430b185ab9d979499540994aabce738356.mp3', 1018, '2026-09-13 21:05:35.391912', '16dd1cc363cef10964ee98b9beeb21c30e05800de72030d92dafa4d7f1b5fa00', 'validated', '{"audio_key":"a3eebf31bcc8bb284d7cd6f288029a430b185ab9d979499540994aabce738356","entity_key":"wf_how_are_you_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"16dd1cc363cef10964ee98b9beeb21c30e05800de72030d92dafa4d7f1b5fa00","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a3eebf31bcc8bb284d7cd6f288029a430b185ab9d979499540994aabce738356.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a6b164f5be7f5623ea29f51ff785ee857cee7acebd8aa19d4ede338016fda81c.mp3', 783, '2026-09-13 21:05:35.473835', '52dc3f7482afbc7decacac52d668b84d934b0a89641fa2430d6701a405ad9999', 'validated', '{"audio_key":"a6b164f5be7f5623ea29f51ff785ee857cee7acebd8aa19d4ede338016fda81c","entity_key":"lx_my_name_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"52dc3f7482afbc7decacac52d668b84d934b0a89641fa2430d6701a405ad9999","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a6b164f5be7f5623ea29f51ff785ee857cee7acebd8aa19d4ede338016fda81c.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a6b164f5be7f5623ea29f51ff785ee857cee7acebd8aa19d4ede338016fda81c.mp3', 783, '2026-09-13 21:05:35.473835', '52dc3f7482afbc7decacac52d668b84d934b0a89641fa2430d6701a405ad9999', 'validated', '{"audio_key":"a6b164f5be7f5623ea29f51ff785ee857cee7acebd8aa19d4ede338016fda81c","entity_key":"wf_my_name_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"52dc3f7482afbc7decacac52d668b84d934b0a89641fa2430d6701a405ad9999","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a6b164f5be7f5623ea29f51ff785ee857cee7acebd8aa19d4ede338016fda81c.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f.mp3', 1280, '2026-09-13 21:05:36.402970', 'cca3d56c43fd23eba78727a2d2bd103478d5ca04ad849d5c2d345ec30aaf2cad', 'validated', '{"audio_key":"a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f","entity_key":"lx_how_are_you_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cca3d56c43fd23eba78727a2d2bd103478d5ca04ad849d5c2d345ec30aaf2cad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f.mp3', 1280, '2026-09-13 21:05:36.402970', 'cca3d56c43fd23eba78727a2d2bd103478d5ca04ad849d5c2d345ec30aaf2cad', 'validated', '{"audio_key":"a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f","entity_key":"wf_how_are_you_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cca3d56c43fd23eba78727a2d2bd103478d5ca04ad849d5c2d345ec30aaf2cad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f.mp3', 1280, '2026-09-13 21:05:36.402970', 'cca3d56c43fd23eba78727a2d2bd103478d5ca04ad849d5c2d345ec30aaf2cad', 'validated', '{"audio_key":"a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f","entity_key":"lx_polite_words_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cca3d56c43fd23eba78727a2d2bd103478d5ca04ad849d5c2d345ec30aaf2cad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f.mp3', 1280, '2026-09-13 21:05:36.402970', 'cca3d56c43fd23eba78727a2d2bd103478d5ca04ad849d5c2d345ec30aaf2cad', 'validated', '{"audio_key":"a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f","entity_key":"wf_polite_words_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"cca3d56c43fd23eba78727a2d2bd103478d5ca04ad849d5c2d345ec30aaf2cad","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/a8c4e17f3e8cd70e40e9a23cd9c30079dd36e57807da2f67e54d79e36beca71f.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06.mp3', 1280, '2026-09-13 21:05:36.498725', '2f20cc166663b2b48ab2375c2ff91c5140a0695fbb7eebaf5467df2a5c8d5351', 'validated', '{"audio_key":"acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06","entity_key":"lx_how_are_you_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2f20cc166663b2b48ab2375c2ff91c5140a0695fbb7eebaf5467df2a5c8d5351","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06.mp3', 1280, '2026-09-13 21:05:36.498725', '2f20cc166663b2b48ab2375c2ff91c5140a0695fbb7eebaf5467df2a5c8d5351', 'validated', '{"audio_key":"acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06","entity_key":"wf_how_are_you_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2f20cc166663b2b48ab2375c2ff91c5140a0695fbb7eebaf5467df2a5c8d5351","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06.mp3', 1280, '2026-09-13 21:05:36.498725', '2f20cc166663b2b48ab2375c2ff91c5140a0695fbb7eebaf5467df2a5c8d5351', 'validated', '{"audio_key":"acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06","entity_key":"lx_polite_words_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2f20cc166663b2b48ab2375c2ff91c5140a0695fbb7eebaf5467df2a5c8d5351","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06.mp3', 1280, '2026-09-13 21:05:36.498725', '2f20cc166663b2b48ab2375c2ff91c5140a0695fbb7eebaf5467df2a5c8d5351', 'validated', '{"audio_key":"acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06","entity_key":"wf_polite_words_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2f20cc166663b2b48ab2375c2ff91c5140a0695fbb7eebaf5467df2a5c8d5351","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/acf0e4c3e78f4b22fa3d0aaf87e53ad244fd018c67ecc25e27067f98ca81bd06.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ad5798d8ccbbbc351daeef13eabf0726a17970e622de3718c09b3adacf650e61.mp3', 679, '2026-09-13 21:05:37.410006', 'bb5687359be50c9ba3276d7a5f98efc44186fa7ca2233da1886b565e16969e27', 'validated', '{"audio_key":"ad5798d8ccbbbc351daeef13eabf0726a17970e622de3718c09b3adacf650e61","entity_key":"lx_numbers_0_10_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bb5687359be50c9ba3276d7a5f98efc44186fa7ca2233da1886b565e16969e27","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ad5798d8ccbbbc351daeef13eabf0726a17970e622de3718c09b3adacf650e61.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ad5798d8ccbbbc351daeef13eabf0726a17970e622de3718c09b3adacf650e61.mp3', 679, '2026-09-13 21:05:37.410006', 'bb5687359be50c9ba3276d7a5f98efc44186fa7ca2233da1886b565e16969e27', 'validated', '{"audio_key":"ad5798d8ccbbbc351daeef13eabf0726a17970e622de3718c09b3adacf650e61","entity_key":"wf_numbers_0_10_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"bb5687359be50c9ba3276d7a5f98efc44186fa7ca2233da1886b565e16969e27","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ad5798d8ccbbbc351daeef13eabf0726a17970e622de3718c09b3adacf650e61.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ae646577489db57fa5e3b01de909b8b7878c5d6e0393ea641602d9130dcf4721.mp3', 914, '2026-09-13 21:05:37.468398', '1343f8ba1a1779a10f89cf54d0a935ad2d356309bc27282b3a81c20a1e539326', 'validated', '{"audio_key":"ae646577489db57fa5e3b01de909b8b7878c5d6e0393ea641602d9130dcf4721","entity_key":"lx_first_sounds_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1343f8ba1a1779a10f89cf54d0a935ad2d356309bc27282b3a81c20a1e539326","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ae646577489db57fa5e3b01de909b8b7878c5d6e0393ea641602d9130dcf4721.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ae646577489db57fa5e3b01de909b8b7878c5d6e0393ea641602d9130dcf4721.mp3', 914, '2026-09-13 21:05:37.468398', '1343f8ba1a1779a10f89cf54d0a935ad2d356309bc27282b3a81c20a1e539326', 'validated', '{"audio_key":"ae646577489db57fa5e3b01de909b8b7878c5d6e0393ea641602d9130dcf4721","entity_key":"wf_first_sounds_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1343f8ba1a1779a10f89cf54d0a935ad2d356309bc27282b3a81c20a1e539326","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ae646577489db57fa5e3b01de909b8b7878c5d6e0393ea641602d9130dcf4721.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b130b1226cff697a79e7930f3800c9931da0a2608a30fee78dad62ccd0e3f2af.mp3', 1149, '2026-09-13 21:05:38.410049', '829782b7e8cee982144791bc7c65e0208659d66d70e4591f122e81e4e6afb826', 'validated', '{"audio_key":"b130b1226cff697a79e7930f3800c9931da0a2608a30fee78dad62ccd0e3f2af","entity_key":"lx_survival_words_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"829782b7e8cee982144791bc7c65e0208659d66d70e4591f122e81e4e6afb826","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b130b1226cff697a79e7930f3800c9931da0a2608a30fee78dad62ccd0e3f2af.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b130b1226cff697a79e7930f3800c9931da0a2608a30fee78dad62ccd0e3f2af.mp3', 1149, '2026-09-13 21:05:38.410049', '829782b7e8cee982144791bc7c65e0208659d66d70e4591f122e81e4e6afb826', 'validated', '{"audio_key":"b130b1226cff697a79e7930f3800c9931da0a2608a30fee78dad62ccd0e3f2af","entity_key":"wf_survival_words_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"829782b7e8cee982144791bc7c65e0208659d66d70e4591f122e81e4e6afb826","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b130b1226cff697a79e7930f3800c9931da0a2608a30fee78dad62ccd0e3f2af.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b34f5e1cffecdcc69efd5e60c838d8022142156fb30db26aebf0344e4fff4609.mp3', 862, '2026-09-13 21:05:38.459690', '02cdfd0dd06d0e47e9108fbfedd2f21d51803122a641bbfa79d5c3c82d98c7b1', 'validated', '{"audio_key":"b34f5e1cffecdcc69efd5e60c838d8022142156fb30db26aebf0344e4fff4609","entity_key":"lx_first_conversation_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"02cdfd0dd06d0e47e9108fbfedd2f21d51803122a641bbfa79d5c3c82d98c7b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b34f5e1cffecdcc69efd5e60c838d8022142156fb30db26aebf0344e4fff4609.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/b34f5e1cffecdcc69efd5e60c838d8022142156fb30db26aebf0344e4fff4609.mp3', 862, '2026-09-13 21:05:38.459690', '02cdfd0dd06d0e47e9108fbfedd2f21d51803122a641bbfa79d5c3c82d98c7b1', 'validated', '{"audio_key":"b34f5e1cffecdcc69efd5e60c838d8022142156fb30db26aebf0344e4fff4609","entity_key":"wf_first_conversation_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"02cdfd0dd06d0e47e9108fbfedd2f21d51803122a641bbfa79d5c3c82d98c7b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/b34f5e1cffecdcc69efd5e60c838d8022142156fb30db26aebf0344e4fff4609.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bf2246ccedc9fcdf906419be1d3a9c114cbee1fd7d75d63eadbed6829f1996d6.mp3', 1697, '2026-09-13 21:05:39.785727', 'c622abb098b50ef80fe4ed5645621a7bb2758dbc6abd1182f6c1343422f709b2', 'validated', '{"audio_key":"bf2246ccedc9fcdf906419be1d3a9c114cbee1fd7d75d63eadbed6829f1996d6","entity_key":"lx_first_greetings_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c622abb098b50ef80fe4ed5645621a7bb2758dbc6abd1182f6c1343422f709b2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bf2246ccedc9fcdf906419be1d3a9c114cbee1fd7d75d63eadbed6829f1996d6.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bf2246ccedc9fcdf906419be1d3a9c114cbee1fd7d75d63eadbed6829f1996d6.mp3', 1697, '2026-09-13 21:05:39.785727', 'c622abb098b50ef80fe4ed5645621a7bb2758dbc6abd1182f6c1343422f709b2', 'validated', '{"audio_key":"bf2246ccedc9fcdf906419be1d3a9c114cbee1fd7d75d63eadbed6829f1996d6","entity_key":"wf_first_greetings_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c622abb098b50ef80fe4ed5645621a7bb2758dbc6abd1182f6c1343422f709b2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bf2246ccedc9fcdf906419be1d3a9c114cbee1fd7d75d63eadbed6829f1996d6.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bf79588b51d9d713db34f7e2968be5aef975643e66f221b405347c483a942c61.mp3', 1097, '2026-09-13 21:05:39.468145', '7888a3dda2f55a7056aeaa2fb39d2ec694344b9b7a5592fefb4d54418fb003b4', 'validated', '{"audio_key":"bf79588b51d9d713db34f7e2968be5aef975643e66f221b405347c483a942c61","entity_key":"lx_first_objects_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7888a3dda2f55a7056aeaa2fb39d2ec694344b9b7a5592fefb4d54418fb003b4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bf79588b51d9d713db34f7e2968be5aef975643e66f221b405347c483a942c61.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/bf79588b51d9d713db34f7e2968be5aef975643e66f221b405347c483a942c61.mp3', 1097, '2026-09-13 21:05:39.468145', '7888a3dda2f55a7056aeaa2fb39d2ec694344b9b7a5592fefb4d54418fb003b4', 'validated', '{"audio_key":"bf79588b51d9d713db34f7e2968be5aef975643e66f221b405347c483a942c61","entity_key":"wf_first_objects_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"7888a3dda2f55a7056aeaa2fb39d2ec694344b9b7a5592fefb4d54418fb003b4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/bf79588b51d9d713db34f7e2968be5aef975643e66f221b405347c483a942c61.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/c77bd3323f7a670288741a5c8d9150f6b826ed86175d6c3196f9c76e180d929d.mp3', 1332, '2026-09-13 21:05:40.522159', '4532e73a5fa4f095b632eacbf6be9c1f4326e940a262c8ea836c261928b274de', 'validated', '{"audio_key":"c77bd3323f7a670288741a5c8d9150f6b826ed86175d6c3196f9c76e180d929d","entity_key":"lx_polite_words_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4532e73a5fa4f095b632eacbf6be9c1f4326e940a262c8ea836c261928b274de","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/c77bd3323f7a670288741a5c8d9150f6b826ed86175d6c3196f9c76e180d929d.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/c77bd3323f7a670288741a5c8d9150f6b826ed86175d6c3196f9c76e180d929d.mp3', 1332, '2026-09-13 21:05:40.522159', '4532e73a5fa4f095b632eacbf6be9c1f4326e940a262c8ea836c261928b274de', 'validated', '{"audio_key":"c77bd3323f7a670288741a5c8d9150f6b826ed86175d6c3196f9c76e180d929d","entity_key":"wf_polite_words_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4532e73a5fa4f095b632eacbf6be9c1f4326e940a262c8ea836c261928b274de","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/c77bd3323f7a670288741a5c8d9150f6b826ed86175d6c3196f9c76e180d929d.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/cd11ad13a18103df479c8f9aaaf2ccefe96d8aab416a92ce0996303594ece1da.mp3', 1018, '2026-09-13 21:05:40.751113', '85547dc93efbe0fb295e36fe4a3ff0b6346c8788f9c80867e5280389f5c81596', 'validated', '{"audio_key":"cd11ad13a18103df479c8f9aaaf2ccefe96d8aab416a92ce0996303594ece1da","entity_key":"lx_first_conversation_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"85547dc93efbe0fb295e36fe4a3ff0b6346c8788f9c80867e5280389f5c81596","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/cd11ad13a18103df479c8f9aaaf2ccefe96d8aab416a92ce0996303594ece1da.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/cd11ad13a18103df479c8f9aaaf2ccefe96d8aab416a92ce0996303594ece1da.mp3', 1018, '2026-09-13 21:05:40.751113', '85547dc93efbe0fb295e36fe4a3ff0b6346c8788f9c80867e5280389f5c81596', 'validated', '{"audio_key":"cd11ad13a18103df479c8f9aaaf2ccefe96d8aab416a92ce0996303594ece1da","entity_key":"wf_first_conversation_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"85547dc93efbe0fb295e36fe4a3ff0b6346c8788f9c80867e5280389f5c81596","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/cd11ad13a18103df479c8f9aaaf2ccefe96d8aab416a92ce0996303594ece1da.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ce67c000c45cfcccee8dd96897664b24969c853d235850e2be51c27e412389c4.mp3', 731, '2026-09-13 21:05:41.492790', 'ab1e22cfc4a406aabdc8fce011ae3b4620a7dd835bef03f6c0ef31ee0466275f', 'validated', '{"audio_key":"ce67c000c45cfcccee8dd96897664b24969c853d235850e2be51c27e412389c4","entity_key":"lx_first_sounds_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ab1e22cfc4a406aabdc8fce011ae3b4620a7dd835bef03f6c0ef31ee0466275f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ce67c000c45cfcccee8dd96897664b24969c853d235850e2be51c27e412389c4.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/ce67c000c45cfcccee8dd96897664b24969c853d235850e2be51c27e412389c4.mp3', 731, '2026-09-13 21:05:41.492790', 'ab1e22cfc4a406aabdc8fce011ae3b4620a7dd835bef03f6c0ef31ee0466275f', 'validated', '{"audio_key":"ce67c000c45cfcccee8dd96897664b24969c853d235850e2be51c27e412389c4","entity_key":"wf_first_sounds_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ab1e22cfc4a406aabdc8fce011ae3b4620a7dd835bef03f6c0ef31ee0466275f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/ce67c000c45cfcccee8dd96897664b24969c853d235850e2be51c27e412389c4.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/cfd3fd0958929b6268681f0621ebd299d22b1cda350809d1035782fe8a6a6256.mp3', 862, '2026-09-13 21:05:41.718674', '96b4ad5e143d995012a05645ad7047cd638bb8d32b7373f10d4d736335c4d5a5', 'validated', '{"audio_key":"cfd3fd0958929b6268681f0621ebd299d22b1cda350809d1035782fe8a6a6256","entity_key":"lx_numbers_0_10_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"96b4ad5e143d995012a05645ad7047cd638bb8d32b7373f10d4d736335c4d5a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/cfd3fd0958929b6268681f0621ebd299d22b1cda350809d1035782fe8a6a6256.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/cfd3fd0958929b6268681f0621ebd299d22b1cda350809d1035782fe8a6a6256.mp3', 862, '2026-09-13 21:05:41.718674', '96b4ad5e143d995012a05645ad7047cd638bb8d32b7373f10d4d736335c4d5a5', 'validated', '{"audio_key":"cfd3fd0958929b6268681f0621ebd299d22b1cda350809d1035782fe8a6a6256","entity_key":"wf_numbers_0_10_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"96b4ad5e143d995012a05645ad7047cd638bb8d32b7373f10d4d736335c4d5a5","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/cfd3fd0958929b6268681f0621ebd299d22b1cda350809d1035782fe8a6a6256.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/d81477873ba648bfa0facc067684f488d6ef547c57a4cfc28ac5e2d515dea9e8.mp3', 1201, '2026-09-13 21:05:42.487628', '8e362fb645fd0b5710d80e27dcc097046af391221ecf2fcffcb2f542dd68d0d8', 'validated', '{"audio_key":"d81477873ba648bfa0facc067684f488d6ef547c57a4cfc28ac5e2d515dea9e8","entity_key":"lx_how_are_you_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8e362fb645fd0b5710d80e27dcc097046af391221ecf2fcffcb2f542dd68d0d8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/d81477873ba648bfa0facc067684f488d6ef547c57a4cfc28ac5e2d515dea9e8.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/d81477873ba648bfa0facc067684f488d6ef547c57a4cfc28ac5e2d515dea9e8.mp3', 1201, '2026-09-13 21:05:42.487628', '8e362fb645fd0b5710d80e27dcc097046af391221ecf2fcffcb2f542dd68d0d8', 'validated', '{"audio_key":"d81477873ba648bfa0facc067684f488d6ef547c57a4cfc28ac5e2d515dea9e8","entity_key":"wf_how_are_you_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8e362fb645fd0b5710d80e27dcc097046af391221ecf2fcffcb2f542dd68d0d8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/d81477873ba648bfa0facc067684f488d6ef547c57a4cfc28ac5e2d515dea9e8.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/db937b4bb615c0169e770dab5afbda28dd110ef0db49f37ba43275d02ee1ab92.mp3', 1201, '2026-09-13 21:05:42.729133', 'c0d0fcd7fc8fe721163abc16029ac123cab5c1aa46ca9509020f43e425d1a99b', 'validated', '{"audio_key":"db937b4bb615c0169e770dab5afbda28dd110ef0db49f37ba43275d02ee1ab92","entity_key":"lx_survival_words_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c0d0fcd7fc8fe721163abc16029ac123cab5c1aa46ca9509020f43e425d1a99b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/db937b4bb615c0169e770dab5afbda28dd110ef0db49f37ba43275d02ee1ab92.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/db937b4bb615c0169e770dab5afbda28dd110ef0db49f37ba43275d02ee1ab92.mp3', 1201, '2026-09-13 21:05:42.729133', 'c0d0fcd7fc8fe721163abc16029ac123cab5c1aa46ca9509020f43e425d1a99b', 'validated', '{"audio_key":"db937b4bb615c0169e770dab5afbda28dd110ef0db49f37ba43275d02ee1ab92","entity_key":"wf_survival_words_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c0d0fcd7fc8fe721163abc16029ac123cab5c1aa46ca9509020f43e425d1a99b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/db937b4bb615c0169e770dab5afbda28dd110ef0db49f37ba43275d02ee1ab92.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/dfd1946f50418128513123eb5791b36c35d155d1762436ca45377c9d2540908b.mp3', 1149, '2026-09-13 21:05:43.491339', 'f7f03b9fe6b784f7b5b09eb1a2664bc5928cc5ec320c608826e4a678d84ff8ec', 'validated', '{"audio_key":"dfd1946f50418128513123eb5791b36c35d155d1762436ca45377c9d2540908b","entity_key":"lx_survival_words_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f7f03b9fe6b784f7b5b09eb1a2664bc5928cc5ec320c608826e4a678d84ff8ec","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/dfd1946f50418128513123eb5791b36c35d155d1762436ca45377c9d2540908b.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/dfd1946f50418128513123eb5791b36c35d155d1762436ca45377c9d2540908b.mp3', 1149, '2026-09-13 21:05:43.491339', 'f7f03b9fe6b784f7b5b09eb1a2664bc5928cc5ec320c608826e4a678d84ff8ec', 'validated', '{"audio_key":"dfd1946f50418128513123eb5791b36c35d155d1762436ca45377c9d2540908b","entity_key":"wf_survival_words_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f7f03b9fe6b784f7b5b09eb1a2664bc5928cc5ec320c608826e4a678d84ff8ec","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/dfd1946f50418128513123eb5791b36c35d155d1762436ca45377c9d2540908b.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e1f2d5ab68f4d7129ee73f5f9b7755410e5708fb0e12f3e0ab9e58190e5fe7fe.mp3', 862, '2026-09-13 21:05:43.692490', 'ef6d4df49c277b56674e99709a0cbd1e32aa8b01a3faee61a2e171aa0bd58081', 'validated', '{"audio_key":"e1f2d5ab68f4d7129ee73f5f9b7755410e5708fb0e12f3e0ab9e58190e5fe7fe","entity_key":"lx_first_sounds_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ef6d4df49c277b56674e99709a0cbd1e32aa8b01a3faee61a2e171aa0bd58081","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e1f2d5ab68f4d7129ee73f5f9b7755410e5708fb0e12f3e0ab9e58190e5fe7fe.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e1f2d5ab68f4d7129ee73f5f9b7755410e5708fb0e12f3e0ab9e58190e5fe7fe.mp3', 862, '2026-09-13 21:05:43.692490', 'ef6d4df49c277b56674e99709a0cbd1e32aa8b01a3faee61a2e171aa0bd58081', 'validated', '{"audio_key":"e1f2d5ab68f4d7129ee73f5f9b7755410e5708fb0e12f3e0ab9e58190e5fe7fe","entity_key":"wf_first_sounds_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ef6d4df49c277b56674e99709a0cbd1e32aa8b01a3faee61a2e171aa0bd58081","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e1f2d5ab68f4d7129ee73f5f9b7755410e5708fb0e12f3e0ab9e58190e5fe7fe.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e20baefd086b105688939f05db4ffec216102557f3d5b09550ff69f9660c8f02.mp3', 1149, '2026-09-13 21:05:44.491699', '77175ae1ef8e8ceaf7c0f957feb69b266f20e5da4bd85989102c1ca965c2cfeb', 'validated', '{"audio_key":"e20baefd086b105688939f05db4ffec216102557f3d5b09550ff69f9660c8f02","entity_key":"lx_first_sounds_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"77175ae1ef8e8ceaf7c0f957feb69b266f20e5da4bd85989102c1ca965c2cfeb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e20baefd086b105688939f05db4ffec216102557f3d5b09550ff69f9660c8f02.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e20baefd086b105688939f05db4ffec216102557f3d5b09550ff69f9660c8f02.mp3', 1149, '2026-09-13 21:05:44.491699', '77175ae1ef8e8ceaf7c0f957feb69b266f20e5da4bd85989102c1ca965c2cfeb', 'validated', '{"audio_key":"e20baefd086b105688939f05db4ffec216102557f3d5b09550ff69f9660c8f02","entity_key":"wf_first_sounds_05","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"77175ae1ef8e8ceaf7c0f957feb69b266f20e5da4bd85989102c1ca965c2cfeb","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e20baefd086b105688939f05db4ffec216102557f3d5b09550ff69f9660c8f02.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e27ad3ca34111b0043226c7d7862fbc258a59f16eafeb4ecaaa42108be2d44a4.mp3', 914, '2026-09-13 21:05:44.656176', 'ed854000c35cf10a89a828b7871412cc613a70ec3fd385041e743f4c1aa6af89', 'validated', '{"audio_key":"e27ad3ca34111b0043226c7d7862fbc258a59f16eafeb4ecaaa42108be2d44a4","entity_key":"lx_first_sounds_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ed854000c35cf10a89a828b7871412cc613a70ec3fd385041e743f4c1aa6af89","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e27ad3ca34111b0043226c7d7862fbc258a59f16eafeb4ecaaa42108be2d44a4.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e27ad3ca34111b0043226c7d7862fbc258a59f16eafeb4ecaaa42108be2d44a4.mp3', 914, '2026-09-13 21:05:44.656176', 'ed854000c35cf10a89a828b7871412cc613a70ec3fd385041e743f4c1aa6af89', 'validated', '{"audio_key":"e27ad3ca34111b0043226c7d7862fbc258a59f16eafeb4ecaaa42108be2d44a4","entity_key":"wf_first_sounds_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ed854000c35cf10a89a828b7871412cc613a70ec3fd385041e743f4c1aa6af89","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e27ad3ca34111b0043226c7d7862fbc258a59f16eafeb4ecaaa42108be2d44a4.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e3c93c5b42d7b2ed9ece501a5476b558b77c518c3798b637dfb561c17471adb3.mp3', 1280, '2026-09-13 21:05:45.505521', '45d8003e470631ea42d0678bf117c1c45c6b4fc63bfe8f930e715da21ca20874', 'validated', '{"audio_key":"e3c93c5b42d7b2ed9ece501a5476b558b77c518c3798b637dfb561c17471adb3","entity_key":"lx_polite_words_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"45d8003e470631ea42d0678bf117c1c45c6b4fc63bfe8f930e715da21ca20874","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e3c93c5b42d7b2ed9ece501a5476b558b77c518c3798b637dfb561c17471adb3.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e3c93c5b42d7b2ed9ece501a5476b558b77c518c3798b637dfb561c17471adb3.mp3', 1280, '2026-09-13 21:05:45.505521', '45d8003e470631ea42d0678bf117c1c45c6b4fc63bfe8f930e715da21ca20874', 'validated', '{"audio_key":"e3c93c5b42d7b2ed9ece501a5476b558b77c518c3798b637dfb561c17471adb3","entity_key":"wf_polite_words_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"45d8003e470631ea42d0678bf117c1c45c6b4fc63bfe8f930e715da21ca20874","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e3c93c5b42d7b2ed9ece501a5476b558b77c518c3798b637dfb561c17471adb3.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e48c10628163d1b67a85f7eb1b3b04b60e6f0a76c26feae7c4ff153fc582a7bb.mp3', 1018, '2026-09-13 21:05:45.645037', '73b1ecde1e143d5e5929d3cd209948c786f8c19ea531d176dadf286602691e35', 'validated', '{"audio_key":"e48c10628163d1b67a85f7eb1b3b04b60e6f0a76c26feae7c4ff153fc582a7bb","entity_key":"lx_my_name_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"73b1ecde1e143d5e5929d3cd209948c786f8c19ea531d176dadf286602691e35","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e48c10628163d1b67a85f7eb1b3b04b60e6f0a76c26feae7c4ff153fc582a7bb.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/e48c10628163d1b67a85f7eb1b3b04b60e6f0a76c26feae7c4ff153fc582a7bb.mp3', 1018, '2026-09-13 21:05:45.645037', '73b1ecde1e143d5e5929d3cd209948c786f8c19ea531d176dadf286602691e35', 'validated', '{"audio_key":"e48c10628163d1b67a85f7eb1b3b04b60e6f0a76c26feae7c4ff153fc582a7bb","entity_key":"wf_my_name_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"73b1ecde1e143d5e5929d3cd209948c786f8c19ea531d176dadf286602691e35","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/e48c10628163d1b67a85f7eb1b3b04b60e6f0a76c26feae7c4ff153fc582a7bb.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/eea43451cd45f6374fdda36cf60d6609b9f041f804a73c80d8d02f8b2277d895.mp3', 1071, '2026-09-13 21:05:46.485447', '908a9ed46a5e96b6d6ca1503c5c02f7763365db26fe2f5f1e7fd7a8ced6a8168', 'validated', '{"audio_key":"eea43451cd45f6374fdda36cf60d6609b9f041f804a73c80d8d02f8b2277d895","entity_key":"lx_my_name_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"908a9ed46a5e96b6d6ca1503c5c02f7763365db26fe2f5f1e7fd7a8ced6a8168","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/eea43451cd45f6374fdda36cf60d6609b9f041f804a73c80d8d02f8b2277d895.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/eea43451cd45f6374fdda36cf60d6609b9f041f804a73c80d8d02f8b2277d895.mp3', 1071, '2026-09-13 21:05:46.485447', '908a9ed46a5e96b6d6ca1503c5c02f7763365db26fe2f5f1e7fd7a8ced6a8168', 'validated', '{"audio_key":"eea43451cd45f6374fdda36cf60d6609b9f041f804a73c80d8d02f8b2277d895","entity_key":"wf_my_name_06","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"908a9ed46a5e96b6d6ca1503c5c02f7763365db26fe2f5f1e7fd7a8ced6a8168","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/eea43451cd45f6374fdda36cf60d6609b9f041f804a73c80d8d02f8b2277d895.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f0e38f48fc9e9d24fc66fecde4ca1d045cfd70474b1acab973fa6184613156f9.mp3', 914, '2026-09-13 21:05:46.602222', '2f9802a53540c4ace6c52971d8cff70a96d7c6a392c828baa0e451e35d9c3196', 'validated', '{"audio_key":"f0e38f48fc9e9d24fc66fecde4ca1d045cfd70474b1acab973fa6184613156f9","entity_key":"lx_first_objects_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2f9802a53540c4ace6c52971d8cff70a96d7c6a392c828baa0e451e35d9c3196","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f0e38f48fc9e9d24fc66fecde4ca1d045cfd70474b1acab973fa6184613156f9.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f0e38f48fc9e9d24fc66fecde4ca1d045cfd70474b1acab973fa6184613156f9.mp3', 914, '2026-09-13 21:05:46.602222', '2f9802a53540c4ace6c52971d8cff70a96d7c6a392c828baa0e451e35d9c3196', 'validated', '{"audio_key":"f0e38f48fc9e9d24fc66fecde4ca1d045cfd70474b1acab973fa6184613156f9","entity_key":"wf_first_objects_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2f9802a53540c4ace6c52971d8cff70a96d7c6a392c828baa0e451e35d9c3196","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f0e38f48fc9e9d24fc66fecde4ca1d045cfd70474b1acab973fa6184613156f9.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f265c44169f4de76e226cdfe1df68dd609c833d4d76f449856986dc4a3480cf9.mp3', 835, '2026-09-13 21:05:47.489533', 'eac2f85b28f61b81e771fa1d1e5f6aa39380e0597c1e552c9d230b50a851b34d', 'validated', '{"audio_key":"f265c44169f4de76e226cdfe1df68dd609c833d4d76f449856986dc4a3480cf9","entity_key":"lx_first_conversation_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"eac2f85b28f61b81e771fa1d1e5f6aa39380e0597c1e552c9d230b50a851b34d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f265c44169f4de76e226cdfe1df68dd609c833d4d76f449856986dc4a3480cf9.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f265c44169f4de76e226cdfe1df68dd609c833d4d76f449856986dc4a3480cf9.mp3', 835, '2026-09-13 21:05:47.489533', 'eac2f85b28f61b81e771fa1d1e5f6aa39380e0597c1e552c9d230b50a851b34d', 'validated', '{"audio_key":"f265c44169f4de76e226cdfe1df68dd609c833d4d76f449856986dc4a3480cf9","entity_key":"wf_first_conversation_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"eac2f85b28f61b81e771fa1d1e5f6aa39380e0597c1e552c9d230b50a851b34d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f265c44169f4de76e226cdfe1df68dd609c833d4d76f449856986dc4a3480cf9.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f3571e40f3e8f1a247b7fa1b9f1e1c2862e9ea0a224ba792c97301c396ba88ae.mp3', 1384, '2026-09-13 21:05:47.623639', 'd6c105ae92ac08c57e6b29974805cebd0b4a46dfd862ef98a97010121e746fd1', 'validated', '{"audio_key":"f3571e40f3e8f1a247b7fa1b9f1e1c2862e9ea0a224ba792c97301c396ba88ae","entity_key":"lx_first_conversation_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d6c105ae92ac08c57e6b29974805cebd0b4a46dfd862ef98a97010121e746fd1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f3571e40f3e8f1a247b7fa1b9f1e1c2862e9ea0a224ba792c97301c396ba88ae.mp3"}'
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
  'ko-kr.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/lexical/f3571e40f3e8f1a247b7fa1b9f1e1c2862e9ea0a224ba792c97301c396ba88ae.mp3', 1384, '2026-09-13 21:05:47.623639', 'd6c105ae92ac08c57e6b29974805cebd0b4a46dfd862ef98a97010121e746fd1', 'validated', '{"audio_key":"f3571e40f3e8f1a247b7fa1b9f1e1c2862e9ea0a224ba792c97301c396ba88ae","entity_key":"wf_first_conversation_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d6c105ae92ac08c57e6b29974805cebd0b4a46dfd862ef98a97010121e746fd1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/ko-KR/lexical/f3571e40f3e8f1a247b7fa1b9f1e1c2862e9ea0a224ba792c97301c396ba88ae.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/06097f43d770df860f0e7b9c9a8692196abb3acc9bf65c7f97ca776142e630c3.mp3', 966, '2026-09-13 21:05:48.669183', '5b1e933809e895c4e19b793c245dfeb479ce6b8dfffceb41710e5c862b2f2738', 'validated', '{"audio_key":"06097f43d770df860f0e7b9c9a8692196abb3acc9bf65c7f97ca776142e630c3","entity_key":"u_polite_words_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5b1e933809e895c4e19b793c245dfeb479ce6b8dfffceb41710e5c862b2f2738","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/06097f43d770df860f0e7b9c9a8692196abb3acc9bf65c7f97ca776142e630c3.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/0679561fc3897bfc091b588f6e8c6f9c04ac76bd2f5ea7f5f1153c709a94a640.mp3', 1253, '2026-09-13 21:05:48.658619', '2572251a3d7a7dca6e48452e071261af701c4eab0f2ea5baee5e6019d594f8b1', 'validated', '{"audio_key":"0679561fc3897bfc091b588f6e8c6f9c04ac76bd2f5ea7f5f1153c709a94a640","entity_key":"u_how_are_you_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2572251a3d7a7dca6e48452e071261af701c4eab0f2ea5baee5e6019d594f8b1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/0679561fc3897bfc091b588f6e8c6f9c04ac76bd2f5ea7f5f1153c709a94a640.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/0679561fc3897bfc091b588f6e8c6f9c04ac76bd2f5ea7f5f1153c709a94a640.mp3', 1253, '2026-09-13 21:05:48.658619', '2572251a3d7a7dca6e48452e071261af701c4eab0f2ea5baee5e6019d594f8b1', 'validated', '{"audio_key":"0679561fc3897bfc091b588f6e8c6f9c04ac76bd2f5ea7f5f1153c709a94a640","entity_key":"e_how_are_you_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"2572251a3d7a7dca6e48452e071261af701c4eab0f2ea5baee5e6019d594f8b1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/0679561fc3897bfc091b588f6e8c6f9c04ac76bd2f5ea7f5f1153c709a94a640.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/09269131bff9797b87762c29edde784311a2287b4d64f35e37dd7e07582234aa.mp3', 1253, '2026-09-13 21:05:49.680300', '00142ec5c5db93d22b38dbc3eece13248d2c0c3d23c5e55aac9ac644e7405239', 'validated', '{"audio_key":"09269131bff9797b87762c29edde784311a2287b4d64f35e37dd7e07582234aa","entity_key":"u_numbers_0_10_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"00142ec5c5db93d22b38dbc3eece13248d2c0c3d23c5e55aac9ac644e7405239","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/09269131bff9797b87762c29edde784311a2287b4d64f35e37dd7e07582234aa.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/09269131bff9797b87762c29edde784311a2287b4d64f35e37dd7e07582234aa.mp3', 1253, '2026-09-13 21:05:49.680300', '00142ec5c5db93d22b38dbc3eece13248d2c0c3d23c5e55aac9ac644e7405239', 'validated', '{"audio_key":"09269131bff9797b87762c29edde784311a2287b4d64f35e37dd7e07582234aa","entity_key":"e_numbers_0_10_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"00142ec5c5db93d22b38dbc3eece13248d2c0c3d23c5e55aac9ac644e7405239","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/09269131bff9797b87762c29edde784311a2287b4d64f35e37dd7e07582234aa.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/0fc43ee2e231034f6137d8260d197b4b5ee3dc0578e07d8bd02a4eefd2067c52.mp3', 1201, '2026-09-13 21:05:49.694771', 'ab4a8a3bf772097c003f5fe6bd806911cd390b34122f6ff4399042e2ef44390a', 'validated', '{"audio_key":"0fc43ee2e231034f6137d8260d197b4b5ee3dc0578e07d8bd02a4eefd2067c52","entity_key":"u_first_objects_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ab4a8a3bf772097c003f5fe6bd806911cd390b34122f6ff4399042e2ef44390a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/0fc43ee2e231034f6137d8260d197b4b5ee3dc0578e07d8bd02a4eefd2067c52.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/0fc43ee2e231034f6137d8260d197b4b5ee3dc0578e07d8bd02a4eefd2067c52.mp3', 1201, '2026-09-13 21:05:49.694771', 'ab4a8a3bf772097c003f5fe6bd806911cd390b34122f6ff4399042e2ef44390a', 'validated', '{"audio_key":"0fc43ee2e231034f6137d8260d197b4b5ee3dc0578e07d8bd02a4eefd2067c52","entity_key":"e_first_objects_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ab4a8a3bf772097c003f5fe6bd806911cd390b34122f6ff4399042e2ef44390a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/0fc43ee2e231034f6137d8260d197b4b5ee3dc0578e07d8bd02a4eefd2067c52.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/121e2aed76fde8f6b290a3b1e57e6266dcdaabfa2136b2a1ce908e922cf44089.mp3', 1384, '2026-09-13 21:05:50.698216', 'b971b5835174285a267a15f03d1e4fcef6f8c7b30ea5d37b88cef87f35dbf096', 'validated', '{"audio_key":"121e2aed76fde8f6b290a3b1e57e6266dcdaabfa2136b2a1ce908e922cf44089","entity_key":"u_my_name_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b971b5835174285a267a15f03d1e4fcef6f8c7b30ea5d37b88cef87f35dbf096","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/121e2aed76fde8f6b290a3b1e57e6266dcdaabfa2136b2a1ce908e922cf44089.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/121e2aed76fde8f6b290a3b1e57e6266dcdaabfa2136b2a1ce908e922cf44089.mp3', 1384, '2026-09-13 21:05:50.698216', 'b971b5835174285a267a15f03d1e4fcef6f8c7b30ea5d37b88cef87f35dbf096', 'validated', '{"audio_key":"121e2aed76fde8f6b290a3b1e57e6266dcdaabfa2136b2a1ce908e922cf44089","entity_key":"e_my_name_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b971b5835174285a267a15f03d1e4fcef6f8c7b30ea5d37b88cef87f35dbf096","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/121e2aed76fde8f6b290a3b1e57e6266dcdaabfa2136b2a1ce908e922cf44089.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/16a01c1d771884e5436732f34cb948ad9fdb3a8e9a84005fa46d9696e40d48b5.mp3', 1253, '2026-09-13 21:05:50.717667', '4c4a887ef3745ad37822d7dc5cb3a4e780788a8fe46eea03f93bbd126dfb1e2b', 'validated', '{"audio_key":"16a01c1d771884e5436732f34cb948ad9fdb3a8e9a84005fa46d9696e40d48b5","entity_key":"u_polite_words_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4c4a887ef3745ad37822d7dc5cb3a4e780788a8fe46eea03f93bbd126dfb1e2b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/16a01c1d771884e5436732f34cb948ad9fdb3a8e9a84005fa46d9696e40d48b5.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/16a01c1d771884e5436732f34cb948ad9fdb3a8e9a84005fa46d9696e40d48b5.mp3', 1253, '2026-09-13 21:05:50.717667', '4c4a887ef3745ad37822d7dc5cb3a4e780788a8fe46eea03f93bbd126dfb1e2b', 'validated', '{"audio_key":"16a01c1d771884e5436732f34cb948ad9fdb3a8e9a84005fa46d9696e40d48b5","entity_key":"e_polite_words_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4c4a887ef3745ad37822d7dc5cb3a4e780788a8fe46eea03f93bbd126dfb1e2b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/16a01c1d771884e5436732f34cb948ad9fdb3a8e9a84005fa46d9696e40d48b5.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/18f99c3e7677a9dc0567d4755399fe5b40fc4e405a5f5b0218d82673505f0566.mp3', 1253, '2026-09-13 21:05:51.829308', '65800e13b5cbcd2ff342c47ddb87c4398fc016316e1f8abe65447daf43bfc9e5', 'validated', '{"audio_key":"18f99c3e7677a9dc0567d4755399fe5b40fc4e405a5f5b0218d82673505f0566","entity_key":"u_polite_words_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"65800e13b5cbcd2ff342c47ddb87c4398fc016316e1f8abe65447daf43bfc9e5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/18f99c3e7677a9dc0567d4755399fe5b40fc4e405a5f5b0218d82673505f0566.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/1e409d4c8ff1f3c86ead4dd40e3ab66ea231982f935572cd7f3e242bcefb52c4.mp3', 1619, '2026-09-13 21:05:51.765569', '300d56b09b94993aefca5e4b873bb5bb5c156a9bcb5661a1a5684ca759a44652', 'validated', '{"audio_key":"1e409d4c8ff1f3c86ead4dd40e3ab66ea231982f935572cd7f3e242bcefb52c4","entity_key":"u_survival_words_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"300d56b09b94993aefca5e4b873bb5bb5c156a9bcb5661a1a5684ca759a44652","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/1e409d4c8ff1f3c86ead4dd40e3ab66ea231982f935572cd7f3e242bcefb52c4.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/29587fbc59b7c11a34b6f59ebdf0941660d1a9a3dabae38fc486911e8af6da81.mp3', 1253, '2026-09-13 21:05:52.796789', '1af7d2850027d46c489c8272ac4bcddd0b368f0d30ae49f63aea0df4a61731dd', 'validated', '{"audio_key":"29587fbc59b7c11a34b6f59ebdf0941660d1a9a3dabae38fc486911e8af6da81","entity_key":"u_first_conversation_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1af7d2850027d46c489c8272ac4bcddd0b368f0d30ae49f63aea0df4a61731dd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/29587fbc59b7c11a34b6f59ebdf0941660d1a9a3dabae38fc486911e8af6da81.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/29587fbc59b7c11a34b6f59ebdf0941660d1a9a3dabae38fc486911e8af6da81.mp3', 1253, '2026-09-13 21:05:52.796789', '1af7d2850027d46c489c8272ac4bcddd0b368f0d30ae49f63aea0df4a61731dd', 'validated', '{"audio_key":"29587fbc59b7c11a34b6f59ebdf0941660d1a9a3dabae38fc486911e8af6da81","entity_key":"e_first_conversation_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"1af7d2850027d46c489c8272ac4bcddd0b368f0d30ae49f63aea0df4a61731dd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/29587fbc59b7c11a34b6f59ebdf0941660d1a9a3dabae38fc486911e8af6da81.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/2e4e1fc54780163bd68d726fd281843c494da486cc20e46df9366ef09238134a.mp3', 1802, '2026-09-13 21:05:52.938701', '968b00d9319647fdcca2798aac945e11af643687df1165d7251d2c87947fa9a1', 'validated', '{"audio_key":"2e4e1fc54780163bd68d726fd281843c494da486cc20e46df9366ef09238134a","entity_key":"u_first_sounds_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"968b00d9319647fdcca2798aac945e11af643687df1165d7251d2c87947fa9a1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/2e4e1fc54780163bd68d726fd281843c494da486cc20e46df9366ef09238134a.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/3457a3fc83733049f4b05f0752dd29c4daa71113a8c2043cddf9575167cac693.mp3', 1332, '2026-09-13 21:05:53.803446', 'f9101991ee220b4cc572d93e0623e2d27cbead4b5115ea2611c0fcd39a87a1b6', 'validated', '{"audio_key":"3457a3fc83733049f4b05f0752dd29c4daa71113a8c2043cddf9575167cac693","entity_key":"u_how_are_you_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f9101991ee220b4cc572d93e0623e2d27cbead4b5115ea2611c0fcd39a87a1b6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/3457a3fc83733049f4b05f0752dd29c4daa71113a8c2043cddf9575167cac693.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/3457a3fc83733049f4b05f0752dd29c4daa71113a8c2043cddf9575167cac693.mp3', 1332, '2026-09-13 21:05:53.803446', 'f9101991ee220b4cc572d93e0623e2d27cbead4b5115ea2611c0fcd39a87a1b6', 'validated', '{"audio_key":"3457a3fc83733049f4b05f0752dd29c4daa71113a8c2043cddf9575167cac693","entity_key":"e_how_are_you_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f9101991ee220b4cc572d93e0623e2d27cbead4b5115ea2611c0fcd39a87a1b6","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/3457a3fc83733049f4b05f0752dd29c4daa71113a8c2043cddf9575167cac693.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/37d233d49351ec7e79bfe4c36d86948a4e71f6e61f273c26c86738b92c4f189c.mp3', 1697, '2026-09-13 21:05:54.032368', '53998540f4e7fda4e14722ad8e227fefd8c43d2b86433955b79d5400d9344151', 'validated', '{"audio_key":"37d233d49351ec7e79bfe4c36d86948a4e71f6e61f273c26c86738b92c4f189c","entity_key":"u_first_sounds_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"53998540f4e7fda4e14722ad8e227fefd8c43d2b86433955b79d5400d9344151","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/37d233d49351ec7e79bfe4c36d86948a4e71f6e61f273c26c86738b92c4f189c.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/37d233d49351ec7e79bfe4c36d86948a4e71f6e61f273c26c86738b92c4f189c.mp3', 1697, '2026-09-13 21:05:54.032368', '53998540f4e7fda4e14722ad8e227fefd8c43d2b86433955b79d5400d9344151', 'validated', '{"audio_key":"37d233d49351ec7e79bfe4c36d86948a4e71f6e61f273c26c86738b92c4f189c","entity_key":"e_first_sounds_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"53998540f4e7fda4e14722ad8e227fefd8c43d2b86433955b79d5400d9344151","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/37d233d49351ec7e79bfe4c36d86948a4e71f6e61f273c26c86738b92c4f189c.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/37fe41f9a3bf30b3046bbd5813c078b42010a7decbb779c63497da24b10d927d.mp3', 1567, '2026-09-13 21:05:54.910023', 'fe76f597123b6c69b08305ee53ffeda5051bb7bc7585afa2414c28004ff18ed5', 'validated', '{"audio_key":"37fe41f9a3bf30b3046bbd5813c078b42010a7decbb779c63497da24b10d927d","entity_key":"u_first_greetings_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fe76f597123b6c69b08305ee53ffeda5051bb7bc7585afa2414c28004ff18ed5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/37fe41f9a3bf30b3046bbd5813c078b42010a7decbb779c63497da24b10d927d.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/37fe41f9a3bf30b3046bbd5813c078b42010a7decbb779c63497da24b10d927d.mp3', 1567, '2026-09-13 21:05:54.910023', 'fe76f597123b6c69b08305ee53ffeda5051bb7bc7585afa2414c28004ff18ed5', 'validated', '{"audio_key":"37fe41f9a3bf30b3046bbd5813c078b42010a7decbb779c63497da24b10d927d","entity_key":"e_first_greetings_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fe76f597123b6c69b08305ee53ffeda5051bb7bc7585afa2414c28004ff18ed5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/37fe41f9a3bf30b3046bbd5813c078b42010a7decbb779c63497da24b10d927d.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/4342a8b1417bc73e5e0c4becc0279bf4d8d500c8f90687f9532a149e8fbc0093.mp3', 1515, '2026-09-13 21:05:55.084542', 'ad7590d792f4a3ca8e26f3aa26929807a543ee6646e44f0751772e55a765a94b', 'validated', '{"audio_key":"4342a8b1417bc73e5e0c4becc0279bf4d8d500c8f90687f9532a149e8fbc0093","entity_key":"u_first_sounds_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ad7590d792f4a3ca8e26f3aa26929807a543ee6646e44f0751772e55a765a94b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/4342a8b1417bc73e5e0c4becc0279bf4d8d500c8f90687f9532a149e8fbc0093.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/4342a8b1417bc73e5e0c4becc0279bf4d8d500c8f90687f9532a149e8fbc0093.mp3', 1515, '2026-09-13 21:05:55.084542', 'ad7590d792f4a3ca8e26f3aa26929807a543ee6646e44f0751772e55a765a94b', 'validated', '{"audio_key":"4342a8b1417bc73e5e0c4becc0279bf4d8d500c8f90687f9532a149e8fbc0093","entity_key":"e_first_sounds_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"ad7590d792f4a3ca8e26f3aa26929807a543ee6646e44f0751772e55a765a94b","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/4342a8b1417bc73e5e0c4becc0279bf4d8d500c8f90687f9532a149e8fbc0093.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/492e9436de2676f7a8998e24c53d20d8696e70e36d3d056e88911a07e5f5dd4d.mp3', 1201, '2026-09-13 21:05:55.988907', 'dd3efc9b619c15ff735bd8618031bdc55a278da37d2173bb34b6e925e41d712e', 'validated', '{"audio_key":"492e9436de2676f7a8998e24c53d20d8696e70e36d3d056e88911a07e5f5dd4d","entity_key":"u_first_objects_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"dd3efc9b619c15ff735bd8618031bdc55a278da37d2173bb34b6e925e41d712e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/492e9436de2676f7a8998e24c53d20d8696e70e36d3d056e88911a07e5f5dd4d.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/4a2fdef62d853b44f3f14945a2db2796c43b00d9ac24684e4e19119605516ffe.mp3', 1515, '2026-09-13 21:05:56.131135', 'f99a3fd72bb6cc3029c6bc5ea2090b22260691d311be0d940f5ea1efd99f3ab0', 'validated', '{"audio_key":"4a2fdef62d853b44f3f14945a2db2796c43b00d9ac24684e4e19119605516ffe","entity_key":"u_first_greetings_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"f99a3fd72bb6cc3029c6bc5ea2090b22260691d311be0d940f5ea1efd99f3ab0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/4a2fdef62d853b44f3f14945a2db2796c43b00d9ac24684e4e19119605516ffe.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/511459cfd29995f1e8f11e8599e3e69358ea993313d779bd58e6019225de0804.mp3', 1697, '2026-09-13 21:05:57.080368', '9c5c326b92f3bb39a519fef84858ef5bd3c762b5825392631930f3459380ceef', 'validated', '{"audio_key":"511459cfd29995f1e8f11e8599e3e69358ea993313d779bd58e6019225de0804","entity_key":"u_first_conversation_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9c5c326b92f3bb39a519fef84858ef5bd3c762b5825392631930f3459380ceef","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/511459cfd29995f1e8f11e8599e3e69358ea993313d779bd58e6019225de0804.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5317c3e26cd755e4c24d7812845e6c5d92a243da78ff8778885d432b22ada4a2.mp3', 1488, '2026-09-13 21:05:57.173791', '0572cd20a39c48053bf290b63074840a54d6d735157babc5483c2a5e4bba3230', 'validated', '{"audio_key":"5317c3e26cd755e4c24d7812845e6c5d92a243da78ff8778885d432b22ada4a2","entity_key":"u_how_are_you_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0572cd20a39c48053bf290b63074840a54d6d735157babc5483c2a5e4bba3230","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5317c3e26cd755e4c24d7812845e6c5d92a243da78ff8778885d432b22ada4a2.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5421b4783388b9ab29a0dc3d658fc4802448b4fc9575d1f6548aa42facafa06e.mp3', 2638, '2026-09-13 21:05:58.204409', 'c823bb442f236d37a2b630a516da0ba3a35886bae8fb1097387b2d19571ba41d', 'validated', '{"audio_key":"5421b4783388b9ab29a0dc3d658fc4802448b4fc9575d1f6548aa42facafa06e","entity_key":"u_hangul_basics_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c823bb442f236d37a2b630a516da0ba3a35886bae8fb1097387b2d19571ba41d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5421b4783388b9ab29a0dc3d658fc4802448b4fc9575d1f6548aa42facafa06e.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5421b4783388b9ab29a0dc3d658fc4802448b4fc9575d1f6548aa42facafa06e.mp3', 2638, '2026-09-13 21:05:58.204409', 'c823bb442f236d37a2b630a516da0ba3a35886bae8fb1097387b2d19571ba41d', 'validated', '{"audio_key":"5421b4783388b9ab29a0dc3d658fc4802448b4fc9575d1f6548aa42facafa06e","entity_key":"e_hangul_basics_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c823bb442f236d37a2b630a516da0ba3a35886bae8fb1097387b2d19571ba41d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5421b4783388b9ab29a0dc3d658fc4802448b4fc9575d1f6548aa42facafa06e.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5444e428ec42805f65125a49e2db448ee34580e9b74aced9a8c50ade760a6b3c.mp3', 1619, '2026-09-13 21:05:58.272144', '04662a21e08a6c0975021023e2835a77d6e89dd3ea86143510856e51c6d9ce61', 'validated', '{"audio_key":"5444e428ec42805f65125a49e2db448ee34580e9b74aced9a8c50ade760a6b3c","entity_key":"u_first_greetings_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"04662a21e08a6c0975021023e2835a77d6e89dd3ea86143510856e51c6d9ce61","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5444e428ec42805f65125a49e2db448ee34580e9b74aced9a8c50ade760a6b3c.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5444e428ec42805f65125a49e2db448ee34580e9b74aced9a8c50ade760a6b3c.mp3', 1619, '2026-09-13 21:05:58.272144', '04662a21e08a6c0975021023e2835a77d6e89dd3ea86143510856e51c6d9ce61', 'validated', '{"audio_key":"5444e428ec42805f65125a49e2db448ee34580e9b74aced9a8c50ade760a6b3c","entity_key":"e_first_greetings_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"04662a21e08a6c0975021023e2835a77d6e89dd3ea86143510856e51c6d9ce61","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5444e428ec42805f65125a49e2db448ee34580e9b74aced9a8c50ade760a6b3c.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5492d3111fddec4eafce37903ed9c7c6c07d0fc29cf607341078a2c662d802fd.mp3', 1201, '2026-09-13 21:05:59.207185', 'a978a2aed78d910e65a21c2ddba774bd8daf15401871382d93224fa2b22b09b9', 'validated', '{"audio_key":"5492d3111fddec4eafce37903ed9c7c6c07d0fc29cf607341078a2c662d802fd","entity_key":"u_survival_words_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a978a2aed78d910e65a21c2ddba774bd8daf15401871382d93224fa2b22b09b9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5492d3111fddec4eafce37903ed9c7c6c07d0fc29cf607341078a2c662d802fd.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5492d3111fddec4eafce37903ed9c7c6c07d0fc29cf607341078a2c662d802fd.mp3', 1201, '2026-09-13 21:05:59.207185', 'a978a2aed78d910e65a21c2ddba774bd8daf15401871382d93224fa2b22b09b9', 'validated', '{"audio_key":"5492d3111fddec4eafce37903ed9c7c6c07d0fc29cf607341078a2c662d802fd","entity_key":"e_survival_words_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a978a2aed78d910e65a21c2ddba774bd8daf15401871382d93224fa2b22b09b9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5492d3111fddec4eafce37903ed9c7c6c07d0fc29cf607341078a2c662d802fd.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/58d4071ce9e9e39634ec53543845be856be2322d7b2f195ba8485466bcac0e71.mp3', 1515, '2026-09-13 21:05:59.292013', '33d280f216a382727165a178aa8b9f2ca5739a51970ef529851b05fe51236484', 'validated', '{"audio_key":"58d4071ce9e9e39634ec53543845be856be2322d7b2f195ba8485466bcac0e71","entity_key":"u_first_conversation_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"33d280f216a382727165a178aa8b9f2ca5739a51970ef529851b05fe51236484","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/58d4071ce9e9e39634ec53543845be856be2322d7b2f195ba8485466bcac0e71.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5e5a397b31bdc18b9426c7088674bd05208a2625efbcc6b1655e1b3a7773be40.mp3', 1332, '2026-09-13 21:06:00.315987', '9fc6fdf5a2c7c88d7d20abc5897e0ac3955acddc5526dd59f8125002c668744a', 'validated', '{"audio_key":"5e5a397b31bdc18b9426c7088674bd05208a2625efbcc6b1655e1b3a7773be40","entity_key":"u_first_conversation_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9fc6fdf5a2c7c88d7d20abc5897e0ac3955acddc5526dd59f8125002c668744a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5e5a397b31bdc18b9426c7088674bd05208a2625efbcc6b1655e1b3a7773be40.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/5e5a397b31bdc18b9426c7088674bd05208a2625efbcc6b1655e1b3a7773be40.mp3', 1332, '2026-09-13 21:06:00.315987', '9fc6fdf5a2c7c88d7d20abc5897e0ac3955acddc5526dd59f8125002c668744a', 'validated', '{"audio_key":"5e5a397b31bdc18b9426c7088674bd05208a2625efbcc6b1655e1b3a7773be40","entity_key":"e_first_conversation_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9fc6fdf5a2c7c88d7d20abc5897e0ac3955acddc5526dd59f8125002c668744a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/5e5a397b31bdc18b9426c7088674bd05208a2625efbcc6b1655e1b3a7773be40.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/6fa86e68ce3c3d7c44074abb5623260aa0dab5d9073837a05155ecbf7110e784.mp3', 1488, '2026-09-13 21:06:00.326070', 'c153da56962b23954ba82acd33ade564464f33e27e57819afef9eb36edacda9e', 'validated', '{"audio_key":"6fa86e68ce3c3d7c44074abb5623260aa0dab5d9073837a05155ecbf7110e784","entity_key":"u_survival_words_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c153da56962b23954ba82acd33ade564464f33e27e57819afef9eb36edacda9e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/6fa86e68ce3c3d7c44074abb5623260aa0dab5d9073837a05155ecbf7110e784.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7705b567b283892ef1e3299ba474cb2bdd7c0017d9171ae5fcc78603c9245401.mp3', 1097, '2026-09-13 21:06:01.337349', 'd61f8cca4c7d3325b7e0aff08b4d5527abe509702a85c739f12dcdc683b7869c', 'validated', '{"audio_key":"7705b567b283892ef1e3299ba474cb2bdd7c0017d9171ae5fcc78603c9245401","entity_key":"u_first_objects_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d61f8cca4c7d3325b7e0aff08b4d5527abe509702a85c739f12dcdc683b7869c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7705b567b283892ef1e3299ba474cb2bdd7c0017d9171ae5fcc78603c9245401.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/7705b567b283892ef1e3299ba474cb2bdd7c0017d9171ae5fcc78603c9245401.mp3', 1097, '2026-09-13 21:06:01.337349', 'd61f8cca4c7d3325b7e0aff08b4d5527abe509702a85c739f12dcdc683b7869c', 'validated', '{"audio_key":"7705b567b283892ef1e3299ba474cb2bdd7c0017d9171ae5fcc78603c9245401","entity_key":"e_first_objects_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"d61f8cca4c7d3325b7e0aff08b4d5527abe509702a85c739f12dcdc683b7869c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/7705b567b283892ef1e3299ba474cb2bdd7c0017d9171ae5fcc78603c9245401.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/9e9b366e179afa7a154f201ffbe8ceeae1168ad155c0022d40dc3ae370ba8dea.mp3', 1436, '2026-09-13 21:06:01.348506', '5c3ce3e6e1cd8f5b9d8aeed6de3ccac167256d48804ba5c014f588dc4acff0c5', 'validated', '{"audio_key":"9e9b366e179afa7a154f201ffbe8ceeae1168ad155c0022d40dc3ae370ba8dea","entity_key":"u_my_name_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"5c3ce3e6e1cd8f5b9d8aeed6de3ccac167256d48804ba5c014f588dc4acff0c5","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/9e9b366e179afa7a154f201ffbe8ceeae1168ad155c0022d40dc3ae370ba8dea.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/9ef677515e82df3773b9eaffa983531a771e9ac7d3e2029ec50610575260ba8b.mp3', 1436, '2026-09-13 21:06:02.374328', '0ae0bf4e59307af8113bec18556ac2b0274111da51890ee63ee341ccacc69cab', 'validated', '{"audio_key":"9ef677515e82df3773b9eaffa983531a771e9ac7d3e2029ec50610575260ba8b","entity_key":"u_numbers_0_10_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0ae0bf4e59307af8113bec18556ac2b0274111da51890ee63ee341ccacc69cab","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/9ef677515e82df3773b9eaffa983531a771e9ac7d3e2029ec50610575260ba8b.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/9ef677515e82df3773b9eaffa983531a771e9ac7d3e2029ec50610575260ba8b.mp3', 1436, '2026-09-13 21:06:02.374328', '0ae0bf4e59307af8113bec18556ac2b0274111da51890ee63ee341ccacc69cab', 'validated', '{"audio_key":"9ef677515e82df3773b9eaffa983531a771e9ac7d3e2029ec50610575260ba8b","entity_key":"e_numbers_0_10_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"0ae0bf4e59307af8113bec18556ac2b0274111da51890ee63ee341ccacc69cab","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/9ef677515e82df3773b9eaffa983531a771e9ac7d3e2029ec50610575260ba8b.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/ad7e0d6b43bf8ab390293a1e52a0dac49b498fafa326510bb9757de754745a1d.mp3', 1567, '2026-09-13 21:06:02.403567', '18d06e62eb87831a77a503061ae8801df88ebe4902b3a4b88284311f3edb87f0', 'validated', '{"audio_key":"ad7e0d6b43bf8ab390293a1e52a0dac49b498fafa326510bb9757de754745a1d","entity_key":"u_my_name_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"18d06e62eb87831a77a503061ae8801df88ebe4902b3a4b88284311f3edb87f0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/ad7e0d6b43bf8ab390293a1e52a0dac49b498fafa326510bb9757de754745a1d.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/bd3575f411de6b32607eaaa86129cdcd19a97b0893d4581b7af2218587c41c49.mp3', 1436, '2026-09-13 21:06:03.428360', '988ca895aea1a3cdc277ee9547e72e8a8c9dd153ef513d31935be944be935748', 'validated', '{"audio_key":"bd3575f411de6b32607eaaa86129cdcd19a97b0893d4581b7af2218587c41c49","entity_key":"u_hangul_basics_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"988ca895aea1a3cdc277ee9547e72e8a8c9dd153ef513d31935be944be935748","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/bd3575f411de6b32607eaaa86129cdcd19a97b0893d4581b7af2218587c41c49.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c43e3f9ee13d6ddff2df7fb325f5c8b73af7b1a39a565e79041760ff2799eec6.mp3', 1253, '2026-09-13 21:06:03.391437', '9bff0e6c4ba042ee4884fc90426a89dcc04e9714c9c1e76ee98c9787df23a879', 'validated', '{"audio_key":"c43e3f9ee13d6ddff2df7fb325f5c8b73af7b1a39a565e79041760ff2799eec6","entity_key":"u_numbers_0_10_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"9bff0e6c4ba042ee4884fc90426a89dcc04e9714c9c1e76ee98c9787df23a879","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c43e3f9ee13d6ddff2df7fb325f5c8b73af7b1a39a565e79041760ff2799eec6.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/c574b280f5ef37ffcbe0f8f914a0d8844dca4856b4bd1deeecc16a444cf45bc0.mp3', 1149, '2026-09-13 21:06:04.399181', 'c228382152b653bbb310f65596c8e0ede5ecbd05b5d56c30c1b8e94876b7ec90', 'validated', '{"audio_key":"c574b280f5ef37ffcbe0f8f914a0d8844dca4856b4bd1deeecc16a444cf45bc0","entity_key":"u_how_are_you_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c228382152b653bbb310f65596c8e0ede5ecbd05b5d56c30c1b8e94876b7ec90","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/c574b280f5ef37ffcbe0f8f914a0d8844dca4856b4bd1deeecc16a444cf45bc0.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d53e180b70f94c68f7609374da6542723ca64574e402c22509c2c9ccc3c21813.mp3', 1436, '2026-09-13 21:06:04.463455', 'e6de175d005e65451ae2311f6aa4c3045f7202514c1e32d27c9a1080d08a0f23', 'validated', '{"audio_key":"d53e180b70f94c68f7609374da6542723ca64574e402c22509c2c9ccc3c21813","entity_key":"u_hangul_basics_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e6de175d005e65451ae2311f6aa4c3045f7202514c1e32d27c9a1080d08a0f23","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d53e180b70f94c68f7609374da6542723ca64574e402c22509c2c9ccc3c21813.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d53e180b70f94c68f7609374da6542723ca64574e402c22509c2c9ccc3c21813.mp3', 1436, '2026-09-13 21:06:04.463455', 'e6de175d005e65451ae2311f6aa4c3045f7202514c1e32d27c9a1080d08a0f23', 'validated', '{"audio_key":"d53e180b70f94c68f7609374da6542723ca64574e402c22509c2c9ccc3c21813","entity_key":"e_hangul_basics_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e6de175d005e65451ae2311f6aa4c3045f7202514c1e32d27c9a1080d08a0f23","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d53e180b70f94c68f7609374da6542723ca64574e402c22509c2c9ccc3c21813.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/d57524319d62aaeedb98665fd84711cd629a5c83774d789047b6b8f24bcb350d.mp3', 1253, '2026-09-13 21:06:05.391789', 'e3e646a03817b04faa4c695e111a94f4be8a63db66a2d8d3cb18602e48501535', 'validated', '{"audio_key":"d57524319d62aaeedb98665fd84711cd629a5c83774d789047b6b8f24bcb350d","entity_key":"u_first_objects_03","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"e3e646a03817b04faa4c695e111a94f4be8a63db66a2d8d3cb18602e48501535","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/d57524319d62aaeedb98665fd84711cd629a5c83774d789047b6b8f24bcb350d.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/da3538f873b88e6e725af09d42108ecef97ac5c8a9dd3940e4d46df5a208a6b5.mp3', 1018, '2026-09-13 21:06:05.465793', '4b9ae17510caed4281699b77df2a6c17705420bc025e191390e88c017afd4cc2', 'validated', '{"audio_key":"da3538f873b88e6e725af09d42108ecef97ac5c8a9dd3940e4d46df5a208a6b5","entity_key":"u_first_sounds_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"4b9ae17510caed4281699b77df2a6c17705420bc025e191390e88c017afd4cc2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/da3538f873b88e6e725af09d42108ecef97ac5c8a9dd3940e4d46df5a208a6b5.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/ddd643014eb4353591f7c8f244b526fc96ae968bdb593950473f12bf4c26ad31.mp3', 1280, '2026-09-13 21:06:06.430469', 'c4b748132b4f3acf07f49ea6aabf81af2b802ec947f19a640db65880092aee78', 'validated', '{"audio_key":"ddd643014eb4353591f7c8f244b526fc96ae968bdb593950473f12bf4c26ad31","entity_key":"u_polite_words_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c4b748132b4f3acf07f49ea6aabf81af2b802ec947f19a640db65880092aee78","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/ddd643014eb4353591f7c8f244b526fc96ae968bdb593950473f12bf4c26ad31.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/ddd643014eb4353591f7c8f244b526fc96ae968bdb593950473f12bf4c26ad31.mp3', 1280, '2026-09-13 21:06:06.430469', 'c4b748132b4f3acf07f49ea6aabf81af2b802ec947f19a640db65880092aee78', 'validated', '{"audio_key":"ddd643014eb4353591f7c8f244b526fc96ae968bdb593950473f12bf4c26ad31","entity_key":"e_polite_words_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"c4b748132b4f3acf07f49ea6aabf81af2b802ec947f19a640db65880092aee78","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/ddd643014eb4353591f7c8f244b526fc96ae968bdb593950473f12bf4c26ad31.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/e7d2d3fda3e86a88edb34e39adc7ee69181d0d3e0f4cbb2b477a4e5c6adfcbaf.mp3', 1332, '2026-09-13 21:06:06.488201', '8736313d0acfb2d2349f5ffb5181471707a1e43cde579d4becce008759ba919a', 'validated', '{"audio_key":"e7d2d3fda3e86a88edb34e39adc7ee69181d0d3e0f4cbb2b477a4e5c6adfcbaf","entity_key":"u_first_greetings_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"8736313d0acfb2d2349f5ffb5181471707a1e43cde579d4becce008759ba919a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/e7d2d3fda3e86a88edb34e39adc7ee69181d0d3e0f4cbb2b477a4e5c6adfcbaf.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/eafe771482ce335c37761754b0e87eebd51c797e61c74e8641b851826601dcd6.mp3', 1567, '2026-09-13 21:06:07.474375', '81eab74a6edd39a3ed8e7f579b3d479d4947c75ae1e8d161a15594033426690a', 'validated', '{"audio_key":"eafe771482ce335c37761754b0e87eebd51c797e61c74e8641b851826601dcd6","entity_key":"u_hangul_basics_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"81eab74a6edd39a3ed8e7f579b3d479d4947c75ae1e8d161a15594033426690a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/eafe771482ce335c37761754b0e87eebd51c797e61c74e8641b851826601dcd6.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/eef47246d6ce27a6830f4d01b4a65c93b66bd37d07778adb8d5593f49789ebef.mp3', 1619, '2026-09-13 21:06:07.532630', 'fe458c7abe75d18d0c5b8ccacecd79ce45f07ce16533925d52245f69a2d7640d', 'validated', '{"audio_key":"eef47246d6ce27a6830f4d01b4a65c93b66bd37d07778adb8d5593f49789ebef","entity_key":"u_my_name_04","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fe458c7abe75d18d0c5b8ccacecd79ce45f07ce16533925d52245f69a2d7640d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/eef47246d6ce27a6830f4d01b4a65c93b66bd37d07778adb8d5593f49789ebef.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/eef47246d6ce27a6830f4d01b4a65c93b66bd37d07778adb8d5593f49789ebef.mp3', 1619, '2026-09-13 21:06:07.532630', 'fe458c7abe75d18d0c5b8ccacecd79ce45f07ce16533925d52245f69a2d7640d', 'validated', '{"audio_key":"eef47246d6ce27a6830f4d01b4a65c93b66bd37d07778adb8d5593f49789ebef","entity_key":"e_my_name_02_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"fe458c7abe75d18d0c5b8ccacecd79ce45f07ce16533925d52245f69a2d7640d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/eef47246d6ce27a6830f4d01b4a65c93b66bd37d07778adb8d5593f49789ebef.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3', 1488, '2026-09-13 21:06:08.509651', 'b03d17339acba3b6c04ee9abc83259e046d0eb1ee34ce7c68ba55d96a7866e58', 'validated', '{"audio_key":"f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d","entity_key":"u_survival_words_02","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b03d17339acba3b6c04ee9abc83259e046d0eb1ee34ce7c68ba55d96a7866e58","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3', 1488, '2026-09-13 21:06:08.509651', 'b03d17339acba3b6c04ee9abc83259e046d0eb1ee34ce7c68ba55d96a7866e58', 'validated', '{"audio_key":"f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d","entity_key":"e_survival_words_01_listen","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"b03d17339acba3b6c04ee9abc83259e046d0eb1ee34ce7c68ba55d96a7866e58","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/f87f38427c2ff76f382559ee37dd2e502b62b0d47acfd8544969b81e7dd4c86d.mp3"}'
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
  'ko-kr.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/ko-KR/utterances/f9ba2be4331218f5a9c6f86152df2f9dd8167fe2c59cd38eb63b5abbfab6fc77.mp3', 1332, '2026-09-13 21:06:08.529745', 'a311b9b47c1ef189437f434e8bf9e60490a885073b564f346b87d5505f48eaee', 'validated', '{"audio_key":"f9ba2be4331218f5a9c6f86152df2f9dd8167fe2c59cd38eb63b5abbfab6fc77","entity_key":"u_numbers_0_10_01","voice_id":"5DWGv3VDkihNUcbvaonB","voice_name":"Kelee K - Seoul Narrator","voice_labels":{"gender":"female","accent":"seoul","age":"young","category":"professional","language":"ko","use_case":"conversational","descriptive":"casual"},"output_format":"mp3_44100_192","file_sha256":"a311b9b47c1ef189437f434e8bf9e60490a885073b564f346b87d5505f48eaee","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/ko-KR/utterances/f9ba2be4331218f5a9c6f86152df2f9dd8167fe2c59cd38eb63b5abbfab6fc77.mp3"}'
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

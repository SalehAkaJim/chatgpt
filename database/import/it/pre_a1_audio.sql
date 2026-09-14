-- Generated audio link import for it-IT Pre-A1
-- Source manifest: audio/manifests/it/Pre-A1.json
-- Generated rows: 260
-- Storage mode: relative_path
-- storage_url is intentionally portable; prepend your server/CDN base URL at runtime.
-- Run AFTER the matching level content import.
SET NAMES utf8mb4 COLLATE utf8mb4_0900_ai_ci;
SET time_zone = '+00:00';
SET @audio_language_id = (SELECT id FROM languages WHERE code = 'it' LIMIT 1);
SET @audio_variant_id = (SELECT id FROM language_variants WHERE code = 'it-IT' LIMIT 1);
START TRANSACTION;

-- d_alphabet_02:1 -> audio/generated/it-IT/dialogues/05ad179b4b70f97bfe8809c2e314e35694f1dc707da7c8578c2b341a3408bddd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bb902ee5-a473-51d3-8865-ce901cb7707b', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ceb97ae6193ba427b3bd3d73f12dddd8fee9e2ac15310d5c9d0024b2b631541c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('563f995f-df4f-50ba-8d3f-5d1ccf873634', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bb902ee5-a473-51d3-8865-ce901cb7707b', 1), 'ceb97ae6193ba427b3bd3d73f12dddd8fee9e2ac15310d5c9d0024b2b631541c',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/05ad179b4b70f97bfe8809c2e314e35694f1dc707da7c8578c2b341a3408bddd.mp3', 1280, '2026-09-14 01:56:26.869633', '3418e7b9c07213ce50dcbe6b2520af33cdfc731323447dc74ff8bb340b2a33a0', 'validated', '{"audio_key":"05ad179b4b70f97bfe8809c2e314e35694f1dc707da7c8578c2b341a3408bddd","entity_key":"d_alphabet_02:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"3418e7b9c07213ce50dcbe6b2520af33cdfc731323447dc74ff8bb340b2a33a0","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/05ad179b4b70f97bfe8809c2e314e35694f1dc707da7c8578c2b341a3408bddd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_01:2 -> audio/generated/it-IT/dialogues/079d7f1471c93a4a871e2b5ca8ed4496dea38de4b4a9fd64a52dc3050b51cdeb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('52aed6c5-5a39-5365-9bbd-6041051d8b91', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a807d69dff12aee561496fbf3d5a50ef2235ce8ba55d74f33051945d7c4b49a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2e0c8ad-b146-5109-ac52-5cad99cb8d44', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('52aed6c5-5a39-5365-9bbd-6041051d8b91', 1), '4a807d69dff12aee561496fbf3d5a50ef2235ce8ba55d74f33051945d7c4b49a',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/079d7f1471c93a4a871e2b5ca8ed4496dea38de4b4a9fd64a52dc3050b51cdeb.mp3', 1436, '2026-09-14 01:56:26.883194', '1d248b4911ec3068e68e4186c77f32c35796211a1b97cf6cba53dde327393e33', 'validated', '{"audio_key":"079d7f1471c93a4a871e2b5ca8ed4496dea38de4b4a9fd64a52dc3050b51cdeb","entity_key":"d_first_conversation_01:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1d248b4911ec3068e68e4186c77f32c35796211a1b97cf6cba53dde327393e33","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/079d7f1471c93a4a871e2b5ca8ed4496dea38de4b4a9fd64a52dc3050b51cdeb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_02:3 -> audio/generated/it-IT/dialogues/0ad5358426010ad950a622ffe514e546947a50ac3387b9fb70621abdcc9c78ec.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d5d14f9c-0955-591e-a394-b4ea912f0f42', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'db61e178775900ad223e1167fba6a8a02c99097e07a9d2236529d12631725ebb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d0c21fe-0694-5c30-98f2-2f00ce6bcea6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d5d14f9c-0955-591e-a394-b4ea912f0f42', 1), 'db61e178775900ad223e1167fba6a8a02c99097e07a9d2236529d12631725ebb',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/0ad5358426010ad950a622ffe514e546947a50ac3387b9fb70621abdcc9c78ec.mp3', 1619, '2026-09-14 01:56:27.855847', 'e1431161241c9940c46c351ac3e59422deaaf06f5cfd4407b629e0c7a045d2b0', 'validated', '{"audio_key":"0ad5358426010ad950a622ffe514e546947a50ac3387b9fb70621abdcc9c78ec","entity_key":"d_first_conversation_02:3","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"e1431161241c9940c46c351ac3e59422deaaf06f5cfd4407b629e0c7a045d2b0","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/0ad5358426010ad950a622ffe514e546947a50ac3387b9fb70621abdcc9c78ec.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_01:3 -> audio/generated/it-IT/dialogues/0be582a4cba394b962b1b903950bdcee6f9f49cd1d1088715536ea6da32dba46.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('14a38262-21a4-5293-8726-9ca980607de1', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd42c52b6200a90e418d1b986a052ad4178d2626caf2ca8467a98206238767092'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce3bb6e9-d023-551d-98cc-6b566f08592a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('14a38262-21a4-5293-8726-9ca980607de1', 1), 'd42c52b6200a90e418d1b986a052ad4178d2626caf2ca8467a98206238767092',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/0be582a4cba394b962b1b903950bdcee6f9f49cd1d1088715536ea6da32dba46.mp3', 1097, '2026-09-14 01:56:27.857186', 'cd0846f43116c807c00160e140aa40d9a479ee5bbdb3ecc2fcceb4d6514a644b', 'validated', '{"audio_key":"0be582a4cba394b962b1b903950bdcee6f9f49cd1d1088715536ea6da32dba46","entity_key":"d_alphabet_01:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"cd0846f43116c807c00160e140aa40d9a479ee5bbdb3ecc2fcceb4d6514a644b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/0be582a4cba394b962b1b903950bdcee6f9f49cd1d1088715536ea6da32dba46.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_01:1 -> audio/generated/it-IT/dialogues/0c86734f6df8abfe5e76597fc00a275c718340dfae8d622ed4df3c8072f0e62e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('83e9c01b-c9bf-5949-8b34-e3501aff803f', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65f3c469a1b93490f0f8af4f4b7df299b8c791e6b2b7929a623619a47d96d4ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d2fe49be-8adc-5eee-8547-6b03d85cd220', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('83e9c01b-c9bf-5949-8b34-e3501aff803f', 1), '65f3c469a1b93490f0f8af4f4b7df299b8c791e6b2b7929a623619a47d96d4ae',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/0c86734f6df8abfe5e76597fc00a275c718340dfae8d622ed4df3c8072f0e62e.mp3', 966, '2026-09-14 01:56:28.828888', 'b05fbe9a582734efc892a392bc973ffac400de51c486ab47117bb58f58c939a1', 'validated', '{"audio_key":"0c86734f6df8abfe5e76597fc00a275c718340dfae8d622ed4df3c8072f0e62e","entity_key":"d_first_greetings_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"b05fbe9a582734efc892a392bc973ffac400de51c486ab47117bb58f58c939a1","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/0c86734f6df8abfe5e76597fc00a275c718340dfae8d622ed4df3c8072f0e62e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_01:2 -> audio/generated/it-IT/dialogues/0ef19c7fe5259a4e35eeac57762698340b0e4fb861394a9e8c01b6a09bb1dfdb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('10cfbbdc-8755-5c86-9b36-9b4d821eaed5', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '50fe01febcb261fd2009ca4239af5b3586ffe97bc1fd28c3ee8fe5654eb279cc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1463a89c-2f2e-533a-a393-bb7f1efe7b16', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('10cfbbdc-8755-5c86-9b36-9b4d821eaed5', 1), '50fe01febcb261fd2009ca4239af5b3586ffe97bc1fd28c3ee8fe5654eb279cc',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/0ef19c7fe5259a4e35eeac57762698340b0e4fb861394a9e8c01b6a09bb1dfdb.mp3', 835, '2026-09-14 01:56:28.782041', '7947427221e4d157da033a96bd487a1ef8fdd5ffda9b1e399cabb49c2899085d', 'validated', '{"audio_key":"0ef19c7fe5259a4e35eeac57762698340b0e4fb861394a9e8c01b6a09bb1dfdb","entity_key":"d_first_sounds_01:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7947427221e4d157da033a96bd487a1ef8fdd5ffda9b1e399cabb49c2899085d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/0ef19c7fe5259a4e35eeac57762698340b0e4fb861394a9e8c01b6a09bb1dfdb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_01:3 -> audio/generated/it-IT/dialogues/129303a234c566fb0c2534d7fe50ae38c8ffaf232edffdb041f4492212e1f90f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('facaa12c-5472-57e8-a9b6-6b6184ef824a', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4422cfc049a7d84eeba066a4a44a1ca6cc9d00397956364165adde5112c3623'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5d6373a7-3eb0-5bde-9ebc-96969f23bdb9', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('facaa12c-5472-57e8-a9b6-6b6184ef824a', 1), 'c4422cfc049a7d84eeba066a4a44a1ca6cc9d00397956364165adde5112c3623',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/129303a234c566fb0c2534d7fe50ae38c8ffaf232edffdb041f4492212e1f90f.mp3', 1253, '2026-09-14 01:56:30.047017', '506650df6ef79351ee01676cc2c1225dffc59948635e311273a32b7c38f73c11', 'validated', '{"audio_key":"129303a234c566fb0c2534d7fe50ae38c8ffaf232edffdb041f4492212e1f90f","entity_key":"d_my_name_01:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"506650df6ef79351ee01676cc2c1225dffc59948635e311273a32b7c38f73c11","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/129303a234c566fb0c2534d7fe50ae38c8ffaf232edffdb041f4492212e1f90f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_02:3 -> audio/generated/it-IT/dialogues/137ef608266904754d6a25fb7721a0dd8864dc0006b8b008a3dc1328112e92db.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2f8c6b6a-915b-5535-ab93-e7c9892725c6', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '592162c0f250e4ba17a5ac6748cdec4975a72ab0a692ce5db34db8b354df2579'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3280dea7-31f3-5569-99a7-32a0b712e0ae', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2f8c6b6a-915b-5535-ab93-e7c9892725c6', 1), '592162c0f250e4ba17a5ac6748cdec4975a72ab0a692ce5db34db8b354df2579',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/137ef608266904754d6a25fb7721a0dd8864dc0006b8b008a3dc1328112e92db.mp3', 1071, '2026-09-14 01:56:29.775416', 'ee4c01b3b97669f3c17433ad321b35e49848d0e59115abc81093110ba107991f', 'validated', '{"audio_key":"137ef608266904754d6a25fb7721a0dd8864dc0006b8b008a3dc1328112e92db","entity_key":"d_first_greetings_02:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"ee4c01b3b97669f3c17433ad321b35e49848d0e59115abc81093110ba107991f","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/137ef608266904754d6a25fb7721a0dd8864dc0006b8b008a3dc1328112e92db.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_02:1 -> audio/generated/it-IT/dialogues/18ea52e241c2d15a2cc37fc1401cb7a091cf3c126e99a9822b23288bef1e1d69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('39a9c6d4-f3a4-57d4-97d0-e6d716715b7e', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7e7b5e3159b1071a0219eae5d7f6c45589568440078a94a4e9182d734da08712'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1f623b13-ee55-50eb-828f-ae061ecfd82f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('39a9c6d4-f3a4-57d4-97d0-e6d716715b7e', 1), '7e7b5e3159b1071a0219eae5d7f6c45589568440078a94a4e9182d734da08712',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/18ea52e241c2d15a2cc37fc1401cb7a091cf3c126e99a9822b23288bef1e1d69.mp3', 1253, '2026-09-14 01:56:30.757888', '73e094c646aace11a49fa4e2728432b41ba3dbda50cb466394ac840d417218ed', 'validated', '{"audio_key":"18ea52e241c2d15a2cc37fc1401cb7a091cf3c126e99a9822b23288bef1e1d69","entity_key":"d_first_objects_02:1","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"73e094c646aace11a49fa4e2728432b41ba3dbda50cb466394ac840d417218ed","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/18ea52e241c2d15a2cc37fc1401cb7a091cf3c126e99a9822b23288bef1e1d69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_02:3 -> audio/generated/it-IT/dialogues/2006f46c03f012c16cf237d15c4058fb070faf4b74e3e602d74412db83ac44c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('37e0985a-f20b-5328-baf8-db0d77800d89', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6696d6aeba1bb13999a64543e68872fd930ccdbc5af053d6e21e10a5e7bc0b15'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dd8e227a-588c-5b4b-883f-f27f4f930ede', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('37e0985a-f20b-5328-baf8-db0d77800d89', 1), '6696d6aeba1bb13999a64543e68872fd930ccdbc5af053d6e21e10a5e7bc0b15',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/2006f46c03f012c16cf237d15c4058fb070faf4b74e3e602d74412db83ac44c0.mp3', 1149, '2026-09-14 01:56:31.022023', '9e9d0711e2ba58b9bc70a5b148871e1425dc17bab3c7c8aa95da639cc7335f80', 'validated', '{"audio_key":"2006f46c03f012c16cf237d15c4058fb070faf4b74e3e602d74412db83ac44c0","entity_key":"d_alphabet_02:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"9e9d0711e2ba58b9bc70a5b148871e1425dc17bab3c7c8aa95da639cc7335f80","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/2006f46c03f012c16cf237d15c4058fb070faf4b74e3e602d74412db83ac44c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_02:3 -> audio/generated/it-IT/dialogues/233839aa292d506fc6223a9623969a03128fef09c34700998e4e9c6b214c165f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c0282bb8-60ec-5af9-a5f5-c550a60e8d97', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cec97fbc96cd0d47d1216f3e5060cd2a3c3df1b7aa256630c52093d88a80d004'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28966205-9935-5545-b780-dccbbd715c44', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c0282bb8-60ec-5af9-a5f5-c550a60e8d97', 1), 'cec97fbc96cd0d47d1216f3e5060cd2a3c3df1b7aa256630c52093d88a80d004',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/233839aa292d506fc6223a9623969a03128fef09c34700998e4e9c6b214c165f.mp3', 1280, '2026-09-14 01:56:31.717987', '2aaeec902224e82d2bae3f49b32edb4dd3f0a508b5b36679ada4a36deee82453', 'validated', '{"audio_key":"233839aa292d506fc6223a9623969a03128fef09c34700998e4e9c6b214c165f","entity_key":"d_survival_words_02:3","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"2aaeec902224e82d2bae3f49b32edb4dd3f0a508b5b36679ada4a36deee82453","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/233839aa292d506fc6223a9623969a03128fef09c34700998e4e9c6b214c165f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_02:2 -> audio/generated/it-IT/dialogues/24490cb6bbc4de45faada20073e08c1383ff6d6d1384efbcbffb2574f52fc9b8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b7505931-8230-5b35-a322-3e6bd261ae72', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '15d2bf9d7996d3dcab6d4f421615f46520aed9708b68e7ecbe3bfe9558133fa7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c0a5a2ca-bb64-5917-88ef-ed296bb650e6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b7505931-8230-5b35-a322-3e6bd261ae72', 1), '15d2bf9d7996d3dcab6d4f421615f46520aed9708b68e7ecbe3bfe9558133fa7',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/24490cb6bbc4de45faada20073e08c1383ff6d6d1384efbcbffb2574f52fc9b8.mp3', 731, '2026-09-14 01:56:31.966012', '9d6f06e0e9163890b9fbb86be53da038205a77d5e81469d236f4c908e55f18cd', 'validated', '{"audio_key":"24490cb6bbc4de45faada20073e08c1383ff6d6d1384efbcbffb2574f52fc9b8","entity_key":"d_polite_words_02:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9d6f06e0e9163890b9fbb86be53da038205a77d5e81469d236f4c908e55f18cd","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/24490cb6bbc4de45faada20073e08c1383ff6d6d1384efbcbffb2574f52fc9b8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_01:2 -> audio/generated/it-IT/dialogues/2507b16dd092582093eafb27a1ccc6ff7e9ee35728f1c2149e199066e6071c1a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e24ad3e5-49bd-5781-8d81-9cc5fe5dd2b1', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e6d5917185cf69a495ae5fefd44146df1b03cf1dd2667268bcd05e86333d6dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2cab3616-6219-537c-8681-dbbeed5d52cb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e24ad3e5-49bd-5781-8d81-9cc5fe5dd2b1', 1), '6e6d5917185cf69a495ae5fefd44146df1b03cf1dd2667268bcd05e86333d6dc',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/2507b16dd092582093eafb27a1ccc6ff7e9ee35728f1c2149e199066e6071c1a.mp3', 835, '2026-09-14 01:56:32.692065', '3b75745eb3194581a4663a7d48b9f22bedb084c0d3f2e5030d79aea2f79c17f5', 'validated', '{"audio_key":"2507b16dd092582093eafb27a1ccc6ff7e9ee35728f1c2149e199066e6071c1a","entity_key":"d_polite_words_01:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"3b75745eb3194581a4663a7d48b9f22bedb084c0d3f2e5030d79aea2f79c17f5","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/2507b16dd092582093eafb27a1ccc6ff7e9ee35728f1c2149e199066e6071c1a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_02:3 -> audio/generated/it-IT/dialogues/2a5cefc5bb28cd799ecca0da560ab10a029f80a5742fc55b33ea3f2cfe271fcd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('58428694-907e-5e72-afcf-f2ac84b2e815', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c0f4017aafa775118a2825081c8ba477b82bb362e3265707604acdef6648eb7e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4423ebf2-f45b-5580-b30f-5ff2c1dfe68a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('58428694-907e-5e72-afcf-f2ac84b2e815', 1), 'c0f4017aafa775118a2825081c8ba477b82bb362e3265707604acdef6648eb7e',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/2a5cefc5bb28cd799ecca0da560ab10a029f80a5742fc55b33ea3f2cfe271fcd.mp3', 1071, '2026-09-14 01:56:32.982137', 'c9538c9007a73367c6ccde9b8b2f33fc042bf9e4a33a071f054233842139c6cf', 'validated', '{"audio_key":"2a5cefc5bb28cd799ecca0da560ab10a029f80a5742fc55b33ea3f2cfe271fcd","entity_key":"d_how_are_you_02:3","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c9538c9007a73367c6ccde9b8b2f33fc042bf9e4a33a071f054233842139c6cf","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/2a5cefc5bb28cd799ecca0da560ab10a029f80a5742fc55b33ea3f2cfe271fcd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_01:2 -> audio/generated/it-IT/dialogues/349a1ddf91b120d299c963c5c5b932e0cec1509658cf95aa4f19c5c2c4c0a79d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a2e8627c-66ce-5c25-bbab-58762ea802df', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65f3c469a1b93490f0f8af4f4b7df299b8c791e6b2b7929a623619a47d96d4ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('86929200-e26f-55f6-9142-077aa0b7346f', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a2e8627c-66ce-5c25-bbab-58762ea802df', 1), '65f3c469a1b93490f0f8af4f4b7df299b8c791e6b2b7929a623619a47d96d4ae',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/349a1ddf91b120d299c963c5c5b932e0cec1509658cf95aa4f19c5c2c4c0a79d.mp3', 1201, '2026-09-14 01:56:33.618966', '4eb188b416a3b98927ae6c00812c9a03e1983891731455e1c2dae2187270bd99', 'validated', '{"audio_key":"349a1ddf91b120d299c963c5c5b932e0cec1509658cf95aa4f19c5c2c4c0a79d","entity_key":"d_first_greetings_01:2","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"4eb188b416a3b98927ae6c00812c9a03e1983891731455e1c2dae2187270bd99","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/349a1ddf91b120d299c963c5c5b932e0cec1509658cf95aa4f19c5c2c4c0a79d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_02:2 -> audio/generated/it-IT/dialogues/37b68e3e57218259af62f4289be424eafca1e456505daa07787d4f3767406838.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b0c42579-49a1-5549-9bcd-cc351c9902aa', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '51f81b2350ce100755c81e177cfe94042350957659cebcecd6fa0ff42c6a1509'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4cf82538-fd63-50c1-ae61-59511cd575a8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b0c42579-49a1-5549-9bcd-cc351c9902aa', 1), '51f81b2350ce100755c81e177cfe94042350957659cebcecd6fa0ff42c6a1509',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/37b68e3e57218259af62f4289be424eafca1e456505daa07787d4f3767406838.mp3', 1384, '2026-09-14 01:56:33.998586', '54e354f69f2634c18ae7f61969f9a1560d76ed8d73676e1d966edd74c1153727', 'validated', '{"audio_key":"37b68e3e57218259af62f4289be424eafca1e456505daa07787d4f3767406838","entity_key":"d_numbers_0_10_02:2","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"54e354f69f2634c18ae7f61969f9a1560d76ed8d73676e1d966edd74c1153727","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/37b68e3e57218259af62f4289be424eafca1e456505daa07787d4f3767406838.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_01:2 -> audio/generated/it-IT/dialogues/381263ddf2af881c6a280735390958d0ab7c3abfe42b4039c12f4f0a1853db90.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('69295c34-fd43-5ace-9300-ba948eab7894', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '40df7e969d82c25eb63b5089c079a55298ff1265a5e060954764b47999ebe29e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f3543e48-a280-5e69-abbb-89b232767a88', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('69295c34-fd43-5ace-9300-ba948eab7894', 1), '40df7e969d82c25eb63b5089c079a55298ff1265a5e060954764b47999ebe29e',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/381263ddf2af881c6a280735390958d0ab7c3abfe42b4039c12f4f0a1853db90.mp3', 1697, '2026-09-14 01:56:34.640771', '43b9c4b0b6d812ae5eab5875a0aa2ec24c73424187ee9377594b73c6803c33a2', 'validated', '{"audio_key":"381263ddf2af881c6a280735390958d0ab7c3abfe42b4039c12f4f0a1853db90","entity_key":"d_how_are_you_01:2","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"43b9c4b0b6d812ae5eab5875a0aa2ec24c73424187ee9377594b73c6803c33a2","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/381263ddf2af881c6a280735390958d0ab7c3abfe42b4039c12f4f0a1853db90.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_01:4 -> audio/generated/it-IT/dialogues/38740e27fe813d06c3acb2f9d5a39be1ae9550cb8299b6ffecc769309d655823.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('4ba84dee-38fc-558c-a99f-ad18a736b42c', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '462d76210b11605ae6a62d80dad2b5b9637c04e8e47da70d57384d375a224762'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7cb0aa45-2eb4-5ecc-a8ca-a8197cd76bda', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('4ba84dee-38fc-558c-a99f-ad18a736b42c', 1), '462d76210b11605ae6a62d80dad2b5b9637c04e8e47da70d57384d375a224762',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/38740e27fe813d06c3acb2f9d5a39be1ae9550cb8299b6ffecc769309d655823.mp3', 862, '2026-09-14 01:56:34.950731', '1cf471ca8d22303e902e0d43dfad0181e6b5ee3aa462e9d974795c3818384850', 'validated', '{"audio_key":"38740e27fe813d06c3acb2f9d5a39be1ae9550cb8299b6ffecc769309d655823","entity_key":"d_polite_words_01:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"1cf471ca8d22303e902e0d43dfad0181e6b5ee3aa462e9d974795c3818384850","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/38740e27fe813d06c3acb2f9d5a39be1ae9550cb8299b6ffecc769309d655823.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_02:4 -> audio/generated/it-IT/dialogues/3902c35d585dff6317984c7b42d08801ed746fa474c149f075df86e3f53af276.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('338fad4a-6209-500a-ba06-c34261b1d27f', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e6d5917185cf69a495ae5fefd44146df1b03cf1dd2667268bcd05e86333d6dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3a45a10a-d2ea-53ce-a619-6598ca56b6c5', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('338fad4a-6209-500a-ba06-c34261b1d27f', 1), '6e6d5917185cf69a495ae5fefd44146df1b03cf1dd2667268bcd05e86333d6dc',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/3902c35d585dff6317984c7b42d08801ed746fa474c149f075df86e3f53af276.mp3', 835, '2026-09-14 01:56:35.632543', 'acadc14480ee4201d0b3fd8f88683fc3140fa989316d80dbd0a85b1a6a9458b0', 'validated', '{"audio_key":"3902c35d585dff6317984c7b42d08801ed746fa474c149f075df86e3f53af276","entity_key":"d_survival_words_02:4","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"acadc14480ee4201d0b3fd8f88683fc3140fa989316d80dbd0a85b1a6a9458b0","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/3902c35d585dff6317984c7b42d08801ed746fa474c149f075df86e3f53af276.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_01:1 -> audio/generated/it-IT/dialogues/3af3115fed5472930182032a906cd42600ef7f321611e9f0e29a39dd38c71278.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1015e451-e962-5bcf-86e2-601118a8812b', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1c2cb82cc36a0496a0a4cbc00fe32c8687e0d252b42ebfe014342fb45ee688ef'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ed4a91b-6934-5bda-8f7a-44f3af9f7102', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1015e451-e962-5bcf-86e2-601118a8812b', 1), '1c2cb82cc36a0496a0a4cbc00fe32c8687e0d252b42ebfe014342fb45ee688ef',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/3af3115fed5472930182032a906cd42600ef7f321611e9f0e29a39dd38c71278.mp3', 1985, '2026-09-14 01:56:35.962444', 'f60136b7c30b071ec959fb9b53b9c2973e2cf4f854df984d6c68915f444c9f28', 'validated', '{"audio_key":"3af3115fed5472930182032a906cd42600ef7f321611e9f0e29a39dd38c71278","entity_key":"d_my_name_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"f60136b7c30b071ec959fb9b53b9c2973e2cf4f854df984d6c68915f444c9f28","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/3af3115fed5472930182032a906cd42600ef7f321611e9f0e29a39dd38c71278.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_02:4 -> audio/generated/it-IT/dialogues/3f569d21cee3fb3cdcbda2f610f758c1d77a2feee6b2810c844a5e50cca634c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('49e9fb04-3e2c-5f61-a7ab-4011323bbe5a', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fdac955a2fcf64a60a0b9696942087280f71101a64ffcf0a50f3efee2a80313d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d45c5c83-80e7-54eb-9b1c-a35c27104354', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('49e9fb04-3e2c-5f61-a7ab-4011323bbe5a', 1), 'fdac955a2fcf64a60a0b9696942087280f71101a64ffcf0a50f3efee2a80313d',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/3f569d21cee3fb3cdcbda2f610f758c1d77a2feee6b2810c844a5e50cca634c0.mp3', 966, '2026-09-14 01:56:36.574754', 'ea72426911e46678ce77f31c3607ec65a56ee8e9da1fc352e69929091917f18b', 'validated', '{"audio_key":"3f569d21cee3fb3cdcbda2f610f758c1d77a2feee6b2810c844a5e50cca634c0","entity_key":"d_how_are_you_02:4","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ea72426911e46678ce77f31c3607ec65a56ee8e9da1fc352e69929091917f18b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/3f569d21cee3fb3cdcbda2f610f758c1d77a2feee6b2810c844a5e50cca634c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_01:3 -> audio/generated/it-IT/dialogues/3f569d21cee3fb3cdcbda2f610f758c1d77a2feee6b2810c844a5e50cca634c0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('60f9c759-0430-557d-b382-9544327b297b', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fdac955a2fcf64a60a0b9696942087280f71101a64ffcf0a50f3efee2a80313d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4d7674c4-95b7-5390-b127-31b0e42199ef', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('60f9c759-0430-557d-b382-9544327b297b', 1), 'fdac955a2fcf64a60a0b9696942087280f71101a64ffcf0a50f3efee2a80313d',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/3f569d21cee3fb3cdcbda2f610f758c1d77a2feee6b2810c844a5e50cca634c0.mp3', 966, '2026-09-14 01:56:36.574754', 'ea72426911e46678ce77f31c3607ec65a56ee8e9da1fc352e69929091917f18b', 'validated', '{"audio_key":"3f569d21cee3fb3cdcbda2f610f758c1d77a2feee6b2810c844a5e50cca634c0","entity_key":"d_polite_words_01:3","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ea72426911e46678ce77f31c3607ec65a56ee8e9da1fc352e69929091917f18b","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/3f569d21cee3fb3cdcbda2f610f758c1d77a2feee6b2810c844a5e50cca634c0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_01:1 -> audio/generated/it-IT/dialogues/42db1d3ac5d99364c67d8e5e3158774fe0cdf3d24fb0402796327e6f18795ad6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3a6801a3-601f-581f-ab43-0bd30fc65c4c', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73e7521b83027a36162457e7a3ae4f1438e09f042d18859e8d359249e418797f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e453a494-2cc5-52b2-8840-8e09761366d1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3a6801a3-601f-581f-ab43-0bd30fc65c4c', 1), '73e7521b83027a36162457e7a3ae4f1438e09f042d18859e8d359249e418797f',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/42db1d3ac5d99364c67d8e5e3158774fe0cdf3d24fb0402796327e6f18795ad6.mp3', 1149, '2026-09-14 01:56:37.016737', '69c43c06996a127f31084c3ee12b9893e48361c9d04f774e4ab68052c3893524', 'validated', '{"audio_key":"42db1d3ac5d99364c67d8e5e3158774fe0cdf3d24fb0402796327e6f18795ad6","entity_key":"d_first_objects_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"69c43c06996a127f31084c3ee12b9893e48361c9d04f774e4ab68052c3893524","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/42db1d3ac5d99364c67d8e5e3158774fe0cdf3d24fb0402796327e6f18795ad6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_01:1 -> audio/generated/it-IT/dialogues/45a073debd853620d3e3bcc11a39a11cd366d0b2ece57d50f81cb5a0a20f1460.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('16c55f93-2b6a-51db-a7ee-a3db87f44081', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '38e5f62352a5fa887c34b6eba7fdd0198792dac4d8dc031539ef93edbf33a5f5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5aa30c28-da97-5928-ac69-44794069fdb4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('16c55f93-2b6a-51db-a7ee-a3db87f44081', 1), '38e5f62352a5fa887c34b6eba7fdd0198792dac4d8dc031539ef93edbf33a5f5',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/45a073debd853620d3e3bcc11a39a11cd366d0b2ece57d50f81cb5a0a20f1460.mp3', 1071, '2026-09-14 01:56:37.516497', '883265c21d1d51992a468ff9b2790d80fabe7819ed861c78469739603eb352fb', 'validated', '{"audio_key":"45a073debd853620d3e3bcc11a39a11cd366d0b2ece57d50f81cb5a0a20f1460","entity_key":"d_first_sounds_01:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"883265c21d1d51992a468ff9b2790d80fabe7819ed861c78469739603eb352fb","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/45a073debd853620d3e3bcc11a39a11cd366d0b2ece57d50f81cb5a0a20f1460.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_01:4 -> audio/generated/it-IT/dialogues/472623e9729a1af77466e48f1d4f0c3897bbfa2cb264756b0727a0b874ea453e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('71c5d411-942b-5a77-b873-9ecb780e05aa', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eda3d1f8e0f938684dc59f9f5a6a0542da796c8eb70ec710f9fd6182e7fd7b46'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8fcc5598-8614-5f68-af8e-29d9c324259a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('71c5d411-942b-5a77-b873-9ecb780e05aa', 1), 'eda3d1f8e0f938684dc59f9f5a6a0542da796c8eb70ec710f9fd6182e7fd7b46',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/472623e9729a1af77466e48f1d4f0c3897bbfa2cb264756b0727a0b874ea453e.mp3', 1097, '2026-09-14 01:56:37.967671', '3395ebd1a1d0b1cda37c0023a78714cf131af472d1270acea1ebbc2ac52a2514', 'validated', '{"audio_key":"472623e9729a1af77466e48f1d4f0c3897bbfa2cb264756b0727a0b874ea453e","entity_key":"d_first_objects_01:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3395ebd1a1d0b1cda37c0023a78714cf131af472d1270acea1ebbc2ac52a2514","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/472623e9729a1af77466e48f1d4f0c3897bbfa2cb264756b0727a0b874ea453e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_02:2 -> audio/generated/it-IT/dialogues/51831b75a71f0d916786d91649dcacc1303cc8e908d9feaf42646bbfea5f8448.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('53317b27-e426-59c8-8c50-109c6a143b1f', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '909bc83ccc08590483d4f87321b5506e2f9116210f53de5eba7580125575a99f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f0b0f13-7f15-50a3-abc5-06255e03dc55', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('53317b27-e426-59c8-8c50-109c6a143b1f', 1), '909bc83ccc08590483d4f87321b5506e2f9116210f53de5eba7580125575a99f',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/51831b75a71f0d916786d91649dcacc1303cc8e908d9feaf42646bbfea5f8448.mp3', 1280, '2026-09-14 01:56:38.484760', '28aa5528ced09833ec9cd0566d0e7e26262cd347cc709f6b506b75783b1e94cd', 'validated', '{"audio_key":"51831b75a71f0d916786d91649dcacc1303cc8e908d9feaf42646bbfea5f8448","entity_key":"d_how_are_you_02:2","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"28aa5528ced09833ec9cd0566d0e7e26262cd347cc709f6b506b75783b1e94cd","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/51831b75a71f0d916786d91649dcacc1303cc8e908d9feaf42646bbfea5f8448.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_02:2 -> audio/generated/it-IT/dialogues/52342fd4698b8dc37b7cdde6ad747de621f0c841fa7d5f3cf276056abf61b095.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('99e569ce-7ae2-5efc-8fc6-7c65ac4958a2', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e20d754eff7eb51a0e48aab0d310d66539174fd788f95c0447b372f19c68f3a4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bbe4f945-7921-5a16-b392-000bf6dd8459', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('99e569ce-7ae2-5efc-8fc6-7c65ac4958a2', 1), 'e20d754eff7eb51a0e48aab0d310d66539174fd788f95c0447b372f19c68f3a4',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/52342fd4698b8dc37b7cdde6ad747de621f0c841fa7d5f3cf276056abf61b095.mp3', 1097, '2026-09-14 01:56:38.920455', 'ccd2403d0e8505a45af3992c01746d3f9011edad696d8871fa427b8eab386599', 'validated', '{"audio_key":"52342fd4698b8dc37b7cdde6ad747de621f0c841fa7d5f3cf276056abf61b095","entity_key":"d_first_conversation_02:2","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"ccd2403d0e8505a45af3992c01746d3f9011edad696d8871fa427b8eab386599","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/52342fd4698b8dc37b7cdde6ad747de621f0c841fa7d5f3cf276056abf61b095.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_02:1 -> audio/generated/it-IT/dialogues/56be5ed4d13fbcd15e26f36a5f21f18b4a2fca16481956bcceb75288a45ffadf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('86d0263a-7433-5ab9-a7c3-604274f4d6b4', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '546485e593828d06460324429f869a4c19235c61a7b346926310c978f781722a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1bed3465-9124-5f8b-8b0c-add459ab1f40', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('86d0263a-7433-5ab9-a7c3-604274f4d6b4', 1), '546485e593828d06460324429f869a4c19235c61a7b346926310c978f781722a',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/56be5ed4d13fbcd15e26f36a5f21f18b4a2fca16481956bcceb75288a45ffadf.mp3', 1280, '2026-09-14 01:56:39.430551', '24ca4c513941a66b61566bd8a1abf35e933712d8409106720cd2af96fa37c3ab', 'validated', '{"audio_key":"56be5ed4d13fbcd15e26f36a5f21f18b4a2fca16481956bcceb75288a45ffadf","entity_key":"d_how_are_you_02:1","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"24ca4c513941a66b61566bd8a1abf35e933712d8409106720cd2af96fa37c3ab","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/56be5ed4d13fbcd15e26f36a5f21f18b4a2fca16481956bcceb75288a45ffadf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_02:2 -> audio/generated/it-IT/dialogues/5e3e020560f44599c1e1e1781466582aed4d3b4d32b21a6d58f7abe63284c62e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('916237fc-1feb-54d6-bf92-af450a6a0339', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca662f696c059c36eef3d25bf35e9c433ae0b062431429c7d5571779fe83661c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('35aef9d1-4a67-5e2c-9c7b-380f3253c91a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('916237fc-1feb-54d6-bf92-af450a6a0339', 1), 'ca662f696c059c36eef3d25bf35e9c433ae0b062431429c7d5571779fe83661c',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/5e3e020560f44599c1e1e1781466582aed4d3b4d32b21a6d58f7abe63284c62e.mp3', 1384, '2026-09-14 01:56:39.882981', '0cfab15d2dbc8a7189c240285427ae2d86ae65af46378416a3c4975e92edf692', 'validated', '{"audio_key":"5e3e020560f44599c1e1e1781466582aed4d3b4d32b21a6d58f7abe63284c62e","entity_key":"d_first_objects_02:2","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"0cfab15d2dbc8a7189c240285427ae2d86ae65af46378416a3c4975e92edf692","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/5e3e020560f44599c1e1e1781466582aed4d3b4d32b21a6d58f7abe63284c62e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_01:4 -> audio/generated/it-IT/dialogues/67fa6654358d4facf243d40f45acdb88deab3c53b075c9bcef35f471a32cf555.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('cde7cf92-ac0a-5b5b-9954-aefc46f7f55e', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f37ceb61a9e5ab560ce3d6ad276435996818a6be83912dad830ce9f8b2dde84'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7a2342f7-8270-5a68-9ede-89e1e549a6b3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('cde7cf92-ac0a-5b5b-9954-aefc46f7f55e', 1), '4f37ceb61a9e5ab560ce3d6ad276435996818a6be83912dad830ce9f8b2dde84',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/67fa6654358d4facf243d40f45acdb88deab3c53b075c9bcef35f471a32cf555.mp3', 835, '2026-09-14 01:56:40.337506', 'cc1c37ae3e154c24b54462e2d8792bad0ebff9ce74b032a35df7f3fc173a558a', 'validated', '{"audio_key":"67fa6654358d4facf243d40f45acdb88deab3c53b075c9bcef35f471a32cf555","entity_key":"d_numbers_0_10_01:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"cc1c37ae3e154c24b54462e2d8792bad0ebff9ce74b032a35df7f3fc173a558a","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/67fa6654358d4facf243d40f45acdb88deab3c53b075c9bcef35f471a32cf555.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_01:3 -> audio/generated/it-IT/dialogues/6cc448354064679ecc57dd8aabbba0a3eb3f7ac020b223d1e2326fb0389bfbb3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5c0d888d-57e2-5157-ba9f-73f9d6ede60f', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '124ab2243f00fe34dfa30b50e734913bf1ba7396feb64201536ec5c77b876aa7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('380d1876-f9e6-5eb3-a272-66ad811e55ae', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5c0d888d-57e2-5157-ba9f-73f9d6ede60f', 1), '124ab2243f00fe34dfa30b50e734913bf1ba7396feb64201536ec5c77b876aa7',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/6cc448354064679ecc57dd8aabbba0a3eb3f7ac020b223d1e2326fb0389bfbb3.mp3', 862, '2026-09-14 01:56:40.804879', 'e142532c88f9c4d62d9e041a932e019ed1e1d8e59a8bb7ae441ff6eb8f090e41', 'validated', '{"audio_key":"6cc448354064679ecc57dd8aabbba0a3eb3f7ac020b223d1e2326fb0389bfbb3","entity_key":"d_first_greetings_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"e142532c88f9c4d62d9e041a932e019ed1e1d8e59a8bb7ae441ff6eb8f090e41","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/6cc448354064679ecc57dd8aabbba0a3eb3f7ac020b223d1e2326fb0389bfbb3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_01:4 -> audio/generated/it-IT/dialogues/6fa949dc75d63f14979869beea4b4924ecfc0097e73aafca1a2ce374b78692b9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('35190b89-ee5d-5946-88cd-66b66480c863', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c799499878cb8e4e12def4b4e7b209d09fdedf4048e4db743b86cccaf77ebd24'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1ae366e6-2ea5-5ce4-938a-b86aaeedb0a4', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('35190b89-ee5d-5946-88cd-66b66480c863', 1), 'c799499878cb8e4e12def4b4e7b209d09fdedf4048e4db743b86cccaf77ebd24',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/6fa949dc75d63f14979869beea4b4924ecfc0097e73aafca1a2ce374b78692b9.mp3', 1253, '2026-09-14 01:56:41.275670', '1ddf11ee7dfc37d8604813dedad6467da58afdaaf199af7d777f90debeed51a5', 'validated', '{"audio_key":"6fa949dc75d63f14979869beea4b4924ecfc0097e73aafca1a2ce374b78692b9","entity_key":"d_first_conversation_01:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"1ddf11ee7dfc37d8604813dedad6467da58afdaaf199af7d777f90debeed51a5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/6fa949dc75d63f14979869beea4b4924ecfc0097e73aafca1a2ce374b78692b9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_02:1 -> audio/generated/it-IT/dialogues/7373f1253436e643eb25cfce1e941d2c0e14e9b6907ec4efab618d302fd8db08.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b7d426b4-827b-5c97-b403-aada82e7181e', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '391271d4a741a18ed8f0656d5387251f14a79880795e5eb7a7ea5d7c08aea324'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9881191c-f02d-5c8d-9cab-333accb8a3b7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b7d426b4-827b-5c97-b403-aada82e7181e', 1), '391271d4a741a18ed8f0656d5387251f14a79880795e5eb7a7ea5d7c08aea324',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/7373f1253436e643eb25cfce1e941d2c0e14e9b6907ec4efab618d302fd8db08.mp3', 1619, '2026-09-14 01:56:41.797835', 'e98a7d42b5bcb6dcf151d6aef46f44eb78ded5c36be51beb80794af3429a3d9e', 'validated', '{"audio_key":"7373f1253436e643eb25cfce1e941d2c0e14e9b6907ec4efab618d302fd8db08","entity_key":"d_my_name_02:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"e98a7d42b5bcb6dcf151d6aef46f44eb78ded5c36be51beb80794af3429a3d9e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/7373f1253436e643eb25cfce1e941d2c0e14e9b6907ec4efab618d302fd8db08.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_02:4 -> audio/generated/it-IT/dialogues/77a95771911c33a65dcfd9f51a6da56378dd48e56f0fd4f0918f42ed0a8d9049.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ceccf839-804b-58c3-a408-b2d0d66cb1f8', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5df9d273c968c901ebb0dbb3446b440ec5fd950de503d72cf9eeee1c21007c8d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('910fad99-f0ff-5203-99cc-3cec442d25d2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ceccf839-804b-58c3-a408-b2d0d66cb1f8', 1), '5df9d273c968c901ebb0dbb3446b440ec5fd950de503d72cf9eeee1c21007c8d',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/77a95771911c33a65dcfd9f51a6da56378dd48e56f0fd4f0918f42ed0a8d9049.mp3', 1671, '2026-09-14 01:56:42.304957', 'df16bb0f3666e40acd65abd8aa4ac0c924ec1741cecd56a6cb06207c4a9f5b4a', 'validated', '{"audio_key":"77a95771911c33a65dcfd9f51a6da56378dd48e56f0fd4f0918f42ed0a8d9049","entity_key":"d_alphabet_02:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"df16bb0f3666e40acd65abd8aa4ac0c924ec1741cecd56a6cb06207c4a9f5b4a","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/77a95771911c33a65dcfd9f51a6da56378dd48e56f0fd4f0918f42ed0a8d9049.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_01:1 -> audio/generated/it-IT/dialogues/7887fe64cb76a93e9940d7a70237626df7c831162b8dd3411871428cc0dd5608.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7cf75231-82ed-527b-8798-a376b8b9d83b', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7c83e4ceb30651c6f692091646e8d12af3a9045487e74b382144f51daa66b119'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('48dbb02f-1e3d-54e4-ae6b-1dfa5e8cb9c0', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7cf75231-82ed-527b-8798-a376b8b9d83b', 1), '7c83e4ceb30651c6f692091646e8d12af3a9045487e74b382144f51daa66b119',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/7887fe64cb76a93e9940d7a70237626df7c831162b8dd3411871428cc0dd5608.mp3', 1071, '2026-09-14 01:56:42.791996', '1a0c88de7026c4f1358eed54330678f35b1e4c5a9dd81e338c15c35d8fd729cc', 'validated', '{"audio_key":"7887fe64cb76a93e9940d7a70237626df7c831162b8dd3411871428cc0dd5608","entity_key":"d_numbers_0_10_01:1","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"1a0c88de7026c4f1358eed54330678f35b1e4c5a9dd81e338c15c35d8fd729cc","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/7887fe64cb76a93e9940d7a70237626df7c831162b8dd3411871428cc0dd5608.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_01:2 -> audio/generated/it-IT/dialogues/79e4b5bd334631cc0ff765e207ad8b4c75f72bbb6363cf362bd66f7e5d666746.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1d1feb88-d649-5827-831d-1cf323cf91a0', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4baaeb9e9c49113429783906ab81987cb8dce4ed7d1d598011ba88d92f03d3b9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4508f263-a42a-5cf6-8623-00a547715b22', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1d1feb88-d649-5827-831d-1cf323cf91a0', 1), '4baaeb9e9c49113429783906ab81987cb8dce4ed7d1d598011ba88d92f03d3b9',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/79e4b5bd334631cc0ff765e207ad8b4c75f72bbb6363cf362bd66f7e5d666746.mp3', 1201, '2026-09-14 01:56:43.390865', '9bf5eb8685f6b0202d0e0bbd9fbbdd1e71ffd9f78c4322a756fdda426ab9142e', 'validated', '{"audio_key":"79e4b5bd334631cc0ff765e207ad8b4c75f72bbb6363cf362bd66f7e5d666746","entity_key":"d_first_objects_01:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"9bf5eb8685f6b0202d0e0bbd9fbbdd1e71ffd9f78c4322a756fdda426ab9142e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/79e4b5bd334631cc0ff765e207ad8b4c75f72bbb6363cf362bd66f7e5d666746.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_02:1 -> audio/generated/it-IT/dialogues/7b79ad871d90f91d88a646392e367621266d61176481939e0e259da82feb8e5f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('1a7a7abb-9707-5879-a140-8097b7c68203', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '33b53c228a68c34b62ddfaaf21109e6878c79d89904a3213aaf826517f1c1e12'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d80fe1df-2adb-5189-957e-963f41e384bb', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('1a7a7abb-9707-5879-a140-8097b7c68203', 1), '33b53c228a68c34b62ddfaaf21109e6878c79d89904a3213aaf826517f1c1e12',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/7b79ad871d90f91d88a646392e367621266d61176481939e0e259da82feb8e5f.mp3', 1097, '2026-09-14 01:56:43.740369', '7fa6277e4a83e33d4d64c098e5717063cf12aead745bbe76c57e1504106da221', 'validated', '{"audio_key":"7b79ad871d90f91d88a646392e367621266d61176481939e0e259da82feb8e5f","entity_key":"d_numbers_0_10_02:1","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"7fa6277e4a83e33d4d64c098e5717063cf12aead745bbe76c57e1504106da221","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/7b79ad871d90f91d88a646392e367621266d61176481939e0e259da82feb8e5f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_01:4 -> audio/generated/it-IT/dialogues/7db117f73877ad9b5ca3679ca61f2b21e2512645b3729c88175148604b2c319f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('bbaca48b-8821-561e-969e-97330b6725a0', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '336f4a461c90296827d427ac0d5967405fcdb0a062edcd59bc3d1d56ed296e03'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fad99c41-2449-59fd-bac1-fc7b22e6f029', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('bbaca48b-8821-561e-969e-97330b6725a0', 1), '336f4a461c90296827d427ac0d5967405fcdb0a062edcd59bc3d1d56ed296e03',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/7db117f73877ad9b5ca3679ca61f2b21e2512645b3729c88175148604b2c319f.mp3', 914, '2026-09-14 01:56:44.328874', '213d3e8fcb60563661c263e8a08081c3b46a626381e836b41527eecb047e0b6d', 'validated', '{"audio_key":"7db117f73877ad9b5ca3679ca61f2b21e2512645b3729c88175148604b2c319f","entity_key":"d_how_are_you_01:4","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"213d3e8fcb60563661c263e8a08081c3b46a626381e836b41527eecb047e0b6d","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/7db117f73877ad9b5ca3679ca61f2b21e2512645b3729c88175148604b2c319f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_02:2 -> audio/generated/it-IT/dialogues/7ea9cce18655b935507898fad4ba89c69baaf61ea9a0f22bca7cd3c18c67abe6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5b9e7e38-0485-5ec3-ae64-c34716a7755a', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '664ff1243fbbab2bf72a9c29469a06240308d5a05d4ab501a8f6f4593a05d749'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a62a6b1d-38ba-51d1-8037-3932eaee6479', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5b9e7e38-0485-5ec3-ae64-c34716a7755a', 1), '664ff1243fbbab2bf72a9c29469a06240308d5a05d4ab501a8f6f4593a05d749',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/7ea9cce18655b935507898fad4ba89c69baaf61ea9a0f22bca7cd3c18c67abe6.mp3', 1671, '2026-09-14 01:56:44.743869', 'c9a95873a5cc28275dcf3f305cdcf375083c936759d75c3fdd04adce20757f77', 'validated', '{"audio_key":"7ea9cce18655b935507898fad4ba89c69baaf61ea9a0f22bca7cd3c18c67abe6","entity_key":"d_my_name_02:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c9a95873a5cc28275dcf3f305cdcf375083c936759d75c3fdd04adce20757f77","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/7ea9cce18655b935507898fad4ba89c69baaf61ea9a0f22bca7cd3c18c67abe6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_02:1 -> audio/generated/it-IT/dialogues/80f677072b84d44d80aecfb4427ae8ce5d95a7f0c0768d81e5d6dd8e0c1859fa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('26ddc2b2-15fb-5412-b758-1c1c12670876', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '61788135d921fcd77421b31ae9e83d0bdcac92f75784fc1b3a950e2bf46a90bf'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e0275dd9-6871-58e7-8ea7-aa2fd10eea68', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('26ddc2b2-15fb-5412-b758-1c1c12670876', 1), '61788135d921fcd77421b31ae9e83d0bdcac92f75784fc1b3a950e2bf46a90bf',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/80f677072b84d44d80aecfb4427ae8ce5d95a7f0c0768d81e5d6dd8e0c1859fa.mp3', 1018, '2026-09-14 01:56:45.289976', 'd755aa1a447652dcd24b1793999cde0ed364411cf681031018c75461ccc14367', 'validated', '{"audio_key":"80f677072b84d44d80aecfb4427ae8ce5d95a7f0c0768d81e5d6dd8e0c1859fa","entity_key":"d_first_greetings_02:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"d755aa1a447652dcd24b1793999cde0ed364411cf681031018c75461ccc14367","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/80f677072b84d44d80aecfb4427ae8ce5d95a7f0c0768d81e5d6dd8e0c1859fa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_02:4 -> audio/generated/it-IT/dialogues/827ffee150cd1ebd5f59c44faeb842648de2e12a81a303e021aa3c370afcf21f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9ef9764c-7c34-5546-99b8-8808e115d2f6', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '329c62da6abcecd89e4b3955717f53b896f74f8f7d9c2132cc3e4464a4109ef2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6a7543e6-90b6-5020-8ada-17064f633689', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9ef9764c-7c34-5546-99b8-8808e115d2f6', 1), '329c62da6abcecd89e4b3955717f53b896f74f8f7d9c2132cc3e4464a4109ef2',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/827ffee150cd1ebd5f59c44faeb842648de2e12a81a303e021aa3c370afcf21f.mp3', 1201, '2026-09-14 01:56:45.729483', 'f6fe26cfb14b58fe08bff3afb1f9cd299fd01aca9250f5fed9ad4c2fe4ae8f94', 'validated', '{"audio_key":"827ffee150cd1ebd5f59c44faeb842648de2e12a81a303e021aa3c370afcf21f","entity_key":"d_numbers_0_10_02:4","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"f6fe26cfb14b58fe08bff3afb1f9cd299fd01aca9250f5fed9ad4c2fe4ae8f94","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/827ffee150cd1ebd5f59c44faeb842648de2e12a81a303e021aa3c370afcf21f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_02:1 -> audio/generated/it-IT/dialogues/848200b0387753376f65b42fa8bafbb4219b93dec3a453f511c66da27ec02d7c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('78326416-0044-52c3-9ccd-4dc1810f5744', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a6813165511f1d0ae10705e5b2197706a896a964e34a959e29d395f3559d964'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('634852b9-3236-5f78-9904-91ea119484f8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('78326416-0044-52c3-9ccd-4dc1810f5744', 1), '9a6813165511f1d0ae10705e5b2197706a896a964e34a959e29d395f3559d964',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/848200b0387753376f65b42fa8bafbb4219b93dec3a453f511c66da27ec02d7c.mp3', 1071, '2026-09-14 01:56:46.230000', '9955cf6f197692a7b88b5e76157052e728f2c6f02b1fa43c6d9d985395c9b63b', 'validated', '{"audio_key":"848200b0387753376f65b42fa8bafbb4219b93dec3a453f511c66da27ec02d7c","entity_key":"d_survival_words_02:1","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"9955cf6f197692a7b88b5e76157052e728f2c6f02b1fa43c6d9d985395c9b63b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/848200b0387753376f65b42fa8bafbb4219b93dec3a453f511c66da27ec02d7c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_02:4 -> audio/generated/it-IT/dialogues/862d192610e2056d50ab389e68eac13461df21d9c5ae303b7b2f6b1f40552b3f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('59afb09e-0510-548f-bd1d-1b7bec0ee964', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2696e753632c5e8d43c9dfcc35ee8556fa8c725c62a7e04a548c9fa04b910422'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7b961299-ccb1-5e84-8835-731575d927bd', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('59afb09e-0510-548f-bd1d-1b7bec0ee964', 1), '2696e753632c5e8d43c9dfcc35ee8556fa8c725c62a7e04a548c9fa04b910422',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/862d192610e2056d50ab389e68eac13461df21d9c5ae303b7b2f6b1f40552b3f.mp3', 966, '2026-09-14 01:56:46.694278', 'c1acde8f1ada2a1f69d4bb912e0182d3444b55a5ef57a03cd5e18f631f4bc4b5', 'validated', '{"audio_key":"862d192610e2056d50ab389e68eac13461df21d9c5ae303b7b2f6b1f40552b3f","entity_key":"d_first_conversation_02:4","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c1acde8f1ada2a1f69d4bb912e0182d3444b55a5ef57a03cd5e18f631f4bc4b5","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/862d192610e2056d50ab389e68eac13461df21d9c5ae303b7b2f6b1f40552b3f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_01:4 -> audio/generated/it-IT/dialogues/86adb2d885afbd533269b864be5aa1eec7142b4628ac05140c863d07949458d9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2270cea8-e088-5088-86e6-ed9fe94caf6b', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cbb5aabd453ac00ab554b680d8a0157c19a908a75c8df6596352ba0c37065838'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9dfbcb39-454f-530c-98ed-2cc3c7769f37', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2270cea8-e088-5088-86e6-ed9fe94caf6b', 1), 'cbb5aabd453ac00ab554b680d8a0157c19a908a75c8df6596352ba0c37065838',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/86adb2d885afbd533269b864be5aa1eec7142b4628ac05140c863d07949458d9.mp3', 1018, '2026-09-14 01:56:47.184233', '17df2e24c11f64915a0c332aeefe18c8611db6c1cf8fc69cb0d2dd0f27da3f53', 'validated', '{"audio_key":"86adb2d885afbd533269b864be5aa1eec7142b4628ac05140c863d07949458d9","entity_key":"d_alphabet_01:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"17df2e24c11f64915a0c332aeefe18c8611db6c1cf8fc69cb0d2dd0f27da3f53","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/86adb2d885afbd533269b864be5aa1eec7142b4628ac05140c863d07949458d9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_02:1 -> audio/generated/it-IT/dialogues/889d2d4b37403b6804a7391d5f122ba3b38187cbb68f5f136523c869ff2362e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('95a8da45-fa2a-5b6f-a64f-f391a98f776a', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a362d74cba1a37ab3c73942e0aaf1232db38c16e8597544340c8873a36c533d6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('47b740d8-b8a7-57fc-a5bd-544ec9819b25', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('95a8da45-fa2a-5b6f-a64f-f391a98f776a', 1), 'a362d74cba1a37ab3c73942e0aaf1232db38c16e8597544340c8873a36c533d6',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/889d2d4b37403b6804a7391d5f122ba3b38187cbb68f5f136523c869ff2362e5.mp3', 783, '2026-09-14 01:56:47.739703', '1ff9031483c34bc1dceb1b5bbdac1b70a14fa1cb313af18ab45eb20e68b4f41d', 'validated', '{"audio_key":"889d2d4b37403b6804a7391d5f122ba3b38187cbb68f5f136523c869ff2362e5","entity_key":"d_first_sounds_02:1","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"1ff9031483c34bc1dceb1b5bbdac1b70a14fa1cb313af18ab45eb20e68b4f41d","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/889d2d4b37403b6804a7391d5f122ba3b38187cbb68f5f136523c869ff2362e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_02:3 -> audio/generated/it-IT/dialogues/8e970b4455a86d17dfffd52699f901bc692e41decb40d82e2d3044cfa7502ec2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c7bb7b4b-564e-5f92-945e-bc777b0e9992', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1d7f0424890fdbe2a7d1e3f82de8561d85eb2fa19a8bd31bea7484184d3b8cdb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a42f1a7-8e57-5fb3-adc5-c7ec6ff4a763', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c7bb7b4b-564e-5f92-945e-bc777b0e9992', 1), '1d7f0424890fdbe2a7d1e3f82de8561d85eb2fa19a8bd31bea7484184d3b8cdb',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/8e970b4455a86d17dfffd52699f901bc692e41decb40d82e2d3044cfa7502ec2.mp3', 862, '2026-09-14 01:56:48.138262', '5e8f51c05ad4e9fc6619a9f43bc275879cf759f3fd7e54874c3de3dbf7721949', 'validated', '{"audio_key":"8e970b4455a86d17dfffd52699f901bc692e41decb40d82e2d3044cfa7502ec2","entity_key":"d_first_sounds_02:3","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"5e8f51c05ad4e9fc6619a9f43bc275879cf759f3fd7e54874c3de3dbf7721949","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/8e970b4455a86d17dfffd52699f901bc692e41decb40d82e2d3044cfa7502ec2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_01:3 -> audio/generated/it-IT/dialogues/923a947c6aff3bedfee892863c031dfde37282e3ba84edb795121a47fd26ab6f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('795f31eb-a52f-5c63-95d7-7371a1824dbb', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd42c52b6200a90e418d1b986a052ad4178d2626caf2ca8467a98206238767092'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa83563b-c1c2-5653-8ede-4a172f38552d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('795f31eb-a52f-5c63-95d7-7371a1824dbb', 1), 'd42c52b6200a90e418d1b986a052ad4178d2626caf2ca8467a98206238767092',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/923a947c6aff3bedfee892863c031dfde37282e3ba84edb795121a47fd26ab6f.mp3', 914, '2026-09-14 01:56:48.686976', 'cbecbca10b3997bcc735eebe5067f08fa24624313f7b85c3f25c1cb9ce96198a', 'validated', '{"audio_key":"923a947c6aff3bedfee892863c031dfde37282e3ba84edb795121a47fd26ab6f","entity_key":"d_first_objects_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"cbecbca10b3997bcc735eebe5067f08fa24624313f7b85c3f25c1cb9ce96198a","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/923a947c6aff3bedfee892863c031dfde37282e3ba84edb795121a47fd26ab6f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_02:3 -> audio/generated/it-IT/dialogues/966a4a4b24f19f2a75f50faa4232ba2a6235aaaef7623b27062302bc5ca944d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7ecba221-2d0c-54a9-a4cb-5218b88d98dd', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c6620ffaae42aa4ab1abc6a8cea4f4ac104e40fe09c74c4fcf28db5f15660982'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b27f4dfc-5de4-51c0-9414-d6918bdc87b6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7ecba221-2d0c-54a9-a4cb-5218b88d98dd', 1), 'c6620ffaae42aa4ab1abc6a8cea4f4ac104e40fe09c74c4fcf28db5f15660982',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/966a4a4b24f19f2a75f50faa4232ba2a6235aaaef7623b27062302bc5ca944d6.mp3', 835, '2026-09-14 01:56:49.133921', 'b0cdead8ecb1a0357c7e5025873587f1f3be6b0b6c73480ddf49c36063d5616b', 'validated', '{"audio_key":"966a4a4b24f19f2a75f50faa4232ba2a6235aaaef7623b27062302bc5ca944d6","entity_key":"d_numbers_0_10_02:3","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"b0cdead8ecb1a0357c7e5025873587f1f3be6b0b6c73480ddf49c36063d5616b","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/966a4a4b24f19f2a75f50faa4232ba2a6235aaaef7623b27062302bc5ca944d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_01:2 -> audio/generated/it-IT/dialogues/997c3c1e5ef73a8da4d0a5ac67899ee4e2957358e2cca671c46ee653d9a9ac83.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0a15cea4-afbd-5537-9b3a-c3a087db60df', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '58e74510c3a7327a40194aea7b56ae192b16a92eb07e6a7f22ba17440d629b4c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e0081fda-2021-5281-a60d-a1cc73101d26', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0a15cea4-afbd-5537-9b3a-c3a087db60df', 1), '58e74510c3a7327a40194aea7b56ae192b16a92eb07e6a7f22ba17440d629b4c',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/997c3c1e5ef73a8da4d0a5ac67899ee4e2957358e2cca671c46ee653d9a9ac83.mp3', 1201, '2026-09-14 01:56:49.624250', 'c01187f39d0ac494cf279a461f80cf8909cbe3b7bc7c1bbd65089f5d147ee743', 'validated', '{"audio_key":"997c3c1e5ef73a8da4d0a5ac67899ee4e2957358e2cca671c46ee653d9a9ac83","entity_key":"d_alphabet_01:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"c01187f39d0ac494cf279a461f80cf8909cbe3b7bc7c1bbd65089f5d147ee743","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/997c3c1e5ef73a8da4d0a5ac67899ee4e2957358e2cca671c46ee653d9a9ac83.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_01:1 -> audio/generated/it-IT/dialogues/9ec46f4d9893e606815be8c74e1ca7a7f3371d2f9c942b5b9c8c26ea94f0d44e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('633d6b5b-fc7f-5686-88b2-5c405da3083f', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4f7c80fe05c1b6b6a7fba92c1aa39221c0ae8563c1de6c82236a769703fda113'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7062c22f-2429-57bd-8b4d-f42fe3302a41', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('633d6b5b-fc7f-5686-88b2-5c405da3083f', 1), '4f7c80fe05c1b6b6a7fba92c1aa39221c0ae8563c1de6c82236a769703fda113',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/9ec46f4d9893e606815be8c74e1ca7a7f3371d2f9c942b5b9c8c26ea94f0d44e.mp3', 2115, '2026-09-14 01:56:50.171831', '20b2e40a4ce53a3318e47af412864c43d16c55bc28a8472091d6c17241fe4844', 'validated', '{"audio_key":"9ec46f4d9893e606815be8c74e1ca7a7f3371d2f9c942b5b9c8c26ea94f0d44e","entity_key":"d_how_are_you_01:1","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"20b2e40a4ce53a3318e47af412864c43d16c55bc28a8472091d6c17241fe4844","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/9ec46f4d9893e606815be8c74e1ca7a7f3371d2f9c942b5b9c8c26ea94f0d44e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_02:4 -> audio/generated/it-IT/dialogues/a0970d0cb3417fb3107a15cf3a60d127ad70700649a82f53550ac88e55497153.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('b9c8f201-a1b6-5bbe-8de4-913d156dedfe', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4985c99d9ca1d1e89b3d449854109343f7eb9818e078f1a5a4a1d593696175a4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c8e994a5-4bfe-5158-a170-7c3960414d09', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('b9c8f201-a1b6-5bbe-8de4-913d156dedfe', 1), '4985c99d9ca1d1e89b3d449854109343f7eb9818e078f1a5a4a1d593696175a4',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/a0970d0cb3417fb3107a15cf3a60d127ad70700649a82f53550ac88e55497153.mp3', 1149, '2026-09-14 01:56:50.565006', 'a4c653b5e7b09b7a1f7bb6a8832ec6dbdd973a3a7b2c7c62b4c50a7503d9d45c', 'validated', '{"audio_key":"a0970d0cb3417fb3107a15cf3a60d127ad70700649a82f53550ac88e55497153","entity_key":"d_my_name_02:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"a4c653b5e7b09b7a1f7bb6a8832ec6dbdd973a3a7b2c7c62b4c50a7503d9d45c","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/a0970d0cb3417fb3107a15cf3a60d127ad70700649a82f53550ac88e55497153.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_01:2 -> audio/generated/it-IT/dialogues/a3078709d1acbdb3dbd6ea5f10283acd50503e24ebe64d997fd69cc87916a285.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('872045da-037f-571c-87b7-3ee3c574c767', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd80cb90ea41ad2362ede715734164c3d9169ea6227d3aad6a7310ffb4317da7e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5249198e-eee5-5a1b-a333-ea98d093e53d', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('872045da-037f-571c-87b7-3ee3c574c767', 1), 'd80cb90ea41ad2362ede715734164c3d9169ea6227d3aad6a7310ffb4317da7e',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/a3078709d1acbdb3dbd6ea5f10283acd50503e24ebe64d997fd69cc87916a285.mp3', 1280, '2026-09-14 01:56:51.207700', '19e386fe72a804d3bfdebf79ee4e92d70aee8957e359f9080f0c5686b92d3cec', 'validated', '{"audio_key":"a3078709d1acbdb3dbd6ea5f10283acd50503e24ebe64d997fd69cc87916a285","entity_key":"d_survival_words_01:2","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"19e386fe72a804d3bfdebf79ee4e92d70aee8957e359f9080f0c5686b92d3cec","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/a3078709d1acbdb3dbd6ea5f10283acd50503e24ebe64d997fd69cc87916a285.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_01:1 -> audio/generated/it-IT/dialogues/a6fd0abeae21b99eb38b987743e1a95533d7c597a95f9ccbd74105707eee18a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('ff75dc64-b332-559a-94ce-2bfc904be396', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17962d42e2233deaa528dea3b74e7afb0f4232da41201aed6d36610eb431b8a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('650904a5-d912-5b8f-b88e-08b0b843c8df', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('ff75dc64-b332-559a-94ce-2bfc904be396', 1), '17962d42e2233deaa528dea3b74e7afb0f4232da41201aed6d36610eb431b8a7',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/a6fd0abeae21b99eb38b987743e1a95533d7c597a95f9ccbd74105707eee18a1.mp3', 1671, '2026-09-14 01:56:51.594856', 'd06053b0804dff884171ee32c026fe2ff5f9ec0b29fde1f355d1a64af5435dbf', 'validated', '{"audio_key":"a6fd0abeae21b99eb38b987743e1a95533d7c597a95f9ccbd74105707eee18a1","entity_key":"d_polite_words_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"d06053b0804dff884171ee32c026fe2ff5f9ec0b29fde1f355d1a64af5435dbf","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/a6fd0abeae21b99eb38b987743e1a95533d7c597a95f9ccbd74105707eee18a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_02:2 -> audio/generated/it-IT/dialogues/ab2924e9b41f858d216f3f1c6129ac187f1f5ce54e76a3956a33e8bd623dd4e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('5300009f-658e-50c0-a708-f79ddf6d2153', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e13dd4761060ddbfd8a3d0961b0131ca85e14c6d5dfd3ca3efa4cd882827ba31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a62abfc0-d21d-58bc-9220-6930bae3fcff', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('5300009f-658e-50c0-a708-f79ddf6d2153', 1), 'e13dd4761060ddbfd8a3d0961b0131ca85e14c6d5dfd3ca3efa4cd882827ba31',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/ab2924e9b41f858d216f3f1c6129ac187f1f5ce54e76a3956a33e8bd623dd4e5.mp3', 914, '2026-09-14 01:56:52.155196', '04f9bbdc9b15ee83ab45f2f08e154361d1d5761b0e57a3d804b441fd7fee7bc6', 'validated', '{"audio_key":"ab2924e9b41f858d216f3f1c6129ac187f1f5ce54e76a3956a33e8bd623dd4e5","entity_key":"d_survival_words_02:2","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"04f9bbdc9b15ee83ab45f2f08e154361d1d5761b0e57a3d804b441fd7fee7bc6","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/ab2924e9b41f858d216f3f1c6129ac187f1f5ce54e76a3956a33e8bd623dd4e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_how_are_you_01:3 -> audio/generated/it-IT/dialogues/ad604c53497942e82adaeb1b74309935ad3674a607d89e197a0f186366ba6387.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('72bf22c7-aa2b-5e09-b323-80b71c883740', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_how_are_you_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '958f14f45a2a2f3e4954fb11a693257a792c71849cb139b2c2a51a6b52df6e31'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('eadbb7f1-1915-5438-ae90-af620ae3e51a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('72bf22c7-aa2b-5e09-b323-80b71c883740', 1), '958f14f45a2a2f3e4954fb11a693257a792c71849cb139b2c2a51a6b52df6e31',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/ad604c53497942e82adaeb1b74309935ad3674a607d89e197a0f186366ba6387.mp3', 1201, '2026-09-14 01:56:52.563992', '3c87ef007fb5d8604ece46493018f2f8b1719d8f2724d77d6cf7f8bc2427e733', 'validated', '{"audio_key":"ad604c53497942e82adaeb1b74309935ad3674a607d89e197a0f186366ba6387","entity_key":"d_how_are_you_01:3","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"3c87ef007fb5d8604ece46493018f2f8b1719d8f2724d77d6cf7f8bc2427e733","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/ad604c53497942e82adaeb1b74309935ad3674a607d89e197a0f186366ba6387.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_02:3 -> audio/generated/it-IT/dialogues/b72a17435a32c5b74d4b0b973fae217fd107055a91b3761bb4381134bba1b8d6.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('58b65e61-5c88-57ce-bae9-12a0f9760c2f', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fdac955a2fcf64a60a0b9696942087280f71101a64ffcf0a50f3efee2a80313d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5dd29572-8556-5ce8-9d3e-ff55bf08eb06', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('58b65e61-5c88-57ce-bae9-12a0f9760c2f', 1), 'fdac955a2fcf64a60a0b9696942087280f71101a64ffcf0a50f3efee2a80313d',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/b72a17435a32c5b74d4b0b973fae217fd107055a91b3761bb4381134bba1b8d6.mp3', 835, '2026-09-14 01:56:53.081392', '03de5022ed1e2dc128971fd9308966ee05e810a9253853ba682569a3f4620e31', 'validated', '{"audio_key":"b72a17435a32c5b74d4b0b973fae217fd107055a91b3761bb4381134bba1b8d6","entity_key":"d_first_objects_02:3","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"03de5022ed1e2dc128971fd9308966ee05e810a9253853ba682569a3f4620e31","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/b72a17435a32c5b74d4b0b973fae217fd107055a91b3761bb4381134bba1b8d6.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_02:1 -> audio/generated/it-IT/dialogues/b734bc18fbcffd4520f2cef6bc0e464377c0d00518dae390b4fd6f133241f40a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('0d554bc7-1e8d-5952-ab2d-9a5be014a1a6', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c030d2d529aa7d51ade8b3a9e00e36064ad014a395c51aa283fed37074959e59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bbbbf9df-4f6b-504f-8396-6a728553574e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('0d554bc7-1e8d-5952-ab2d-9a5be014a1a6', 1), 'c030d2d529aa7d51ade8b3a9e00e36064ad014a395c51aa283fed37074959e59',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/b734bc18fbcffd4520f2cef6bc0e464377c0d00518dae390b4fd6f133241f40a.mp3', 1149, '2026-09-14 01:56:53.736548', '28eadf11948d651413ac7973067ce05bcb4f6a97ffe13d614285d9c7a7e22b39', 'validated', '{"audio_key":"b734bc18fbcffd4520f2cef6bc0e464377c0d00518dae390b4fd6f133241f40a","entity_key":"d_first_conversation_02:1","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"28eadf11948d651413ac7973067ce05bcb4f6a97ffe13d614285d9c7a7e22b39","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/b734bc18fbcffd4520f2cef6bc0e464377c0d00518dae390b4fd6f133241f40a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_objects_02:4 -> audio/generated/it-IT/dialogues/b988aded7ddde2517724ab567d696d575ab310c137f2f3278aeb0e3de7519feb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('71b15916-db3e-52a5-9933-6bd4d8ec2918', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_objects_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '462d76210b11605ae6a62d80dad2b5b9637c04e8e47da70d57384d375a224762'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('25a22001-5c7c-51cb-b47f-762b3cda31ce', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('71b15916-db3e-52a5-9933-6bd4d8ec2918', 1), '462d76210b11605ae6a62d80dad2b5b9637c04e8e47da70d57384d375a224762',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/b988aded7ddde2517724ab567d696d575ab310c137f2f3278aeb0e3de7519feb.mp3', 835, '2026-09-14 01:56:53.998988', '9358452bfe489aa63d016dadc94ddf539dadd72b9b4dbbbe0356fe8efe0ff1ed', 'validated', '{"audio_key":"b988aded7ddde2517724ab567d696d575ab310c137f2f3278aeb0e3de7519feb","entity_key":"d_first_objects_02:4","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"9358452bfe489aa63d016dadc94ddf539dadd72b9b4dbbbe0356fe8efe0ff1ed","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/b988aded7ddde2517724ab567d696d575ab310c137f2f3278aeb0e3de7519feb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_02:4 -> audio/generated/it-IT/dialogues/ba822578db6ca47cdccd774d0d51d13a4329945f0862f6fae679cf9eaeac74fd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('7833c136-1df7-559c-940f-40d9c619fc0c', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '33b203cd17edc3f35c0e80b4bb7c54467ef2b1c9ee9ff9877c0ac6b1fd2d237b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('11f6b315-3601-533a-ba00-9e551738306a', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('7833c136-1df7-559c-940f-40d9c619fc0c', 1), '33b203cd17edc3f35c0e80b4bb7c54467ef2b1c9ee9ff9877c0ac6b1fd2d237b',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/ba822578db6ca47cdccd774d0d51d13a4329945f0862f6fae679cf9eaeac74fd.mp3', 966, '2026-09-14 01:56:54.687991', '104e06fed23b471ae914b203a8250e2830eb3c22698f30d274050372c02b9c57', 'validated', '{"audio_key":"ba822578db6ca47cdccd774d0d51d13a4329945f0862f6fae679cf9eaeac74fd","entity_key":"d_first_greetings_02:4","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"104e06fed23b471ae914b203a8250e2830eb3c22698f30d274050372c02b9c57","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/ba822578db6ca47cdccd774d0d51d13a4329945f0862f6fae679cf9eaeac74fd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_02:4 -> audio/generated/it-IT/dialogues/bd5c55dbd8bd326dec3158fe30dbd3502f72f05fe64a1d178320cacef8f22516.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('10ec845e-54c5-5644-b8c4-302302776d51', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd553bd713a9164870644f0204e79ea4056e3eaad10117a25f900b2b8c478d837'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c934e4f9-50a4-5c93-ad24-4b86f15d3298', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('10ec845e-54c5-5644-b8c4-302302776d51', 1), 'd553bd713a9164870644f0204e79ea4056e3eaad10117a25f900b2b8c478d837',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/bd5c55dbd8bd326dec3158fe30dbd3502f72f05fe64a1d178320cacef8f22516.mp3', 1018, '2026-09-14 01:56:54.944936', '7cc4f357be87fdee389c0ed8a046cd414c0b049940c34f6a555e573de307003d', 'validated', '{"audio_key":"bd5c55dbd8bd326dec3158fe30dbd3502f72f05fe64a1d178320cacef8f22516","entity_key":"d_first_sounds_02:4","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"7cc4f357be87fdee389c0ed8a046cd414c0b049940c34f6a555e573de307003d","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/bd5c55dbd8bd326dec3158fe30dbd3502f72f05fe64a1d178320cacef8f22516.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_01:3 -> audio/generated/it-IT/dialogues/bd93c58f36946ea9efd21c9602046a1bcc81edc51d4f299370d86b4a829f95f0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('9892d157-634a-5a95-af40-81a10fab38d0', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a30932b343601b6a089c2c473a74af9d51840ee5e82ecd45e6aeea1b2f3f6c3b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8f9e6444-fd50-5f73-a5bb-2a77a19d4980', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('9892d157-634a-5a95-af40-81a10fab38d0', 1), 'a30932b343601b6a089c2c473a74af9d51840ee5e82ecd45e6aeea1b2f3f6c3b',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/bd93c58f36946ea9efd21c9602046a1bcc81edc51d4f299370d86b4a829f95f0.mp3', 862, '2026-09-14 01:56:55.622037', '5b3eaeae6ac96c7d4a844ccb50cbade52f7e9f90d96903fb5bdf3454178b1c25', 'validated', '{"audio_key":"bd93c58f36946ea9efd21c9602046a1bcc81edc51d4f299370d86b4a829f95f0","entity_key":"d_numbers_0_10_01:3","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"5b3eaeae6ac96c7d4a844ccb50cbade52f7e9f90d96903fb5bdf3454178b1c25","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/bd93c58f36946ea9efd21c9602046a1bcc81edc51d4f299370d86b4a829f95f0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_01:3 -> audio/generated/it-IT/dialogues/c16e9206da4662549381531a29c92ce3cb6f944c7b23c9f314a30528cb8baf3a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2149c56a-145c-56ab-a228-3fa91024eb31', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b7fb61d16b62f6da991f74c3dfb4d57970b2832f09dae468f6440f68e0b07261'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('950543b8-487a-527d-8d21-d3fe77a723dc', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2149c56a-145c-56ab-a228-3fa91024eb31', 1), 'b7fb61d16b62f6da991f74c3dfb4d57970b2832f09dae468f6440f68e0b07261',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c16e9206da4662549381531a29c92ce3cb6f944c7b23c9f314a30528cb8baf3a.mp3', 914, '2026-09-14 01:56:55.885267', 'a9f83b95b27e763a932333ecae6647cb928a829d33d540b1ee0d812fc0246089', 'validated', '{"audio_key":"c16e9206da4662549381531a29c92ce3cb6f944c7b23c9f314a30528cb8baf3a","entity_key":"d_survival_words_01:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"a9f83b95b27e763a932333ecae6647cb928a829d33d540b1ee0d812fc0246089","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/c16e9206da4662549381531a29c92ce3cb6f944c7b23c9f314a30528cb8baf3a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_01:4 -> audio/generated/it-IT/dialogues/c345022b88cfb1c9d1358333a0e152f87acf361c1ff77fb47a64e728d5dae2d0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('c4239ed3-8613-5f01-8bc9-6f37bda735fd', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4985c99d9ca1d1e89b3d449854109343f7eb9818e078f1a5a4a1d593696175a4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b46ec3d3-048d-5581-84f8-f39ba91924a3', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('c4239ed3-8613-5f01-8bc9-6f37bda735fd', 1), '4985c99d9ca1d1e89b3d449854109343f7eb9818e078f1a5a4a1d593696175a4',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c345022b88cfb1c9d1358333a0e152f87acf361c1ff77fb47a64e728d5dae2d0.mp3', 1097, '2026-09-14 01:56:56.575178', 'd24fb149f2ea94c8316eb89cadb5570e1eac6e4cc8a002ef7da8d542441d177e', 'validated', '{"audio_key":"c345022b88cfb1c9d1358333a0e152f87acf361c1ff77fb47a64e728d5dae2d0","entity_key":"d_first_greetings_01:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"d24fb149f2ea94c8316eb89cadb5570e1eac6e4cc8a002ef7da8d542441d177e","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/c345022b88cfb1c9d1358333a0e152f87acf361c1ff77fb47a64e728d5dae2d0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_01:4 -> audio/generated/it-IT/dialogues/c50e6a494dc2ce2eec2862c372c17627436fe850b2f6bb79fe6d3a906a783374.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d757b398-2041-5538-b16f-f6fe482cb703', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e93d25fb4a6f4a280e48061bb566b9dd35c61f394e6f3685397ba699892ee67'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6aa1ee8e-fdca-5aac-b560-4e772e9d1296', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d757b398-2041-5538-b16f-f6fe482cb703', 1), '6e93d25fb4a6f4a280e48061bb566b9dd35c61f394e6f3685397ba699892ee67',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/c50e6a494dc2ce2eec2862c372c17627436fe850b2f6bb79fe6d3a906a783374.mp3', 1018, '2026-09-14 01:56:56.833306', '0716e6cb022472c641a51d2c2be67a3b376c14c7cf4d9e08c7d677f350b426d0', 'validated', '{"audio_key":"c50e6a494dc2ce2eec2862c372c17627436fe850b2f6bb79fe6d3a906a783374","entity_key":"d_my_name_01:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"0716e6cb022472c641a51d2c2be67a3b376c14c7cf4d9e08c7d677f350b426d0","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/c50e6a494dc2ce2eec2862c372c17627436fe850b2f6bb79fe6d3a906a783374.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_01:4 -> audio/generated/it-IT/dialogues/ca4e9372ac3c23dd0b9967eaa79e47c5456d34cbb13598b9297669cafdd0fb84.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('96dcf6d2-b939-5c2d-8857-197d9429538e', 1)
  AND voice_key = 'character:marco:male_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b473393d73e76854d0605fed672521bf40eb48230ab37a764069cdca4434faa4'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d16a7912-f94c-5f5d-851f-098f84c2548e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('96dcf6d2-b939-5c2d-8857-197d9429538e', 1), 'b473393d73e76854d0605fed672521bf40eb48230ab37a764069cdca4434faa4',
  'character:marco:male_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/ca4e9372ac3c23dd0b9967eaa79e47c5456d34cbb13598b9297669cafdd0fb84.mp3', 653, '2026-09-14 01:56:57.470336', '68e8624887bc4fb5c27e93efa454189e2a295bef6968c074efa2091da9ebe8c5', 'validated', '{"audio_key":"ca4e9372ac3c23dd0b9967eaa79e47c5456d34cbb13598b9297669cafdd0fb84","entity_key":"d_first_sounds_01:4","voice_id":"o4b57JYAECRMJyCEXyIE","voice_name":"Brando Vox – Natural Customer Care","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"pleasant"},"output_format":"mp3_44100_192","file_sha256":"68e8624887bc4fb5c27e93efa454189e2a295bef6968c074efa2091da9ebe8c5","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/ca4e9372ac3c23dd0b9967eaa79e47c5456d34cbb13598b9297669cafdd0fb84.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_01:1 -> audio/generated/it-IT/dialogues/ca814dcde20e3c801661252174802f7e4aa875bf7b456cd0f32052b546dd5a1c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('e45fb21f-9fb4-5a3e-9864-67b445d6fa07', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1dda07b82799832e034c07e8d129ad79b92c5da4bfbdc2c6908b1ed885b59c27'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('03aa891c-ed6c-5574-a720-9eee1074667e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('e45fb21f-9fb4-5a3e-9864-67b445d6fa07', 1), '1dda07b82799832e034c07e8d129ad79b92c5da4bfbdc2c6908b1ed885b59c27',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/ca814dcde20e3c801661252174802f7e4aa875bf7b456cd0f32052b546dd5a1c.mp3', 966, '2026-09-14 01:56:57.755848', '36086d432416f1a720f67e335f574e415305948551f6dafee460b125e5af7c62', 'validated', '{"audio_key":"ca814dcde20e3c801661252174802f7e4aa875bf7b456cd0f32052b546dd5a1c","entity_key":"d_survival_words_01:1","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"36086d432416f1a720f67e335f574e415305948551f6dafee460b125e5af7c62","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/ca814dcde20e3c801661252174802f7e4aa875bf7b456cd0f32052b546dd5a1c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_02:2 -> audio/generated/it-IT/dialogues/cdbcc97f4d804fea71d12f1eeca13a01089313b48996cbc1cf0cbcaa296e6bbe.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2ae33d22-77de-5cf1-8e88-6a979d6df3e6', 1)
  AND voice_key = 'character:giulia:female_warm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2fc201bfa2f27a3ccc233756b5cb8b3d313ec796710931b3415935a60a7a3164'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9801bb73-9f88-5b0e-b958-8e4515f55141', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2ae33d22-77de-5cf1-8e88-6a979d6df3e6', 1), '2fc201bfa2f27a3ccc233756b5cb8b3d313ec796710931b3415935a60a7a3164',
  'character:giulia:female_warm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/cdbcc97f4d804fea71d12f1eeca13a01089313b48996cbc1cf0cbcaa296e6bbe.mp3', 914, '2026-09-14 01:56:58.384521', '08082daf5e483e754d9d311b418b1cffc23218b72ea01eab50519e3b4fc13101', 'validated', '{"audio_key":"cdbcc97f4d804fea71d12f1eeca13a01089313b48996cbc1cf0cbcaa296e6bbe","entity_key":"d_first_sounds_02:2","voice_id":"uC9VI5XrTxXRNlCzGSKR","voice_name":"Giulia - Animated and Passionate","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"excited"},"output_format":"mp3_44100_192","file_sha256":"08082daf5e483e754d9d311b418b1cffc23218b72ea01eab50519e3b4fc13101","settings":{"stability":0.58,"similarity_boost":0.87,"style":0.14,"use_speaker_boost":true,"speed":0.97},"relative_path":"audio/generated/it-IT/dialogues/cdbcc97f4d804fea71d12f1eeca13a01089313b48996cbc1cf0cbcaa296e6bbe.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_02:2 -> audio/generated/it-IT/dialogues/d54a0fbe68967f990a80eb8545854159806b8a436afec9632b6f09500358005a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('dd3ada80-bb53-578e-a023-e38073411b68', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5c19be5713b1c3a53cb45701c0a7f6945288034822a6a6ef73daa0975d9d0c8'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7186c127-eb79-5017-88f1-45b5c1c8f822', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('dd3ada80-bb53-578e-a023-e38073411b68', 1), 'c5c19be5713b1c3a53cb45701c0a7f6945288034822a6a6ef73daa0975d9d0c8',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/d54a0fbe68967f990a80eb8545854159806b8a436afec9632b6f09500358005a.mp3', 1619, '2026-09-14 01:56:58.782067', '129d86ff096e08686b1761c6fb1f2d32cb53e83a66bfc6a4483440d2b1b99609', 'validated', '{"audio_key":"d54a0fbe68967f990a80eb8545854159806b8a436afec9632b6f09500358005a","entity_key":"d_alphabet_02:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"129d86ff096e08686b1761c6fb1f2d32cb53e83a66bfc6a4483440d2b1b99609","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/d54a0fbe68967f990a80eb8545854159806b8a436afec9632b6f09500358005a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_01:1 -> audio/generated/it-IT/dialogues/d7635cc809085a25fba9e1142669f3f67e8de8dd4b2670cd60310d7d194ff483.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a6053a11-aa19-5378-a083-04b9b6cedfa0', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cdac617db065c14f42a809a8195501606ea8bea8c0a994163312c7b97a6fde62'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('495605e5-c9bd-5c2a-b616-c58f22096573', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a6053a11-aa19-5378-a083-04b9b6cedfa0', 1), 'cdac617db065c14f42a809a8195501606ea8bea8c0a994163312c7b97a6fde62',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/d7635cc809085a25fba9e1142669f3f67e8de8dd4b2670cd60310d7d194ff483.mp3', 1854, '2026-09-14 01:56:59.422371', 'b96a8d6c1975799ec55eab958119f8b612ac4a42af3857f6d906056acf667e28', 'validated', '{"audio_key":"d7635cc809085a25fba9e1142669f3f67e8de8dd4b2670cd60310d7d194ff483","entity_key":"d_first_conversation_01:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"b96a8d6c1975799ec55eab958119f8b612ac4a42af3857f6d906056acf667e28","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/d7635cc809085a25fba9e1142669f3f67e8de8dd4b2670cd60310d7d194ff483.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_02:1 -> audio/generated/it-IT/dialogues/e650f8126326b07817541562452637524d72a90f0bf68c1aac4ce91ae70201e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('be9ff555-e4db-5739-a517-3f2402187b31', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_02:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc15dd3d7d4097f9f5b7cce78a55094af61f7b1581a907d69db0229798241ff5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('563d9ff5-6516-53ba-b50e-562949334412', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('be9ff555-e4db-5739-a517-3f2402187b31', 1), 'bc15dd3d7d4097f9f5b7cce78a55094af61f7b1581a907d69db0229798241ff5',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e650f8126326b07817541562452637524d72a90f0bf68c1aac4ce91ae70201e1.mp3', 1071, '2026-09-14 01:56:59.732207', 'e9d6dbd57d7953aaf5916f90ef065f06771c787f2737bbe6ffaf9c3038a73387', 'validated', '{"audio_key":"e650f8126326b07817541562452637524d72a90f0bf68c1aac4ce91ae70201e1","entity_key":"d_polite_words_02:1","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"e9d6dbd57d7953aaf5916f90ef065f06771c787f2737bbe6ffaf9c3038a73387","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/e650f8126326b07817541562452637524d72a90f0bf68c1aac4ce91ae70201e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_greetings_02:2 -> audio/generated/it-IT/dialogues/e7acd67a4dccf4e203ebe8d5b33555384459183475f04d298a3bb8a401868400.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('d79e8162-ee09-51bd-8739-6da47ca6d8ae', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_greetings_02:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '39ddba7398c0a942c8e387f20830a4e4c9f0049cc2564cd93b18d477c7418113'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('612a2a65-a619-56de-9077-adb768f9b62e', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('d79e8162-ee09-51bd-8739-6da47ca6d8ae', 1), '39ddba7398c0a942c8e387f20830a4e4c9f0049cc2564cd93b18d477c7418113',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e7acd67a4dccf4e203ebe8d5b33555384459183475f04d298a3bb8a401868400.mp3', 1071, '2026-09-14 01:57:00.351912', '508f0e785d4e406033d53aa75a1e6f6ffb1423ef6264074605a3d9b92c4a3271', 'validated', '{"audio_key":"e7acd67a4dccf4e203ebe8d5b33555384459183475f04d298a3bb8a401868400","entity_key":"d_first_greetings_02:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"508f0e785d4e406033d53aa75a1e6f6ffb1423ef6264074605a3d9b92c4a3271","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/e7acd67a4dccf4e203ebe8d5b33555384459183475f04d298a3bb8a401868400.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_survival_words_01:4 -> audio/generated/it-IT/dialogues/e7bdbdcf3f2b8f145e912b223b4a5a6f1d784754f642902b3adbcec5394a780f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('be938dac-7bba-5c77-bd51-35f3c67c3015', 1)
  AND voice_key = 'character:davide:male_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_survival_words_01:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'fdac955a2fcf64a60a0b9696942087280f71101a64ffcf0a50f3efee2a80313d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34ec6a75-b9de-56b2-b06f-8275c4034ae7', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('be938dac-7bba-5c77-bd51-35f3c67c3015', 1), 'fdac955a2fcf64a60a0b9696942087280f71101a64ffcf0a50f3efee2a80313d',
  'character:davide:male_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e7bdbdcf3f2b8f145e912b223b4a5a6f1d784754f642902b3adbcec5394a780f.mp3', 966, '2026-09-14 01:57:00.678002', '7aa975049bc8f7d4143b2cc6487cec81aa7e7a5fcad9c383a0dbe5729323415e', 'validated', '{"audio_key":"e7bdbdcf3f2b8f145e912b223b4a5a6f1d784754f642902b3adbcec5394a780f","entity_key":"d_survival_words_01:4","voice_id":"2OoHspMHbpIu5oiMaqDy","voice_name":"Marco - Natural, Engaging and Warm","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"7aa975049bc8f7d4143b2cc6487cec81aa7e7a5fcad9c383a0dbe5729323415e","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/e7bdbdcf3f2b8f145e912b223b4a5a6f1d784754f642902b3adbcec5394a780f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_numbers_0_10_01:2 -> audio/generated/it-IT/dialogues/e834b0454699df954b622ac5314abef04359bf871fddb20d8cd0b34cba1cdb5b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f91cf87e-2080-55f3-985d-616528f7f526', 1)
  AND voice_key = 'character:luca:male_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_numbers_0_10_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5a90a061a1512e4b6c8773fdd91b399de82ee3183a0e0cc4de010838fd64b4a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7e406109-4fb5-543a-bb6f-1fd5e8f2980b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f91cf87e-2080-55f3-985d-616528f7f526', 1), '5a90a061a1512e4b6c8773fdd91b399de82ee3183a0e0cc4de010838fd64b4a7',
  'character:luca:male_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/e834b0454699df954b622ac5314abef04359bf871fddb20d8cd0b34cba1cdb5b.mp3', 1384, '2026-09-14 01:57:01.314582', '7a1806920de497fdc60d8bf8a3f8b65e32605ce1039a9706ff28959b159a1c8e', 'validated', '{"audio_key":"e834b0454699df954b622ac5314abef04359bf871fddb20d8cd0b34cba1cdb5b","entity_key":"d_numbers_0_10_01:2","voice_id":"DTGwzA4YLrWB1FAT6Uas","voice_name":"Lorenzo - Youthful, Expressive & Inspiring","voice_labels":{"gender":"male","accent":"standard","age":"young","category":"high_quality","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"7a1806920de497fdc60d8bf8a3f8b65e32605ce1039a9706ff28959b159a1c8e","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/e834b0454699df954b622ac5314abef04359bf871fddb20d8cd0b34cba1cdb5b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_01:2 -> audio/generated/it-IT/dialogues/eb9ffc41b678527453259cae1b5f86a3941e24a24d6db61b9f6b907ce9b87b81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('81017b04-2a2e-5f1b-aaab-00a71fdbf22b', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_01:2')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4c3ed8dce4e0c41cc0a980012d5d359046916ff1810232a79c7d0eef84b4e323'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('106c91a6-cfcf-5c8d-86ba-e82b0414c8e1', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('81017b04-2a2e-5f1b-aaab-00a71fdbf22b', 1), '4c3ed8dce4e0c41cc0a980012d5d359046916ff1810232a79c7d0eef84b4e323',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/eb9ffc41b678527453259cae1b5f86a3941e24a24d6db61b9f6b907ce9b87b81.mp3', 2220, '2026-09-14 01:57:01.780624', 'baa9d5e45c4adcf06a717594364ea57d459524334a74fa0f9a7d906fa65ae456', 'validated', '{"audio_key":"eb9ffc41b678527453259cae1b5f86a3941e24a24d6db61b9f6b907ce9b87b81","entity_key":"d_my_name_01:2","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"baa9d5e45c4adcf06a717594364ea57d459524334a74fa0f9a7d906fa65ae456","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/eb9ffc41b678527453259cae1b5f86a3941e24a24d6db61b9f6b907ce9b87b81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_02:3 -> audio/generated/it-IT/dialogues/ede6de107be60fd3705b699715813f74badedd7129d0afec179c4c94287e41a1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('f31ffb05-eee4-5b34-a89a-049b486bff4a', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '345aa7547a07cec2bb323f908d12e74d2db9f12fae529380a100300e6d53724c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('858c6ba0-a88c-5ac7-9f81-d6c6593eea3b', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('f31ffb05-eee4-5b34-a89a-049b486bff4a', 1), '345aa7547a07cec2bb323f908d12e74d2db9f12fae529380a100300e6d53724c',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/ede6de107be60fd3705b699715813f74badedd7129d0afec179c4c94287e41a1.mp3', 1018, '2026-09-14 01:57:02.264366', '28bef9014b7571e74f958bb2e9b7b3c185f879af4d04e365affc87a5ebf68718', 'validated', '{"audio_key":"ede6de107be60fd3705b699715813f74badedd7129d0afec179c4c94287e41a1","entity_key":"d_polite_words_02:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"28bef9014b7571e74f958bb2e9b7b3c185f879af4d04e365affc87a5ebf68718","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/ede6de107be60fd3705b699715813f74badedd7129d0afec179c4c94287e41a1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_alphabet_01:1 -> audio/generated/it-IT/dialogues/f1520c74574842c30695c02d66cd44ba1b11c1fc5274babc0340139d470cab78.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('6a278cee-73b1-58d9-88ea-beaafe6bb368', 1)
  AND voice_key = 'character:chiara:female_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_alphabet_01:1')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a49bc673bdb929aae2fa7cd984bd1d888a2346ff82b65e72c4c0feb1fcd92ec7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('504501c2-dffc-56ea-a2f9-f65ea0c32262', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('6a278cee-73b1-58d9-88ea-beaafe6bb368', 1), 'a49bc673bdb929aae2fa7cd984bd1d888a2346ff82b65e72c4c0feb1fcd92ec7',
  'character:chiara:female_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f1520c74574842c30695c02d66cd44ba1b11c1fc5274babc0340139d470cab78.mp3', 1280, '2026-09-14 01:57:02.756844', '600b368b99acda77cefe1cc2468619408bd46b5991ab62117c747dd16c094a85', 'validated', '{"audio_key":"f1520c74574842c30695c02d66cd44ba1b11c1fc5274babc0340139d470cab78","entity_key":"d_alphabet_01:1","voice_id":"UnOINkXZ3yK4vVg3Iayj","voice_name":"Beatrice - AI Agent","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"conversational","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"600b368b99acda77cefe1cc2468619408bd46b5991ab62117c747dd16c094a85","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/f1520c74574842c30695c02d66cd44ba1b11c1fc5274babc0340139d470cab78.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_my_name_02:3 -> audio/generated/it-IT/dialogues/f4ddb483d51f90da6f5bb762e9a1c78cf2535cae20ad7826d5d86e53f8cb4b3d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('a5a1cfd0-6275-573d-b53c-3c604d1a35df', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_my_name_02:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '124ab2243f00fe34dfa30b50e734913bf1ba7396feb64201536ec5c77b876aa7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8b0bb3a1-2950-5cfa-a529-39f14b3d4e96', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('a5a1cfd0-6275-573d-b53c-3c604d1a35df', 1), '124ab2243f00fe34dfa30b50e734913bf1ba7396feb64201536ec5c77b876aa7',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/f4ddb483d51f90da6f5bb762e9a1c78cf2535cae20ad7826d5d86e53f8cb4b3d.mp3', 1018, '2026-09-14 01:57:03.176281', '0248eb06520613971d9cfc57044067bf9ee73e2d8dd9a3b7b2b09cefbb8f1142', 'validated', '{"audio_key":"f4ddb483d51f90da6f5bb762e9a1c78cf2535cae20ad7826d5d86e53f8cb4b3d","entity_key":"d_my_name_02:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"0248eb06520613971d9cfc57044067bf9ee73e2d8dd9a3b7b2b09cefbb8f1142","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/f4ddb483d51f90da6f5bb762e9a1c78cf2535cae20ad7826d5d86e53f8cb4b3d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_conversation_01:3 -> audio/generated/it-IT/dialogues/fbde0127d0f320fda4d2a19c2bd9392564c6e9622022dc93d1c5c137bc260f09.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('3f4819ff-647e-50b2-a228-095539fba753', 1)
  AND voice_key = 'character:elena:female_professional'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_conversation_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b7a3cba58ce83fc05bdfce2facdbcaa1038a3c7082092d5e36ec68d23a30d45'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('57ca6a0c-9a4a-52cb-b913-52e406df87e8', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('3f4819ff-647e-50b2-a228-095539fba753', 1), '8b7a3cba58ce83fc05bdfce2facdbcaa1038a3c7082092d5e36ec68d23a30d45',
  'character:elena:female_professional', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/fbde0127d0f320fda4d2a19c2bd9392564c6e9622022dc93d1c5c137bc260f09.mp3', 1071, '2026-09-14 01:57:03.708743', '100c60e962b538fdbd75adcb7848cf6e2e89cdc6694cca146ae4d77406add252', 'validated', '{"audio_key":"fbde0127d0f320fda4d2a19c2bd9392564c6e9622022dc93d1c5c137bc260f09","entity_key":"d_first_conversation_01:3","voice_id":"QITiGyM4owEZrBEf0QV8","voice_name":"Ginevra - Rich, Cheerful and Grounded","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"conversational","descriptive":"confident"},"output_format":"mp3_44100_192","file_sha256":"100c60e962b538fdbd75adcb7848cf6e2e89cdc6694cca146ae4d77406add252","settings":{"stability":0.71,"similarity_boost":0.9,"style":0.05,"use_speaker_boost":true,"speed":0.96},"relative_path":"audio/generated/it-IT/dialogues/fbde0127d0f320fda4d2a19c2bd9392564c6e9622022dc93d1c5c137bc260f09.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_first_sounds_01:3 -> audio/generated/it-IT/dialogues/fcea70492ff16d9acf78f64c796f53296106cf8889e4236d04bd06b3fbfceb30.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('85cf8c2f-1373-5381-b8ee-f9bdaa0b2ea5', 1)
  AND voice_key = 'character:sofia:female_bright'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_first_sounds_01:3')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'eed6cd5419c2b8cb7a6abfee9065e4b5de52da6970d5e4b36739e34ac9ea09d9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('246d1d0d-2cca-50f4-af2c-64d6a45656f2', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('85cf8c2f-1373-5381-b8ee-f9bdaa0b2ea5', 1), 'eed6cd5419c2b8cb7a6abfee9065e4b5de52da6970d5e4b36739e34ac9ea09d9',
  'character:sofia:female_bright', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/fcea70492ff16d9acf78f64c796f53296106cf8889e4236d04bd06b3fbfceb30.mp3', 1332, '2026-09-14 01:57:04.127101', '50eb13ed00cc5800f43acafe6ef0b37529e86573489a9d02911e3e7d986c08a8', 'validated', '{"audio_key":"fcea70492ff16d9acf78f64c796f53296106cf8889e4236d04bd06b3fbfceb30","entity_key":"d_first_sounds_01:3","voice_id":"Kq9pDHHIMmJsG9PEqOtv","voice_name":"Kina - Joyful, Bright and Youthful","voice_labels":{"gender":"female","accent":"standard","age":"young","category":"professional","language":"it","use_case":"social_media","descriptive":"cute"},"output_format":"mp3_44100_192","file_sha256":"50eb13ed00cc5800f43acafe6ef0b37529e86573489a9d02911e3e7d986c08a8","settings":{"stability":0.52,"similarity_boost":0.86,"style":0.2,"use_speaker_boost":true,"speed":0.99},"relative_path":"audio/generated/it-IT/dialogues/fcea70492ff16d9acf78f64c796f53296106cf8889e4236d04bd06b3fbfceb30.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- d_polite_words_02:4 -> audio/generated/it-IT/dialogues/ffec404376cc2b5e62856d7063b83c2baa927fd61352f91ff60eefa785f56a01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'dialogue_turn'
  AND entity_id = UUID_TO_BIN('2357153f-b623-53e4-8c95-df8d90e28a61', 1)
  AND voice_key = 'character:matteo:male_calm'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'd_polite_words_02:4')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6e6d5917185cf69a495ae5fefd44146df1b03cf1dd2667268bcd05e86333d6dc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e567c447-3662-51fd-ac11-f4cc9f7544c6', 1), @audio_language_id, @audio_variant_id, 'dialogue_turn', UUID_TO_BIN('2357153f-b623-53e4-8c95-df8d90e28a61', 1), '6e6d5917185cf69a495ae5fefd44146df1b03cf1dd2667268bcd05e86333d6dc',
  'character:matteo:male_calm', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/dialogues/ffec404376cc2b5e62856d7063b83c2baa927fd61352f91ff60eefa785f56a01.mp3', 1071, '2026-09-14 01:57:04.634285', '5eee4240e059a95873edccfa64b94c189f181569a2911583f67c976530fb3c78', 'validated', '{"audio_key":"ffec404376cc2b5e62856d7063b83c2baa927fd61352f91ff60eefa785f56a01","entity_key":"d_polite_words_02:4","voice_id":"TnICJ0opDnjladqWtQ6k","voice_name":"Livio - Calm, Meditative and Balanced","voice_labels":{"gender":"male","accent":"standard","age":"middle_aged","category":"high_quality","language":"it","use_case":"narrative_story","descriptive":"calm"},"output_format":"mp3_44100_192","file_sha256":"5eee4240e059a95873edccfa64b94c189f181569a2911583f67c976530fb3c78","settings":{"stability":0.68,"similarity_boost":0.89,"style":0.06,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/dialogues/ffec404376cc2b5e62856d7063b83c2baa927fd61352f91ff60eefa785f56a01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_04 -> audio/generated/it-IT/lexical/085b2b8ff454242a1016e303106d6ba5b7d907429742f3cf391c813da0343103.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('129299ad-95b1-5b02-9a04-d439d555c81a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddf3c8a26e7de6359dfda8e24dd6ca9be98370994dbc5d3972ce66ed508f9515'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa638d7b-1189-5708-83b4-55a3419ae7e4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('129299ad-95b1-5b02-9a04-d439d555c81a', 1), 'ddf3c8a26e7de6359dfda8e24dd6ca9be98370994dbc5d3972ce66ed508f9515',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/085b2b8ff454242a1016e303106d6ba5b7d907429742f3cf391c813da0343103.mp3', 783, '2026-09-14 01:57:05.066213', 'dc44437713ca334c4237eabb6a4345cf7b0adc819aeee4010503cb5b9abda69f', 'validated', '{"audio_key":"085b2b8ff454242a1016e303106d6ba5b7d907429742f3cf391c813da0343103","entity_key":"lx_numbers_0_10_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"dc44437713ca334c4237eabb6a4345cf7b0adc819aeee4010503cb5b9abda69f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/085b2b8ff454242a1016e303106d6ba5b7d907429742f3cf391c813da0343103.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_04 -> audio/generated/it-IT/lexical/085b2b8ff454242a1016e303106d6ba5b7d907429742f3cf391c813da0343103.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cf0bc9d2-171b-5166-b847-182ba9efcac0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ddf3c8a26e7de6359dfda8e24dd6ca9be98370994dbc5d3972ce66ed508f9515'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5a90cc6c-34fb-5c2d-8205-3d3741608a1f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cf0bc9d2-171b-5166-b847-182ba9efcac0', 1), 'ddf3c8a26e7de6359dfda8e24dd6ca9be98370994dbc5d3972ce66ed508f9515',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/085b2b8ff454242a1016e303106d6ba5b7d907429742f3cf391c813da0343103.mp3', 783, '2026-09-14 01:57:05.066213', 'dc44437713ca334c4237eabb6a4345cf7b0adc819aeee4010503cb5b9abda69f', 'validated', '{"audio_key":"085b2b8ff454242a1016e303106d6ba5b7d907429742f3cf391c813da0343103","entity_key":"wf_numbers_0_10_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"dc44437713ca334c4237eabb6a4345cf7b0adc819aeee4010503cb5b9abda69f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/085b2b8ff454242a1016e303106d6ba5b7d907429742f3cf391c813da0343103.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_05 -> audio/generated/it-IT/lexical/08d046ce2ea2a5df413142de0245f1e3407d16adc3f127e27d01a4d86bc5829b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b7e37628-3b7a-5282-a885-2da8fa716d17', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '274c63d72da540559e02e9ae2cac2ba236410ceab16f8f8cb4523788a028117a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c97bb37f-f1bc-5635-84e0-e2cce8670386', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b7e37628-3b7a-5282-a885-2da8fa716d17', 1), '274c63d72da540559e02e9ae2cac2ba236410ceab16f8f8cb4523788a028117a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/08d046ce2ea2a5df413142de0245f1e3407d16adc3f127e27d01a4d86bc5829b.mp3', 1201, '2026-09-14 01:57:05.595278', 'eba95f6c2d47b2c7fc368610797b78b058ffe31c4bcac7e2715d3ff72a0443a9', 'validated', '{"audio_key":"08d046ce2ea2a5df413142de0245f1e3407d16adc3f127e27d01a4d86bc5829b","entity_key":"lx_first_greetings_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"eba95f6c2d47b2c7fc368610797b78b058ffe31c4bcac7e2715d3ff72a0443a9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/08d046ce2ea2a5df413142de0245f1e3407d16adc3f127e27d01a4d86bc5829b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_05 -> audio/generated/it-IT/lexical/08d046ce2ea2a5df413142de0245f1e3407d16adc3f127e27d01a4d86bc5829b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('ad1a03be-c5d7-520b-8d4e-da5b57122b2b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '274c63d72da540559e02e9ae2cac2ba236410ceab16f8f8cb4523788a028117a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1620952d-0197-560c-8858-a14cc985e871', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('ad1a03be-c5d7-520b-8d4e-da5b57122b2b', 1), '274c63d72da540559e02e9ae2cac2ba236410ceab16f8f8cb4523788a028117a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/08d046ce2ea2a5df413142de0245f1e3407d16adc3f127e27d01a4d86bc5829b.mp3', 1201, '2026-09-14 01:57:05.595278', 'eba95f6c2d47b2c7fc368610797b78b058ffe31c4bcac7e2715d3ff72a0443a9', 'validated', '{"audio_key":"08d046ce2ea2a5df413142de0245f1e3407d16adc3f127e27d01a4d86bc5829b","entity_key":"wf_first_greetings_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"eba95f6c2d47b2c7fc368610797b78b058ffe31c4bcac7e2715d3ff72a0443a9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/08d046ce2ea2a5df413142de0245f1e3407d16adc3f127e27d01a4d86bc5829b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_alphabet_01 -> audio/generated/it-IT/lexical/0b8b6c331bcefb07a2d3b849489d41eb8f911873a77babce58fd276768da7b81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e9cf1550-c356-5a68-9166-b78c43f764de', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_alphabet_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('88a56640-652a-5845-bb3d-d3a0d86f14d7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e9cf1550-c356-5a68-9166-b78c43f764de', 1), 'ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0b8b6c331bcefb07a2d3b849489d41eb8f911873a77babce58fd276768da7b81.mp3', 914, '2026-09-14 01:57:06.001207', 'c965eeac09188e88400267568547b62e45c4124f6feff28fb76142c46b4ad3fc', 'validated', '{"audio_key":"0b8b6c331bcefb07a2d3b849489d41eb8f911873a77babce58fd276768da7b81","entity_key":"lx_alphabet_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c965eeac09188e88400267568547b62e45c4124f6feff28fb76142c46b4ad3fc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0b8b6c331bcefb07a2d3b849489d41eb8f911873a77babce58fd276768da7b81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_alphabet_01 -> audio/generated/it-IT/lexical/0b8b6c331bcefb07a2d3b849489d41eb8f911873a77babce58fd276768da7b81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5f8023f3-5932-5f1e-8ee1-40eba0a2b6bc', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_alphabet_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('721a8ffb-797f-59b5-9f2b-36be259b904e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5f8023f3-5932-5f1e-8ee1-40eba0a2b6bc', 1), 'ca978112ca1bbdcafac231b39a23dc4da786eff8147c4e72b9807785afee48bb',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0b8b6c331bcefb07a2d3b849489d41eb8f911873a77babce58fd276768da7b81.mp3', 914, '2026-09-14 01:57:06.001207', 'c965eeac09188e88400267568547b62e45c4124f6feff28fb76142c46b4ad3fc', 'validated', '{"audio_key":"0b8b6c331bcefb07a2d3b849489d41eb8f911873a77babce58fd276768da7b81","entity_key":"wf_alphabet_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c965eeac09188e88400267568547b62e45c4124f6feff28fb76142c46b4ad3fc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0b8b6c331bcefb07a2d3b849489d41eb8f911873a77babce58fd276768da7b81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_05 -> audio/generated/it-IT/lexical/0d8959018abed9b88dedb9d9802bdc168b72eec37c0429938c3569081db2f269.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8b6b3ac1-cff5-5c44-adb2-129777c01b26', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7bb813331895b1bfe0d3cb3edcd8b1289a8ad600d83c3f01e92ede811e370722'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1b8476b4-416d-5b7c-a0db-5b40047bbe2a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8b6b3ac1-cff5-5c44-adb2-129777c01b26', 1), '7bb813331895b1bfe0d3cb3edcd8b1289a8ad600d83c3f01e92ede811e370722',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0d8959018abed9b88dedb9d9802bdc168b72eec37c0429938c3569081db2f269.mp3', 862, '2026-09-14 01:57:06.568407', '5208a530a3426615fab2e74bbcb8e49811e6a7efffb9a227c6d5dee68fa2b6ef', 'validated', '{"audio_key":"0d8959018abed9b88dedb9d9802bdc168b72eec37c0429938c3569081db2f269","entity_key":"lx_first_conversation_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5208a530a3426615fab2e74bbcb8e49811e6a7efffb9a227c6d5dee68fa2b6ef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0d8959018abed9b88dedb9d9802bdc168b72eec37c0429938c3569081db2f269.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_05 -> audio/generated/it-IT/lexical/0d8959018abed9b88dedb9d9802bdc168b72eec37c0429938c3569081db2f269.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f5688902-55db-5dd0-9793-c7683327884e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7bb813331895b1bfe0d3cb3edcd8b1289a8ad600d83c3f01e92ede811e370722'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c34aa3d3-33e5-5187-b5ad-2fb5303929cd', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f5688902-55db-5dd0-9793-c7683327884e', 1), '7bb813331895b1bfe0d3cb3edcd8b1289a8ad600d83c3f01e92ede811e370722',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/0d8959018abed9b88dedb9d9802bdc168b72eec37c0429938c3569081db2f269.mp3', 862, '2026-09-14 01:57:06.568407', '5208a530a3426615fab2e74bbcb8e49811e6a7efffb9a227c6d5dee68fa2b6ef', 'validated', '{"audio_key":"0d8959018abed9b88dedb9d9802bdc168b72eec37c0429938c3569081db2f269","entity_key":"wf_first_conversation_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5208a530a3426615fab2e74bbcb8e49811e6a7efffb9a227c6d5dee68fa2b6ef","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/0d8959018abed9b88dedb9d9802bdc168b72eec37c0429938c3569081db2f269.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_01 -> audio/generated/it-IT/lexical/114124cfe5fbef130c01cff1fc9c71eee6c56f8767608efb1943933d64e71fad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ffa08590-1bb9-515b-b93f-9bdd2160b96c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b62afae886347561c3a734dc195be37da1dbe5d7683ec16d107863af7c5f2954'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34615b39-4c0f-5ba6-91f1-f8fe3af0b28f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ffa08590-1bb9-515b-b93f-9bdd2160b96c', 1), 'b62afae886347561c3a734dc195be37da1dbe5d7683ec16d107863af7c5f2954',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/114124cfe5fbef130c01cff1fc9c71eee6c56f8767608efb1943933d64e71fad.mp3', 1018, '2026-09-14 01:57:06.947148', '07c644599149433d0f53e5a34ea4b2ec180d435b09b140299974dc681151ff9e', 'validated', '{"audio_key":"114124cfe5fbef130c01cff1fc9c71eee6c56f8767608efb1943933d64e71fad","entity_key":"lx_my_name_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"07c644599149433d0f53e5a34ea4b2ec180d435b09b140299974dc681151ff9e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/114124cfe5fbef130c01cff1fc9c71eee6c56f8767608efb1943933d64e71fad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_01 -> audio/generated/it-IT/lexical/114124cfe5fbef130c01cff1fc9c71eee6c56f8767608efb1943933d64e71fad.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6ad9f11f-6d3c-578a-bd65-7168ed023c53', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b62afae886347561c3a734dc195be37da1dbe5d7683ec16d107863af7c5f2954'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6555090-2d16-5660-9898-5e14110736ff', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6ad9f11f-6d3c-578a-bd65-7168ed023c53', 1), 'b62afae886347561c3a734dc195be37da1dbe5d7683ec16d107863af7c5f2954',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/114124cfe5fbef130c01cff1fc9c71eee6c56f8767608efb1943933d64e71fad.mp3', 1018, '2026-09-14 01:57:06.947148', '07c644599149433d0f53e5a34ea4b2ec180d435b09b140299974dc681151ff9e', 'validated', '{"audio_key":"114124cfe5fbef130c01cff1fc9c71eee6c56f8767608efb1943933d64e71fad","entity_key":"wf_my_name_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"07c644599149433d0f53e5a34ea4b2ec180d435b09b140299974dc681151ff9e","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/114124cfe5fbef130c01cff1fc9c71eee6c56f8767608efb1943933d64e71fad.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_05 -> audio/generated/it-IT/lexical/15139c40fe2371bdb59ac2df1d4508105c21014f7ba1999d2118da694b03f140.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('6f8e808f-e9f4-5d89-aee7-c568d5fc3f18', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aef5629b03ab9cb7d36b75d8f9a69d30eb7ad29230725e5ca0e551b8380ba418'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b39238df-affd-5de7-a295-1e15f5006ae5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('6f8e808f-e9f4-5d89-aee7-c568d5fc3f18', 1), 'aef5629b03ab9cb7d36b75d8f9a69d30eb7ad29230725e5ca0e551b8380ba418',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/15139c40fe2371bdb59ac2df1d4508105c21014f7ba1999d2118da694b03f140.mp3', 914, '2026-09-14 01:57:07.498961', 'b8ed16d14f4d18be3daba326862b1cf77128b2dbacd171fe1d6657f9c02dd652', 'validated', '{"audio_key":"15139c40fe2371bdb59ac2df1d4508105c21014f7ba1999d2118da694b03f140","entity_key":"lx_first_sounds_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b8ed16d14f4d18be3daba326862b1cf77128b2dbacd171fe1d6657f9c02dd652","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/15139c40fe2371bdb59ac2df1d4508105c21014f7ba1999d2118da694b03f140.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_05 -> audio/generated/it-IT/lexical/15139c40fe2371bdb59ac2df1d4508105c21014f7ba1999d2118da694b03f140.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1e60bdd4-2070-520e-b227-a1b787634692', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aef5629b03ab9cb7d36b75d8f9a69d30eb7ad29230725e5ca0e551b8380ba418'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9a202791-dada-5b47-bae1-de068a2ee45c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1e60bdd4-2070-520e-b227-a1b787634692', 1), 'aef5629b03ab9cb7d36b75d8f9a69d30eb7ad29230725e5ca0e551b8380ba418',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/15139c40fe2371bdb59ac2df1d4508105c21014f7ba1999d2118da694b03f140.mp3', 914, '2026-09-14 01:57:07.498961', 'b8ed16d14f4d18be3daba326862b1cf77128b2dbacd171fe1d6657f9c02dd652', 'validated', '{"audio_key":"15139c40fe2371bdb59ac2df1d4508105c21014f7ba1999d2118da694b03f140","entity_key":"wf_first_sounds_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b8ed16d14f4d18be3daba326862b1cf77128b2dbacd171fe1d6657f9c02dd652","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/15139c40fe2371bdb59ac2df1d4508105c21014f7ba1999d2118da694b03f140.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_how_are_you_03 -> audio/generated/it-IT/lexical/1a831baf43f3b603f37ea9a763dfdd276c84ed556fdeac8bfb2306950465fe61.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('04ea8279-37e8-5a69-99ab-517f014f89c3', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_how_are_you_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b06893927f540deb1738e4010005e5190369a6eb72881ca7f6bc70ec3cfa2e5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d383d1cb-49ad-5346-a0c2-6228ec520efa', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('04ea8279-37e8-5a69-99ab-517f014f89c3', 1), 'b06893927f540deb1738e4010005e5190369a6eb72881ca7f6bc70ec3cfa2e5a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1a831baf43f3b603f37ea9a763dfdd276c84ed556fdeac8bfb2306950465fe61.mp3', 1149, '2026-09-14 01:57:07.933284', '058def7d954a8be258d7dbe888dba89620e529437f4519f1fa1b8ac48ca1198f', 'validated', '{"audio_key":"1a831baf43f3b603f37ea9a763dfdd276c84ed556fdeac8bfb2306950465fe61","entity_key":"lx_how_are_you_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"058def7d954a8be258d7dbe888dba89620e529437f4519f1fa1b8ac48ca1198f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1a831baf43f3b603f37ea9a763dfdd276c84ed556fdeac8bfb2306950465fe61.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_how_are_you_03 -> audio/generated/it-IT/lexical/1a831baf43f3b603f37ea9a763dfdd276c84ed556fdeac8bfb2306950465fe61.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('89792a53-6495-539f-b280-8ce9ec3c1d6f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_how_are_you_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b06893927f540deb1738e4010005e5190369a6eb72881ca7f6bc70ec3cfa2e5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9979cff4-1a85-53fa-9f8d-730da2e95b27', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('89792a53-6495-539f-b280-8ce9ec3c1d6f', 1), 'b06893927f540deb1738e4010005e5190369a6eb72881ca7f6bc70ec3cfa2e5a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1a831baf43f3b603f37ea9a763dfdd276c84ed556fdeac8bfb2306950465fe61.mp3', 1149, '2026-09-14 01:57:07.933284', '058def7d954a8be258d7dbe888dba89620e529437f4519f1fa1b8ac48ca1198f', 'validated', '{"audio_key":"1a831baf43f3b603f37ea9a763dfdd276c84ed556fdeac8bfb2306950465fe61","entity_key":"wf_how_are_you_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"058def7d954a8be258d7dbe888dba89620e529437f4519f1fa1b8ac48ca1198f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1a831baf43f3b603f37ea9a763dfdd276c84ed556fdeac8bfb2306950465fe61.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_01 -> audio/generated/it-IT/lexical/1af700f6a17205bc3867879ae0891a98ec264780eb10475df8c7f6f9efd938c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3169d2f7-5f42-5913-b5d4-8a9d3cb2b1f1', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b133a0c0e9bee3be20163d2ad31d6248db292aa6dcb1ee087a2aa50e0fc75ae2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9163c1fd-2b81-55dd-b2e9-b899a6e3bab8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3169d2f7-5f42-5913-b5d4-8a9d3cb2b1f1', 1), 'b133a0c0e9bee3be20163d2ad31d6248db292aa6dcb1ee087a2aa50e0fc75ae2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1af700f6a17205bc3867879ae0891a98ec264780eb10475df8c7f6f9efd938c3.mp3', 914, '2026-09-14 01:57:08.460685', '26bfb11fc43b0a046954507120e9fd1efc262073c891bd28fffb89f5b4da3d81', 'validated', '{"audio_key":"1af700f6a17205bc3867879ae0891a98ec264780eb10475df8c7f6f9efd938c3","entity_key":"lx_first_greetings_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"26bfb11fc43b0a046954507120e9fd1efc262073c891bd28fffb89f5b4da3d81","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1af700f6a17205bc3867879ae0891a98ec264780eb10475df8c7f6f9efd938c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_01 -> audio/generated/it-IT/lexical/1af700f6a17205bc3867879ae0891a98ec264780eb10475df8c7f6f9efd938c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('dc5df5ed-7a1d-5407-8a13-2af516820c59', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b133a0c0e9bee3be20163d2ad31d6248db292aa6dcb1ee087a2aa50e0fc75ae2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5c12cf96-4003-533d-a604-2679ae84fe61', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('dc5df5ed-7a1d-5407-8a13-2af516820c59', 1), 'b133a0c0e9bee3be20163d2ad31d6248db292aa6dcb1ee087a2aa50e0fc75ae2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1af700f6a17205bc3867879ae0891a98ec264780eb10475df8c7f6f9efd938c3.mp3', 914, '2026-09-14 01:57:08.460685', '26bfb11fc43b0a046954507120e9fd1efc262073c891bd28fffb89f5b4da3d81', 'validated', '{"audio_key":"1af700f6a17205bc3867879ae0891a98ec264780eb10475df8c7f6f9efd938c3","entity_key":"wf_first_greetings_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"26bfb11fc43b0a046954507120e9fd1efc262073c891bd28fffb89f5b4da3d81","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1af700f6a17205bc3867879ae0891a98ec264780eb10475df8c7f6f9efd938c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_02 -> audio/generated/it-IT/lexical/1af700f6a17205bc3867879ae0891a98ec264780eb10475df8c7f6f9efd938c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3169d2f7-5f42-5913-b5d4-8a9d3cb2b1f1', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b133a0c0e9bee3be20163d2ad31d6248db292aa6dcb1ee087a2aa50e0fc75ae2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9163c1fd-2b81-55dd-b2e9-b899a6e3bab8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3169d2f7-5f42-5913-b5d4-8a9d3cb2b1f1', 1), 'b133a0c0e9bee3be20163d2ad31d6248db292aa6dcb1ee087a2aa50e0fc75ae2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1af700f6a17205bc3867879ae0891a98ec264780eb10475df8c7f6f9efd938c3.mp3', 914, '2026-09-14 01:57:08.460685', '26bfb11fc43b0a046954507120e9fd1efc262073c891bd28fffb89f5b4da3d81', 'validated', '{"audio_key":"1af700f6a17205bc3867879ae0891a98ec264780eb10475df8c7f6f9efd938c3","entity_key":"lx_first_sounds_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"26bfb11fc43b0a046954507120e9fd1efc262073c891bd28fffb89f5b4da3d81","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1af700f6a17205bc3867879ae0891a98ec264780eb10475df8c7f6f9efd938c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_02 -> audio/generated/it-IT/lexical/1af700f6a17205bc3867879ae0891a98ec264780eb10475df8c7f6f9efd938c3.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a06894be-ad09-5a7f-98b4-aece11231b55', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b133a0c0e9bee3be20163d2ad31d6248db292aa6dcb1ee087a2aa50e0fc75ae2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4b602094-2085-59e7-a221-c16fbdfd801e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a06894be-ad09-5a7f-98b4-aece11231b55', 1), 'b133a0c0e9bee3be20163d2ad31d6248db292aa6dcb1ee087a2aa50e0fc75ae2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1af700f6a17205bc3867879ae0891a98ec264780eb10475df8c7f6f9efd938c3.mp3', 914, '2026-09-14 01:57:08.460685', '26bfb11fc43b0a046954507120e9fd1efc262073c891bd28fffb89f5b4da3d81', 'validated', '{"audio_key":"1af700f6a17205bc3867879ae0891a98ec264780eb10475df8c7f6f9efd938c3","entity_key":"wf_first_sounds_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"26bfb11fc43b0a046954507120e9fd1efc262073c891bd28fffb89f5b4da3d81","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1af700f6a17205bc3867879ae0891a98ec264780eb10475df8c7f6f9efd938c3.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_01 -> audio/generated/it-IT/lexical/1bd967f3915f8a6de7bd54534a1aa1a5776d0f85b8844362ee5e1e559e5993f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c89c801c-405f-58fd-a8fe-8c5975b046d8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b3813027ed2150ec3449f0716cf53c5d4a632486136365bd23e19c372884553f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f274ac54-2594-5a49-8654-9db2719b254f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c89c801c-405f-58fd-a8fe-8c5975b046d8', 1), 'b3813027ed2150ec3449f0716cf53c5d4a632486136365bd23e19c372884553f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1bd967f3915f8a6de7bd54534a1aa1a5776d0f85b8844362ee5e1e559e5993f5.mp3', 966, '2026-09-14 01:57:08.855589', '1611bdec4f1e420620b619619071dc4e392dd65a2390374fe488a1a3c199ed4c', 'validated', '{"audio_key":"1bd967f3915f8a6de7bd54534a1aa1a5776d0f85b8844362ee5e1e559e5993f5","entity_key":"lx_first_sounds_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1611bdec4f1e420620b619619071dc4e392dd65a2390374fe488a1a3c199ed4c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1bd967f3915f8a6de7bd54534a1aa1a5776d0f85b8844362ee5e1e559e5993f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_01 -> audio/generated/it-IT/lexical/1bd967f3915f8a6de7bd54534a1aa1a5776d0f85b8844362ee5e1e559e5993f5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('863fdaa4-a515-5f35-b0d3-47a145be60aa', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b3813027ed2150ec3449f0716cf53c5d4a632486136365bd23e19c372884553f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6540fa07-39c3-564d-bb8b-9f955888d818', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('863fdaa4-a515-5f35-b0d3-47a145be60aa', 1), 'b3813027ed2150ec3449f0716cf53c5d4a632486136365bd23e19c372884553f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1bd967f3915f8a6de7bd54534a1aa1a5776d0f85b8844362ee5e1e559e5993f5.mp3', 966, '2026-09-14 01:57:08.855589', '1611bdec4f1e420620b619619071dc4e392dd65a2390374fe488a1a3c199ed4c', 'validated', '{"audio_key":"1bd967f3915f8a6de7bd54534a1aa1a5776d0f85b8844362ee5e1e559e5993f5","entity_key":"wf_first_sounds_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1611bdec4f1e420620b619619071dc4e392dd65a2390374fe488a1a3c199ed4c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1bd967f3915f8a6de7bd54534a1aa1a5776d0f85b8844362ee5e1e559e5993f5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_03 -> audio/generated/it-IT/lexical/1c14fb9d5a9328e9fc25dc590fb7e6fdf33617e41fb0733631a4cc8112ba8bc5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5f6f6059-0774-5f6f-9175-ed6e9babd4c2', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26eeb57586214e0e46df4e688071dca65262d6ebcda89513ccb58c00a371f9ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fd248a58-cc3e-5b7a-8032-d8bf9485a8d7', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5f6f6059-0774-5f6f-9175-ed6e9babd4c2', 1), '26eeb57586214e0e46df4e688071dca65262d6ebcda89513ccb58c00a371f9ae',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1c14fb9d5a9328e9fc25dc590fb7e6fdf33617e41fb0733631a4cc8112ba8bc5.mp3', 1018, '2026-09-14 01:57:09.437249', '8554dac21733d59f065274a8e9f30c0c65e3d2fc928d8bbc7948c021509b75a3', 'validated', '{"audio_key":"1c14fb9d5a9328e9fc25dc590fb7e6fdf33617e41fb0733631a4cc8112ba8bc5","entity_key":"lx_first_greetings_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8554dac21733d59f065274a8e9f30c0c65e3d2fc928d8bbc7948c021509b75a3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1c14fb9d5a9328e9fc25dc590fb7e6fdf33617e41fb0733631a4cc8112ba8bc5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_03 -> audio/generated/it-IT/lexical/1c14fb9d5a9328e9fc25dc590fb7e6fdf33617e41fb0733631a4cc8112ba8bc5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('5f59c522-82fd-5189-921f-997f97cd5fe8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '26eeb57586214e0e46df4e688071dca65262d6ebcda89513ccb58c00a371f9ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a9803758-d864-5377-8837-a7ddbc3d68aa', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('5f59c522-82fd-5189-921f-997f97cd5fe8', 1), '26eeb57586214e0e46df4e688071dca65262d6ebcda89513ccb58c00a371f9ae',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1c14fb9d5a9328e9fc25dc590fb7e6fdf33617e41fb0733631a4cc8112ba8bc5.mp3', 1018, '2026-09-14 01:57:09.437249', '8554dac21733d59f065274a8e9f30c0c65e3d2fc928d8bbc7948c021509b75a3', 'validated', '{"audio_key":"1c14fb9d5a9328e9fc25dc590fb7e6fdf33617e41fb0733631a4cc8112ba8bc5","entity_key":"wf_first_greetings_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8554dac21733d59f065274a8e9f30c0c65e3d2fc928d8bbc7948c021509b75a3","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1c14fb9d5a9328e9fc25dc590fb7e6fdf33617e41fb0733631a4cc8112ba8bc5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_03 -> audio/generated/it-IT/lexical/1e36de8311922e93360131c1a2718e39abdc67c911abaae58a73156bf3a6bb24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('043f5280-79b6-56c6-a6fd-5f0c3717c6ff', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7503ee52b989df37f56c5676a10c820929736e7e6665cec00f412c9c960ab89a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('925b5643-00e8-5345-945f-2de4038668d4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('043f5280-79b6-56c6-a6fd-5f0c3717c6ff', 1), '7503ee52b989df37f56c5676a10c820929736e7e6665cec00f412c9c960ab89a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1e36de8311922e93360131c1a2718e39abdc67c911abaae58a73156bf3a6bb24.mp3', 1071, '2026-09-14 01:57:09.794999', '5666ad1d8bfaf990bc1c9c060265854af7320096cc51f23bfdc740683617839a', 'validated', '{"audio_key":"1e36de8311922e93360131c1a2718e39abdc67c911abaae58a73156bf3a6bb24","entity_key":"lx_first_objects_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5666ad1d8bfaf990bc1c9c060265854af7320096cc51f23bfdc740683617839a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1e36de8311922e93360131c1a2718e39abdc67c911abaae58a73156bf3a6bb24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_03 -> audio/generated/it-IT/lexical/1e36de8311922e93360131c1a2718e39abdc67c911abaae58a73156bf3a6bb24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('8c3b5502-5699-59fa-a3ec-e5bea9ea7707', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7503ee52b989df37f56c5676a10c820929736e7e6665cec00f412c9c960ab89a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b6ea79a8-244a-5878-a7a3-fcd814bb6aa2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('8c3b5502-5699-59fa-a3ec-e5bea9ea7707', 1), '7503ee52b989df37f56c5676a10c820929736e7e6665cec00f412c9c960ab89a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/1e36de8311922e93360131c1a2718e39abdc67c911abaae58a73156bf3a6bb24.mp3', 1071, '2026-09-14 01:57:09.794999', '5666ad1d8bfaf990bc1c9c060265854af7320096cc51f23bfdc740683617839a', 'validated', '{"audio_key":"1e36de8311922e93360131c1a2718e39abdc67c911abaae58a73156bf3a6bb24","entity_key":"wf_first_objects_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5666ad1d8bfaf990bc1c9c060265854af7320096cc51f23bfdc740683617839a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/1e36de8311922e93360131c1a2718e39abdc67c911abaae58a73156bf3a6bb24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_how_are_you_04 -> audio/generated/it-IT/lexical/2033bd42a7baf76b624904d01e0cee2e3aa20d4db6a54bccea3e9613a31479de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f3e7d748-78d7-5924-9e33-c8ab6a309d14', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_how_are_you_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9cd8bc05f2995b664c3e8a36f98d114c577759397db6279b8c9a5bdf95232f09'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2d344ef3-8b56-57e3-b3aa-2a1576f50cb1', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f3e7d748-78d7-5924-9e33-c8ab6a309d14', 1), '9cd8bc05f2995b664c3e8a36f98d114c577759397db6279b8c9a5bdf95232f09',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2033bd42a7baf76b624904d01e0cee2e3aa20d4db6a54bccea3e9613a31479de.mp3', 1071, '2026-09-14 01:57:10.397035', 'f80aa237fe98b1d4b9ee3b0a06a0619d4ecc0a048fa2d22369d6d44dc919fba8', 'validated', '{"audio_key":"2033bd42a7baf76b624904d01e0cee2e3aa20d4db6a54bccea3e9613a31479de","entity_key":"lx_how_are_you_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f80aa237fe98b1d4b9ee3b0a06a0619d4ecc0a048fa2d22369d6d44dc919fba8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2033bd42a7baf76b624904d01e0cee2e3aa20d4db6a54bccea3e9613a31479de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_how_are_you_04 -> audio/generated/it-IT/lexical/2033bd42a7baf76b624904d01e0cee2e3aa20d4db6a54bccea3e9613a31479de.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e4218e5a-3480-530a-a862-8db3a74bca40', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_how_are_you_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9cd8bc05f2995b664c3e8a36f98d114c577759397db6279b8c9a5bdf95232f09'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a485f36-4b99-500f-a764-a6e9318a2e55', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e4218e5a-3480-530a-a862-8db3a74bca40', 1), '9cd8bc05f2995b664c3e8a36f98d114c577759397db6279b8c9a5bdf95232f09',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2033bd42a7baf76b624904d01e0cee2e3aa20d4db6a54bccea3e9613a31479de.mp3', 1071, '2026-09-14 01:57:10.397035', 'f80aa237fe98b1d4b9ee3b0a06a0619d4ecc0a048fa2d22369d6d44dc919fba8', 'validated', '{"audio_key":"2033bd42a7baf76b624904d01e0cee2e3aa20d4db6a54bccea3e9613a31479de","entity_key":"wf_how_are_you_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f80aa237fe98b1d4b9ee3b0a06a0619d4ecc0a048fa2d22369d6d44dc919fba8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2033bd42a7baf76b624904d01e0cee2e3aa20d4db6a54bccea3e9613a31479de.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_05 -> audio/generated/it-IT/lexical/2127cfa1f31d4c49547bdb4b46659bb010d6d29ab89ebf7d23b5e876b072333d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7e230449-7412-5ec2-b692-843e07b2c36b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0bb5e280de08d4e07fb20eff253fb9ef24b4348e191ad3dd3f087ac938614b59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6dbc59f9-c6b6-51e4-b535-db609e018058', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7e230449-7412-5ec2-b692-843e07b2c36b', 1), '0bb5e280de08d4e07fb20eff253fb9ef24b4348e191ad3dd3f087ac938614b59',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2127cfa1f31d4c49547bdb4b46659bb010d6d29ab89ebf7d23b5e876b072333d.mp3', 1253, '2026-09-14 01:57:10.772154', '13476606d8936eba37278581bad44b8f1451016f28855b475b355d48ee3557f1', 'validated', '{"audio_key":"2127cfa1f31d4c49547bdb4b46659bb010d6d29ab89ebf7d23b5e876b072333d","entity_key":"lx_survival_words_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"13476606d8936eba37278581bad44b8f1451016f28855b475b355d48ee3557f1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2127cfa1f31d4c49547bdb4b46659bb010d6d29ab89ebf7d23b5e876b072333d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_05 -> audio/generated/it-IT/lexical/2127cfa1f31d4c49547bdb4b46659bb010d6d29ab89ebf7d23b5e876b072333d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0fd87a8b-eb75-56db-ac7f-6b717d55a407', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '0bb5e280de08d4e07fb20eff253fb9ef24b4348e191ad3dd3f087ac938614b59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0e1a8ee-8fad-502c-9c3c-5abc3bc42b55', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0fd87a8b-eb75-56db-ac7f-6b717d55a407', 1), '0bb5e280de08d4e07fb20eff253fb9ef24b4348e191ad3dd3f087ac938614b59',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2127cfa1f31d4c49547bdb4b46659bb010d6d29ab89ebf7d23b5e876b072333d.mp3', 1253, '2026-09-14 01:57:10.772154', '13476606d8936eba37278581bad44b8f1451016f28855b475b355d48ee3557f1', 'validated', '{"audio_key":"2127cfa1f31d4c49547bdb4b46659bb010d6d29ab89ebf7d23b5e876b072333d","entity_key":"wf_survival_words_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"13476606d8936eba37278581bad44b8f1451016f28855b475b355d48ee3557f1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2127cfa1f31d4c49547bdb4b46659bb010d6d29ab89ebf7d23b5e876b072333d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_04 -> audio/generated/it-IT/lexical/286b319e136ebe6938a5cb2d0bf817f4a8495dcdb6532e210bc29e981b3b0ebd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('81c1a608-5e8c-5e51-ba8d-5c52d8cec9ef', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4a9371e87280199877061623242fc8ffa17e15e97370ceef7a8566a33d889fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5f92d7c-ef81-5a4a-8c00-4d14a75565e0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('81c1a608-5e8c-5e51-ba8d-5c52d8cec9ef', 1), 'a4a9371e87280199877061623242fc8ffa17e15e97370ceef7a8566a33d889fb',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/286b319e136ebe6938a5cb2d0bf817f4a8495dcdb6532e210bc29e981b3b0ebd.mp3', 966, '2026-09-14 01:57:11.318215', '685662c118b0d4fe32eba167fc37b6b130c771bf6f1cbe6b1e37f58337e66a7d', 'validated', '{"audio_key":"286b319e136ebe6938a5cb2d0bf817f4a8495dcdb6532e210bc29e981b3b0ebd","entity_key":"lx_first_objects_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"685662c118b0d4fe32eba167fc37b6b130c771bf6f1cbe6b1e37f58337e66a7d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/286b319e136ebe6938a5cb2d0bf817f4a8495dcdb6532e210bc29e981b3b0ebd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_04 -> audio/generated/it-IT/lexical/286b319e136ebe6938a5cb2d0bf817f4a8495dcdb6532e210bc29e981b3b0ebd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b13ac885-5c74-5058-9736-2b3f6aa54279', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'a4a9371e87280199877061623242fc8ffa17e15e97370ceef7a8566a33d889fb'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('99897ee8-e904-5d70-a055-33128670726c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b13ac885-5c74-5058-9736-2b3f6aa54279', 1), 'a4a9371e87280199877061623242fc8ffa17e15e97370ceef7a8566a33d889fb',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/286b319e136ebe6938a5cb2d0bf817f4a8495dcdb6532e210bc29e981b3b0ebd.mp3', 966, '2026-09-14 01:57:11.318215', '685662c118b0d4fe32eba167fc37b6b130c771bf6f1cbe6b1e37f58337e66a7d', 'validated', '{"audio_key":"286b319e136ebe6938a5cb2d0bf817f4a8495dcdb6532e210bc29e981b3b0ebd","entity_key":"wf_first_objects_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"685662c118b0d4fe32eba167fc37b6b130c771bf6f1cbe6b1e37f58337e66a7d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/286b319e136ebe6938a5cb2d0bf817f4a8495dcdb6532e210bc29e981b3b0ebd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_02 -> audio/generated/it-IT/lexical/2c75ab6f24df980b689babec173fdbc89a6cf05853118a128bb9a13d4aa08846.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c9a2e79e-4859-518d-b372-cc5acda91962', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c19636ddea25f0a13357d01c0aef27a4eb4c7f8cbaf2be35f272273572ce2e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9cf476a2-7168-5e3a-b6b2-5fc58990a512', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c9a2e79e-4859-518d-b372-cc5acda91962', 1), '9c19636ddea25f0a13357d01c0aef27a4eb4c7f8cbaf2be35f272273572ce2e5',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2c75ab6f24df980b689babec173fdbc89a6cf05853118a128bb9a13d4aa08846.mp3', 966, '2026-09-14 01:57:11.723735', '0b7b4172e7d919670481031401f42595bd3f1aa63970019919d6150df1a4e735', 'validated', '{"audio_key":"2c75ab6f24df980b689babec173fdbc89a6cf05853118a128bb9a13d4aa08846","entity_key":"lx_my_name_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0b7b4172e7d919670481031401f42595bd3f1aa63970019919d6150df1a4e735","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2c75ab6f24df980b689babec173fdbc89a6cf05853118a128bb9a13d4aa08846.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_02 -> audio/generated/it-IT/lexical/2c75ab6f24df980b689babec173fdbc89a6cf05853118a128bb9a13d4aa08846.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3fae6ff4-5999-581e-abd4-ae15eae2dac7', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9c19636ddea25f0a13357d01c0aef27a4eb4c7f8cbaf2be35f272273572ce2e5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cee072bf-22d4-5510-a677-0e1239ac8d3e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3fae6ff4-5999-581e-abd4-ae15eae2dac7', 1), '9c19636ddea25f0a13357d01c0aef27a4eb4c7f8cbaf2be35f272273572ce2e5',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/2c75ab6f24df980b689babec173fdbc89a6cf05853118a128bb9a13d4aa08846.mp3', 966, '2026-09-14 01:57:11.723735', '0b7b4172e7d919670481031401f42595bd3f1aa63970019919d6150df1a4e735', 'validated', '{"audio_key":"2c75ab6f24df980b689babec173fdbc89a6cf05853118a128bb9a13d4aa08846","entity_key":"wf_my_name_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0b7b4172e7d919670481031401f42595bd3f1aa63970019919d6150df1a4e735","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/2c75ab6f24df980b689babec173fdbc89a6cf05853118a128bb9a13d4aa08846.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_how_are_you_01 -> audio/generated/it-IT/lexical/30014b14b8ae024efb28b42a4e1970820b06817ed98320cbdc7f4484ee88a5fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ea68a1d3-3760-589b-97ef-c02e481083e2', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_how_are_you_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67459e73c843c8d2538df006445fcc09a2e8630693cbe9fd24260cceab48db74'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('524ed241-4182-5782-9a8d-9a7a062f7fca', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ea68a1d3-3760-589b-97ef-c02e481083e2', 1), '67459e73c843c8d2538df006445fcc09a2e8630693cbe9fd24260cceab48db74',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/30014b14b8ae024efb28b42a4e1970820b06817ed98320cbdc7f4484ee88a5fb.mp3', 1097, '2026-09-14 01:57:12.258267', 'ce8e8f0b5f365f3782bfff7a9dece35d4c6bfe20b48fe0df641c49bbbd3715df', 'validated', '{"audio_key":"30014b14b8ae024efb28b42a4e1970820b06817ed98320cbdc7f4484ee88a5fb","entity_key":"lx_how_are_you_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ce8e8f0b5f365f3782bfff7a9dece35d4c6bfe20b48fe0df641c49bbbd3715df","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/30014b14b8ae024efb28b42a4e1970820b06817ed98320cbdc7f4484ee88a5fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_how_are_you_01 -> audio/generated/it-IT/lexical/30014b14b8ae024efb28b42a4e1970820b06817ed98320cbdc7f4484ee88a5fb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('27e8dc43-e8f0-5876-8296-22c6ea796277', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_how_are_you_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '67459e73c843c8d2538df006445fcc09a2e8630693cbe9fd24260cceab48db74'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('107e000e-c271-5a06-b5c1-c8bc48365aed', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('27e8dc43-e8f0-5876-8296-22c6ea796277', 1), '67459e73c843c8d2538df006445fcc09a2e8630693cbe9fd24260cceab48db74',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/30014b14b8ae024efb28b42a4e1970820b06817ed98320cbdc7f4484ee88a5fb.mp3', 1097, '2026-09-14 01:57:12.258267', 'ce8e8f0b5f365f3782bfff7a9dece35d4c6bfe20b48fe0df641c49bbbd3715df', 'validated', '{"audio_key":"30014b14b8ae024efb28b42a4e1970820b06817ed98320cbdc7f4484ee88a5fb","entity_key":"wf_how_are_you_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ce8e8f0b5f365f3782bfff7a9dece35d4c6bfe20b48fe0df641c49bbbd3715df","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/30014b14b8ae024efb28b42a4e1970820b06817ed98320cbdc7f4484ee88a5fb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_02 -> audio/generated/it-IT/lexical/31e3d34de5f21dc1d515d201a3b68102c3d740dcab952cc04dcaf17d5c5a6086.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('505b8181-ef5b-502e-a348-d06bfae910f3', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf0ec3694e122e067d9964a38ec7d8415781df4b24f442ad767b4621fb98f8c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9ce3abde-e21a-5f95-8e5b-a0447f00c2c3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('505b8181-ef5b-502e-a348-d06bfae910f3', 1), 'bf0ec3694e122e067d9964a38ec7d8415781df4b24f442ad767b4621fb98f8c5',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/31e3d34de5f21dc1d515d201a3b68102c3d740dcab952cc04dcaf17d5c5a6086.mp3', 783, '2026-09-14 01:57:12.657873', '1010d7fb6b4cdba0dc0ed44cad7bc61a3fdc120def2cd8b6cbfb564ef3c8895c', 'validated', '{"audio_key":"31e3d34de5f21dc1d515d201a3b68102c3d740dcab952cc04dcaf17d5c5a6086","entity_key":"lx_numbers_0_10_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1010d7fb6b4cdba0dc0ed44cad7bc61a3fdc120def2cd8b6cbfb564ef3c8895c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/31e3d34de5f21dc1d515d201a3b68102c3d740dcab952cc04dcaf17d5c5a6086.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_02 -> audio/generated/it-IT/lexical/31e3d34de5f21dc1d515d201a3b68102c3d740dcab952cc04dcaf17d5c5a6086.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c853a097-97e7-520c-99b7-0cf1ca75f52f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bf0ec3694e122e067d9964a38ec7d8415781df4b24f442ad767b4621fb98f8c5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3da92cbb-652d-50fc-b705-717cb654f7c7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c853a097-97e7-520c-99b7-0cf1ca75f52f', 1), 'bf0ec3694e122e067d9964a38ec7d8415781df4b24f442ad767b4621fb98f8c5',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/31e3d34de5f21dc1d515d201a3b68102c3d740dcab952cc04dcaf17d5c5a6086.mp3', 783, '2026-09-14 01:57:12.657873', '1010d7fb6b4cdba0dc0ed44cad7bc61a3fdc120def2cd8b6cbfb564ef3c8895c', 'validated', '{"audio_key":"31e3d34de5f21dc1d515d201a3b68102c3d740dcab952cc04dcaf17d5c5a6086","entity_key":"wf_numbers_0_10_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1010d7fb6b4cdba0dc0ed44cad7bc61a3fdc120def2cd8b6cbfb564ef3c8895c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/31e3d34de5f21dc1d515d201a3b68102c3d740dcab952cc04dcaf17d5c5a6086.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_alphabet_03 -> audio/generated/it-IT/lexical/32aa2fe412e3c5db3821366d1cb6599a3b6b6edbe5dca674b3e135b3fa4e92b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('22010c77-4930-5e9f-948b-9934a92565ab', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_alphabet_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de7d1b721a1e0632b7cf04edf5032c8ecffa9f9a08492152b926f1a5a7e765d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ceb38a32-62fc-546a-817a-9941ea4288ed', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('22010c77-4930-5e9f-948b-9934a92565ab', 1), 'de7d1b721a1e0632b7cf04edf5032c8ecffa9f9a08492152b926f1a5a7e765d7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/32aa2fe412e3c5db3821366d1cb6599a3b6b6edbe5dca674b3e135b3fa4e92b2.mp3', 835, '2026-09-14 01:57:13.221929', 'ae23f4bb2d2c176eb05edaa5702d058010384972943548f2cd4cd3fd3966b918', 'validated', '{"audio_key":"32aa2fe412e3c5db3821366d1cb6599a3b6b6edbe5dca674b3e135b3fa4e92b2","entity_key":"lx_alphabet_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ae23f4bb2d2c176eb05edaa5702d058010384972943548f2cd4cd3fd3966b918","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/32aa2fe412e3c5db3821366d1cb6599a3b6b6edbe5dca674b3e135b3fa4e92b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_alphabet_03 -> audio/generated/it-IT/lexical/32aa2fe412e3c5db3821366d1cb6599a3b6b6edbe5dca674b3e135b3fa4e92b2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cedd11f8-d5b7-5401-9553-0c9cbf194de5', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_alphabet_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'de7d1b721a1e0632b7cf04edf5032c8ecffa9f9a08492152b926f1a5a7e765d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8e43aa84-bdce-53ea-b750-d7f46be6dc6c', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cedd11f8-d5b7-5401-9553-0c9cbf194de5', 1), 'de7d1b721a1e0632b7cf04edf5032c8ecffa9f9a08492152b926f1a5a7e765d7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/32aa2fe412e3c5db3821366d1cb6599a3b6b6edbe5dca674b3e135b3fa4e92b2.mp3', 835, '2026-09-14 01:57:13.221929', 'ae23f4bb2d2c176eb05edaa5702d058010384972943548f2cd4cd3fd3966b918', 'validated', '{"audio_key":"32aa2fe412e3c5db3821366d1cb6599a3b6b6edbe5dca674b3e135b3fa4e92b2","entity_key":"wf_alphabet_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ae23f4bb2d2c176eb05edaa5702d058010384972943548f2cd4cd3fd3966b918","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/32aa2fe412e3c5db3821366d1cb6599a3b6b6edbe5dca674b3e135b3fa4e92b2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_03 -> audio/generated/it-IT/lexical/3346d5dbecba313d2118a650fea09a7738c2af6d89849910ea3c58b3457d82bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('f134c2f4-3adc-5ae0-8035-a11464f0caea', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2cb4c2ac5779606a1fc2ff523ddacb4fd3a31294935a676b44c8e5a966586c5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('46886ec0-b6dd-5719-97d8-c5702c44a8f8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('f134c2f4-3adc-5ae0-8035-a11464f0caea', 1), '2cb4c2ac5779606a1fc2ff523ddacb4fd3a31294935a676b44c8e5a966586c5a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3346d5dbecba313d2118a650fea09a7738c2af6d89849910ea3c58b3457d82bc.mp3', 1071, '2026-09-14 01:57:13.593017', 'ff7aaa0416e513f7c1ea3fac625a374f0ed16ab85c7d4a069220b16771a1c8b1', 'validated', '{"audio_key":"3346d5dbecba313d2118a650fea09a7738c2af6d89849910ea3c58b3457d82bc","entity_key":"lx_first_conversation_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ff7aaa0416e513f7c1ea3fac625a374f0ed16ab85c7d4a069220b16771a1c8b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3346d5dbecba313d2118a650fea09a7738c2af6d89849910ea3c58b3457d82bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_03 -> audio/generated/it-IT/lexical/3346d5dbecba313d2118a650fea09a7738c2af6d89849910ea3c58b3457d82bc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('965dd7b7-2603-5737-8eba-e35f9dca7772', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2cb4c2ac5779606a1fc2ff523ddacb4fd3a31294935a676b44c8e5a966586c5a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b0f9e1bc-24c5-55b4-96e9-7284b836cf14', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('965dd7b7-2603-5737-8eba-e35f9dca7772', 1), '2cb4c2ac5779606a1fc2ff523ddacb4fd3a31294935a676b44c8e5a966586c5a',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3346d5dbecba313d2118a650fea09a7738c2af6d89849910ea3c58b3457d82bc.mp3', 1071, '2026-09-14 01:57:13.593017', 'ff7aaa0416e513f7c1ea3fac625a374f0ed16ab85c7d4a069220b16771a1c8b1', 'validated', '{"audio_key":"3346d5dbecba313d2118a650fea09a7738c2af6d89849910ea3c58b3457d82bc","entity_key":"wf_first_conversation_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ff7aaa0416e513f7c1ea3fac625a374f0ed16ab85c7d4a069220b16771a1c8b1","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3346d5dbecba313d2118a650fea09a7738c2af6d89849910ea3c58b3457d82bc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_02 -> audio/generated/it-IT/lexical/3589e85b183124c9584a1781013b404c8778a26bd2c74d3485757090fb3f5d0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('8d220273-5f6a-54bf-83f8-c31bbc40a046', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '760176194068f3029466de5c06f1faa6471a566c66eda866e984f0ca6674d96f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bcfab50a-2739-5bdc-a537-0b2516ee7f0a', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('8d220273-5f6a-54bf-83f8-c31bbc40a046', 1), '760176194068f3029466de5c06f1faa6471a566c66eda866e984f0ca6674d96f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3589e85b183124c9584a1781013b404c8778a26bd2c74d3485757090fb3f5d0a.mp3', 783, '2026-09-14 01:57:14.155217', 'ff74ab72c1d7289041419fde2ef6faf07a0eeca1c8388a3846a6974bf0c7ec30', 'validated', '{"audio_key":"3589e85b183124c9584a1781013b404c8778a26bd2c74d3485757090fb3f5d0a","entity_key":"lx_first_conversation_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ff74ab72c1d7289041419fde2ef6faf07a0eeca1c8388a3846a6974bf0c7ec30","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3589e85b183124c9584a1781013b404c8778a26bd2c74d3485757090fb3f5d0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_02 -> audio/generated/it-IT/lexical/3589e85b183124c9584a1781013b404c8778a26bd2c74d3485757090fb3f5d0a.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c10c38f7-bb01-593f-9d19-4a7c0497de4c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '760176194068f3029466de5c06f1faa6471a566c66eda866e984f0ca6674d96f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('90d5a5a0-f5fa-584d-bbfe-c8dc6d7ecdc0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c10c38f7-bb01-593f-9d19-4a7c0497de4c', 1), '760176194068f3029466de5c06f1faa6471a566c66eda866e984f0ca6674d96f',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/3589e85b183124c9584a1781013b404c8778a26bd2c74d3485757090fb3f5d0a.mp3', 783, '2026-09-14 01:57:14.155217', 'ff74ab72c1d7289041419fde2ef6faf07a0eeca1c8388a3846a6974bf0c7ec30', 'validated', '{"audio_key":"3589e85b183124c9584a1781013b404c8778a26bd2c74d3485757090fb3f5d0a","entity_key":"wf_first_conversation_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"ff74ab72c1d7289041419fde2ef6faf07a0eeca1c8388a3846a6974bf0c7ec30","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/3589e85b183124c9584a1781013b404c8778a26bd2c74d3485757090fb3f5d0a.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_words_05 -> audio/generated/it-IT/lexical/35b3a07371bfe81856dd18cb35e9a818daab231e110f1683436d4393007480e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('82ea7c5f-168d-54b3-ae05-c518d8fddee0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_words_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9978be657acd3ffd431b2d247d46ad77abf242da6286bdbc64a4326745ddade7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ff5f760-4995-5aa2-92ee-0633a14b7bf9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('82ea7c5f-168d-54b3-ae05-c518d8fddee0', 1), '9978be657acd3ffd431b2d247d46ad77abf242da6286bdbc64a4326745ddade7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/35b3a07371bfe81856dd18cb35e9a818daab231e110f1683436d4393007480e5.mp3', 1071, '2026-09-14 01:57:14.537423', 'b317a8f42ebf0d436eadf382cba755b3e8f983a1d072a9874fed82bad0ea83a2', 'validated', '{"audio_key":"35b3a07371bfe81856dd18cb35e9a818daab231e110f1683436d4393007480e5","entity_key":"lx_polite_words_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b317a8f42ebf0d436eadf382cba755b3e8f983a1d072a9874fed82bad0ea83a2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/35b3a07371bfe81856dd18cb35e9a818daab231e110f1683436d4393007480e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_words_05 -> audio/generated/it-IT/lexical/35b3a07371bfe81856dd18cb35e9a818daab231e110f1683436d4393007480e5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('85365b9d-89b3-5729-a742-096f9e02c5aa', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_words_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9978be657acd3ffd431b2d247d46ad77abf242da6286bdbc64a4326745ddade7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c275614-cb73-5a96-9ac1-b1859c790ff2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('85365b9d-89b3-5729-a742-096f9e02c5aa', 1), '9978be657acd3ffd431b2d247d46ad77abf242da6286bdbc64a4326745ddade7',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/35b3a07371bfe81856dd18cb35e9a818daab231e110f1683436d4393007480e5.mp3', 1071, '2026-09-14 01:57:14.537423', 'b317a8f42ebf0d436eadf382cba755b3e8f983a1d072a9874fed82bad0ea83a2', 'validated', '{"audio_key":"35b3a07371bfe81856dd18cb35e9a818daab231e110f1683436d4393007480e5","entity_key":"wf_polite_words_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"b317a8f42ebf0d436eadf382cba755b3e8f983a1d072a9874fed82bad0ea83a2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/35b3a07371bfe81856dd18cb35e9a818daab231e110f1683436d4393007480e5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_05 -> audio/generated/it-IT/lexical/38169843586c31ccfd00cd23a137aa99ebce09c5cb384f9d601f7398333a6e31.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('3ff31062-f367-5cfe-bb44-fe8b8a8c190f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ba6238eaad567c96a15f6810ac72c0fb5c7e7da21563c6c3ab55f8d98a7cf10'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0448e622-02b7-5f67-b2f4-6a73031dfd29', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('3ff31062-f367-5cfe-bb44-fe8b8a8c190f', 1), '4ba6238eaad567c96a15f6810ac72c0fb5c7e7da21563c6c3ab55f8d98a7cf10',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/38169843586c31ccfd00cd23a137aa99ebce09c5cb384f9d601f7398333a6e31.mp3', 862, '2026-09-14 01:57:15.095480', '2d2e9b197d4513ed650d497c4a57712ffdce8ed103370e68d7d363eb5834292f', 'validated', '{"audio_key":"38169843586c31ccfd00cd23a137aa99ebce09c5cb384f9d601f7398333a6e31","entity_key":"lx_my_name_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2d2e9b197d4513ed650d497c4a57712ffdce8ed103370e68d7d363eb5834292f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/38169843586c31ccfd00cd23a137aa99ebce09c5cb384f9d601f7398333a6e31.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_05 -> audio/generated/it-IT/lexical/38169843586c31ccfd00cd23a137aa99ebce09c5cb384f9d601f7398333a6e31.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('20f27ac3-2ffe-5a6f-b918-1baa16cf8078', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4ba6238eaad567c96a15f6810ac72c0fb5c7e7da21563c6c3ab55f8d98a7cf10'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('60336f19-04b7-5366-a2d0-ae4949c220de', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('20f27ac3-2ffe-5a6f-b918-1baa16cf8078', 1), '4ba6238eaad567c96a15f6810ac72c0fb5c7e7da21563c6c3ab55f8d98a7cf10',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/38169843586c31ccfd00cd23a137aa99ebce09c5cb384f9d601f7398333a6e31.mp3', 862, '2026-09-14 01:57:15.095480', '2d2e9b197d4513ed650d497c4a57712ffdce8ed103370e68d7d363eb5834292f', 'validated', '{"audio_key":"38169843586c31ccfd00cd23a137aa99ebce09c5cb384f9d601f7398333a6e31","entity_key":"wf_my_name_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2d2e9b197d4513ed650d497c4a57712ffdce8ed103370e68d7d363eb5834292f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/38169843586c31ccfd00cd23a137aa99ebce09c5cb384f9d601f7398333a6e31.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_03 -> audio/generated/it-IT/lexical/38427604847348cb54a7438b535225eb0bdb9ccd0961c77f47fa363ff6127ee2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('77ec602a-7062-52fd-84d3-f9d65236df3d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '250fccd5f5f76c7c866647d737ea3af37a8404744a5fc7c2628245194242304d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('124c3ed3-ec09-51eb-b4f0-ccfb56db39eb', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('77ec602a-7062-52fd-84d3-f9d65236df3d', 1), '250fccd5f5f76c7c866647d737ea3af37a8404744a5fc7c2628245194242304d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/38427604847348cb54a7438b535225eb0bdb9ccd0961c77f47fa363ff6127ee2.mp3', 835, '2026-09-14 01:57:15.470366', 'e8edcd987c0bc4b845b2fd7d0a718af7c4f599f70111a502eb3ffb2d0d42e06a', 'validated', '{"audio_key":"38427604847348cb54a7438b535225eb0bdb9ccd0961c77f47fa363ff6127ee2","entity_key":"lx_first_sounds_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e8edcd987c0bc4b845b2fd7d0a718af7c4f599f70111a502eb3ffb2d0d42e06a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/38427604847348cb54a7438b535225eb0bdb9ccd0961c77f47fa363ff6127ee2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_03 -> audio/generated/it-IT/lexical/38427604847348cb54a7438b535225eb0bdb9ccd0961c77f47fa363ff6127ee2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0959c42c-c210-560f-9700-c8386d7ab3c8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '250fccd5f5f76c7c866647d737ea3af37a8404744a5fc7c2628245194242304d'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8d6a7238-f063-581e-9e8c-1b268b279f86', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0959c42c-c210-560f-9700-c8386d7ab3c8', 1), '250fccd5f5f76c7c866647d737ea3af37a8404744a5fc7c2628245194242304d',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/38427604847348cb54a7438b535225eb0bdb9ccd0961c77f47fa363ff6127ee2.mp3', 835, '2026-09-14 01:57:15.470366', 'e8edcd987c0bc4b845b2fd7d0a718af7c4f599f70111a502eb3ffb2d0d42e06a', 'validated', '{"audio_key":"38427604847348cb54a7438b535225eb0bdb9ccd0961c77f47fa363ff6127ee2","entity_key":"wf_first_sounds_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e8edcd987c0bc4b845b2fd7d0a718af7c4f599f70111a502eb3ffb2d0d42e06a","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/38427604847348cb54a7438b535225eb0bdb9ccd0961c77f47fa363ff6127ee2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_04 -> audio/generated/it-IT/lexical/41916946b44a20a91d1dea0271852f84f3ecd245a365b7ee361a44a9ce141ea4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('d44e0aff-1a93-5638-a31a-44b10c724bb8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '24af5267518fcc67286b97667e929bd3ece4c6ebce523f9ad6c6470d32d9061c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5bce4b4-fd21-5fc9-a542-024835be8840', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('d44e0aff-1a93-5638-a31a-44b10c724bb8', 1), '24af5267518fcc67286b97667e929bd3ece4c6ebce523f9ad6c6470d32d9061c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/41916946b44a20a91d1dea0271852f84f3ecd245a365b7ee361a44a9ce141ea4.mp3', 1018, '2026-09-14 01:57:16.050143', '799b71d5443d511ecd148ed531937d17a400128ac1ebc6771aedf48dbfbebb67', 'validated', '{"audio_key":"41916946b44a20a91d1dea0271852f84f3ecd245a365b7ee361a44a9ce141ea4","entity_key":"lx_my_name_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"799b71d5443d511ecd148ed531937d17a400128ac1ebc6771aedf48dbfbebb67","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/41916946b44a20a91d1dea0271852f84f3ecd245a365b7ee361a44a9ce141ea4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_04 -> audio/generated/it-IT/lexical/41916946b44a20a91d1dea0271852f84f3ecd245a365b7ee361a44a9ce141ea4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('377d9e6c-0db9-5d03-8d9e-b038940a5d2b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '24af5267518fcc67286b97667e929bd3ece4c6ebce523f9ad6c6470d32d9061c'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4fc0fc7a-16e4-5c54-a860-ce5f06f41313', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('377d9e6c-0db9-5d03-8d9e-b038940a5d2b', 1), '24af5267518fcc67286b97667e929bd3ece4c6ebce523f9ad6c6470d32d9061c',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/41916946b44a20a91d1dea0271852f84f3ecd245a365b7ee361a44a9ce141ea4.mp3', 1018, '2026-09-14 01:57:16.050143', '799b71d5443d511ecd148ed531937d17a400128ac1ebc6771aedf48dbfbebb67', 'validated', '{"audio_key":"41916946b44a20a91d1dea0271852f84f3ecd245a365b7ee361a44a9ce141ea4","entity_key":"wf_my_name_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"799b71d5443d511ecd148ed531937d17a400128ac1ebc6771aedf48dbfbebb67","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/41916946b44a20a91d1dea0271852f84f3ecd245a365b7ee361a44a9ce141ea4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_04 -> audio/generated/it-IT/lexical/489e1b190143f7cd3bc804efc496c5c4f69c8b44e821d3ecaf6adf650661ce24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b043c083-4ed1-5451-9411-b4e7a2f243ba', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '812c887a23221c47e7fe694d9c988756fcd38d5b103e7ce6dc6929201a6adc55'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('64d75591-9c69-5d2f-856c-b72ec291b750', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b043c083-4ed1-5451-9411-b4e7a2f243ba', 1), '812c887a23221c47e7fe694d9c988756fcd38d5b103e7ce6dc6929201a6adc55',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/489e1b190143f7cd3bc804efc496c5c4f69c8b44e821d3ecaf6adf650661ce24.mp3', 966, '2026-09-14 01:57:16.392890', '2b959a73aa4d684d6f7771f23ac149c8250be0575764ea38295164ebdaaf4f8c', 'validated', '{"audio_key":"489e1b190143f7cd3bc804efc496c5c4f69c8b44e821d3ecaf6adf650661ce24","entity_key":"lx_first_conversation_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2b959a73aa4d684d6f7771f23ac149c8250be0575764ea38295164ebdaaf4f8c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/489e1b190143f7cd3bc804efc496c5c4f69c8b44e821d3ecaf6adf650661ce24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_04 -> audio/generated/it-IT/lexical/489e1b190143f7cd3bc804efc496c5c4f69c8b44e821d3ecaf6adf650661ce24.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('cd0633cf-6c45-553c-a7bb-e888b5a14372', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '812c887a23221c47e7fe694d9c988756fcd38d5b103e7ce6dc6929201a6adc55'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5cea843-94f5-5cc3-a3b0-91ddd8e31501', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('cd0633cf-6c45-553c-a7bb-e888b5a14372', 1), '812c887a23221c47e7fe694d9c988756fcd38d5b103e7ce6dc6929201a6adc55',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/489e1b190143f7cd3bc804efc496c5c4f69c8b44e821d3ecaf6adf650661ce24.mp3', 966, '2026-09-14 01:57:16.392890', '2b959a73aa4d684d6f7771f23ac149c8250be0575764ea38295164ebdaaf4f8c', 'validated', '{"audio_key":"489e1b190143f7cd3bc804efc496c5c4f69c8b44e821d3ecaf6adf650661ce24","entity_key":"wf_first_conversation_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2b959a73aa4d684d6f7771f23ac149c8250be0575764ea38295164ebdaaf4f8c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/489e1b190143f7cd3bc804efc496c5c4f69c8b44e821d3ecaf6adf650661ce24.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_06 -> audio/generated/it-IT/lexical/497c31ffffb5413be908b93b94659223f8768a7853308c3db3333ccae1fc83b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a7ed5f0a-2094-576b-b51f-cdf0baff61b0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8999487c7dd30aeb416b62d8f773247eb3e861db905b119660b961954a91e004'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a97e488a-5a8c-52f7-8cac-88253dae493b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a7ed5f0a-2094-576b-b51f-cdf0baff61b0', 1), '8999487c7dd30aeb416b62d8f773247eb3e861db905b119660b961954a91e004',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/497c31ffffb5413be908b93b94659223f8768a7853308c3db3333ccae1fc83b7.mp3', 914, '2026-09-14 01:57:16.969990', '7ce7b8ae9276c4055ae51aa48dabcf05c85fdf9c8a68c9a967c81bf40f3487ec', 'validated', '{"audio_key":"497c31ffffb5413be908b93b94659223f8768a7853308c3db3333ccae1fc83b7","entity_key":"lx_first_objects_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7ce7b8ae9276c4055ae51aa48dabcf05c85fdf9c8a68c9a967c81bf40f3487ec","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/497c31ffffb5413be908b93b94659223f8768a7853308c3db3333ccae1fc83b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_06 -> audio/generated/it-IT/lexical/497c31ffffb5413be908b93b94659223f8768a7853308c3db3333ccae1fc83b7.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('6dd7adc0-6fcc-5bda-a1c1-e25240001ef0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8999487c7dd30aeb416b62d8f773247eb3e861db905b119660b961954a91e004'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('09d59f94-6a6d-5f3e-9134-d2ef38ebcd08', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('6dd7adc0-6fcc-5bda-a1c1-e25240001ef0', 1), '8999487c7dd30aeb416b62d8f773247eb3e861db905b119660b961954a91e004',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/497c31ffffb5413be908b93b94659223f8768a7853308c3db3333ccae1fc83b7.mp3', 914, '2026-09-14 01:57:16.969990', '7ce7b8ae9276c4055ae51aa48dabcf05c85fdf9c8a68c9a967c81bf40f3487ec', 'validated', '{"audio_key":"497c31ffffb5413be908b93b94659223f8768a7853308c3db3333ccae1fc83b7","entity_key":"wf_first_objects_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7ce7b8ae9276c4055ae51aa48dabcf05c85fdf9c8a68c9a967c81bf40f3487ec","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/497c31ffffb5413be908b93b94659223f8768a7853308c3db3333ccae1fc83b7.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_01 -> audio/generated/it-IT/lexical/4eb1a32ffcd446036206517f6056e396aa23ebf5a63657295dbbf8f3df9c0339.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('051002dd-a682-549e-86b0-68db16516ef4', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7efe20901f083179f88567019725aea8275355dea2bd087c2243b0cee4a96824'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('548a00f8-84bf-5391-b2ef-8d86b8cb2526', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('051002dd-a682-549e-86b0-68db16516ef4', 1), '7efe20901f083179f88567019725aea8275355dea2bd087c2243b0cee4a96824',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4eb1a32ffcd446036206517f6056e396aa23ebf5a63657295dbbf8f3df9c0339.mp3', 835, '2026-09-14 01:57:17.346776', '96cb0d6108464545e04dfda214635e12cbde6044fc73736bca6827f12c493546', 'validated', '{"audio_key":"4eb1a32ffcd446036206517f6056e396aa23ebf5a63657295dbbf8f3df9c0339","entity_key":"lx_first_conversation_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"96cb0d6108464545e04dfda214635e12cbde6044fc73736bca6827f12c493546","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4eb1a32ffcd446036206517f6056e396aa23ebf5a63657295dbbf8f3df9c0339.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_01 -> audio/generated/it-IT/lexical/4eb1a32ffcd446036206517f6056e396aa23ebf5a63657295dbbf8f3df9c0339.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1d2af145-e75c-5aa1-a091-0db817d1031e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '7efe20901f083179f88567019725aea8275355dea2bd087c2243b0cee4a96824'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b1334b1e-295e-5a34-87c1-802b5cf23710', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1d2af145-e75c-5aa1-a091-0db817d1031e', 1), '7efe20901f083179f88567019725aea8275355dea2bd087c2243b0cee4a96824',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/4eb1a32ffcd446036206517f6056e396aa23ebf5a63657295dbbf8f3df9c0339.mp3', 835, '2026-09-14 01:57:17.346776', '96cb0d6108464545e04dfda214635e12cbde6044fc73736bca6827f12c493546', 'validated', '{"audio_key":"4eb1a32ffcd446036206517f6056e396aa23ebf5a63657295dbbf8f3df9c0339","entity_key":"wf_first_conversation_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"96cb0d6108464545e04dfda214635e12cbde6044fc73736bca6827f12c493546","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/4eb1a32ffcd446036206517f6056e396aa23ebf5a63657295dbbf8f3df9c0339.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_words_04 -> audio/generated/it-IT/lexical/55c9ea91d5b148d1361bb66561eabe390d230075fa3e7b858c204be508932e61.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('33481e46-0237-51ba-adc7-bfa9efa5258c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8efcf61cd3c0f0f94b64feaaf4c71522d0f8d53aa137e10732adadf1b5baecf1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4feb308d-423f-55f6-8fae-d9a87cae9210', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('33481e46-0237-51ba-adc7-bfa9efa5258c', 1), '8efcf61cd3c0f0f94b64feaaf4c71522d0f8d53aa137e10732adadf1b5baecf1',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/55c9ea91d5b148d1361bb66561eabe390d230075fa3e7b858c204be508932e61.mp3', 1018, '2026-09-14 01:57:17.908355', '335cc1691a13c2759479a8c9d7accae587b77981a5add617c72adcdcc2b2904d', 'validated', '{"audio_key":"55c9ea91d5b148d1361bb66561eabe390d230075fa3e7b858c204be508932e61","entity_key":"lx_polite_words_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"335cc1691a13c2759479a8c9d7accae587b77981a5add617c72adcdcc2b2904d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/55c9ea91d5b148d1361bb66561eabe390d230075fa3e7b858c204be508932e61.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_words_04 -> audio/generated/it-IT/lexical/55c9ea91d5b148d1361bb66561eabe390d230075fa3e7b858c204be508932e61.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0e474cba-1ef9-522f-85bb-0c544d8f9347', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8efcf61cd3c0f0f94b64feaaf4c71522d0f8d53aa137e10732adadf1b5baecf1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('53de3325-c697-5786-8e23-03b7d415557a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0e474cba-1ef9-522f-85bb-0c544d8f9347', 1), '8efcf61cd3c0f0f94b64feaaf4c71522d0f8d53aa137e10732adadf1b5baecf1',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/55c9ea91d5b148d1361bb66561eabe390d230075fa3e7b858c204be508932e61.mp3', 1018, '2026-09-14 01:57:17.908355', '335cc1691a13c2759479a8c9d7accae587b77981a5add617c72adcdcc2b2904d', 'validated', '{"audio_key":"55c9ea91d5b148d1361bb66561eabe390d230075fa3e7b858c204be508932e61","entity_key":"wf_polite_words_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"335cc1691a13c2759479a8c9d7accae587b77981a5add617c72adcdcc2b2904d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/55c9ea91d5b148d1361bb66561eabe390d230075fa3e7b858c204be508932e61.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_how_are_you_02 -> audio/generated/it-IT/lexical/5a1e923191458e185df0aab3a4dde9df133e6bd84426cfb80577efd2147f39c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('56f2990f-3861-57fe-92af-9c3a84b0052e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_how_are_you_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77fc577b9d1eb7ce327ef369b80de89cdec0ee0ce611e73b3c71060686e89821'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2dd344de-3880-5813-adc3-2fda3bb35ba3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('56f2990f-3861-57fe-92af-9c3a84b0052e', 1), '77fc577b9d1eb7ce327ef369b80de89cdec0ee0ce611e73b3c71060686e89821',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5a1e923191458e185df0aab3a4dde9df133e6bd84426cfb80577efd2147f39c9.mp3', 862, '2026-09-14 01:57:18.258509', 'f30293531a08add376b9144ba339dfa908c59b7b6e4aed8a5a11541ad2fbefc9', 'validated', '{"audio_key":"5a1e923191458e185df0aab3a4dde9df133e6bd84426cfb80577efd2147f39c9","entity_key":"lx_how_are_you_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f30293531a08add376b9144ba339dfa908c59b7b6e4aed8a5a11541ad2fbefc9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5a1e923191458e185df0aab3a4dde9df133e6bd84426cfb80577efd2147f39c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_how_are_you_02 -> audio/generated/it-IT/lexical/5a1e923191458e185df0aab3a4dde9df133e6bd84426cfb80577efd2147f39c9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('936f88ef-7b78-5e37-8b0b-22c468322ac0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_how_are_you_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '77fc577b9d1eb7ce327ef369b80de89cdec0ee0ce611e73b3c71060686e89821'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('238c251a-c839-55d1-ad6d-a2ecfa5bc25d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('936f88ef-7b78-5e37-8b0b-22c468322ac0', 1), '77fc577b9d1eb7ce327ef369b80de89cdec0ee0ce611e73b3c71060686e89821',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/5a1e923191458e185df0aab3a4dde9df133e6bd84426cfb80577efd2147f39c9.mp3', 862, '2026-09-14 01:57:18.258509', 'f30293531a08add376b9144ba339dfa908c59b7b6e4aed8a5a11541ad2fbefc9', 'validated', '{"audio_key":"5a1e923191458e185df0aab3a4dde9df133e6bd84426cfb80577efd2147f39c9","entity_key":"wf_how_are_you_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f30293531a08add376b9144ba339dfa908c59b7b6e4aed8a5a11541ad2fbefc9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/5a1e923191458e185df0aab3a4dde9df133e6bd84426cfb80577efd2147f39c9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_how_are_you_06 -> audio/generated/it-IT/lexical/6ebf99f4caa6d5cc0338e7a3cae0b14893c61df5c0b27ed718fdaa28b44346eb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('51469f26-7c34-5907-a732-0f885fac682a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_how_are_you_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0373cad9d9131510958a58de8f5f6dda16a4d4f001ce0f12f8474f7b7e837c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('633bce70-981a-566b-a8ef-d03bc6e539a3', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('51469f26-7c34-5907-a732-0f885fac682a', 1), 'b0373cad9d9131510958a58de8f5f6dda16a4d4f001ce0f12f8474f7b7e837c0',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6ebf99f4caa6d5cc0338e7a3cae0b14893c61df5c0b27ed718fdaa28b44346eb.mp3', 835, '2026-09-14 01:57:18.848123', 'e9d7156ed62e8fc0469f349b38868c2620651896268ee69afa5ee72be610be6b', 'validated', '{"audio_key":"6ebf99f4caa6d5cc0338e7a3cae0b14893c61df5c0b27ed718fdaa28b44346eb","entity_key":"lx_how_are_you_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e9d7156ed62e8fc0469f349b38868c2620651896268ee69afa5ee72be610be6b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6ebf99f4caa6d5cc0338e7a3cae0b14893c61df5c0b27ed718fdaa28b44346eb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_how_are_you_06 -> audio/generated/it-IT/lexical/6ebf99f4caa6d5cc0338e7a3cae0b14893c61df5c0b27ed718fdaa28b44346eb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('158957b7-6e8c-5f5d-bcb8-57e62b92f2aa', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_how_are_you_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b0373cad9d9131510958a58de8f5f6dda16a4d4f001ce0f12f8474f7b7e837c0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dfc3f9af-00d6-572e-adfd-363275b4d92a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('158957b7-6e8c-5f5d-bcb8-57e62b92f2aa', 1), 'b0373cad9d9131510958a58de8f5f6dda16a4d4f001ce0f12f8474f7b7e837c0',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/6ebf99f4caa6d5cc0338e7a3cae0b14893c61df5c0b27ed718fdaa28b44346eb.mp3', 835, '2026-09-14 01:57:18.848123', 'e9d7156ed62e8fc0469f349b38868c2620651896268ee69afa5ee72be610be6b', 'validated', '{"audio_key":"6ebf99f4caa6d5cc0338e7a3cae0b14893c61df5c0b27ed718fdaa28b44346eb","entity_key":"wf_how_are_you_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e9d7156ed62e8fc0469f349b38868c2620651896268ee69afa5ee72be610be6b","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/6ebf99f4caa6d5cc0338e7a3cae0b14893c61df5c0b27ed718fdaa28b44346eb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_02 -> audio/generated/it-IT/lexical/724bcae648396f0cc9c7411c2b7952691952679d4f9c49bc23f60feb2c13351d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('664efbd8-ea04-5e84-895e-e237f90d5724', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9390298f3fb0c5b160498935d79cb139aef28e1c47358b4bbba61862b9c26e59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ed6d97b4-3535-5a22-aefe-d4e47d222d28', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('664efbd8-ea04-5e84-895e-e237f90d5724', 1), '9390298f3fb0c5b160498935d79cb139aef28e1c47358b4bbba61862b9c26e59',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/724bcae648396f0cc9c7411c2b7952691952679d4f9c49bc23f60feb2c13351d.mp3', 835, '2026-09-14 01:57:19.221438', '716f7cb61d9e4fde82293d50e020230e4135204afc60bac741b3fa9dc12f538c', 'validated', '{"audio_key":"724bcae648396f0cc9c7411c2b7952691952679d4f9c49bc23f60feb2c13351d","entity_key":"lx_survival_words_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"716f7cb61d9e4fde82293d50e020230e4135204afc60bac741b3fa9dc12f538c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/724bcae648396f0cc9c7411c2b7952691952679d4f9c49bc23f60feb2c13351d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_02 -> audio/generated/it-IT/lexical/724bcae648396f0cc9c7411c2b7952691952679d4f9c49bc23f60feb2c13351d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('4aed0e94-a5b0-5826-8eb9-92fada161837', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9390298f3fb0c5b160498935d79cb139aef28e1c47358b4bbba61862b9c26e59'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe0174c2-d90d-5aeb-bae3-83e340f87290', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('4aed0e94-a5b0-5826-8eb9-92fada161837', 1), '9390298f3fb0c5b160498935d79cb139aef28e1c47358b4bbba61862b9c26e59',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/724bcae648396f0cc9c7411c2b7952691952679d4f9c49bc23f60feb2c13351d.mp3', 835, '2026-09-14 01:57:19.221438', '716f7cb61d9e4fde82293d50e020230e4135204afc60bac741b3fa9dc12f538c', 'validated', '{"audio_key":"724bcae648396f0cc9c7411c2b7952691952679d4f9c49bc23f60feb2c13351d","entity_key":"wf_survival_words_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"716f7cb61d9e4fde82293d50e020230e4135204afc60bac741b3fa9dc12f538c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/724bcae648396f0cc9c7411c2b7952691952679d4f9c49bc23f60feb2c13351d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_01 -> audio/generated/it-IT/lexical/779793f2da72796b912b79131c85257d1ab5613f56c97575360af72c78189bb8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('411b390f-cb3b-5155-a981-4fa15d9fe8ea', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a1e8c16a9623653b40b46e3f682afba9fe2b34cbffa51742a4e1685dc50fd61'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8c9eefbf-13a4-5ece-8852-1e00afe74e66', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('411b390f-cb3b-5155-a981-4fa15d9fe8ea', 1), '4a1e8c16a9623653b40b46e3f682afba9fe2b34cbffa51742a4e1685dc50fd61',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/779793f2da72796b912b79131c85257d1ab5613f56c97575360af72c78189bb8.mp3', 914, '2026-09-14 01:57:19.807012', 'd54a85c1cbd076f27fd386e47f6b2cd08adb4a28a62e71f0c294b5cd33ff6ed0', 'validated', '{"audio_key":"779793f2da72796b912b79131c85257d1ab5613f56c97575360af72c78189bb8","entity_key":"lx_first_objects_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d54a85c1cbd076f27fd386e47f6b2cd08adb4a28a62e71f0c294b5cd33ff6ed0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/779793f2da72796b912b79131c85257d1ab5613f56c97575360af72c78189bb8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_01 -> audio/generated/it-IT/lexical/779793f2da72796b912b79131c85257d1ab5613f56c97575360af72c78189bb8.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('97e8cf65-ffa6-57f4-bec6-2e742fb9e74e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4a1e8c16a9623653b40b46e3f682afba9fe2b34cbffa51742a4e1685dc50fd61'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f9326f00-2623-52d1-9148-dcdc4d1e7dd0', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('97e8cf65-ffa6-57f4-bec6-2e742fb9e74e', 1), '4a1e8c16a9623653b40b46e3f682afba9fe2b34cbffa51742a4e1685dc50fd61',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/779793f2da72796b912b79131c85257d1ab5613f56c97575360af72c78189bb8.mp3', 914, '2026-09-14 01:57:19.807012', 'd54a85c1cbd076f27fd386e47f6b2cd08adb4a28a62e71f0c294b5cd33ff6ed0', 'validated', '{"audio_key":"779793f2da72796b912b79131c85257d1ab5613f56c97575360af72c78189bb8","entity_key":"wf_first_objects_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d54a85c1cbd076f27fd386e47f6b2cd08adb4a28a62e71f0c294b5cd33ff6ed0","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/779793f2da72796b912b79131c85257d1ab5613f56c97575360af72c78189bb8.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_alphabet_02 -> audio/generated/it-IT/lexical/79ed0900559b0c52815903691672922fb06450bc3918d0885529282b69afb6dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('df32b5ce-0a32-5e3c-bdb9-1acab9fc266c', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_alphabet_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f79bb7b435b05321651daefd374cdc681dc06faa65e374e38337b88ca046dea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4b55181a-923a-5a13-996b-e84f98a83b80', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('df32b5ce-0a32-5e3c-bdb9-1acab9fc266c', 1), '3f79bb7b435b05321651daefd374cdc681dc06faa65e374e38337b88ca046dea',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/79ed0900559b0c52815903691672922fb06450bc3918d0885529282b69afb6dc.mp3', 679, '2026-09-14 01:57:20.127233', '7429c532bf951afe85a66108ad7a0151b9b5a63939de5ed6b0057d275f48c8b7', 'validated', '{"audio_key":"79ed0900559b0c52815903691672922fb06450bc3918d0885529282b69afb6dc","entity_key":"lx_alphabet_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7429c532bf951afe85a66108ad7a0151b9b5a63939de5ed6b0057d275f48c8b7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/79ed0900559b0c52815903691672922fb06450bc3918d0885529282b69afb6dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_alphabet_02 -> audio/generated/it-IT/lexical/79ed0900559b0c52815903691672922fb06450bc3918d0885529282b69afb6dc.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e852b566-fdf1-570a-8ceb-cfc18411530f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_alphabet_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3f79bb7b435b05321651daefd374cdc681dc06faa65e374e38337b88ca046dea'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e10d2ce3-3c86-5ce9-8fe5-467ae4e6b728', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e852b566-fdf1-570a-8ceb-cfc18411530f', 1), '3f79bb7b435b05321651daefd374cdc681dc06faa65e374e38337b88ca046dea',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/79ed0900559b0c52815903691672922fb06450bc3918d0885529282b69afb6dc.mp3', 679, '2026-09-14 01:57:20.127233', '7429c532bf951afe85a66108ad7a0151b9b5a63939de5ed6b0057d275f48c8b7', 'validated', '{"audio_key":"79ed0900559b0c52815903691672922fb06450bc3918d0885529282b69afb6dc","entity_key":"wf_alphabet_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7429c532bf951afe85a66108ad7a0151b9b5a63939de5ed6b0057d275f48c8b7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/79ed0900559b0c52815903691672922fb06450bc3918d0885529282b69afb6dc.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_03 -> audio/generated/it-IT/lexical/7d9e889cfde20b4ae9146bacb99cec72d9e121d18c668903567e89ee6a91f1a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('56405c36-a4fd-576f-9113-421d88367fb9', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '458a4770df2b51b57769fc806cab05bdaf02acce2edd42b90b6dd55dee1ea038'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4f68fef1-8298-5949-b4b5-42098e8222f8', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('56405c36-a4fd-576f-9113-421d88367fb9', 1), '458a4770df2b51b57769fc806cab05bdaf02acce2edd42b90b6dd55dee1ea038',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7d9e889cfde20b4ae9146bacb99cec72d9e121d18c668903567e89ee6a91f1a9.mp3', 783, '2026-09-14 01:57:20.732327', 'fc60656f4d8bc5d879e1a32f8345a7b5bd3689e6f2ef0d1e26f5e7682cd78709', 'validated', '{"audio_key":"7d9e889cfde20b4ae9146bacb99cec72d9e121d18c668903567e89ee6a91f1a9","entity_key":"lx_numbers_0_10_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"fc60656f4d8bc5d879e1a32f8345a7b5bd3689e6f2ef0d1e26f5e7682cd78709","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7d9e889cfde20b4ae9146bacb99cec72d9e121d18c668903567e89ee6a91f1a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_03 -> audio/generated/it-IT/lexical/7d9e889cfde20b4ae9146bacb99cec72d9e121d18c668903567e89ee6a91f1a9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('596ab54b-4b2d-5626-ab46-f526fdf38bda', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '458a4770df2b51b57769fc806cab05bdaf02acce2edd42b90b6dd55dee1ea038'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9f5ed42-569f-5102-988e-783eeb822574', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('596ab54b-4b2d-5626-ab46-f526fdf38bda', 1), '458a4770df2b51b57769fc806cab05bdaf02acce2edd42b90b6dd55dee1ea038',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7d9e889cfde20b4ae9146bacb99cec72d9e121d18c668903567e89ee6a91f1a9.mp3', 783, '2026-09-14 01:57:20.732327', 'fc60656f4d8bc5d879e1a32f8345a7b5bd3689e6f2ef0d1e26f5e7682cd78709', 'validated', '{"audio_key":"7d9e889cfde20b4ae9146bacb99cec72d9e121d18c668903567e89ee6a91f1a9","entity_key":"wf_numbers_0_10_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"fc60656f4d8bc5d879e1a32f8345a7b5bd3689e6f2ef0d1e26f5e7682cd78709","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7d9e889cfde20b4ae9146bacb99cec72d9e121d18c668903567e89ee6a91f1a9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_conversation_06 -> audio/generated/it-IT/lexical/7e426483a49249eb3d73060ea715a7999217275837b3afcf1d23697f68bbeb69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c795f3b2-fa52-5dfe-b384-4bd0b7d6a202', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_conversation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90f2cb47f3cc944cc5b81efedbd0708b212f63e866322c8cbd73e9b23475cff2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aa2aa99c-a180-553c-a18d-0b6c4703ec13', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c795f3b2-fa52-5dfe-b384-4bd0b7d6a202', 1), '90f2cb47f3cc944cc5b81efedbd0708b212f63e866322c8cbd73e9b23475cff2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7e426483a49249eb3d73060ea715a7999217275837b3afcf1d23697f68bbeb69.mp3', 1149, '2026-09-14 01:57:21.063871', '8d0c73aa17144ccaacabb494d4f660e0f88f598f9fe95740033bed2b3158f77f', 'validated', '{"audio_key":"7e426483a49249eb3d73060ea715a7999217275837b3afcf1d23697f68bbeb69","entity_key":"lx_first_conversation_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8d0c73aa17144ccaacabb494d4f660e0f88f598f9fe95740033bed2b3158f77f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7e426483a49249eb3d73060ea715a7999217275837b3afcf1d23697f68bbeb69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_conversation_06 -> audio/generated/it-IT/lexical/7e426483a49249eb3d73060ea715a7999217275837b3afcf1d23697f68bbeb69.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('703dea15-d3b4-57f6-a043-b205350abd76', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_conversation_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '90f2cb47f3cc944cc5b81efedbd0708b212f63e866322c8cbd73e9b23475cff2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('1534ddec-e7e5-5c71-96ca-0b4c0bc783f7', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('703dea15-d3b4-57f6-a043-b205350abd76', 1), '90f2cb47f3cc944cc5b81efedbd0708b212f63e866322c8cbd73e9b23475cff2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/7e426483a49249eb3d73060ea715a7999217275837b3afcf1d23697f68bbeb69.mp3', 1149, '2026-09-14 01:57:21.063871', '8d0c73aa17144ccaacabb494d4f660e0f88f598f9fe95740033bed2b3158f77f', 'validated', '{"audio_key":"7e426483a49249eb3d73060ea715a7999217275837b3afcf1d23697f68bbeb69","entity_key":"wf_first_conversation_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8d0c73aa17144ccaacabb494d4f660e0f88f598f9fe95740033bed2b3158f77f","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/7e426483a49249eb3d73060ea715a7999217275837b3afcf1d23697f68bbeb69.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_06 -> audio/generated/it-IT/lexical/8952242ea7c4cbdc06b94b0b2da6d5dd76686e258a31db80d54b8329726ef1ca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('12bd8f4f-67d3-51fd-9362-2009e8beffd1', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '30dc09b02a5d38dd3af0115b4c3b17b976880cfd7386584c0a659f6350862c99'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('34b94a73-0a2c-58ac-9446-c37474cc389e', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('12bd8f4f-67d3-51fd-9362-2009e8beffd1', 1), '30dc09b02a5d38dd3af0115b4c3b17b976880cfd7386584c0a659f6350862c99',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8952242ea7c4cbdc06b94b0b2da6d5dd76686e258a31db80d54b8329726ef1ca.mp3', 1018, '2026-09-14 01:57:21.664600', 'e37682359edee25783b453584224056a880c148da69b3937d5d6c0ef1c6d3926', 'validated', '{"audio_key":"8952242ea7c4cbdc06b94b0b2da6d5dd76686e258a31db80d54b8329726ef1ca","entity_key":"lx_numbers_0_10_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e37682359edee25783b453584224056a880c148da69b3937d5d6c0ef1c6d3926","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8952242ea7c4cbdc06b94b0b2da6d5dd76686e258a31db80d54b8329726ef1ca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_06 -> audio/generated/it-IT/lexical/8952242ea7c4cbdc06b94b0b2da6d5dd76686e258a31db80d54b8329726ef1ca.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('e9e07af2-5564-536c-b44e-19b0209578c2', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '30dc09b02a5d38dd3af0115b4c3b17b976880cfd7386584c0a659f6350862c99'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('88bfa40c-886c-53be-9170-7f609c0cac82', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('e9e07af2-5564-536c-b44e-19b0209578c2', 1), '30dc09b02a5d38dd3af0115b4c3b17b976880cfd7386584c0a659f6350862c99',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8952242ea7c4cbdc06b94b0b2da6d5dd76686e258a31db80d54b8329726ef1ca.mp3', 1018, '2026-09-14 01:57:21.664600', 'e37682359edee25783b453584224056a880c148da69b3937d5d6c0ef1c6d3926', 'validated', '{"audio_key":"8952242ea7c4cbdc06b94b0b2da6d5dd76686e258a31db80d54b8329726ef1ca","entity_key":"wf_numbers_0_10_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e37682359edee25783b453584224056a880c148da69b3937d5d6c0ef1c6d3926","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8952242ea7c4cbdc06b94b0b2da6d5dd76686e258a31db80d54b8329726ef1ca.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_04 -> audio/generated/it-IT/lexical/8f63a4d01131b396d105c225397221cc7509e444167899837589a19802e62141.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('b26a6d93-fee8-5cb3-a5f5-fc43a3bb8f52', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb094015d7e4bde85d32428662f0ac67d0c8266fec88ee466a57b71a38857b97'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fb133bae-b770-5c09-80a4-2b4dd59c7d23', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('b26a6d93-fee8-5cb3-a5f5-fc43a3bb8f52', 1), 'cb094015d7e4bde85d32428662f0ac67d0c8266fec88ee466a57b71a38857b97',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8f63a4d01131b396d105c225397221cc7509e444167899837589a19802e62141.mp3', 862, '2026-09-14 01:57:21.978383', '52ecaf5c5550085d22947f5a5224947d1fd03469bfe229f75f560aaf144cc81c', 'validated', '{"audio_key":"8f63a4d01131b396d105c225397221cc7509e444167899837589a19802e62141","entity_key":"lx_survival_words_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"52ecaf5c5550085d22947f5a5224947d1fd03469bfe229f75f560aaf144cc81c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8f63a4d01131b396d105c225397221cc7509e444167899837589a19802e62141.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_04 -> audio/generated/it-IT/lexical/8f63a4d01131b396d105c225397221cc7509e444167899837589a19802e62141.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('d0e374ff-2d66-5954-8560-4b1ff290845b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cb094015d7e4bde85d32428662f0ac67d0c8266fec88ee466a57b71a38857b97'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('31eaebce-4782-53ef-a121-e3097f2a5a8f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('d0e374ff-2d66-5954-8560-4b1ff290845b', 1), 'cb094015d7e4bde85d32428662f0ac67d0c8266fec88ee466a57b71a38857b97',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/8f63a4d01131b396d105c225397221cc7509e444167899837589a19802e62141.mp3', 862, '2026-09-14 01:57:21.978383', '52ecaf5c5550085d22947f5a5224947d1fd03469bfe229f75f560aaf144cc81c', 'validated', '{"audio_key":"8f63a4d01131b396d105c225397221cc7509e444167899837589a19802e62141","entity_key":"wf_survival_words_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"52ecaf5c5550085d22947f5a5224947d1fd03469bfe229f75f560aaf144cc81c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/8f63a4d01131b396d105c225397221cc7509e444167899837589a19802e62141.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_01 -> audio/generated/it-IT/lexical/90dce79b93bb8fb9d43087c5c6b88c65aad9faa0daebd8145a2c13c00becfbf2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('0f0916af-b772-5ac2-8f38-e34cd223229b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad273c98e326399952eda06334fc62a3e8c6ce59e2325438546eda4a2ebf0f6e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('df7f3b95-2a39-5b52-9b9c-091dd5082f8c', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('0f0916af-b772-5ac2-8f38-e34cd223229b', 1), 'ad273c98e326399952eda06334fc62a3e8c6ce59e2325438546eda4a2ebf0f6e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/90dce79b93bb8fb9d43087c5c6b88c65aad9faa0daebd8145a2c13c00becfbf2.mp3', 679, '2026-09-14 01:57:22.626697', '43d8a23cf0a9960a6bb4bd80dbf17bdb758db708bc11b7aceb759518898f5c7d', 'validated', '{"audio_key":"90dce79b93bb8fb9d43087c5c6b88c65aad9faa0daebd8145a2c13c00becfbf2","entity_key":"lx_survival_words_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"43d8a23cf0a9960a6bb4bd80dbf17bdb758db708bc11b7aceb759518898f5c7d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/90dce79b93bb8fb9d43087c5c6b88c65aad9faa0daebd8145a2c13c00becfbf2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_01 -> audio/generated/it-IT/lexical/90dce79b93bb8fb9d43087c5c6b88c65aad9faa0daebd8145a2c13c00becfbf2.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('0a2a88f2-68be-5d85-abe4-ad868ae85aa9', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ad273c98e326399952eda06334fc62a3e8c6ce59e2325438546eda4a2ebf0f6e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bc12e690-a8a5-52a1-a3be-508d765bd230', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('0a2a88f2-68be-5d85-abe4-ad868ae85aa9', 1), 'ad273c98e326399952eda06334fc62a3e8c6ce59e2325438546eda4a2ebf0f6e',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/90dce79b93bb8fb9d43087c5c6b88c65aad9faa0daebd8145a2c13c00becfbf2.mp3', 679, '2026-09-14 01:57:22.626697', '43d8a23cf0a9960a6bb4bd80dbf17bdb758db708bc11b7aceb759518898f5c7d', 'validated', '{"audio_key":"90dce79b93bb8fb9d43087c5c6b88c65aad9faa0daebd8145a2c13c00becfbf2","entity_key":"wf_survival_words_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"43d8a23cf0a9960a6bb4bd80dbf17bdb758db708bc11b7aceb759518898f5c7d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/90dce79b93bb8fb9d43087c5c6b88c65aad9faa0daebd8145a2c13c00becfbf2.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_alphabet_05 -> audio/generated/it-IT/lexical/9192bfb25fc6d561999df2dae71b6731bee67863e65a8342ffffcab387d1f611.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('2c3f9fdc-ae9e-5d8e-8e9d-150889eee814', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_alphabet_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd0aa9856147b6c5b4ff2b7dfee5da20aa38253099ef1b4a64aced233c9afe29'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4e631b1a-87b7-5369-bedd-8bd3a40c7ce2', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('2c3f9fdc-ae9e-5d8e-8e9d-150889eee814', 1), 'cd0aa9856147b6c5b4ff2b7dfee5da20aa38253099ef1b4a64aced233c9afe29',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/9192bfb25fc6d561999df2dae71b6731bee67863e65a8342ffffcab387d1f611.mp3', 914, '2026-09-14 01:57:22.900433', '08f7b398cb15bde5e17953b3f2947cbc16beb550c65500589d90a5ef18796d88', 'validated', '{"audio_key":"9192bfb25fc6d561999df2dae71b6731bee67863e65a8342ffffcab387d1f611","entity_key":"lx_alphabet_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"08f7b398cb15bde5e17953b3f2947cbc16beb550c65500589d90a5ef18796d88","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/9192bfb25fc6d561999df2dae71b6731bee67863e65a8342ffffcab387d1f611.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_alphabet_05 -> audio/generated/it-IT/lexical/9192bfb25fc6d561999df2dae71b6731bee67863e65a8342ffffcab387d1f611.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('375225b1-e1bf-5615-9d23-16896d28b082', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_alphabet_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cd0aa9856147b6c5b4ff2b7dfee5da20aa38253099ef1b4a64aced233c9afe29'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a6640d64-6216-5cb2-92b0-7b42a157c178', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('375225b1-e1bf-5615-9d23-16896d28b082', 1), 'cd0aa9856147b6c5b4ff2b7dfee5da20aa38253099ef1b4a64aced233c9afe29',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/9192bfb25fc6d561999df2dae71b6731bee67863e65a8342ffffcab387d1f611.mp3', 914, '2026-09-14 01:57:22.900433', '08f7b398cb15bde5e17953b3f2947cbc16beb550c65500589d90a5ef18796d88', 'validated', '{"audio_key":"9192bfb25fc6d561999df2dae71b6731bee67863e65a8342ffffcab387d1f611","entity_key":"wf_alphabet_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"08f7b398cb15bde5e17953b3f2947cbc16beb550c65500589d90a5ef18796d88","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/9192bfb25fc6d561999df2dae71b6731bee67863e65a8342ffffcab387d1f611.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_03 -> audio/generated/it-IT/lexical/91ef651bfbf5349fb63c57d1a01e5532c0cf0bba373c005a0daa5c8e2205599d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('73a7cb42-3ec0-5d65-9b79-5b264cedca1f', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '225cb7a232b954a7ff42cb07b74c3cacd1c6cd4d05de0a020c3529db491f2235'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3f60e245-edfa-5b84-8e17-a12c494d1763', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('73a7cb42-3ec0-5d65-9b79-5b264cedca1f', 1), '225cb7a232b954a7ff42cb07b74c3cacd1c6cd4d05de0a020c3529db491f2235',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/91ef651bfbf5349fb63c57d1a01e5532c0cf0bba373c005a0daa5c8e2205599d.mp3', 1071, '2026-09-14 01:57:23.595766', '0253217e361df4ceda35d1f8afff5719b6ed8dbd88b36aaa5737f593c45869e4', 'validated', '{"audio_key":"91ef651bfbf5349fb63c57d1a01e5532c0cf0bba373c005a0daa5c8e2205599d","entity_key":"lx_my_name_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0253217e361df4ceda35d1f8afff5719b6ed8dbd88b36aaa5737f593c45869e4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/91ef651bfbf5349fb63c57d1a01e5532c0cf0bba373c005a0daa5c8e2205599d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_03 -> audio/generated/it-IT/lexical/91ef651bfbf5349fb63c57d1a01e5532c0cf0bba373c005a0daa5c8e2205599d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('2e6365c1-955d-5bbf-9c35-53876af7ec9a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '225cb7a232b954a7ff42cb07b74c3cacd1c6cd4d05de0a020c3529db491f2235'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0c3fb34d-0fe0-5bd3-a012-2a00ca4b737d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('2e6365c1-955d-5bbf-9c35-53876af7ec9a', 1), '225cb7a232b954a7ff42cb07b74c3cacd1c6cd4d05de0a020c3529db491f2235',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/91ef651bfbf5349fb63c57d1a01e5532c0cf0bba373c005a0daa5c8e2205599d.mp3', 1071, '2026-09-14 01:57:23.595766', '0253217e361df4ceda35d1f8afff5719b6ed8dbd88b36aaa5737f593c45869e4', 'validated', '{"audio_key":"91ef651bfbf5349fb63c57d1a01e5532c0cf0bba373c005a0daa5c8e2205599d","entity_key":"wf_my_name_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"0253217e361df4ceda35d1f8afff5719b6ed8dbd88b36aaa5737f593c45869e4","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/91ef651bfbf5349fb63c57d1a01e5532c0cf0bba373c005a0daa5c8e2205599d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_how_are_you_05 -> audio/generated/it-IT/lexical/945f9e1b2cfeb2e91795508dd7ca623fb37d67547ed54f3ec2eb57e05d236722.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1f7c971c-3be2-5ac6-82e4-761581282932', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_how_are_you_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6cbdea945e7af31826b4ba0a2370cbd66f9804b80616a4eec14b91f11bd63295'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05f7012d-822a-52cc-a701-7f091f8d6730', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1f7c971c-3be2-5ac6-82e4-761581282932', 1), '6cbdea945e7af31826b4ba0a2370cbd66f9804b80616a4eec14b91f11bd63295',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/945f9e1b2cfeb2e91795508dd7ca623fb37d67547ed54f3ec2eb57e05d236722.mp3', 1018, '2026-09-14 01:57:23.860079', 'c3130b2576727c185c9cd99c79534d0c5d54ae59763dfc0031aba12bb0208cd2', 'validated', '{"audio_key":"945f9e1b2cfeb2e91795508dd7ca623fb37d67547ed54f3ec2eb57e05d236722","entity_key":"lx_how_are_you_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c3130b2576727c185c9cd99c79534d0c5d54ae59763dfc0031aba12bb0208cd2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/945f9e1b2cfeb2e91795508dd7ca623fb37d67547ed54f3ec2eb57e05d236722.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_how_are_you_05 -> audio/generated/it-IT/lexical/945f9e1b2cfeb2e91795508dd7ca623fb37d67547ed54f3ec2eb57e05d236722.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('99176b8f-80b4-514d-bd9c-67e513ee7b45', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_how_are_you_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6cbdea945e7af31826b4ba0a2370cbd66f9804b80616a4eec14b91f11bd63295'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('840039ce-287f-5a44-8c72-c0263c860222', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('99176b8f-80b4-514d-bd9c-67e513ee7b45', 1), '6cbdea945e7af31826b4ba0a2370cbd66f9804b80616a4eec14b91f11bd63295',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/945f9e1b2cfeb2e91795508dd7ca623fb37d67547ed54f3ec2eb57e05d236722.mp3', 1018, '2026-09-14 01:57:23.860079', 'c3130b2576727c185c9cd99c79534d0c5d54ae59763dfc0031aba12bb0208cd2', 'validated', '{"audio_key":"945f9e1b2cfeb2e91795508dd7ca623fb37d67547ed54f3ec2eb57e05d236722","entity_key":"wf_how_are_you_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c3130b2576727c185c9cd99c79534d0c5d54ae59763dfc0031aba12bb0208cd2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/945f9e1b2cfeb2e91795508dd7ca623fb37d67547ed54f3ec2eb57e05d236722.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_words_02 -> audio/generated/it-IT/lexical/945f9e1b2cfeb2e91795508dd7ca623fb37d67547ed54f3ec2eb57e05d236722.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1f7c971c-3be2-5ac6-82e4-761581282932', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6cbdea945e7af31826b4ba0a2370cbd66f9804b80616a4eec14b91f11bd63295'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('05f7012d-822a-52cc-a701-7f091f8d6730', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1f7c971c-3be2-5ac6-82e4-761581282932', 1), '6cbdea945e7af31826b4ba0a2370cbd66f9804b80616a4eec14b91f11bd63295',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/945f9e1b2cfeb2e91795508dd7ca623fb37d67547ed54f3ec2eb57e05d236722.mp3', 1018, '2026-09-14 01:57:23.860079', 'c3130b2576727c185c9cd99c79534d0c5d54ae59763dfc0031aba12bb0208cd2', 'validated', '{"audio_key":"945f9e1b2cfeb2e91795508dd7ca623fb37d67547ed54f3ec2eb57e05d236722","entity_key":"lx_polite_words_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c3130b2576727c185c9cd99c79534d0c5d54ae59763dfc0031aba12bb0208cd2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/945f9e1b2cfeb2e91795508dd7ca623fb37d67547ed54f3ec2eb57e05d236722.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_words_02 -> audio/generated/it-IT/lexical/945f9e1b2cfeb2e91795508dd7ca623fb37d67547ed54f3ec2eb57e05d236722.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('948147cb-b07c-50fe-9dca-6e482571e1da', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6cbdea945e7af31826b4ba0a2370cbd66f9804b80616a4eec14b91f11bd63295'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe84e83b-c562-5e24-9b8d-b44715bfeefe', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('948147cb-b07c-50fe-9dca-6e482571e1da', 1), '6cbdea945e7af31826b4ba0a2370cbd66f9804b80616a4eec14b91f11bd63295',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/945f9e1b2cfeb2e91795508dd7ca623fb37d67547ed54f3ec2eb57e05d236722.mp3', 1018, '2026-09-14 01:57:23.860079', 'c3130b2576727c185c9cd99c79534d0c5d54ae59763dfc0031aba12bb0208cd2', 'validated', '{"audio_key":"945f9e1b2cfeb2e91795508dd7ca623fb37d67547ed54f3ec2eb57e05d236722","entity_key":"wf_polite_words_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c3130b2576727c185c9cd99c79534d0c5d54ae59763dfc0031aba12bb0208cd2","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/945f9e1b2cfeb2e91795508dd7ca623fb37d67547ed54f3ec2eb57e05d236722.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_02 -> audio/generated/it-IT/lexical/9fbf4e3a01a9e86ac99808650a4db71fb997629e78bdedc813c29bc1c3e7a526.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c96618a4-9189-5ebf-a373-a3b17b7f2c3b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e0cb29405bc784372fc6e9f94f8f30be119da6d292d672cebe34c334ea989a79'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f0c992a9-92b3-5685-bf4b-2c3d42d685f0', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c96618a4-9189-5ebf-a373-a3b17b7f2c3b', 1), 'e0cb29405bc784372fc6e9f94f8f30be119da6d292d672cebe34c334ea989a79',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/9fbf4e3a01a9e86ac99808650a4db71fb997629e78bdedc813c29bc1c3e7a526.mp3', 1071, '2026-09-14 01:57:24.567363', 'e3e9ab3ae46220dd1b3160cc01050ebc80fc7fa03d350bb55f0c75c321054c3c', 'validated', '{"audio_key":"9fbf4e3a01a9e86ac99808650a4db71fb997629e78bdedc813c29bc1c3e7a526","entity_key":"lx_first_greetings_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e3e9ab3ae46220dd1b3160cc01050ebc80fc7fa03d350bb55f0c75c321054c3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/9fbf4e3a01a9e86ac99808650a4db71fb997629e78bdedc813c29bc1c3e7a526.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_02 -> audio/generated/it-IT/lexical/9fbf4e3a01a9e86ac99808650a4db71fb997629e78bdedc813c29bc1c3e7a526.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('c513138c-8323-5b64-bf6b-8fefe9709741', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e0cb29405bc784372fc6e9f94f8f30be119da6d292d672cebe34c334ea989a79'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fe15cdba-2f34-5b04-9173-f1f99f80d9f2', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('c513138c-8323-5b64-bf6b-8fefe9709741', 1), 'e0cb29405bc784372fc6e9f94f8f30be119da6d292d672cebe34c334ea989a79',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/9fbf4e3a01a9e86ac99808650a4db71fb997629e78bdedc813c29bc1c3e7a526.mp3', 1071, '2026-09-14 01:57:24.567363', 'e3e9ab3ae46220dd1b3160cc01050ebc80fc7fa03d350bb55f0c75c321054c3c', 'validated', '{"audio_key":"9fbf4e3a01a9e86ac99808650a4db71fb997629e78bdedc813c29bc1c3e7a526","entity_key":"wf_first_greetings_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e3e9ab3ae46220dd1b3160cc01050ebc80fc7fa03d350bb55f0c75c321054c3c","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/9fbf4e3a01a9e86ac99808650a4db71fb997629e78bdedc813c29bc1c3e7a526.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_my_name_06 -> audio/generated/it-IT/lexical/a05865300321a9b166461768ed5730d26fa5315001484d7233fd8d2885a3eb81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('ef0c16d9-2150-5fec-aeca-2bd443479c2b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_my_name_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4021fadf187fd2c8277aad0fbc5e8fc4e7f1c75fbb38b6337160f125444790b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cab1799f-2753-529a-8bae-9dbca6d75037', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('ef0c16d9-2150-5fec-aeca-2bd443479c2b', 1), '4021fadf187fd2c8277aad0fbc5e8fc4e7f1c75fbb38b6337160f125444790b2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/a05865300321a9b166461768ed5730d26fa5315001484d7233fd8d2885a3eb81.mp3', 731, '2026-09-14 01:57:24.777294', '33b9d3e58507a77d5d40e4e8cdf4cf19830113051570806393da2236b6204fbf', 'validated', '{"audio_key":"a05865300321a9b166461768ed5730d26fa5315001484d7233fd8d2885a3eb81","entity_key":"lx_my_name_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"33b9d3e58507a77d5d40e4e8cdf4cf19830113051570806393da2236b6204fbf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/a05865300321a9b166461768ed5730d26fa5315001484d7233fd8d2885a3eb81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_my_name_06 -> audio/generated/it-IT/lexical/a05865300321a9b166461768ed5730d26fa5315001484d7233fd8d2885a3eb81.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('076b928e-06b3-5044-8609-534e7e0f295b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_my_name_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4021fadf187fd2c8277aad0fbc5e8fc4e7f1c75fbb38b6337160f125444790b2'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('aecb369a-cdb1-57fd-b7e2-a2a9e8d1b465', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('076b928e-06b3-5044-8609-534e7e0f295b', 1), '4021fadf187fd2c8277aad0fbc5e8fc4e7f1c75fbb38b6337160f125444790b2',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/a05865300321a9b166461768ed5730d26fa5315001484d7233fd8d2885a3eb81.mp3', 731, '2026-09-14 01:57:24.777294', '33b9d3e58507a77d5d40e4e8cdf4cf19830113051570806393da2236b6204fbf', 'validated', '{"audio_key":"a05865300321a9b166461768ed5730d26fa5315001484d7233fd8d2885a3eb81","entity_key":"wf_my_name_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"33b9d3e58507a77d5d40e4e8cdf4cf19830113051570806393da2236b6204fbf","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/a05865300321a9b166461768ed5730d26fa5315001484d7233fd8d2885a3eb81.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_04 -> audio/generated/it-IT/lexical/a1ceafed1648acb62de44c4b10c2887da49ff1317bd99bec70407a47788dc0a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('03f3e280-6792-5015-b594-2d346b1cd44a', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afdeee33b3a590c7570608da4bf5a0b43f5c98159f11a5a6faae29628e700333'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('94db726e-5c97-57e3-b59d-b9fa079e7daa', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('03f3e280-6792-5015-b594-2d346b1cd44a', 1), 'afdeee33b3a590c7570608da4bf5a0b43f5c98159f11a5a6faae29628e700333',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/a1ceafed1648acb62de44c4b10c2887da49ff1317bd99bec70407a47788dc0a0.mp3', 1253, '2026-09-14 01:57:25.545792', 'd226633f5362c109fb68ae17a9b8aaf295d8287876cc40ef12844431c2111ae9', 'validated', '{"audio_key":"a1ceafed1648acb62de44c4b10c2887da49ff1317bd99bec70407a47788dc0a0","entity_key":"lx_first_greetings_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d226633f5362c109fb68ae17a9b8aaf295d8287876cc40ef12844431c2111ae9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/a1ceafed1648acb62de44c4b10c2887da49ff1317bd99bec70407a47788dc0a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_04 -> audio/generated/it-IT/lexical/a1ceafed1648acb62de44c4b10c2887da49ff1317bd99bec70407a47788dc0a0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('894691e2-4588-5f8a-bc11-a1aa5a69c8dc', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'afdeee33b3a590c7570608da4bf5a0b43f5c98159f11a5a6faae29628e700333'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5631f66-f8a1-5191-9c0b-b35b5b3d4dee', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('894691e2-4588-5f8a-bc11-a1aa5a69c8dc', 1), 'afdeee33b3a590c7570608da4bf5a0b43f5c98159f11a5a6faae29628e700333',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/a1ceafed1648acb62de44c4b10c2887da49ff1317bd99bec70407a47788dc0a0.mp3', 1253, '2026-09-14 01:57:25.545792', 'd226633f5362c109fb68ae17a9b8aaf295d8287876cc40ef12844431c2111ae9', 'validated', '{"audio_key":"a1ceafed1648acb62de44c4b10c2887da49ff1317bd99bec70407a47788dc0a0","entity_key":"wf_first_greetings_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d226633f5362c109fb68ae17a9b8aaf295d8287876cc40ef12844431c2111ae9","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/a1ceafed1648acb62de44c4b10c2887da49ff1317bd99bec70407a47788dc0a0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_alphabet_06 -> audio/generated/it-IT/lexical/a21b949046996fcd8d7070f13ae4b0db6330bd25d0454b21d40cd4abb5c76282.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('24d141e9-86a5-5eb7-a298-d8f15abba0f0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_alphabet_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aaa9402664f1a41f40ebbc52c9993eb66aeb366602958fdfaa283b71e64db123'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d1515fa-702d-58f5-9c64-6febb7bed646', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('24d141e9-86a5-5eb7-a298-d8f15abba0f0', 1), 'aaa9402664f1a41f40ebbc52c9993eb66aeb366602958fdfaa283b71e64db123',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/a21b949046996fcd8d7070f13ae4b0db6330bd25d0454b21d40cd4abb5c76282.mp3', 862, '2026-09-14 01:57:25.716039', 'f4aa39568ed4e10cddb1af0b3f6ec8e41833ecc1c0f39b99457f4ced885f9420', 'validated', '{"audio_key":"a21b949046996fcd8d7070f13ae4b0db6330bd25d0454b21d40cd4abb5c76282","entity_key":"lx_alphabet_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f4aa39568ed4e10cddb1af0b3f6ec8e41833ecc1c0f39b99457f4ced885f9420","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/a21b949046996fcd8d7070f13ae4b0db6330bd25d0454b21d40cd4abb5c76282.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_alphabet_06 -> audio/generated/it-IT/lexical/a21b949046996fcd8d7070f13ae4b0db6330bd25d0454b21d40cd4abb5c76282.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('95f8a43c-3763-5d42-be31-8f720e391788', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_alphabet_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'aaa9402664f1a41f40ebbc52c9993eb66aeb366602958fdfaa283b71e64db123'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca4501b3-829e-5a32-a08b-542a78278d27', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('95f8a43c-3763-5d42-be31-8f720e391788', 1), 'aaa9402664f1a41f40ebbc52c9993eb66aeb366602958fdfaa283b71e64db123',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/a21b949046996fcd8d7070f13ae4b0db6330bd25d0454b21d40cd4abb5c76282.mp3', 862, '2026-09-14 01:57:25.716039', 'f4aa39568ed4e10cddb1af0b3f6ec8e41833ecc1c0f39b99457f4ced885f9420', 'validated', '{"audio_key":"a21b949046996fcd8d7070f13ae4b0db6330bd25d0454b21d40cd4abb5c76282","entity_key":"wf_alphabet_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f4aa39568ed4e10cddb1af0b3f6ec8e41833ecc1c0f39b99457f4ced885f9420","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/a21b949046996fcd8d7070f13ae4b0db6330bd25d0454b21d40cd4abb5c76282.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_05 -> audio/generated/it-IT/lexical/a669624ae0feeb87bf397b2a3cdb38beaaf62e93dc5c0aaa42fdb03d441fcbd0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('887a91cb-1d54-5918-9069-6c7c6c39ec57', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '615b97d3375bc288e0746da1a9cfd78b2939dd764dc4ee66b70ff007e1c49747'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('717682d5-3cb3-5902-93d7-983fedd2f6ee', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('887a91cb-1d54-5918-9069-6c7c6c39ec57', 1), '615b97d3375bc288e0746da1a9cfd78b2939dd764dc4ee66b70ff007e1c49747',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/a669624ae0feeb87bf397b2a3cdb38beaaf62e93dc5c0aaa42fdb03d441fcbd0.mp3', 1018, '2026-09-14 01:57:26.477958', 'f7b03654bda724e3fb9633e035c82a691d3a9d7e0c37dc01afea951406494f75', 'validated', '{"audio_key":"a669624ae0feeb87bf397b2a3cdb38beaaf62e93dc5c0aaa42fdb03d441fcbd0","entity_key":"lx_numbers_0_10_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f7b03654bda724e3fb9633e035c82a691d3a9d7e0c37dc01afea951406494f75","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/a669624ae0feeb87bf397b2a3cdb38beaaf62e93dc5c0aaa42fdb03d441fcbd0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_05 -> audio/generated/it-IT/lexical/a669624ae0feeb87bf397b2a3cdb38beaaf62e93dc5c0aaa42fdb03d441fcbd0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('3a9daafa-3c12-52cf-a429-53d5422f5092', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '615b97d3375bc288e0746da1a9cfd78b2939dd764dc4ee66b70ff007e1c49747'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ba68e509-7c65-5fa3-affc-f6e85f56cb11', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('3a9daafa-3c12-52cf-a429-53d5422f5092', 1), '615b97d3375bc288e0746da1a9cfd78b2939dd764dc4ee66b70ff007e1c49747',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/a669624ae0feeb87bf397b2a3cdb38beaaf62e93dc5c0aaa42fdb03d441fcbd0.mp3', 1018, '2026-09-14 01:57:26.477958', 'f7b03654bda724e3fb9633e035c82a691d3a9d7e0c37dc01afea951406494f75', 'validated', '{"audio_key":"a669624ae0feeb87bf397b2a3cdb38beaaf62e93dc5c0aaa42fdb03d441fcbd0","entity_key":"wf_numbers_0_10_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f7b03654bda724e3fb9633e035c82a691d3a9d7e0c37dc01afea951406494f75","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/a669624ae0feeb87bf397b2a3cdb38beaaf62e93dc5c0aaa42fdb03d441fcbd0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_words_06 -> audio/generated/it-IT/lexical/a95ab7fab9d3b8014bb61f0edba96a8dedcac1bed4e897283224cc2d9532065b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('5ad3dcad-16eb-53c5-b2d0-f36f62fdb06d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_words_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2fdc01c1ae25dea01f888a5a68a18b81f37f7aa05b004a7f3e6618e4ccb36139'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9f2a51b8-c078-5130-840c-746631619393', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('5ad3dcad-16eb-53c5-b2d0-f36f62fdb06d', 1), '2fdc01c1ae25dea01f888a5a68a18b81f37f7aa05b004a7f3e6618e4ccb36139',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/a95ab7fab9d3b8014bb61f0edba96a8dedcac1bed4e897283224cc2d9532065b.mp3', 1149, '2026-09-14 01:57:26.664360', '1d2a58a388690d9e8bca6b74136a38fd60b8b0730aaf13eaa8f1811346c9c60d', 'validated', '{"audio_key":"a95ab7fab9d3b8014bb61f0edba96a8dedcac1bed4e897283224cc2d9532065b","entity_key":"lx_polite_words_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1d2a58a388690d9e8bca6b74136a38fd60b8b0730aaf13eaa8f1811346c9c60d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/a95ab7fab9d3b8014bb61f0edba96a8dedcac1bed4e897283224cc2d9532065b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_words_06 -> audio/generated/it-IT/lexical/a95ab7fab9d3b8014bb61f0edba96a8dedcac1bed4e897283224cc2d9532065b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b0d7e8ef-8a07-5f11-b486-b3ab213394d2', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_words_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2fdc01c1ae25dea01f888a5a68a18b81f37f7aa05b004a7f3e6618e4ccb36139'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('259e059f-fb7a-56fc-843b-aff3c8f6520a', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b0d7e8ef-8a07-5f11-b486-b3ab213394d2', 1), '2fdc01c1ae25dea01f888a5a68a18b81f37f7aa05b004a7f3e6618e4ccb36139',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/a95ab7fab9d3b8014bb61f0edba96a8dedcac1bed4e897283224cc2d9532065b.mp3', 1149, '2026-09-14 01:57:26.664360', '1d2a58a388690d9e8bca6b74136a38fd60b8b0730aaf13eaa8f1811346c9c60d', 'validated', '{"audio_key":"a95ab7fab9d3b8014bb61f0edba96a8dedcac1bed4e897283224cc2d9532065b","entity_key":"wf_polite_words_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1d2a58a388690d9e8bca6b74136a38fd60b8b0730aaf13eaa8f1811346c9c60d","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/a95ab7fab9d3b8014bb61f0edba96a8dedcac1bed4e897283224cc2d9532065b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_06 -> audio/generated/it-IT/lexical/ac7fe04c3e776fc65674cacd7f0b1aae877f4761652c8ae187e9f997b9027c57.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e60f6d1b-f8c9-5a42-a245-25a6a6819698', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b4c539948ae24d8c7f3efad2bb6c1665a8d9bae8eec600f286247e1d98acafc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('8ac560be-21be-5107-a4bd-672bac37f5e9', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e60f6d1b-f8c9-5a42-a245-25a6a6819698', 1), '9b4c539948ae24d8c7f3efad2bb6c1665a8d9bae8eec600f286247e1d98acafc',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ac7fe04c3e776fc65674cacd7f0b1aae877f4761652c8ae187e9f997b9027c57.mp3', 1071, '2026-09-14 01:57:27.420151', '18e4df758879d0fe46314308766128e094aa8efe4e099a5d943f6561ac98b6de', 'validated', '{"audio_key":"ac7fe04c3e776fc65674cacd7f0b1aae877f4761652c8ae187e9f997b9027c57","entity_key":"lx_first_sounds_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"18e4df758879d0fe46314308766128e094aa8efe4e099a5d943f6561ac98b6de","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ac7fe04c3e776fc65674cacd7f0b1aae877f4761652c8ae187e9f997b9027c57.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_06 -> audio/generated/it-IT/lexical/ac7fe04c3e776fc65674cacd7f0b1aae877f4761652c8ae187e9f997b9027c57.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f06e31bb-ddbd-53ea-b0c7-72a25f2ecd7b', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9b4c539948ae24d8c7f3efad2bb6c1665a8d9bae8eec600f286247e1d98acafc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('830ebe3e-65cc-53fc-bdb0-572d5e378fff', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f06e31bb-ddbd-53ea-b0c7-72a25f2ecd7b', 1), '9b4c539948ae24d8c7f3efad2bb6c1665a8d9bae8eec600f286247e1d98acafc',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ac7fe04c3e776fc65674cacd7f0b1aae877f4761652c8ae187e9f997b9027c57.mp3', 1071, '2026-09-14 01:57:27.420151', '18e4df758879d0fe46314308766128e094aa8efe4e099a5d943f6561ac98b6de', 'validated', '{"audio_key":"ac7fe04c3e776fc65674cacd7f0b1aae877f4761652c8ae187e9f997b9027c57","entity_key":"wf_first_sounds_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"18e4df758879d0fe46314308766128e094aa8efe4e099a5d943f6561ac98b6de","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ac7fe04c3e776fc65674cacd7f0b1aae877f4761652c8ae187e9f997b9027c57.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_sounds_04 -> audio/generated/it-IT/lexical/b539633a8dbb47e592eacaddd8db1c5b826d26c0b7aa71b1e46fe191214549e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('528219df-c479-5b23-a621-550415235877', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_sounds_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee1283eaffeeeb34ae922708edf66b4e257485538da7908012f5c86fe2e4e201'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('628d2fee-20ea-5c73-b15b-c84de6b3b0de', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('528219df-c479-5b23-a621-550415235877', 1), 'ee1283eaffeeeb34ae922708edf66b4e257485538da7908012f5c86fe2e4e201',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b539633a8dbb47e592eacaddd8db1c5b826d26c0b7aa71b1e46fe191214549e1.mp3', 1071, '2026-09-14 01:57:27.601211', '4f84aba2e86493ed484ad7c1b6d754e5b35d5e0719f1fd91ad19639659fab3dc', 'validated', '{"audio_key":"b539633a8dbb47e592eacaddd8db1c5b826d26c0b7aa71b1e46fe191214549e1","entity_key":"lx_first_sounds_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4f84aba2e86493ed484ad7c1b6d754e5b35d5e0719f1fd91ad19639659fab3dc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b539633a8dbb47e592eacaddd8db1c5b826d26c0b7aa71b1e46fe191214549e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_sounds_04 -> audio/generated/it-IT/lexical/b539633a8dbb47e592eacaddd8db1c5b826d26c0b7aa71b1e46fe191214549e1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b3486b9f-2a7c-5d0a-970f-6b6f062528e0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_sounds_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'ee1283eaffeeeb34ae922708edf66b4e257485538da7908012f5c86fe2e4e201'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4232c4a-9b62-5889-9a58-8875d52b7274', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b3486b9f-2a7c-5d0a-970f-6b6f062528e0', 1), 'ee1283eaffeeeb34ae922708edf66b4e257485538da7908012f5c86fe2e4e201',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/b539633a8dbb47e592eacaddd8db1c5b826d26c0b7aa71b1e46fe191214549e1.mp3', 1071, '2026-09-14 01:57:27.601211', '4f84aba2e86493ed484ad7c1b6d754e5b35d5e0719f1fd91ad19639659fab3dc', 'validated', '{"audio_key":"b539633a8dbb47e592eacaddd8db1c5b826d26c0b7aa71b1e46fe191214549e1","entity_key":"wf_first_sounds_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4f84aba2e86493ed484ad7c1b6d754e5b35d5e0719f1fd91ad19639659fab3dc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/b539633a8dbb47e592eacaddd8db1c5b826d26c0b7aa71b1e46fe191214549e1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_06 -> audio/generated/it-IT/lexical/babb54889ecf79962cb506e8ecad6c38ad9e3504b773613d4ff54508ab1299d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('a5e4dfa8-65f1-51ea-95e6-8348e6a5754e', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e5d77791d6ab4d4277e4faa7c390adef35bab485a5f323433ed4dcb045cf0a30'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4cdec5aa-2204-56cf-b644-665e595ffd2b', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('a5e4dfa8-65f1-51ea-95e6-8348e6a5754e', 1), 'e5d77791d6ab4d4277e4faa7c390adef35bab485a5f323433ed4dcb045cf0a30',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/babb54889ecf79962cb506e8ecad6c38ad9e3504b773613d4ff54508ab1299d1.mp3', 1567, '2026-09-14 01:57:28.395222', 'd4ba8fdc913187af01940fab71892984007515e0c493063cba8394dbc054d349', 'validated', '{"audio_key":"babb54889ecf79962cb506e8ecad6c38ad9e3504b773613d4ff54508ab1299d1","entity_key":"lx_survival_words_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d4ba8fdc913187af01940fab71892984007515e0c493063cba8394dbc054d349","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/babb54889ecf79962cb506e8ecad6c38ad9e3504b773613d4ff54508ab1299d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_06 -> audio/generated/it-IT/lexical/babb54889ecf79962cb506e8ecad6c38ad9e3504b773613d4ff54508ab1299d1.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('bec07afc-3412-57b6-aa44-b34a9b010ee8', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'e5d77791d6ab4d4277e4faa7c390adef35bab485a5f323433ed4dcb045cf0a30'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('631eaa51-12b0-54dc-95f0-96ec0e27e7b1', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('bec07afc-3412-57b6-aa44-b34a9b010ee8', 1), 'e5d77791d6ab4d4277e4faa7c390adef35bab485a5f323433ed4dcb045cf0a30',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/babb54889ecf79962cb506e8ecad6c38ad9e3504b773613d4ff54508ab1299d1.mp3', 1567, '2026-09-14 01:57:28.395222', 'd4ba8fdc913187af01940fab71892984007515e0c493063cba8394dbc054d349', 'validated', '{"audio_key":"babb54889ecf79962cb506e8ecad6c38ad9e3504b773613d4ff54508ab1299d1","entity_key":"wf_survival_words_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d4ba8fdc913187af01940fab71892984007515e0c493063cba8394dbc054d349","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/babb54889ecf79962cb506e8ecad6c38ad9e3504b773613d4ff54508ab1299d1.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_alphabet_04 -> audio/generated/it-IT/lexical/c5be930e95869790bfb132900b991ece8e9acd6ad314f32eb66dd074e3c303ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('9dd80a86-56c6-5138-85dc-b8bf2ece2de0', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_alphabet_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e7d2c03a9507ae265ecf5b5356885a53393a2029d241394997265a1a25aefc6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c7e81ae-a42f-5cee-804f-937b578a33e5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('9dd80a86-56c6-5138-85dc-b8bf2ece2de0', 1), '2e7d2c03a9507ae265ecf5b5356885a53393a2029d241394997265a1a25aefc6',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c5be930e95869790bfb132900b991ece8e9acd6ad314f32eb66dd074e3c303ff.mp3', 783, '2026-09-14 01:57:28.875942', '20a29fb7d6fbaa2c6d79dfcee217fcd784d07dab9587ae8606bb9a871bd0ffd6', 'validated', '{"audio_key":"c5be930e95869790bfb132900b991ece8e9acd6ad314f32eb66dd074e3c303ff","entity_key":"lx_alphabet_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"20a29fb7d6fbaa2c6d79dfcee217fcd784d07dab9587ae8606bb9a871bd0ffd6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c5be930e95869790bfb132900b991ece8e9acd6ad314f32eb66dd074e3c303ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_alphabet_04 -> audio/generated/it-IT/lexical/c5be930e95869790bfb132900b991ece8e9acd6ad314f32eb66dd074e3c303ff.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('a92f788f-5848-5860-a22e-829c65e610ef', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_alphabet_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2e7d2c03a9507ae265ecf5b5356885a53393a2029d241394997265a1a25aefc6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('507b5610-5c05-51dc-9195-a712b3fe0e1e', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('a92f788f-5848-5860-a22e-829c65e610ef', 1), '2e7d2c03a9507ae265ecf5b5356885a53393a2029d241394997265a1a25aefc6',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c5be930e95869790bfb132900b991ece8e9acd6ad314f32eb66dd074e3c303ff.mp3', 783, '2026-09-14 01:57:28.875942', '20a29fb7d6fbaa2c6d79dfcee217fcd784d07dab9587ae8606bb9a871bd0ffd6', 'validated', '{"audio_key":"c5be930e95869790bfb132900b991ece8e9acd6ad314f32eb66dd074e3c303ff","entity_key":"wf_alphabet_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"20a29fb7d6fbaa2c6d79dfcee217fcd784d07dab9587ae8606bb9a871bd0ffd6","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c5be930e95869790bfb132900b991ece8e9acd6ad314f32eb66dd074e3c303ff.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_05 -> audio/generated/it-IT/lexical/c9396d63f02a2751b4f662faf6bbb1dc1a7014f1a10e8ba21358f0bc171be511.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('991f0bcc-3efa-5a08-848c-51592be66f18', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '21425924b1a9a5d8768eb48b6ad03d4d4bfb736df6fa8a0164c0aaaed910a8d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('58f76d4c-b6f2-5e54-811b-366cb18aa7ba', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('991f0bcc-3efa-5a08-848c-51592be66f18', 1), '21425924b1a9a5d8768eb48b6ad03d4d4bfb736df6fa8a0164c0aaaed910a8d1',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c9396d63f02a2751b4f662faf6bbb1dc1a7014f1a10e8ba21358f0bc171be511.mp3', 1071, '2026-09-14 01:57:29.351168', '6d50f11f74498eca4424c33ceaebef81e1825463ec51e97890f933d9a6723f16', 'validated', '{"audio_key":"c9396d63f02a2751b4f662faf6bbb1dc1a7014f1a10e8ba21358f0bc171be511","entity_key":"lx_first_objects_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6d50f11f74498eca4424c33ceaebef81e1825463ec51e97890f933d9a6723f16","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c9396d63f02a2751b4f662faf6bbb1dc1a7014f1a10e8ba21358f0bc171be511.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_05 -> audio/generated/it-IT/lexical/c9396d63f02a2751b4f662faf6bbb1dc1a7014f1a10e8ba21358f0bc171be511.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1bec53d2-abb2-5024-91a1-d08a2e4ba0da', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_05')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '21425924b1a9a5d8768eb48b6ad03d4d4bfb736df6fa8a0164c0aaaed910a8d1'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2fd92acf-50ec-5e37-a18d-75b65a686534', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1bec53d2-abb2-5024-91a1-d08a2e4ba0da', 1), '21425924b1a9a5d8768eb48b6ad03d4d4bfb736df6fa8a0164c0aaaed910a8d1',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/c9396d63f02a2751b4f662faf6bbb1dc1a7014f1a10e8ba21358f0bc171be511.mp3', 1071, '2026-09-14 01:57:29.351168', '6d50f11f74498eca4424c33ceaebef81e1825463ec51e97890f933d9a6723f16', 'validated', '{"audio_key":"c9396d63f02a2751b4f662faf6bbb1dc1a7014f1a10e8ba21358f0bc171be511","entity_key":"wf_first_objects_05","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6d50f11f74498eca4424c33ceaebef81e1825463ec51e97890f933d9a6723f16","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/c9396d63f02a2751b4f662faf6bbb1dc1a7014f1a10e8ba21358f0bc171be511.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_objects_02 -> audio/generated/it-IT/lexical/ca731a8febb01b23ce9b24eedf8a3caa252bed6079b7232e3b53d17b553eb5ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('c580bf3b-2120-569d-b775-ac0c0dc1db7d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_objects_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e02a6d3d4a9f0da604dc5fc9505c6b91184d07ed82694a573cb503e4a3739f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('af18d4d5-a568-5990-afc7-473fb7815a0f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('c580bf3b-2120-569d-b775-ac0c0dc1db7d', 1), '9e02a6d3d4a9f0da604dc5fc9505c6b91184d07ed82694a573cb503e4a3739f6',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ca731a8febb01b23ce9b24eedf8a3caa252bed6079b7232e3b53d17b553eb5ba.mp3', 966, '2026-09-14 01:57:29.821595', '8a9910c9079b4334e23bcc60d0fe166afc5c67e667ef34c15f82043e77f2cfcc', 'validated', '{"audio_key":"ca731a8febb01b23ce9b24eedf8a3caa252bed6079b7232e3b53d17b553eb5ba","entity_key":"lx_first_objects_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8a9910c9079b4334e23bcc60d0fe166afc5c67e667ef34c15f82043e77f2cfcc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ca731a8febb01b23ce9b24eedf8a3caa252bed6079b7232e3b53d17b553eb5ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_objects_02 -> audio/generated/it-IT/lexical/ca731a8febb01b23ce9b24eedf8a3caa252bed6079b7232e3b53d17b553eb5ba.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('f86a8ba5-0d9a-586c-a099-c13fbc77f803', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_objects_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9e02a6d3d4a9f0da604dc5fc9505c6b91184d07ed82694a573cb503e4a3739f6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('75129367-e063-5b1c-bff0-a30a06cd2d9f', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('f86a8ba5-0d9a-586c-a099-c13fbc77f803', 1), '9e02a6d3d4a9f0da604dc5fc9505c6b91184d07ed82694a573cb503e4a3739f6',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/ca731a8febb01b23ce9b24eedf8a3caa252bed6079b7232e3b53d17b553eb5ba.mp3', 966, '2026-09-14 01:57:29.821595', '8a9910c9079b4334e23bcc60d0fe166afc5c67e667ef34c15f82043e77f2cfcc', 'validated', '{"audio_key":"ca731a8febb01b23ce9b24eedf8a3caa252bed6079b7232e3b53d17b553eb5ba","entity_key":"wf_first_objects_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8a9910c9079b4334e23bcc60d0fe166afc5c67e667ef34c15f82043e77f2cfcc","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/ca731a8febb01b23ce9b24eedf8a3caa252bed6079b7232e3b53d17b553eb5ba.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_survival_words_03 -> audio/generated/it-IT/lexical/cfc1c88f7107cede2723b3d8ae310bc94ba7640209aa6ff0fe0fcd508be04c2c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('1cacb7be-c671-5d29-9122-87485915d2a5', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_survival_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34601a347324dd792e1c4e1718ec18653c1a0c4934f5467d04deabb8ca528b5b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('191c8ec9-73a3-5096-8765-9e03fb9e4ba4', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('1cacb7be-c671-5d29-9122-87485915d2a5', 1), '34601a347324dd792e1c4e1718ec18653c1a0c4934f5467d04deabb8ca528b5b',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cfc1c88f7107cede2723b3d8ae310bc94ba7640209aa6ff0fe0fcd508be04c2c.mp3', 1018, '2026-09-14 01:57:30.276302', '14517510dc18d0eb8dbf30e375c691a3168fb9d31077fb297977f32fe4213db8', 'validated', '{"audio_key":"cfc1c88f7107cede2723b3d8ae310bc94ba7640209aa6ff0fe0fcd508be04c2c","entity_key":"lx_survival_words_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"14517510dc18d0eb8dbf30e375c691a3168fb9d31077fb297977f32fe4213db8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cfc1c88f7107cede2723b3d8ae310bc94ba7640209aa6ff0fe0fcd508be04c2c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_survival_words_03 -> audio/generated/it-IT/lexical/cfc1c88f7107cede2723b3d8ae310bc94ba7640209aa6ff0fe0fcd508be04c2c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('66c07de0-d2c5-5cf6-b20c-d2242ae10afe', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_survival_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '34601a347324dd792e1c4e1718ec18653c1a0c4934f5467d04deabb8ca528b5b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('28f6a4b9-cf4a-58b9-af4f-c1ec5885fa14', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('66c07de0-d2c5-5cf6-b20c-d2242ae10afe', 1), '34601a347324dd792e1c4e1718ec18653c1a0c4934f5467d04deabb8ca528b5b',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/cfc1c88f7107cede2723b3d8ae310bc94ba7640209aa6ff0fe0fcd508be04c2c.mp3', 1018, '2026-09-14 01:57:30.276302', '14517510dc18d0eb8dbf30e375c691a3168fb9d31077fb297977f32fe4213db8', 'validated', '{"audio_key":"cfc1c88f7107cede2723b3d8ae310bc94ba7640209aa6ff0fe0fcd508be04c2c","entity_key":"wf_survival_words_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"14517510dc18d0eb8dbf30e375c691a3168fb9d31077fb297977f32fe4213db8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/cfc1c88f7107cede2723b3d8ae310bc94ba7640209aa6ff0fe0fcd508be04c2c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_words_01 -> audio/generated/it-IT/lexical/e39159bf49221df35e534ac94192b8fbcc6e3a7af7872b84a02dfed387459903.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('7355d0d9-b068-5f8e-9954-830db934ba03', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3a79ab6a3724bfd8d3d6e26c488542605919b5e62f2fd8b3127664dea4633f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f97ed9f7-6300-5c4a-a97d-46f50725c05f', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('7355d0d9-b068-5f8e-9954-830db934ba03', 1), 'f3a79ab6a3724bfd8d3d6e26c488542605919b5e62f2fd8b3127664dea4633f3',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e39159bf49221df35e534ac94192b8fbcc6e3a7af7872b84a02dfed387459903.mp3', 1149, '2026-09-14 01:57:30.762097', '298d90f3d2748aef150cf7a5b05106f024bd9aa550e04e6d585e51cac0234e09', 'validated', '{"audio_key":"e39159bf49221df35e534ac94192b8fbcc6e3a7af7872b84a02dfed387459903","entity_key":"lx_polite_words_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"298d90f3d2748aef150cf7a5b05106f024bd9aa550e04e6d585e51cac0234e09","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e39159bf49221df35e534ac94192b8fbcc6e3a7af7872b84a02dfed387459903.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_words_01 -> audio/generated/it-IT/lexical/e39159bf49221df35e534ac94192b8fbcc6e3a7af7872b84a02dfed387459903.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('1b1b7f61-6535-5cd1-a4bc-599f5e79e49d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f3a79ab6a3724bfd8d3d6e26c488542605919b5e62f2fd8b3127664dea4633f3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5bceb046-75cc-5700-a8fe-12baacbe0d02', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('1b1b7f61-6535-5cd1-a4bc-599f5e79e49d', 1), 'f3a79ab6a3724bfd8d3d6e26c488542605919b5e62f2fd8b3127664dea4633f3',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e39159bf49221df35e534ac94192b8fbcc6e3a7af7872b84a02dfed387459903.mp3', 1149, '2026-09-14 01:57:30.762097', '298d90f3d2748aef150cf7a5b05106f024bd9aa550e04e6d585e51cac0234e09', 'validated', '{"audio_key":"e39159bf49221df35e534ac94192b8fbcc6e3a7af7872b84a02dfed387459903","entity_key":"wf_polite_words_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"298d90f3d2748aef150cf7a5b05106f024bd9aa550e04e6d585e51cac0234e09","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e39159bf49221df35e534ac94192b8fbcc6e3a7af7872b84a02dfed387459903.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_numbers_0_10_01 -> audio/generated/it-IT/lexical/e39ef557e274dfb01101c727b7a50818445cfdbf441fcda7fcb242f533d72431.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('31ccdbc9-dc07-5336-b01e-91a8b82abb0d', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_numbers_0_10_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f9194e73f9e9459e3450ea10a179cdf77aafa695beecd3b9344a98d111622243'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a339a520-ad85-57b4-b83b-f40316399dbf', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('31ccdbc9-dc07-5336-b01e-91a8b82abb0d', 1), 'f9194e73f9e9459e3450ea10a179cdf77aafa695beecd3b9344a98d111622243',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e39ef557e274dfb01101c727b7a50818445cfdbf441fcda7fcb242f533d72431.mp3', 835, '2026-09-14 01:57:31.193860', 'c15c3a2f9c41fa25c1748091740b951a80c02b584149a7f0656165cb6c22d0f8', 'validated', '{"audio_key":"e39ef557e274dfb01101c727b7a50818445cfdbf441fcda7fcb242f533d72431","entity_key":"lx_numbers_0_10_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c15c3a2f9c41fa25c1748091740b951a80c02b584149a7f0656165cb6c22d0f8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e39ef557e274dfb01101c727b7a50818445cfdbf441fcda7fcb242f533d72431.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_numbers_0_10_01 -> audio/generated/it-IT/lexical/e39ef557e274dfb01101c727b7a50818445cfdbf441fcda7fcb242f533d72431.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('b21671b6-ad92-5618-ba01-54ef1ac29794', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_numbers_0_10_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f9194e73f9e9459e3450ea10a179cdf77aafa695beecd3b9344a98d111622243'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('61983253-8f36-5d8c-be52-7427f8902a3d', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('b21671b6-ad92-5618-ba01-54ef1ac29794', 1), 'f9194e73f9e9459e3450ea10a179cdf77aafa695beecd3b9344a98d111622243',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/e39ef557e274dfb01101c727b7a50818445cfdbf441fcda7fcb242f533d72431.mp3', 835, '2026-09-14 01:57:31.193860', 'c15c3a2f9c41fa25c1748091740b951a80c02b584149a7f0656165cb6c22d0f8', 'validated', '{"audio_key":"e39ef557e274dfb01101c727b7a50818445cfdbf441fcda7fcb242f533d72431","entity_key":"wf_numbers_0_10_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c15c3a2f9c41fa25c1748091740b951a80c02b584149a7f0656165cb6c22d0f8","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/e39ef557e274dfb01101c727b7a50818445cfdbf441fcda7fcb242f533d72431.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_polite_words_03 -> audio/generated/it-IT/lexical/f5b3d9d55d0df3b608ad337a5e51501fa09bde61ea62342c4698572fb950599d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('4e107d16-60c9-577b-af5c-0bfcfb0bc3a2', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_polite_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dadebf4876a7d734c4a7be587de33f1ec884c9f84a3791d13176fc769f4b3c19'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('de3763e5-4ff1-597f-b671-7553d31eae97', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('4e107d16-60c9-577b-af5c-0bfcfb0bc3a2', 1), 'dadebf4876a7d734c4a7be587de33f1ec884c9f84a3791d13176fc769f4b3c19',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f5b3d9d55d0df3b608ad337a5e51501fa09bde61ea62342c4698572fb950599d.mp3', 966, '2026-09-14 01:57:31.722426', 'd6c016650838f11ea8b944f7dd8e60722e28d3691d1d63bbe62af95a273e1999', 'validated', '{"audio_key":"f5b3d9d55d0df3b608ad337a5e51501fa09bde61ea62342c4698572fb950599d","entity_key":"lx_polite_words_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d6c016650838f11ea8b944f7dd8e60722e28d3691d1d63bbe62af95a273e1999","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f5b3d9d55d0df3b608ad337a5e51501fa09bde61ea62342c4698572fb950599d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_polite_words_03 -> audio/generated/it-IT/lexical/f5b3d9d55d0df3b608ad337a5e51501fa09bde61ea62342c4698572fb950599d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('57dea264-d3ce-5cf7-a492-89675b1aa2f2', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_polite_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dadebf4876a7d734c4a7be587de33f1ec884c9f84a3791d13176fc769f4b3c19'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('150264d8-3830-59a4-b214-12ed4cbef802', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('57dea264-d3ce-5cf7-a492-89675b1aa2f2', 1), 'dadebf4876a7d734c4a7be587de33f1ec884c9f84a3791d13176fc769f4b3c19',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/f5b3d9d55d0df3b608ad337a5e51501fa09bde61ea62342c4698572fb950599d.mp3', 966, '2026-09-14 01:57:31.722426', 'd6c016650838f11ea8b944f7dd8e60722e28d3691d1d63bbe62af95a273e1999', 'validated', '{"audio_key":"f5b3d9d55d0df3b608ad337a5e51501fa09bde61ea62342c4698572fb950599d","entity_key":"wf_polite_words_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d6c016650838f11ea8b944f7dd8e60722e28d3691d1d63bbe62af95a273e1999","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/f5b3d9d55d0df3b608ad337a5e51501fa09bde61ea62342c4698572fb950599d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- lx_first_greetings_06 -> audio/generated/it-IT/lexical/fe4c2829755bb7bd735297671a76dd493d3d55f50cc73ca6441a31fb442e19eb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'lexeme'
  AND entity_id = UUID_TO_BIN('e8a8db6e-cf42-5b05-a0f6-dff5b523fdfa', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'lx_first_greetings_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f6a30cf5d4bda661146e2e404eb00f49f65e131cd17753b2a74b913f4e3b583b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2b47c9c6-4295-59fe-a0ef-e687185f1fd5', 1), @audio_language_id, @audio_variant_id, 'lexeme', UUID_TO_BIN('e8a8db6e-cf42-5b05-a0f6-dff5b523fdfa', 1), 'f6a30cf5d4bda661146e2e404eb00f49f65e131cd17753b2a74b913f4e3b583b',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/fe4c2829755bb7bd735297671a76dd493d3d55f50cc73ca6441a31fb442e19eb.mp3', 1097, '2026-09-14 01:57:32.168142', '67330e67b9a472430c1855857fc9b8bb5a4cb8bb7b8b8d35c44b965615cc5ab7', 'validated', '{"audio_key":"fe4c2829755bb7bd735297671a76dd493d3d55f50cc73ca6441a31fb442e19eb","entity_key":"lx_first_greetings_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"67330e67b9a472430c1855857fc9b8bb5a4cb8bb7b8b8d35c44b965615cc5ab7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/fe4c2829755bb7bd735297671a76dd493d3d55f50cc73ca6441a31fb442e19eb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- wf_first_greetings_06 -> audio/generated/it-IT/lexical/fe4c2829755bb7bd735297671a76dd493d3d55f50cc73ca6441a31fb442e19eb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'word_form'
  AND entity_id = UUID_TO_BIN('220fd6c2-9b99-5593-a586-43e35a92b4fc', 1)
  AND voice_key = 'it-it.lexical.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'wf_first_greetings_06')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'f6a30cf5d4bda661146e2e404eb00f49f65e131cd17753b2a74b913f4e3b583b'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a2de52e9-b72f-59f0-8964-a52008994d02', 1), @audio_language_id, @audio_variant_id, 'word_form', UUID_TO_BIN('220fd6c2-9b99-5593-a586-43e35a92b4fc', 1), 'f6a30cf5d4bda661146e2e404eb00f49f65e131cd17753b2a74b913f4e3b583b',
  'it-it.lexical.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/lexical/fe4c2829755bb7bd735297671a76dd493d3d55f50cc73ca6441a31fb442e19eb.mp3', 1097, '2026-09-14 01:57:32.168142', '67330e67b9a472430c1855857fc9b8bb5a4cb8bb7b8b8d35c44b965615cc5ab7', 'validated', '{"audio_key":"fe4c2829755bb7bd735297671a76dd493d3d55f50cc73ca6441a31fb442e19eb","entity_key":"wf_first_greetings_06","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"67330e67b9a472430c1855857fc9b8bb5a4cb8bb7b8b8d35c44b965615cc5ab7","settings":{"stability":0.72,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.92},"relative_path":"audio/generated/it-IT/lexical/fe4c2829755bb7bd735297671a76dd493d3d55f50cc73ca6441a31fb442e19eb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_greetings_03 -> audio/generated/it-IT/utterances/01acdd3f64ac7a6667a02f89ff811a9dddd0185be349568d9b0ea49d6dc12bc4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('a8164ba2-2382-5deb-bdc0-22f65c2edf79', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_greetings_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5d05ae43cd37811a12b54459710d97ebb16977b28d86fdd54f9380bff6486c4a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9926f718-94f2-51f8-80c7-e8e650a19bfc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('a8164ba2-2382-5deb-bdc0-22f65c2edf79', 1), '5d05ae43cd37811a12b54459710d97ebb16977b28d86fdd54f9380bff6486c4a',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/01acdd3f64ac7a6667a02f89ff811a9dddd0185be349568d9b0ea49d6dc12bc4.mp3', 966, '2026-09-14 01:57:32.682960', 'cbd83530ab3d1d1103534a0d7065711a29390136581f4efa465e2ff6e6de6992', 'validated', '{"audio_key":"01acdd3f64ac7a6667a02f89ff811a9dddd0185be349568d9b0ea49d6dc12bc4","entity_key":"u_first_greetings_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"cbd83530ab3d1d1103534a0d7065711a29390136581f4efa465e2ff6e6de6992","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/01acdd3f64ac7a6667a02f89ff811a9dddd0185be349568d9b0ea49d6dc12bc4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_conversation_04 -> audio/generated/it-IT/utterances/026ebe6ab4504f2e7b7c9ee531d98aea910d35754043cbf0011d0db5ea82a715.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6b8756a5-4880-5f88-ad0a-74265a47020a', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_conversation_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4538bea7d94bfafd42049af957f81cb65ba81d2e1cac1bb9d07b50d0bfaad95'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0e58b1fc-3c92-5764-8076-60232e286b35', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6b8756a5-4880-5f88-ad0a-74265a47020a', 1), 'd4538bea7d94bfafd42049af957f81cb65ba81d2e1cac1bb9d07b50d0bfaad95',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/026ebe6ab4504f2e7b7c9ee531d98aea910d35754043cbf0011d0db5ea82a715.mp3', 1384, '2026-09-14 01:57:33.139067', 'a8ccd774b79a6b74a87cec02242a59a8bf0e982e38bc3560f3b190a030f0d12e', 'validated', '{"audio_key":"026ebe6ab4504f2e7b7c9ee531d98aea910d35754043cbf0011d0db5ea82a715","entity_key":"u_first_conversation_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a8ccd774b79a6b74a87cec02242a59a8bf0e982e38bc3560f3b190a030f0d12e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/026ebe6ab4504f2e7b7c9ee531d98aea910d35754043cbf0011d0db5ea82a715.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_conversation_02_listen -> audio/generated/it-IT/utterances/026ebe6ab4504f2e7b7c9ee531d98aea910d35754043cbf0011d0db5ea82a715.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('031208f1-a14d-5b2b-8372-d0d39a6a2b6d', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_conversation_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'd4538bea7d94bfafd42049af957f81cb65ba81d2e1cac1bb9d07b50d0bfaad95'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c1bd5f0f-5954-521e-8853-86e1b41c660f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('031208f1-a14d-5b2b-8372-d0d39a6a2b6d', 1), 'd4538bea7d94bfafd42049af957f81cb65ba81d2e1cac1bb9d07b50d0bfaad95',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/026ebe6ab4504f2e7b7c9ee531d98aea910d35754043cbf0011d0db5ea82a715.mp3', 1384, '2026-09-14 01:57:33.139067', 'a8ccd774b79a6b74a87cec02242a59a8bf0e982e38bc3560f3b190a030f0d12e', 'validated', '{"audio_key":"026ebe6ab4504f2e7b7c9ee531d98aea910d35754043cbf0011d0db5ea82a715","entity_key":"e_first_conversation_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a8ccd774b79a6b74a87cec02242a59a8bf0e982e38bc3560f3b190a030f0d12e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/026ebe6ab4504f2e7b7c9ee531d98aea910d35754043cbf0011d0db5ea82a715.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_numbers_0_10_02 -> audio/generated/it-IT/utterances/05f32aa01ce4646c8d0e80fee266138abcc4e0b19fc29781bfe7ac26b9095e6b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d9bf0d27-a607-599f-8019-e21a752cdc2d', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_numbers_0_10_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5bd6425bec76e6ffce70b4a6242f6e8451a54734061c85d0de5a4a9224dde7a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('3ec56497-0f96-5208-991d-2539586cf937', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d9bf0d27-a607-599f-8019-e21a752cdc2d', 1), 'c5bd6425bec76e6ffce70b4a6242f6e8451a54734061c85d0de5a4a9224dde7a',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/05f32aa01ce4646c8d0e80fee266138abcc4e0b19fc29781bfe7ac26b9095e6b.mp3', 1280, '2026-09-14 01:57:33.633409', 'a029a2cbb03e14e0c45428bb6c7ef095a48ececb9cfdc748102b76fb6726cde0', 'validated', '{"audio_key":"05f32aa01ce4646c8d0e80fee266138abcc4e0b19fc29781bfe7ac26b9095e6b","entity_key":"u_numbers_0_10_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a029a2cbb03e14e0c45428bb6c7ef095a48ececb9cfdc748102b76fb6726cde0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/05f32aa01ce4646c8d0e80fee266138abcc4e0b19fc29781bfe7ac26b9095e6b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_numbers_0_10_01_listen -> audio/generated/it-IT/utterances/05f32aa01ce4646c8d0e80fee266138abcc4e0b19fc29781bfe7ac26b9095e6b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e1e337a2-9d69-586d-a6c7-aa9659527ec1', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_numbers_0_10_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c5bd6425bec76e6ffce70b4a6242f6e8451a54734061c85d0de5a4a9224dde7a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4a69e2d-c459-5987-8af5-4177295b53f5', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e1e337a2-9d69-586d-a6c7-aa9659527ec1', 1), 'c5bd6425bec76e6ffce70b4a6242f6e8451a54734061c85d0de5a4a9224dde7a',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/05f32aa01ce4646c8d0e80fee266138abcc4e0b19fc29781bfe7ac26b9095e6b.mp3', 1280, '2026-09-14 01:57:33.633409', 'a029a2cbb03e14e0c45428bb6c7ef095a48ececb9cfdc748102b76fb6726cde0', 'validated', '{"audio_key":"05f32aa01ce4646c8d0e80fee266138abcc4e0b19fc29781bfe7ac26b9095e6b","entity_key":"e_numbers_0_10_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"a029a2cbb03e14e0c45428bb6c7ef095a48ececb9cfdc748102b76fb6726cde0","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/05f32aa01ce4646c8d0e80fee266138abcc4e0b19fc29781bfe7ac26b9095e6b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_name_01 -> audio/generated/it-IT/utterances/0a99d2123aa1e176c133b907291ae5e1c4cad1c70a5ea4222a22375c86c0e9e0.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d2fbd134-bb48-529c-b2cf-8173a392775d', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_name_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cc0de06ca307857085f992ed00599dd21c95545abe7d9bafb3f3338840787567'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('edc35f90-c350-56e3-b11e-9ba21201f80d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d2fbd134-bb48-529c-b2cf-8173a392775d', 1), 'cc0de06ca307857085f992ed00599dd21c95545abe7d9bafb3f3338840787567',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/0a99d2123aa1e176c133b907291ae5e1c4cad1c70a5ea4222a22375c86c0e9e0.mp3', 1332, '2026-09-14 01:57:34.114900', '4b8206f1c48ef29c61aec42a5a82a26770d6e7d6a627f616237d9f8eebfeb654', 'validated', '{"audio_key":"0a99d2123aa1e176c133b907291ae5e1c4cad1c70a5ea4222a22375c86c0e9e0","entity_key":"u_my_name_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4b8206f1c48ef29c61aec42a5a82a26770d6e7d6a627f616237d9f8eebfeb654","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/0a99d2123aa1e176c133b907291ae5e1c4cad1c70a5ea4222a22375c86c0e9e0.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_survival_words_02 -> audio/generated/it-IT/utterances/0ee8b571d2fe18fac19953ab66f2f066598e7634d885dfc28748d879b3adfdb4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('bb88da6f-4b42-51bd-a56b-df94848f2a06', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_survival_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '06478df97160a5bfaf3c3aa3714768a338c2455d1381e92a1b9a30798f2e8348'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b550f716-08bc-50c4-a4e8-a69278eca323', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('bb88da6f-4b42-51bd-a56b-df94848f2a06', 1), '06478df97160a5bfaf3c3aa3714768a338c2455d1381e92a1b9a30798f2e8348',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/0ee8b571d2fe18fac19953ab66f2f066598e7634d885dfc28748d879b3adfdb4.mp3', 1018, '2026-09-14 01:57:34.585713', '7e5e7da22d035216fa6f16efde5656806cf162cd442ae5d414ff20da53069f13', 'validated', '{"audio_key":"0ee8b571d2fe18fac19953ab66f2f066598e7634d885dfc28748d879b3adfdb4","entity_key":"u_survival_words_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7e5e7da22d035216fa6f16efde5656806cf162cd442ae5d414ff20da53069f13","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/0ee8b571d2fe18fac19953ab66f2f066598e7634d885dfc28748d879b3adfdb4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_survival_words_01_listen -> audio/generated/it-IT/utterances/0ee8b571d2fe18fac19953ab66f2f066598e7634d885dfc28748d879b3adfdb4.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('7287cce4-ce39-50eb-bc80-18988aa80190', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_survival_words_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '06478df97160a5bfaf3c3aa3714768a338c2455d1381e92a1b9a30798f2e8348'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c0389d6-4461-5310-b13c-48145e83f884', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('7287cce4-ce39-50eb-bc80-18988aa80190', 1), '06478df97160a5bfaf3c3aa3714768a338c2455d1381e92a1b9a30798f2e8348',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/0ee8b571d2fe18fac19953ab66f2f066598e7634d885dfc28748d879b3adfdb4.mp3', 1018, '2026-09-14 01:57:34.585713', '7e5e7da22d035216fa6f16efde5656806cf162cd442ae5d414ff20da53069f13', 'validated', '{"audio_key":"0ee8b571d2fe18fac19953ab66f2f066598e7634d885dfc28748d879b3adfdb4","entity_key":"e_survival_words_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7e5e7da22d035216fa6f16efde5656806cf162cd442ae5d414ff20da53069f13","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/0ee8b571d2fe18fac19953ab66f2f066598e7634d885dfc28748d879b3adfdb4.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_sounds_01 -> audio/generated/it-IT/utterances/158bb65caefca2bb56e1b715d12d5b0f5e06c553c697ee4b18f6a8aaac45a40f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('b246d106-70d6-5f81-b744-f952c6563f33', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_sounds_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '1fbddf0a67e53cadd6400938e46717046923072422b1cc5107a626c02866ad00'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('50beb2c4-46c7-5474-8dfa-d157e6ffe3dc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('b246d106-70d6-5f81-b744-f952c6563f33', 1), '1fbddf0a67e53cadd6400938e46717046923072422b1cc5107a626c02866ad00',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/158bb65caefca2bb56e1b715d12d5b0f5e06c553c697ee4b18f6a8aaac45a40f.mp3', 1436, '2026-09-14 01:57:35.091980', '19e9cb14a09fe1b24ff741287b8b3e1990186927f4815d537d8addfcbcf2a20c', 'validated', '{"audio_key":"158bb65caefca2bb56e1b715d12d5b0f5e06c553c697ee4b18f6a8aaac45a40f","entity_key":"u_first_sounds_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"19e9cb14a09fe1b24ff741287b8b3e1990186927f4815d537d8addfcbcf2a20c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/158bb65caefca2bb56e1b715d12d5b0f5e06c553c697ee4b18f6a8aaac45a40f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_how_are_you_01 -> audio/generated/it-IT/utterances/194c58b3e7dc26500b82e3c423f2500b25af50525c06b01b2088a8b53e12cd9f.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4463a141-3571-5b24-ae5b-c67b258f015b', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_how_are_you_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8b7a3cba58ce83fc05bdfce2facdbcaa1038a3c7082092d5e36ec68d23a30d45'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5798bc2e-f61a-586a-8fd5-762a02a21110', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4463a141-3571-5b24-ae5b-c67b258f015b', 1), '8b7a3cba58ce83fc05bdfce2facdbcaa1038a3c7082092d5e36ec68d23a30d45',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/194c58b3e7dc26500b82e3c423f2500b25af50525c06b01b2088a8b53e12cd9f.mp3', 1097, '2026-09-14 01:57:35.886033', '7b3199b64960bb068ecf1e21f483e455c392539cc5eec04797fad96cf62b985f', 'validated', '{"audio_key":"194c58b3e7dc26500b82e3c423f2500b25af50525c06b01b2088a8b53e12cd9f","entity_key":"u_how_are_you_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7b3199b64960bb068ecf1e21f483e455c392539cc5eec04797fad96cf62b985f","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/194c58b3e7dc26500b82e3c423f2500b25af50525c06b01b2088a8b53e12cd9f.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_greetings_02 -> audio/generated/it-IT/utterances/1967523ef92cf05e5a2e05787cea024f4d8fa012976f27f69356f5d50dd1ce8b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4a8843b7-da3c-56a9-8635-72561fda37d4', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_greetings_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65f3c469a1b93490f0f8af4f4b7df299b8c791e6b2b7929a623619a47d96d4ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5b82047f-556c-54dc-b083-d9856e8360bc', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4a8843b7-da3c-56a9-8635-72561fda37d4', 1), '65f3c469a1b93490f0f8af4f4b7df299b8c791e6b2b7929a623619a47d96d4ae',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/1967523ef92cf05e5a2e05787cea024f4d8fa012976f27f69356f5d50dd1ce8b.mp3', 1018, '2026-09-14 01:57:36.031991', '1ade55b0ac74cae08c45d9c8958252cf767f307861f91ada2eee40d16da77489', 'validated', '{"audio_key":"1967523ef92cf05e5a2e05787cea024f4d8fa012976f27f69356f5d50dd1ce8b","entity_key":"u_first_greetings_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1ade55b0ac74cae08c45d9c8958252cf767f307861f91ada2eee40d16da77489","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/1967523ef92cf05e5a2e05787cea024f4d8fa012976f27f69356f5d50dd1ce8b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_greetings_01_listen -> audio/generated/it-IT/utterances/1967523ef92cf05e5a2e05787cea024f4d8fa012976f27f69356f5d50dd1ce8b.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('f5088862-9e99-51e8-873b-2b1abc6a9232', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_greetings_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '65f3c469a1b93490f0f8af4f4b7df299b8c791e6b2b7929a623619a47d96d4ae'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('848003f0-7844-5f17-98e3-cd365ca28711', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('f5088862-9e99-51e8-873b-2b1abc6a9232', 1), '65f3c469a1b93490f0f8af4f4b7df299b8c791e6b2b7929a623619a47d96d4ae',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/1967523ef92cf05e5a2e05787cea024f4d8fa012976f27f69356f5d50dd1ce8b.mp3', 1018, '2026-09-14 01:57:36.031991', '1ade55b0ac74cae08c45d9c8958252cf767f307861f91ada2eee40d16da77489', 'validated', '{"audio_key":"1967523ef92cf05e5a2e05787cea024f4d8fa012976f27f69356f5d50dd1ce8b","entity_key":"e_first_greetings_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1ade55b0ac74cae08c45d9c8958252cf767f307861f91ada2eee40d16da77489","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/1967523ef92cf05e5a2e05787cea024f4d8fa012976f27f69356f5d50dd1ce8b.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_sounds_04 -> audio/generated/it-IT/utterances/19b4ea97f7a97263b83ef04d36daa936b736ef18700da80b4470998cddfa287d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e3ae7a4c-ca81-5bb7-8641-c8f98deadd2b', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_sounds_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bbff1f5ebc8e5e635aa02184d4816759833c6fec504219e452f81fd896bf0c5e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('32b06ec1-95f2-5b4a-a313-633ee28043d2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e3ae7a4c-ca81-5bb7-8641-c8f98deadd2b', 1), 'bbff1f5ebc8e5e635aa02184d4816759833c6fec504219e452f81fd896bf0c5e',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/19b4ea97f7a97263b83ef04d36daa936b736ef18700da80b4470998cddfa287d.mp3', 1567, '2026-09-14 01:57:36.851360', 'bfdc2d887a7962616ea7322e4ab680e2e68d7b8dbfca1f3bf62866e2bac4be2a', 'validated', '{"audio_key":"19b4ea97f7a97263b83ef04d36daa936b736ef18700da80b4470998cddfa287d","entity_key":"u_first_sounds_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"bfdc2d887a7962616ea7322e4ab680e2e68d7b8dbfca1f3bf62866e2bac4be2a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/19b4ea97f7a97263b83ef04d36daa936b736ef18700da80b4470998cddfa287d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_sounds_02_listen -> audio/generated/it-IT/utterances/19b4ea97f7a97263b83ef04d36daa936b736ef18700da80b4470998cddfa287d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('95273563-2929-5761-bdb8-d7df365e8ff8', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_sounds_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bbff1f5ebc8e5e635aa02184d4816759833c6fec504219e452f81fd896bf0c5e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('16e2b905-ef76-5f52-bf99-9901367640c7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('95273563-2929-5761-bdb8-d7df365e8ff8', 1), 'bbff1f5ebc8e5e635aa02184d4816759833c6fec504219e452f81fd896bf0c5e',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/19b4ea97f7a97263b83ef04d36daa936b736ef18700da80b4470998cddfa287d.mp3', 1567, '2026-09-14 01:57:36.851360', 'bfdc2d887a7962616ea7322e4ab680e2e68d7b8dbfca1f3bf62866e2bac4be2a', 'validated', '{"audio_key":"19b4ea97f7a97263b83ef04d36daa936b736ef18700da80b4470998cddfa287d","entity_key":"e_first_sounds_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"bfdc2d887a7962616ea7322e4ab680e2e68d7b8dbfca1f3bf62866e2bac4be2a","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/19b4ea97f7a97263b83ef04d36daa936b736ef18700da80b4470998cddfa287d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_survival_words_03 -> audio/generated/it-IT/utterances/22b1054852ec4a9edcb3255b90c108bb7b826d027c37e404009f79488421b69d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('50e2f250-1cf4-5c5f-867d-41e5d673793d', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_survival_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9a6813165511f1d0ae10705e5b2197706a896a964e34a959e29d395f3559d964'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ebf81d9-157e-5ab2-854f-d54d02ac77d5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('50e2f250-1cf4-5c5f-867d-41e5d673793d', 1), '9a6813165511f1d0ae10705e5b2197706a896a964e34a959e29d395f3559d964',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/22b1054852ec4a9edcb3255b90c108bb7b826d027c37e404009f79488421b69d.mp3', 1201, '2026-09-14 01:57:36.982706', '60bee3a7bf8d10965e03fec62e2f00793e653aee83516a663bb3f960addf46c4', 'validated', '{"audio_key":"22b1054852ec4a9edcb3255b90c108bb7b826d027c37e404009f79488421b69d","entity_key":"u_survival_words_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"60bee3a7bf8d10965e03fec62e2f00793e653aee83516a663bb3f960addf46c4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/22b1054852ec4a9edcb3255b90c108bb7b826d027c37e404009f79488421b69d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_numbers_0_10_04 -> audio/generated/it-IT/utterances/26b103d600d5e10098b70b3a7f0e165976aeffcb4cfc76eec9c3b184e6bcaaaa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3b535dba-77cc-5676-a42d-384f78c86fb6', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_numbers_0_10_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '72c3555ea4cee31e3331b8bae349905c2f930ae0814ff8fe90860b63ae487e74'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('fcc66b5c-9530-5a5f-bcce-e7c94d65686a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3b535dba-77cc-5676-a42d-384f78c86fb6', 1), '72c3555ea4cee31e3331b8bae349905c2f930ae0814ff8fe90860b63ae487e74',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/26b103d600d5e10098b70b3a7f0e165976aeffcb4cfc76eec9c3b184e6bcaaaa.mp3', 1332, '2026-09-14 01:57:37.805453', '91f5e3c3e7d33a4a250789bbb6aab22f20e59fc4f0a10829261002e1aaac128d', 'validated', '{"audio_key":"26b103d600d5e10098b70b3a7f0e165976aeffcb4cfc76eec9c3b184e6bcaaaa","entity_key":"u_numbers_0_10_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"91f5e3c3e7d33a4a250789bbb6aab22f20e59fc4f0a10829261002e1aaac128d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/26b103d600d5e10098b70b3a7f0e165976aeffcb4cfc76eec9c3b184e6bcaaaa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_numbers_0_10_02_listen -> audio/generated/it-IT/utterances/26b103d600d5e10098b70b3a7f0e165976aeffcb4cfc76eec9c3b184e6bcaaaa.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('80e66027-a3d3-582e-a55f-8d28a8c9def4', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_numbers_0_10_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '72c3555ea4cee31e3331b8bae349905c2f930ae0814ff8fe90860b63ae487e74'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('6aed4e7b-206c-58cd-b67e-052013f42f1c', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('80e66027-a3d3-582e-a55f-8d28a8c9def4', 1), '72c3555ea4cee31e3331b8bae349905c2f930ae0814ff8fe90860b63ae487e74',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/26b103d600d5e10098b70b3a7f0e165976aeffcb4cfc76eec9c3b184e6bcaaaa.mp3', 1332, '2026-09-14 01:57:37.805453', '91f5e3c3e7d33a4a250789bbb6aab22f20e59fc4f0a10829261002e1aaac128d', 'validated', '{"audio_key":"26b103d600d5e10098b70b3a7f0e165976aeffcb4cfc76eec9c3b184e6bcaaaa","entity_key":"e_numbers_0_10_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"91f5e3c3e7d33a4a250789bbb6aab22f20e59fc4f0a10829261002e1aaac128d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/26b103d600d5e10098b70b3a7f0e165976aeffcb4cfc76eec9c3b184e6bcaaaa.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polite_words_02 -> audio/generated/it-IT/utterances/32e0b81fc0cbc1d8ee70371ac2e54bfeafddde4a87fb759176d69b6ba395fc03.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('3255c180-ba7f-56ad-847d-5a85eae95e3e', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polite_words_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8766dcaa26fceb98c9b3b990b8afeee788a680821b4e4264339a5bd856e5f9d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ea55fa7d-1f85-5d00-8886-47725d5d30c0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('3255c180-ba7f-56ad-847d-5a85eae95e3e', 1), '8766dcaa26fceb98c9b3b990b8afeee788a680821b4e4264339a5bd856e5f9d7',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/32e0b81fc0cbc1d8ee70371ac2e54bfeafddde4a87fb759176d69b6ba395fc03.mp3', 1149, '2026-09-14 01:57:37.935023', '150c42f19a2fd3d601b1a91d0f2cabd606272d887c2285c7c09aed76248a7132', 'validated', '{"audio_key":"32e0b81fc0cbc1d8ee70371ac2e54bfeafddde4a87fb759176d69b6ba395fc03","entity_key":"u_polite_words_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"150c42f19a2fd3d601b1a91d0f2cabd606272d887c2285c7c09aed76248a7132","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/32e0b81fc0cbc1d8ee70371ac2e54bfeafddde4a87fb759176d69b6ba395fc03.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_polite_words_01_listen -> audio/generated/it-IT/utterances/32e0b81fc0cbc1d8ee70371ac2e54bfeafddde4a87fb759176d69b6ba395fc03.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('b4ee89bb-5140-5902-8226-c534c4498dae', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_polite_words_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '8766dcaa26fceb98c9b3b990b8afeee788a680821b4e4264339a5bd856e5f9d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('35bf9f23-2c2b-51e7-b4ff-d02f8baf8fe1', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('b4ee89bb-5140-5902-8226-c534c4498dae', 1), '8766dcaa26fceb98c9b3b990b8afeee788a680821b4e4264339a5bd856e5f9d7',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/32e0b81fc0cbc1d8ee70371ac2e54bfeafddde4a87fb759176d69b6ba395fc03.mp3', 1149, '2026-09-14 01:57:37.935023', '150c42f19a2fd3d601b1a91d0f2cabd606272d887c2285c7c09aed76248a7132', 'validated', '{"audio_key":"32e0b81fc0cbc1d8ee70371ac2e54bfeafddde4a87fb759176d69b6ba395fc03","entity_key":"e_polite_words_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"150c42f19a2fd3d601b1a91d0f2cabd606272d887c2285c7c09aed76248a7132","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/32e0b81fc0cbc1d8ee70371ac2e54bfeafddde4a87fb759176d69b6ba395fc03.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_alphabet_02 -> audio/generated/it-IT/utterances/3d9f7b0ac66f62da4d5bd2f12c36545ceb70f73c462a0e8b2ab4a3e9f0521d32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('db7759ac-6017-590a-a463-d488eb5546a5', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_alphabet_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ed48d838f0850941f1b574c9a21c1e5bddb0fa58381f02234d58353d0ab56a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e87c0ece-a227-5b96-a9f3-0526ad4b40c1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('db7759ac-6017-590a-a463-d488eb5546a5', 1), '9ed48d838f0850941f1b574c9a21c1e5bddb0fa58381f02234d58353d0ab56a9',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/3d9f7b0ac66f62da4d5bd2f12c36545ceb70f73c462a0e8b2ab4a3e9f0521d32.mp3', 1488, '2026-09-14 01:57:38.791455', 'f4b98494ac7e81b958734c163072c3feeed295549ba179a6c353254add6da972', 'validated', '{"audio_key":"3d9f7b0ac66f62da4d5bd2f12c36545ceb70f73c462a0e8b2ab4a3e9f0521d32","entity_key":"u_alphabet_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f4b98494ac7e81b958734c163072c3feeed295549ba179a6c353254add6da972","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/3d9f7b0ac66f62da4d5bd2f12c36545ceb70f73c462a0e8b2ab4a3e9f0521d32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_alphabet_01_listen -> audio/generated/it-IT/utterances/3d9f7b0ac66f62da4d5bd2f12c36545ceb70f73c462a0e8b2ab4a3e9f0521d32.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e2926628-e9c9-55ff-892a-792b53488c43', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_alphabet_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9ed48d838f0850941f1b574c9a21c1e5bddb0fa58381f02234d58353d0ab56a9'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7dd6c34a-7ef9-56b9-be07-a3c870af0ad3', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e2926628-e9c9-55ff-892a-792b53488c43', 1), '9ed48d838f0850941f1b574c9a21c1e5bddb0fa58381f02234d58353d0ab56a9',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/3d9f7b0ac66f62da4d5bd2f12c36545ceb70f73c462a0e8b2ab4a3e9f0521d32.mp3', 1488, '2026-09-14 01:57:38.791455', 'f4b98494ac7e81b958734c163072c3feeed295549ba179a6c353254add6da972', 'validated', '{"audio_key":"3d9f7b0ac66f62da4d5bd2f12c36545ceb70f73c462a0e8b2ab4a3e9f0521d32","entity_key":"e_alphabet_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"f4b98494ac7e81b958734c163072c3feeed295549ba179a6c353254add6da972","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/3d9f7b0ac66f62da4d5bd2f12c36545ceb70f73c462a0e8b2ab4a3e9f0521d32.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_name_04 -> audio/generated/it-IT/utterances/481a0898206a3109d2d7eea8b9b9306d6609d7dc4ee84343c4c61b642c8316e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('368bb80d-23c0-5b31-8530-7a7805dc8e67', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_name_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '309e3a509389abd686b2aa9afcc00f737a412d70811918fa00204a8b70e3cf13'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('bcd5d872-200d-5a9f-92e1-7783db4e109b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('368bb80d-23c0-5b31-8530-7a7805dc8e67', 1), '309e3a509389abd686b2aa9afcc00f737a412d70811918fa00204a8b70e3cf13',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/481a0898206a3109d2d7eea8b9b9306d6609d7dc4ee84343c4c61b642c8316e9.mp3', 1332, '2026-09-14 01:57:38.899282', '458f55e970db056f0dac67a963090fd69a63c4c9d421b725be9e3188224da620', 'validated', '{"audio_key":"481a0898206a3109d2d7eea8b9b9306d6609d7dc4ee84343c4c61b642c8316e9","entity_key":"u_my_name_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"458f55e970db056f0dac67a963090fd69a63c4c9d421b725be9e3188224da620","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/481a0898206a3109d2d7eea8b9b9306d6609d7dc4ee84343c4c61b642c8316e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_my_name_02_listen -> audio/generated/it-IT/utterances/481a0898206a3109d2d7eea8b9b9306d6609d7dc4ee84343c4c61b642c8316e9.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('5083e0ae-02a5-5600-8293-d0fe3a5406ac', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_my_name_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '309e3a509389abd686b2aa9afcc00f737a412d70811918fa00204a8b70e3cf13'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c199fabf-82d5-57ea-8c74-8570519c659f', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('5083e0ae-02a5-5600-8293-d0fe3a5406ac', 1), '309e3a509389abd686b2aa9afcc00f737a412d70811918fa00204a8b70e3cf13',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/481a0898206a3109d2d7eea8b9b9306d6609d7dc4ee84343c4c61b642c8316e9.mp3', 1332, '2026-09-14 01:57:38.899282', '458f55e970db056f0dac67a963090fd69a63c4c9d421b725be9e3188224da620', 'validated', '{"audio_key":"481a0898206a3109d2d7eea8b9b9306d6609d7dc4ee84343c4c61b642c8316e9","entity_key":"e_my_name_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"458f55e970db056f0dac67a963090fd69a63c4c9d421b725be9e3188224da620","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/481a0898206a3109d2d7eea8b9b9306d6609d7dc4ee84343c4c61b642c8316e9.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_survival_words_01 -> audio/generated/it-IT/utterances/4c540591b1042ac52fc51797b9a682785ac354e1e4cf60bf0a78c02169000993.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('71f459e5-5ed7-5fd7-ada8-8e4de592b370', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_survival_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '375f78ed92a0cf7e5d9e0fd6e3b41100a47bd8f3f1e986ea476a9fe44f9a1ece'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('896b66f9-9270-51c3-9314-587158ac1357', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('71f459e5-5ed7-5fd7-ada8-8e4de592b370', 1), '375f78ed92a0cf7e5d9e0fd6e3b41100a47bd8f3f1e986ea476a9fe44f9a1ece',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/4c540591b1042ac52fc51797b9a682785ac354e1e4cf60bf0a78c02169000993.mp3', 1097, '2026-09-14 01:57:39.747514', 'c8d17c1bceb2cbacba66e86070d8f7bfe94937b2d7b290eb05f75c40076e643c', 'validated', '{"audio_key":"4c540591b1042ac52fc51797b9a682785ac354e1e4cf60bf0a78c02169000993","entity_key":"u_survival_words_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"c8d17c1bceb2cbacba66e86070d8f7bfe94937b2d7b290eb05f75c40076e643c","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/4c540591b1042ac52fc51797b9a682785ac354e1e4cf60bf0a78c02169000993.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_numbers_0_10_01 -> audio/generated/it-IT/utterances/4d51fec095708dcc4fe563ee35689dab01357a3cbbc66f79002378e553894adb.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('f7f91736-4511-5db3-85ae-90d6c70353d2', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_numbers_0_10_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2321d81bd5c9305fe4eb7409973debd8066cbd23a7467eebbacc137d8ec7d865'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('4c032358-4cfc-5b58-a80a-0e229372c250', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('f7f91736-4511-5db3-85ae-90d6c70353d2', 1), '2321d81bd5c9305fe4eb7409973debd8066cbd23a7467eebbacc137d8ec7d865',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/4d51fec095708dcc4fe563ee35689dab01357a3cbbc66f79002378e553894adb.mp3', 1384, '2026-09-14 01:57:39.869979', '1b237e1f4177bb9ec825ce8f98a1a4ddbc4546eac673b8258efd97c5882d5f1d', 'validated', '{"audio_key":"4d51fec095708dcc4fe563ee35689dab01357a3cbbc66f79002378e553894adb","entity_key":"u_numbers_0_10_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"1b237e1f4177bb9ec825ce8f98a1a4ddbc4546eac673b8258efd97c5882d5f1d","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/4d51fec095708dcc4fe563ee35689dab01357a3cbbc66f79002378e553894adb.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_sounds_02 -> audio/generated/it-IT/utterances/504d2f06706bb6e494c59dab29bb81adae605bc031daeff3c0e7f9bf3b757c01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('2065e4bc-09f6-59ab-9883-1041508f58e7', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_sounds_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9fc0a01c61d768daff7f9fe71e788752a0038886ea2e37e9abf885b8e32d0ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('d5dff837-0b1e-54c7-bcf7-4c82a96c6c97', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('2065e4bc-09f6-59ab-9883-1041508f58e7', 1), 'b9fc0a01c61d768daff7f9fe71e788752a0038886ea2e37e9abf885b8e32d0ac',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/504d2f06706bb6e494c59dab29bb81adae605bc031daeff3c0e7f9bf3b757c01.mp3', 1697, '2026-09-14 01:57:40.768498', '4c84a070d8fda97ef18ab5958ed7d9643668aba51a8061e5735ec8266d3882f2', 'validated', '{"audio_key":"504d2f06706bb6e494c59dab29bb81adae605bc031daeff3c0e7f9bf3b757c01","entity_key":"u_first_sounds_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4c84a070d8fda97ef18ab5958ed7d9643668aba51a8061e5735ec8266d3882f2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/504d2f06706bb6e494c59dab29bb81adae605bc031daeff3c0e7f9bf3b757c01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_sounds_01_listen -> audio/generated/it-IT/utterances/504d2f06706bb6e494c59dab29bb81adae605bc031daeff3c0e7f9bf3b757c01.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('40ff30d3-a0b9-5d65-97bd-e447bd6b0a49', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_sounds_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9fc0a01c61d768daff7f9fe71e788752a0038886ea2e37e9abf885b8e32d0ac'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e3bd5dd3-ca8d-5e2f-9bad-b564a35a8d61', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('40ff30d3-a0b9-5d65-97bd-e447bd6b0a49', 1), 'b9fc0a01c61d768daff7f9fe71e788752a0038886ea2e37e9abf885b8e32d0ac',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/504d2f06706bb6e494c59dab29bb81adae605bc031daeff3c0e7f9bf3b757c01.mp3', 1697, '2026-09-14 01:57:40.768498', '4c84a070d8fda97ef18ab5958ed7d9643668aba51a8061e5735ec8266d3882f2', 'validated', '{"audio_key":"504d2f06706bb6e494c59dab29bb81adae605bc031daeff3c0e7f9bf3b757c01","entity_key":"e_first_sounds_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"4c84a070d8fda97ef18ab5958ed7d9643668aba51a8061e5735ec8266d3882f2","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/504d2f06706bb6e494c59dab29bb81adae605bc031daeff3c0e7f9bf3b757c01.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_survival_words_04 -> audio/generated/it-IT/utterances/5c293d211ef1cf2e12998771329f02974db2c9b4915236a788971203c68f8a47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ec33e495-90dc-5e42-8ae2-0367a2a1afaa', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_survival_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cec97fbc96cd0d47d1216f3e5060cd2a3c3df1b7aa256630c52093d88a80d004'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9c3bd92-b0fb-576a-8531-1b0b00e1d8f0', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ec33e495-90dc-5e42-8ae2-0367a2a1afaa', 1), 'cec97fbc96cd0d47d1216f3e5060cd2a3c3df1b7aa256630c52093d88a80d004',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/5c293d211ef1cf2e12998771329f02974db2c9b4915236a788971203c68f8a47.mp3', 1384, '2026-09-14 01:57:40.888406', '7f9ae0fd36c76468776e522cf2b9618a1d01f7cc34b1b88496a91e0c20e9e9e7', 'validated', '{"audio_key":"5c293d211ef1cf2e12998771329f02974db2c9b4915236a788971203c68f8a47","entity_key":"u_survival_words_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7f9ae0fd36c76468776e522cf2b9618a1d01f7cc34b1b88496a91e0c20e9e9e7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/5c293d211ef1cf2e12998771329f02974db2c9b4915236a788971203c68f8a47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_survival_words_02_listen -> audio/generated/it-IT/utterances/5c293d211ef1cf2e12998771329f02974db2c9b4915236a788971203c68f8a47.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0a094532-4552-5580-8e2d-7783aff08b75', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_survival_words_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'cec97fbc96cd0d47d1216f3e5060cd2a3c3df1b7aa256630c52093d88a80d004'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0229e877-d9d1-54a3-a787-c5154a44cdb7', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0a094532-4552-5580-8e2d-7783aff08b75', 1), 'cec97fbc96cd0d47d1216f3e5060cd2a3c3df1b7aa256630c52093d88a80d004',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/5c293d211ef1cf2e12998771329f02974db2c9b4915236a788971203c68f8a47.mp3', 1384, '2026-09-14 01:57:40.888406', '7f9ae0fd36c76468776e522cf2b9618a1d01f7cc34b1b88496a91e0c20e9e9e7', 'validated', '{"audio_key":"5c293d211ef1cf2e12998771329f02974db2c9b4915236a788971203c68f8a47","entity_key":"e_survival_words_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"7f9ae0fd36c76468776e522cf2b9618a1d01f7cc34b1b88496a91e0c20e9e9e7","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/5c293d211ef1cf2e12998771329f02974db2c9b4915236a788971203c68f8a47.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_conversation_02 -> audio/generated/it-IT/utterances/65e401c213091415decc3c5afc0a39c67023d7091a90fadedf1d5a15e744b514.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4ae33ce8-91d2-5947-a5fb-a9c99d9abaf7', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_conversation_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc3e5b63cf5bcc706f0930da3c0d688fce9d3904bb2f0010ebac0d42256ca14e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ef008b92-1af8-561d-a1f8-e68f22a2c531', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4ae33ce8-91d2-5947-a5fb-a9c99d9abaf7', 1), 'bc3e5b63cf5bcc706f0930da3c0d688fce9d3904bb2f0010ebac0d42256ca14e',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/65e401c213091415decc3c5afc0a39c67023d7091a90fadedf1d5a15e744b514.mp3', 1436, '2026-09-14 01:57:41.756102', 'e8638d3214a2a1e2f4b0a0683af02a70bb1fd2a244c8cd785f457ade8044e0aa', 'validated', '{"audio_key":"65e401c213091415decc3c5afc0a39c67023d7091a90fadedf1d5a15e744b514","entity_key":"u_first_conversation_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e8638d3214a2a1e2f4b0a0683af02a70bb1fd2a244c8cd785f457ade8044e0aa","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/65e401c213091415decc3c5afc0a39c67023d7091a90fadedf1d5a15e744b514.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_conversation_01_listen -> audio/generated/it-IT/utterances/65e401c213091415decc3c5afc0a39c67023d7091a90fadedf1d5a15e744b514.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('94966ca4-fc66-535b-b6f9-a204edf2dfe2', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_conversation_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc3e5b63cf5bcc706f0930da3c0d688fce9d3904bb2f0010ebac0d42256ca14e'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('abff8971-ce18-54a1-ba81-8cedda898520', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('94966ca4-fc66-535b-b6f9-a204edf2dfe2', 1), 'bc3e5b63cf5bcc706f0930da3c0d688fce9d3904bb2f0010ebac0d42256ca14e',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/65e401c213091415decc3c5afc0a39c67023d7091a90fadedf1d5a15e744b514.mp3', 1436, '2026-09-14 01:57:41.756102', 'e8638d3214a2a1e2f4b0a0683af02a70bb1fd2a244c8cd785f457ade8044e0aa', 'validated', '{"audio_key":"65e401c213091415decc3c5afc0a39c67023d7091a90fadedf1d5a15e744b514","entity_key":"e_first_conversation_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"e8638d3214a2a1e2f4b0a0683af02a70bb1fd2a244c8cd785f457ade8044e0aa","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/65e401c213091415decc3c5afc0a39c67023d7091a90fadedf1d5a15e744b514.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_greetings_01 -> audio/generated/it-IT/utterances/696c5a6c7b24115be82d0efb560b78a7e46578f38fe58fa077c05b5603c8d115.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('e8cc820f-8884-5ff6-9490-2d16a86156a7', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_greetings_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '6119ce5b522dbbbcf1f5927eeab860165ad131e1c6b76aead9c0088a9ef85dd3'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7dce5912-87db-5f06-8060-d30ce8f41a28', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('e8cc820f-8884-5ff6-9490-2d16a86156a7', 1), '6119ce5b522dbbbcf1f5927eeab860165ad131e1c6b76aead9c0088a9ef85dd3',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/696c5a6c7b24115be82d0efb560b78a7e46578f38fe58fa077c05b5603c8d115.mp3', 1018, '2026-09-14 01:57:41.802503', '5178755a1eaf516053428882e4a1b4b3d462c9bb13b6081233c656a59527c902', 'validated', '{"audio_key":"696c5a6c7b24115be82d0efb560b78a7e46578f38fe58fa077c05b5603c8d115","entity_key":"u_first_greetings_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5178755a1eaf516053428882e4a1b4b3d462c9bb13b6081233c656a59527c902","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/696c5a6c7b24115be82d0efb560b78a7e46578f38fe58fa077c05b5603c8d115.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_alphabet_03 -> audio/generated/it-IT/utterances/7528a08dd01318f3a3d60e45ea7cc96a722a8325f489f706b0dd8f2f7fdf5edd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('822ec4be-1572-5283-be43-caee9a006a1a', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_alphabet_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '4b2ba73dbff6cb16806e80c9c005fad762e8593938c2233fe783ed36ea8da647'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b24c4446-4022-5316-bbde-6657820db5d2', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('822ec4be-1572-5283-be43-caee9a006a1a', 1), '4b2ba73dbff6cb16806e80c9c005fad762e8593938c2233fe783ed36ea8da647',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/7528a08dd01318f3a3d60e45ea7cc96a722a8325f489f706b0dd8f2f7fdf5edd.mp3', 1280, '2026-09-14 01:57:42.769993', '020d1ca46444c26d14eabcc8d3e80a79b62ac7e382272f92849989c762b78cfe', 'validated', '{"audio_key":"7528a08dd01318f3a3d60e45ea7cc96a722a8325f489f706b0dd8f2f7fdf5edd","entity_key":"u_alphabet_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"020d1ca46444c26d14eabcc8d3e80a79b62ac7e382272f92849989c762b78cfe","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/7528a08dd01318f3a3d60e45ea7cc96a722a8325f489f706b0dd8f2f7fdf5edd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polite_words_04 -> audio/generated/it-IT/utterances/7adf4db9788a998a08b2acd9f6e027a9d87e23093e4e1d57f3547522f5614263.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('4858f188-b99d-5264-8315-b9f16e0e35fa', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polite_words_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc15dd3d7d4097f9f5b7cce78a55094af61f7b1581a907d69db0229798241ff5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c7955c19-d6b2-5d3a-8c25-374b2890ccef', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('4858f188-b99d-5264-8315-b9f16e0e35fa', 1), 'bc15dd3d7d4097f9f5b7cce78a55094af61f7b1581a907d69db0229798241ff5',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/7adf4db9788a998a08b2acd9f6e027a9d87e23093e4e1d57f3547522f5614263.mp3', 1071, '2026-09-14 01:57:42.765671', '9dc3744f974f258b7d8cf95cbc0d1730fe28c0509e5a8fe4a330d6ca2931030e', 'validated', '{"audio_key":"7adf4db9788a998a08b2acd9f6e027a9d87e23093e4e1d57f3547522f5614263","entity_key":"u_polite_words_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9dc3744f974f258b7d8cf95cbc0d1730fe28c0509e5a8fe4a330d6ca2931030e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/7adf4db9788a998a08b2acd9f6e027a9d87e23093e4e1d57f3547522f5614263.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_polite_words_02_listen -> audio/generated/it-IT/utterances/7adf4db9788a998a08b2acd9f6e027a9d87e23093e4e1d57f3547522f5614263.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('e5246e8d-cac6-505a-afb8-9f7d21fc3bbb', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_polite_words_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'bc15dd3d7d4097f9f5b7cce78a55094af61f7b1581a907d69db0229798241ff5'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('5ce45777-e948-5189-92e6-4ccf9db7ef66', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('e5246e8d-cac6-505a-afb8-9f7d21fc3bbb', 1), 'bc15dd3d7d4097f9f5b7cce78a55094af61f7b1581a907d69db0229798241ff5',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/7adf4db9788a998a08b2acd9f6e027a9d87e23093e4e1d57f3547522f5614263.mp3', 1071, '2026-09-14 01:57:42.765671', '9dc3744f974f258b7d8cf95cbc0d1730fe28c0509e5a8fe4a330d6ca2931030e', 'validated', '{"audio_key":"7adf4db9788a998a08b2acd9f6e027a9d87e23093e4e1d57f3547522f5614263","entity_key":"e_polite_words_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9dc3744f974f258b7d8cf95cbc0d1730fe28c0509e5a8fe4a330d6ca2931030e","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/7adf4db9788a998a08b2acd9f6e027a9d87e23093e4e1d57f3547522f5614263.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_objects_04 -> audio/generated/it-IT/utterances/814c15d47c82639069b5b4d1a92498e1e48434e27f2bddec508cc5ce1ec333ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6016e309-546a-548a-b68b-30daee1fc88f', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_objects_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc487f18c958a2a42da0ca80f3f67ff0fd6ac1d364182b092b38aa1ea2e717db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dbea8de8-1ba8-5a15-b393-38f9464f8df9', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6016e309-546a-548a-b68b-30daee1fc88f', 1), 'dc487f18c958a2a42da0ca80f3f67ff0fd6ac1d364182b092b38aa1ea2e717db',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/814c15d47c82639069b5b4d1a92498e1e48434e27f2bddec508cc5ce1ec333ac.mp3', 1097, '2026-09-14 01:57:43.717221', '8088f3d2b80a5b2d2e1e89d00edecf681f2a0b76ba2acd4c9215100e672f24ee', 'validated', '{"audio_key":"814c15d47c82639069b5b4d1a92498e1e48434e27f2bddec508cc5ce1ec333ac","entity_key":"u_first_objects_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8088f3d2b80a5b2d2e1e89d00edecf681f2a0b76ba2acd4c9215100e672f24ee","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/814c15d47c82639069b5b4d1a92498e1e48434e27f2bddec508cc5ce1ec333ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_objects_02_listen -> audio/generated/it-IT/utterances/814c15d47c82639069b5b4d1a92498e1e48434e27f2bddec508cc5ce1ec333ac.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('96f15ff2-e295-5a0e-b75d-32541d47037b', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_objects_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'dc487f18c958a2a42da0ca80f3f67ff0fd6ac1d364182b092b38aa1ea2e717db'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('9d6c4fd3-e4fe-581e-a607-21cbdb76c4a0', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('96f15ff2-e295-5a0e-b75d-32541d47037b', 1), 'dc487f18c958a2a42da0ca80f3f67ff0fd6ac1d364182b092b38aa1ea2e717db',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/814c15d47c82639069b5b4d1a92498e1e48434e27f2bddec508cc5ce1ec333ac.mp3', 1097, '2026-09-14 01:57:43.717221', '8088f3d2b80a5b2d2e1e89d00edecf681f2a0b76ba2acd4c9215100e672f24ee', 'validated', '{"audio_key":"814c15d47c82639069b5b4d1a92498e1e48434e27f2bddec508cc5ce1ec333ac","entity_key":"e_first_objects_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"8088f3d2b80a5b2d2e1e89d00edecf681f2a0b76ba2acd4c9215100e672f24ee","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/814c15d47c82639069b5b4d1a92498e1e48434e27f2bddec508cc5ce1ec333ac.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_objects_02 -> audio/generated/it-IT/utterances/85dba70177e9ffd820976c498b12d09514fe8cbd56d3f98bb79da827cce59c68.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d0b0e62f-5983-5fe5-95d5-cb654cece76b', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_objects_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28ecab631bfb57d245537ec7a80068d4667d36fcc4de6dff0db294e09ae19ab0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ce3139b5-332a-5d87-998a-01198e96ab0f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d0b0e62f-5983-5fe5-95d5-cb654cece76b', 1), '28ecab631bfb57d245537ec7a80068d4667d36fcc4de6dff0db294e09ae19ab0',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/85dba70177e9ffd820976c498b12d09514fe8cbd56d3f98bb79da827cce59c68.mp3', 1384, '2026-09-14 01:57:43.749414', '9a4617504e0f5759c23befc75527a756fb2040201c4ded456ecb56b7348b6baf', 'validated', '{"audio_key":"85dba70177e9ffd820976c498b12d09514fe8cbd56d3f98bb79da827cce59c68","entity_key":"u_first_objects_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9a4617504e0f5759c23befc75527a756fb2040201c4ded456ecb56b7348b6baf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/85dba70177e9ffd820976c498b12d09514fe8cbd56d3f98bb79da827cce59c68.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_objects_01_listen -> audio/generated/it-IT/utterances/85dba70177e9ffd820976c498b12d09514fe8cbd56d3f98bb79da827cce59c68.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('995780a4-2ea6-515b-b620-f49dcb884971', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_objects_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '28ecab631bfb57d245537ec7a80068d4667d36fcc4de6dff0db294e09ae19ab0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('a5d3a5ff-fac8-5be1-aa91-57a958c8c2bf', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('995780a4-2ea6-515b-b620-f49dcb884971', 1), '28ecab631bfb57d245537ec7a80068d4667d36fcc4de6dff0db294e09ae19ab0',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/85dba70177e9ffd820976c498b12d09514fe8cbd56d3f98bb79da827cce59c68.mp3', 1384, '2026-09-14 01:57:43.749414', '9a4617504e0f5759c23befc75527a756fb2040201c4ded456ecb56b7348b6baf', 'validated', '{"audio_key":"85dba70177e9ffd820976c498b12d09514fe8cbd56d3f98bb79da827cce59c68","entity_key":"e_first_objects_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9a4617504e0f5759c23befc75527a756fb2040201c4ded456ecb56b7348b6baf","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/85dba70177e9ffd820976c498b12d09514fe8cbd56d3f98bb79da827cce59c68.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_objects_01 -> audio/generated/it-IT/utterances/85e683f0fe32ed75c43af62c831ce49d0a2ce0d3069cdca4a70a7f34afd81101.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('c22cb084-d866-59e7-897d-a5064ab2499f', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_objects_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '611c91e97a361081a5fb97837e2a5f1673a0461dc5665d359917664b7c1ffb49'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('71a3c17f-3144-5fa8-aac6-a9e962d967f3', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('c22cb084-d866-59e7-897d-a5064ab2499f', 1), '611c91e97a361081a5fb97837e2a5f1673a0461dc5665d359917664b7c1ffb49',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/85e683f0fe32ed75c43af62c831ce49d0a2ce0d3069cdca4a70a7f34afd81101.mp3', 1436, '2026-09-14 01:57:44.690954', '28f8e0f47b47d974310a485f651d706cc60bc6b59f09a2c088c3a2657b142a91', 'validated', '{"audio_key":"85e683f0fe32ed75c43af62c831ce49d0a2ce0d3069cdca4a70a7f34afd81101","entity_key":"u_first_objects_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"28f8e0f47b47d974310a485f651d706cc60bc6b59f09a2c088c3a2657b142a91","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/85e683f0fe32ed75c43af62c831ce49d0a2ce0d3069cdca4a70a7f34afd81101.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polite_words_01 -> audio/generated/it-IT/utterances/8b031572c56bc75d3459c364f2b6c01bade4450542fa1b9349a5112085b07dcd.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('988a2fa6-2ecd-5034-b0ee-089a2ecc24bf', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polite_words_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '17962d42e2233deaa528dea3b74e7afb0f4232da41201aed6d36610eb431b8a7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('ca0bc4bd-2a41-5f7a-9155-ea8897f7a59a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('988a2fa6-2ecd-5034-b0ee-089a2ecc24bf', 1), '17962d42e2233deaa528dea3b74e7afb0f4232da41201aed6d36610eb431b8a7',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/8b031572c56bc75d3459c364f2b6c01bade4450542fa1b9349a5112085b07dcd.mp3', 1697, '2026-09-14 01:57:44.774181', 'db004752307a07a94dab56ebef5c4cc283a079a515e242d63048ef93ceec9178', 'validated', '{"audio_key":"8b031572c56bc75d3459c364f2b6c01bade4450542fa1b9349a5112085b07dcd","entity_key":"u_polite_words_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"db004752307a07a94dab56ebef5c4cc283a079a515e242d63048ef93ceec9178","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/8b031572c56bc75d3459c364f2b6c01bade4450542fa1b9349a5112085b07dcd.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_sounds_03 -> audio/generated/it-IT/utterances/8bb3483baa36469b65c2bc13f73845820af08819ef99f8fa7855efea9fb3f072.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('84e163fa-dce2-5194-8ba2-e8263ecad429', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_sounds_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '2d7b6945a00dcc18610b318093253e287888637e1fd7d027a75c9a52c32d7a1a'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cf7ec0f4-140a-5fc0-bc65-07131dc92f6e', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('84e163fa-dce2-5194-8ba2-e8263ecad429', 1), '2d7b6945a00dcc18610b318093253e287888637e1fd7d027a75c9a52c32d7a1a',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/8bb3483baa36469b65c2bc13f73845820af08819ef99f8fa7855efea9fb3f072.mp3', 1436, '2026-09-14 01:57:45.680438', 'eaec7da7948fbeddf4ec0be259d87e0d112909b2dc5ca1a918304f909c575f32', 'validated', '{"audio_key":"8bb3483baa36469b65c2bc13f73845820af08819ef99f8fa7855efea9fb3f072","entity_key":"u_first_sounds_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"eaec7da7948fbeddf4ec0be259d87e0d112909b2dc5ca1a918304f909c575f32","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/8bb3483baa36469b65c2bc13f73845820af08819ef99f8fa7855efea9fb3f072.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_polite_words_03 -> audio/generated/it-IT/utterances/8ea0f96b490eb1574ff412a2d8a2056f4bf6fe841b0fc671414f0128f1038a7c.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d390634c-0e8a-5705-8e2a-cde02eb37263', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_polite_words_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '462d76210b11605ae6a62d80dad2b5b9637c04e8e47da70d57384d375a224762'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('36341fed-85f9-55c4-af8c-25112c6c4654', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d390634c-0e8a-5705-8e2a-cde02eb37263', 1), '462d76210b11605ae6a62d80dad2b5b9637c04e8e47da70d57384d375a224762',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/8ea0f96b490eb1574ff412a2d8a2056f4bf6fe841b0fc671414f0128f1038a7c.mp3', 835, '2026-09-14 01:57:45.693846', 'd29ac05f5cc1650c9f266e0557830649168ddfaf50114476ddbb7a6ffb6a7515', 'validated', '{"audio_key":"8ea0f96b490eb1574ff412a2d8a2056f4bf6fe841b0fc671414f0128f1038a7c","entity_key":"u_polite_words_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"d29ac05f5cc1650c9f266e0557830649168ddfaf50114476ddbb7a6ffb6a7515","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/8ea0f96b490eb1574ff412a2d8a2056f4bf6fe841b0fc671414f0128f1038a7c.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_conversation_01 -> audio/generated/it-IT/utterances/90eee51e922d91fd0cfa4e33c74911ea56b945d76020ba52d7fc0ee41ece7283.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0107f186-7e83-56cc-b7ca-fd4cbf999408', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_conversation_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'feaadd4c5646f0358643284370bff8b8a5fa3cbcd3fc651988a897d86e29abed'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('b9bb4ec1-09a3-53f9-ab8c-375bdc1d2931', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0107f186-7e83-56cc-b7ca-fd4cbf999408', 1), 'feaadd4c5646f0358643284370bff8b8a5fa3cbcd3fc651988a897d86e29abed',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/90eee51e922d91fd0cfa4e33c74911ea56b945d76020ba52d7fc0ee41ece7283.mp3', 1201, '2026-09-14 01:57:46.645169', '9a91298ac7e39fcc752dc1e82af8a45cbe10d358a80e9f226a0cd0ce5cca2971', 'validated', '{"audio_key":"90eee51e922d91fd0cfa4e33c74911ea56b945d76020ba52d7fc0ee41ece7283","entity_key":"u_first_conversation_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"9a91298ac7e39fcc752dc1e82af8a45cbe10d358a80e9f226a0cd0ce5cca2971","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/90eee51e922d91fd0cfa4e33c74911ea56b945d76020ba52d7fc0ee41ece7283.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_how_are_you_02 -> audio/generated/it-IT/utterances/9e3e24a45dd23b6097bf45d70b4b628962f38db3e460fb46aac153b2a1768d89.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('6473cd6b-4d48-5481-9263-778b9a201145', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_how_are_you_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9196b12a5a0b9c18771f781b1e277269c486cc5708576b6ae4fe37e8abcd64e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c6ad0cf9-8f0b-5086-9ad2-590aa93f927d', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('6473cd6b-4d48-5481-9263-778b9a201145', 1), '9196b12a5a0b9c18771f781b1e277269c486cc5708576b6ae4fe37e8abcd64e6',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/9e3e24a45dd23b6097bf45d70b4b628962f38db3e460fb46aac153b2a1768d89.mp3', 1488, '2026-09-14 01:57:46.680968', '2bef3e749a1b04d317023070a42218f5888182513abefcfcb79c5884443dd8a4', 'validated', '{"audio_key":"9e3e24a45dd23b6097bf45d70b4b628962f38db3e460fb46aac153b2a1768d89","entity_key":"u_how_are_you_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2bef3e749a1b04d317023070a42218f5888182513abefcfcb79c5884443dd8a4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/9e3e24a45dd23b6097bf45d70b4b628962f38db3e460fb46aac153b2a1768d89.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_how_are_you_01_listen -> audio/generated/it-IT/utterances/9e3e24a45dd23b6097bf45d70b4b628962f38db3e460fb46aac153b2a1768d89.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('1df7386b-3d3f-566b-b12c-83237abbf22b', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_how_are_you_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9196b12a5a0b9c18771f781b1e277269c486cc5708576b6ae4fe37e8abcd64e6'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e36dea24-ec83-5d80-a92e-51dd1abe462d', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('1df7386b-3d3f-566b-b12c-83237abbf22b', 1), '9196b12a5a0b9c18771f781b1e277269c486cc5708576b6ae4fe37e8abcd64e6',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/9e3e24a45dd23b6097bf45d70b4b628962f38db3e460fb46aac153b2a1768d89.mp3', 1488, '2026-09-14 01:57:46.680968', '2bef3e749a1b04d317023070a42218f5888182513abefcfcb79c5884443dd8a4', 'validated', '{"audio_key":"9e3e24a45dd23b6097bf45d70b4b628962f38db3e460fb46aac153b2a1768d89","entity_key":"e_how_are_you_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2bef3e749a1b04d317023070a42218f5888182513abefcfcb79c5884443dd8a4","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/9e3e24a45dd23b6097bf45d70b4b628962f38db3e460fb46aac153b2a1768d89.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_greetings_04 -> audio/generated/it-IT/utterances/9ed30ea1baba72b706ebdcad8181cf7bed5f5b703b2cb10175c55dff80974957.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('8faa643b-6dff-51d5-a11f-8b1c2d854a11', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_greetings_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68c76be22af0a43f2a8de04f6efa0ebbf6399a1b977a92d6bb702919118d6abe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('c4b7f560-2bce-5c8f-989f-e101f084700a', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('8faa643b-6dff-51d5-a11f-8b1c2d854a11', 1), '68c76be22af0a43f2a8de04f6efa0ebbf6399a1b977a92d6bb702919118d6abe',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/9ed30ea1baba72b706ebdcad8181cf7bed5f5b703b2cb10175c55dff80974957.mp3', 1488, '2026-09-14 01:57:47.637221', '42473f79e710e8491a157995db01c8dd50f0bf1d72daac98d658f140c5201634', 'validated', '{"audio_key":"9ed30ea1baba72b706ebdcad8181cf7bed5f5b703b2cb10175c55dff80974957","entity_key":"u_first_greetings_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"42473f79e710e8491a157995db01c8dd50f0bf1d72daac98d658f140c5201634","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/9ed30ea1baba72b706ebdcad8181cf7bed5f5b703b2cb10175c55dff80974957.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_first_greetings_02_listen -> audio/generated/it-IT/utterances/9ed30ea1baba72b706ebdcad8181cf7bed5f5b703b2cb10175c55dff80974957.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('ec090170-42dc-51c0-848a-c4c01740bf2e', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_first_greetings_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '68c76be22af0a43f2a8de04f6efa0ebbf6399a1b977a92d6bb702919118d6abe'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e1730a96-acdf-5d44-ba75-5221f94e08fd', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('ec090170-42dc-51c0-848a-c4c01740bf2e', 1), '68c76be22af0a43f2a8de04f6efa0ebbf6399a1b977a92d6bb702919118d6abe',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/9ed30ea1baba72b706ebdcad8181cf7bed5f5b703b2cb10175c55dff80974957.mp3', 1488, '2026-09-14 01:57:47.637221', '42473f79e710e8491a157995db01c8dd50f0bf1d72daac98d658f140c5201634', 'validated', '{"audio_key":"9ed30ea1baba72b706ebdcad8181cf7bed5f5b703b2cb10175c55dff80974957","entity_key":"e_first_greetings_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"42473f79e710e8491a157995db01c8dd50f0bf1d72daac98d658f140c5201634","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/9ed30ea1baba72b706ebdcad8181cf7bed5f5b703b2cb10175c55dff80974957.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_alphabet_04 -> audio/generated/it-IT/utterances/a210e400e8d97170182fcd8c1275723c8ff1b3c2b57d6c7172f0bc68bc8e68b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('90888ca5-48f1-5c4d-9a3e-8c2c3f955dab', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_alphabet_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5973e96796a1c7d68c820b60b8302bf3b3f0dad0db2beee433ba9695143aa242'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e541cd4f-51a4-51bf-bb5b-368dc3e8d46b', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('90888ca5-48f1-5c4d-9a3e-8c2c3f955dab', 1), '5973e96796a1c7d68c820b60b8302bf3b3f0dad0db2beee433ba9695143aa242',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/a210e400e8d97170182fcd8c1275723c8ff1b3c2b57d6c7172f0bc68bc8e68b5.mp3', 1802, '2026-09-14 01:57:47.679847', '3b6be06960902bf00b0c4a1e2a6b0bc90308cdfc97885849ec5bb8541115f2ab', 'validated', '{"audio_key":"a210e400e8d97170182fcd8c1275723c8ff1b3c2b57d6c7172f0bc68bc8e68b5","entity_key":"u_alphabet_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3b6be06960902bf00b0c4a1e2a6b0bc90308cdfc97885849ec5bb8541115f2ab","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/a210e400e8d97170182fcd8c1275723c8ff1b3c2b57d6c7172f0bc68bc8e68b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_alphabet_02_listen -> audio/generated/it-IT/utterances/a210e400e8d97170182fcd8c1275723c8ff1b3c2b57d6c7172f0bc68bc8e68b5.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('79baf956-c952-5bc2-8e9a-12088938e0c4', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_alphabet_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '5973e96796a1c7d68c820b60b8302bf3b3f0dad0db2beee433ba9695143aa242'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('7180bd8b-f892-58a5-9c4d-55e0189f1819', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('79baf956-c952-5bc2-8e9a-12088938e0c4', 1), '5973e96796a1c7d68c820b60b8302bf3b3f0dad0db2beee433ba9695143aa242',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/a210e400e8d97170182fcd8c1275723c8ff1b3c2b57d6c7172f0bc68bc8e68b5.mp3', 1802, '2026-09-14 01:57:47.679847', '3b6be06960902bf00b0c4a1e2a6b0bc90308cdfc97885849ec5bb8541115f2ab', 'validated', '{"audio_key":"a210e400e8d97170182fcd8c1275723c8ff1b3c2b57d6c7172f0bc68bc8e68b5","entity_key":"e_alphabet_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"3b6be06960902bf00b0c4a1e2a6b0bc90308cdfc97885849ec5bb8541115f2ab","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/a210e400e8d97170182fcd8c1275723c8ff1b3c2b57d6c7172f0bc68bc8e68b5.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_how_are_you_03 -> audio/generated/it-IT/utterances/a58f5accc2ac53a197b4f7adca780e6c48f609a69d89aeb6a946d49fbb26c171.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('12adcc90-4ce8-57e0-a4c6-23df047e93bc', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_how_are_you_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '3544d250f272f019f56e17c100bbb23ebb03173e4577fb0982979a0dcda794bc'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('17e45b2f-145e-56ea-9549-4c9efdc80bb5', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('12adcc90-4ce8-57e0-a4c6-23df047e93bc', 1), '3544d250f272f019f56e17c100bbb23ebb03173e4577fb0982979a0dcda794bc',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/a58f5accc2ac53a197b4f7adca780e6c48f609a69d89aeb6a946d49fbb26c171.mp3', 1071, '2026-09-14 01:57:48.634596', '6dea782fe2cbd7a236078d91d92d65582aac044e45281a8c29d8074793cced00', 'validated', '{"audio_key":"a58f5accc2ac53a197b4f7adca780e6c48f609a69d89aeb6a946d49fbb26c171","entity_key":"u_how_are_you_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"6dea782fe2cbd7a236078d91d92d65582aac044e45281a8c29d8074793cced00","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/a58f5accc2ac53a197b4f7adca780e6c48f609a69d89aeb6a946d49fbb26c171.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_how_are_you_04 -> audio/generated/it-IT/utterances/ac0398c8966d8a5a017795fdec18a1f97c61feeb71a766cf8be034264974ab2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('976aa350-519e-57d3-8173-35cdd0ff4e34', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_how_are_you_04')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '552e7a5aeac2e374a77a83bbbc42eea6e2eff139a9af239200c6aa0ab08553d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('cb6e50ac-f321-56e5-abe0-b6d83e0d1853', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('976aa350-519e-57d3-8173-35cdd0ff4e34', 1), '552e7a5aeac2e374a77a83bbbc42eea6e2eff139a9af239200c6aa0ab08553d7',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/ac0398c8966d8a5a017795fdec18a1f97c61feeb71a766cf8be034264974ab2e.mp3', 1071, '2026-09-14 01:57:48.616863', '2edca38ddbfdc05c987752111c42b4bfd15b95ccfb35064a7e109a00c536f5f1', 'validated', '{"audio_key":"ac0398c8966d8a5a017795fdec18a1f97c61feeb71a766cf8be034264974ab2e","entity_key":"u_how_are_you_04","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2edca38ddbfdc05c987752111c42b4bfd15b95ccfb35064a7e109a00c536f5f1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/ac0398c8966d8a5a017795fdec18a1f97c61feeb71a766cf8be034264974ab2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_how_are_you_02_listen -> audio/generated/it-IT/utterances/ac0398c8966d8a5a017795fdec18a1f97c61feeb71a766cf8be034264974ab2e.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('2d884d04-fc17-50aa-bd17-7ddff9f9f45b', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_how_are_you_02_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '552e7a5aeac2e374a77a83bbbc42eea6e2eff139a9af239200c6aa0ab08553d7'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f4dca104-5893-59ea-ad59-721b8e94e0b9', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('2d884d04-fc17-50aa-bd17-7ddff9f9f45b', 1), '552e7a5aeac2e374a77a83bbbc42eea6e2eff139a9af239200c6aa0ab08553d7',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/ac0398c8966d8a5a017795fdec18a1f97c61feeb71a766cf8be034264974ab2e.mp3', 1071, '2026-09-14 01:57:48.616863', '2edca38ddbfdc05c987752111c42b4bfd15b95ccfb35064a7e109a00c536f5f1', 'validated', '{"audio_key":"ac0398c8966d8a5a017795fdec18a1f97c61feeb71a766cf8be034264974ab2e","entity_key":"e_how_are_you_02_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"2edca38ddbfdc05c987752111c42b4bfd15b95ccfb35064a7e109a00c536f5f1","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/ac0398c8966d8a5a017795fdec18a1f97c61feeb71a766cf8be034264974ab2e.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_name_02 -> audio/generated/it-IT/utterances/bfef3628440723a530f7034253264ee99648db099e4db62916bd56ecd6b5d84d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('eca2d9aa-c3e3-5d59-b194-991e20a740db', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_name_02')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4422cfc049a7d84eeba066a4a44a1ca6cc9d00397956364165adde5112c3623'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('2a5c2b38-6a78-58b9-baf7-adf9b9964e12', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('eca2d9aa-c3e3-5d59-b194-991e20a740db', 1), 'c4422cfc049a7d84eeba066a4a44a1ca6cc9d00397956364165adde5112c3623',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/bfef3628440723a530f7034253264ee99648db099e4db62916bd56ecd6b5d84d.mp3', 1201, '2026-09-14 01:57:49.577655', '15db9f42765e2933abe9c9c69022e752a2935738bf076ee44f7ebca516b209d9', 'validated', '{"audio_key":"bfef3628440723a530f7034253264ee99648db099e4db62916bd56ecd6b5d84d","entity_key":"u_my_name_02","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"15db9f42765e2933abe9c9c69022e752a2935738bf076ee44f7ebca516b209d9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/bfef3628440723a530f7034253264ee99648db099e4db62916bd56ecd6b5d84d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- e_my_name_01_listen -> audio/generated/it-IT/utterances/bfef3628440723a530f7034253264ee99648db099e4db62916bd56ecd6b5d84d.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'exercise'
  AND entity_id = UUID_TO_BIN('0b18e79d-4882-51fc-82c1-1a642f2d9d37', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'e_my_name_01_listen')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'c4422cfc049a7d84eeba066a4a44a1ca6cc9d00397956364165adde5112c3623'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dec66011-d74f-5add-9557-9ece70c62f89', 1), @audio_language_id, @audio_variant_id, 'exercise', UUID_TO_BIN('0b18e79d-4882-51fc-82c1-1a642f2d9d37', 1), 'c4422cfc049a7d84eeba066a4a44a1ca6cc9d00397956364165adde5112c3623',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/bfef3628440723a530f7034253264ee99648db099e4db62916bd56ecd6b5d84d.mp3', 1201, '2026-09-14 01:57:49.577655', '15db9f42765e2933abe9c9c69022e752a2935738bf076ee44f7ebca516b209d9', 'validated', '{"audio_key":"bfef3628440723a530f7034253264ee99648db099e4db62916bd56ecd6b5d84d","entity_key":"e_my_name_01_listen","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"15db9f42765e2933abe9c9c69022e752a2935738bf076ee44f7ebca516b209d9","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/bfef3628440723a530f7034253264ee99648db099e4db62916bd56ecd6b5d84d.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_conversation_03 -> audio/generated/it-IT/utterances/c27edc426f8ef27a6c3a30c47b92dd0e2655e15f739bee84d4fe24dc338c9c34.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('1389532a-6c28-5442-8544-756596ff66d5', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_conversation_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '9489782aebd33ee2e223151dffe46d70c13c5674dbcd682d77bea0ac89859e82'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('e5943f54-e57e-515e-bf72-bd10a032044f', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('1389532a-6c28-5442-8544-756596ff66d5', 1), '9489782aebd33ee2e223151dffe46d70c13c5674dbcd682d77bea0ac89859e82',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/c27edc426f8ef27a6c3a30c47b92dd0e2655e15f739bee84d4fe24dc338c9c34.mp3', 1384, '2026-09-14 01:57:49.637701', 'af799d7a5f114eba3979c482d48b7d3129fce2d72767c3cfbedfefd709408e54', 'validated', '{"audio_key":"c27edc426f8ef27a6c3a30c47b92dd0e2655e15f739bee84d4fe24dc338c9c34","entity_key":"u_first_conversation_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"af799d7a5f114eba3979c482d48b7d3129fce2d72767c3cfbedfefd709408e54","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/c27edc426f8ef27a6c3a30c47b92dd0e2655e15f739bee84d4fe24dc338c9c34.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_first_objects_03 -> audio/generated/it-IT/utterances/e86c62af0453c339bdc547e67568727abd93b525a9cf0e473ba85b74e4dd62bf.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('ccd952c9-0e90-510e-b4f0-2fe91f526ffb', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_first_objects_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '73e7521b83027a36162457e7a3ae4f1438e09f042d18859e8d359249e418797f'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('41a251b2-f22f-586f-a54c-7b0e2616cef1', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('ccd952c9-0e90-510e-b4f0-2fe91f526ffb', 1), '73e7521b83027a36162457e7a3ae4f1438e09f042d18859e8d359249e418797f',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/e86c62af0453c339bdc547e67568727abd93b525a9cf0e473ba85b74e4dd62bf.mp3', 1253, '2026-09-14 01:57:50.528406', '079d9def9f390fe38f47651eab10d09b99982fcf1fe3d01f0749f447e222e134', 'validated', '{"audio_key":"e86c62af0453c339bdc547e67568727abd93b525a9cf0e473ba85b74e4dd62bf","entity_key":"u_first_objects_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"079d9def9f390fe38f47651eab10d09b99982fcf1fe3d01f0749f447e222e134","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/e86c62af0453c339bdc547e67568727abd93b525a9cf0e473ba85b74e4dd62bf.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_numbers_0_10_03 -> audio/generated/it-IT/utterances/f2678fdbdecb3a505ad0886bba3d4d8eb813bf51f44205a09664888d1d2a0045.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('955cb79a-a7db-5ef5-bf13-eb9b4fa3f388', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_numbers_0_10_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> '98ecdf3356376690001342e027f0a9c772bd81da5d5751cd9d0fdaa7368c40a0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('f5723201-55ff-5479-af08-3178e3b69481', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('955cb79a-a7db-5ef5-bf13-eb9b4fa3f388', 1), '98ecdf3356376690001342e027f0a9c772bd81da5d5751cd9d0fdaa7368c40a0',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/f2678fdbdecb3a505ad0886bba3d4d8eb813bf51f44205a09664888d1d2a0045.mp3', 1149, '2026-09-14 01:57:50.640658', 'cc390136c1ed6762db424aa8d222a674506efae04345b7d8c0da6cf0c208fffc', 'validated', '{"audio_key":"f2678fdbdecb3a505ad0886bba3d4d8eb813bf51f44205a09664888d1d2a0045","entity_key":"u_numbers_0_10_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"cc390136c1ed6762db424aa8d222a674506efae04345b7d8c0da6cf0c208fffc","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/f2678fdbdecb3a505ad0886bba3d4d8eb813bf51f44205a09664888d1d2a0045.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_alphabet_01 -> audio/generated/it-IT/utterances/fbb64ac0a7e0f07e5f8cbf4cc1906e169670d241fa69a63af1a2b93eb8799107.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('d0ccc588-c1c2-522e-9ae3-abe9828a247d', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_alphabet_01')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'be86ebff63f0c8d4873a88444685d5872905ae8b53efdf507563efb78cce8c09'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('0cfff253-9a5a-5d40-9ade-e3bbf0ec977c', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('d0ccc588-c1c2-522e-9ae3-abe9828a247d', 1), 'be86ebff63f0c8d4873a88444685d5872905ae8b53efdf507563efb78cce8c09',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/fbb64ac0a7e0f07e5f8cbf4cc1906e169670d241fa69a63af1a2b93eb8799107.mp3', 1384, '2026-09-14 01:57:51.501821', '5ece1bcd80dbed150f52165bb3aea0ca671c025a71cde6b2a0eacc2975c40efb', 'validated', '{"audio_key":"fbb64ac0a7e0f07e5f8cbf4cc1906e169670d241fa69a63af1a2b93eb8799107","entity_key":"u_alphabet_01","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"5ece1bcd80dbed150f52165bb3aea0ca671c025a71cde6b2a0eacc2975c40efb","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/fbb64ac0a7e0f07e5f8cbf4cc1906e169670d241fa69a63af1a2b93eb8799107.mp3"}'
) ON DUPLICATE KEY UPDATE
  provider = VALUES(provider),
  provider_model = VALUES(provider_model),
  storage_url = VALUES(storage_url),
  duration_ms = VALUES(duration_ms),
  generated_at = VALUES(generated_at),
  checksum = VALUES(checksum),
  status = VALUES(status),
  metadata = VALUES(metadata);

-- u_my_name_03 -> audio/generated/it-IT/utterances/fc7c4fa1d481edab2ff95e8bfd19b9e0af33b498310951971b46e7385613d107.mp3
UPDATE audio_assets
SET status = 'archived'
WHERE entity_type = 'utterance'
  AND entity_id = UUID_TO_BIN('0f7a5939-0ae9-520e-b2be-35938ce1496e', 1)
  AND voice_key = 'it-it.sentence.native-clear'
  AND (entity_type NOT IN ('grammar_point','exercise') OR JSON_UNQUOTE(JSON_EXTRACT(metadata, '$.entity_key')) = 'u_my_name_03')
  AND source_text_hash IS NOT NULL
  AND source_text_hash <> 'b9c4c4bc5e9defd0e8ec338087e5bb2f8c6d481d8d65a604f90066cba12b03b0'
  AND status <> 'archived';
INSERT INTO audio_assets (
  id, language_id, language_variant_id, entity_type, entity_id, source_text_hash,
  voice_key, provider, provider_model, storage_url, duration_ms, generated_at, checksum, status, metadata
) VALUES (
  UUID_TO_BIN('dec0ca0f-3d5c-5228-837d-4c8c586dc9af', 1), @audio_language_id, @audio_variant_id, 'utterance', UUID_TO_BIN('0f7a5939-0ae9-520e-b2be-35938ce1496e', 1), 'b9c4c4bc5e9defd0e8ec338087e5bb2f8c6d481d8d65a604f90066cba12b03b0',
  'it-it.sentence.native-clear', 'elevenlabs', 'eleven_multilingual_v2', 'audio/generated/it-IT/utterances/fc7c4fa1d481edab2ff95e8bfd19b9e0af33b498310951971b46e7385613d107.mp3', 1071, '2026-09-14 01:57:51.589534', '919928cbf5ac7ac13977055bbb0f9691f3d4192a961f32fb12d227e09897b5fd', 'validated', '{"audio_key":"fc7c4fa1d481edab2ff95e8bfd19b9e0af33b498310951971b46e7385613d107","entity_key":"u_my_name_03","voice_id":"litDcG1avVppv4R90BLu","voice_name":"Carla - Natural, Reflective & Narrative","voice_labels":{"gender":"female","accent":"standard","age":"middle_aged","category":"professional","language":"it","use_case":"conversational","descriptive":"crisp"},"output_format":"mp3_44100_192","file_sha256":"919928cbf5ac7ac13977055bbb0f9691f3d4192a961f32fb12d227e09897b5fd","settings":{"stability":0.68,"similarity_boost":0.88,"style":0.0,"use_speaker_boost":true,"speed":0.95},"relative_path":"audio/generated/it-IT/utterances/fc7c4fa1d481edab2ff95e8bfd19b9e0af33b498310951971b46e7385613d107.mp3"}'
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
